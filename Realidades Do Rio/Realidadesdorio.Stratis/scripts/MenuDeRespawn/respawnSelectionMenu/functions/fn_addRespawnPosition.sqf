scriptName "fn_addRespawnPosition";

/*
	Code written by Haz
*/

#define __FILENAME "fn_addRespawnPosition.sqf"

params
[
	["_target", playableUnits],
	["_respawnPointName", "Another Respawn Point"],
	["_respawnPointIcon", "\A3\ui_f\data\map\markers\military\flag_CA.paa"],
	["_respawnPointPosition", (getArray (configFile >> "CfgWorlds" >> worldName >> "centerPosition"))],
	["_respawnPointRadius", 0]
];

if ((_respawnPointName isEqualTo "")) exitWith
{
	hintSilent (localize "STR_invalidRespawnPointName");
};

if ((typeName _target isEqualTo "ARRAY")) then
{
	{
		_respawnPoints = _x getVariable ["additionalRespawnPoints", []];
		if ((_respawnPointName in (_x getVariable "additionalRespawnPoints"))) exitWith
		{
			hintSilent (localize "STR_invalidRespawnPointName2");
		};
		_respawnPoints pushBack [[_respawnPointName, _respawnPointIcon, _respawnPointPosition, _respawnPointRadius]];
		_x setVariable ["additionalRespawnPoints", _respawnPoints, true];
	} forEach _target;
} else
{
	if ((typeName _target isEqualTo "SIDE")) then
	{
		{
			_respawnPoints = _x getVariable ["additionalRespawnPoints", []];
			if ((_respawnPointName in (_x getVariable "additionalRespawnPoints"))) exitWith
			{
				hintSilent (localize "STR_invalidRespawnPointName2");
			};
			if ((side _x isEqualTo _target)) then
			{
				_respawnPoints pushBack [[_respawnPointName, _respawnPointIcon, _respawnPointPosition, _respawnPointRadius]];
				_x setVariable ["additionalRespawnPoints", _respawnPoints, true];
			};
		} forEach playableUnits;
	} else
	{
		_respawnPoints = _target getVariable ["additionalRespawnPoints", []];
		if ((_respawnPointName in (_x getVariable "additionalRespawnPoints"))) exitWith
		{
			hintSilent (localize "STR_invalidRespawnPointName2");
		};
		_respawnPoints pushBack [_respawnPointName, _respawnPointIcon, _respawnPointPosition, _respawnPointRadius];
		_target setVariable ["additionalRespawnPoints", _respawnPoints, true];
	};
};