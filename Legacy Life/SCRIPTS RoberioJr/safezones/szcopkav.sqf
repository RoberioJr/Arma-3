if (isDedicated) exitWith {};
waitUntil {!isNull player};
waitUntil {time > 0};

private ["_eh1","_inSafeZone","_safeZone","_dis", "_playerSide", "_spawnpos", "_list", "_InGodMode" ];
_inSafeZone = false;
_safeZone = getMarkerPos "Safe_PHQ";
_playerSide = side player;
_dis = 50;


_spawnpos = [ _safeZone select 0, _safeZone select 1, 1];
_list = nearestObjects [_spawnpos, ["static"], _dis];

{ _x allowDamage false; _x addEventHandler ["HandleDamage", {false}]; } forEach _list;

_InGodMode = player getVariable ["isAdminInvulnerable", false];
if (alive player) then {
	if (_safeZone distance player > _dis) then {
		_inSafeZone = false;
		if (isPlayer player) then {
			systemChat format["Você saiu da safezone %1. Você agora pode ser ferido.", (name player)];
		};
		if (!_InGodMode) then {
			player allowDamage true;
		};
	}else{
		_inSafeZone = true;
		if ( side player isEqualto civilian ) then {
			_eh1 = player addEventHandler ["fired", {deleteVehicle (_this select 6); titleText ["Armas/Granadas São proibidas na safezone!", "PLAIN", 3]; titleFadeOut 1; }];
			};
		if (isPlayer player) then {
			systemChat format["Você entrou na safezone %1. Você não pode ser ferido.", (name player)];
		};
		if (!_InGodMode) then {
			player allowDamage false;
		};
	};
};

while {true} do {
	_InGodMode = player getVariable ["isAdminInvulnerable", false];
	if (alive player) then {

		if ((_safeZone distance player < _dis) && (!_inSafeZone)) then {
			if ( side player isEqualto civilian ) then {
				_eh1 = player addEventHandler ["fired", {deleteVehicle (_this select 6); titleText ["Armas/Granadas São proibidas na safezone!", "PLAIN", 3]; titleFadeOut 1; }];
			};
			_inSafeZone = true;
			if (isPlayer player) then {
				systemChat format["Você entrou na safezone %1. Você não pode ser ferido.", (name player)];
			};
			if (!_InGodMode) then {
				player allowDamage false;
			};
		};

		if ((_safeZone distance player > _dis) && (_inSafeZone)) then {
			player removeEventHandler ["fired", _eh1];
			_inSafeZone = false;
			if (isPlayer player) then {
				systemChat format["Você saiu da safezone %1. Você agora pode ser ferido.", (name player)];
			};

			if (!_InGodMode) then {
				player allowDamage true;
			};
		};
	};

	sleep 1;
};