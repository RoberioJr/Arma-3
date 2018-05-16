scriptName "fn_removeRespawnPosition";

/*
	Code written by Haz
*/

#define __FILENAME "fn_removeRespawnPosition.sqf"

params
[
	["_target", playableUnits],
	["_respawnPointName", ""]
];

if ((_respawnPointName isEqualTo "")) exitWith
{
	hintSilent (localize "STR_invalidRespawnPointName");
};

if ((typeName _target isEqualTo "ARRAY")) then
{
	{
		if ((!(_respawnPointName in (_x getVariable "additionalRespawnPoints")))) exitWith
		{
			hintSilent (localize "STR_invalidRespawnPointName2");
		};
		_respawnPoints = _x getVariable "additionalRespawnPoints";
		_respawnPoint = _respawnPoints find _respawnPointName;
		_respawnPoints = _respawnPoints - [_respawnPoint];
		_target setVariable ["additionalRespawnPoints", _respawnPoints, true];
	} forEach _target;
} else
{
	if ((typeName _target isEqualTo "SIDE")) then
	{
		{
			if ((!(_respawnPointName in (_x getVariable "additionalRespawnPoints")))) exitWith
			{
				hintSilent (localize "STR_invalidRespawnPointName2");
			};
			if ((side _x isEqualTo _target)) then
			{
				_respawnPoints = _x getVariable "additionalRespawnPoints";
				_respawnPoint = _respawnPoints find _respawnPointName;
				_respawnPoints = _respawnPoints - [_respawnPoint];
				_target setVariable ["additionalRespawnPoints", _respawnPoints, true];
			};
		} forEach playableUnits;
	} else
	{
		if ((!(_respawnPointName in (_x getVariable "additionalRespawnPoints")))) exitWith
		{
			hintSilent (localize "STR_invalidRespawnPointName2");
		};
		_respawnPoints = _x getVariable "additionalRespawnPoints";
		_respawnPoint = _respawnPoints find _respawnPointName;
		_respawnPoints = _respawnPoints - [_respawnPoint];
		_target setVariable ["additionalRespawnPoints", _respawnPoints, true];
	};
};