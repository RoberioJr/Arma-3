/*
	  ***************************************
	  ***************************************
	  ******[]======================[]*******
	  ******[]       Scripts        []*******
	  ******[]======================[]*******
	  ******[] \ BOPE COMANDO V   / []*******
	  ******[]  \  By RoberioJr  /  []*******
	  ******[]======================[]*******
	  ***************************************
	  ***************************************
*/

if (isDedicated) exitWith {};
waitUntil {!isNull player};
waitUntil {time > 0};

private ["_eh1","_inSafeZone","_safeZone","_dis", "_playerSide", "_spawnpos", "_list", "_InGodMode" ];
_inSafeZone = false;
_safeZone = getMarkerPos "favela";
_playerSide = side player;
_dis = 19;


_spawnpos = [ _safeZone select 0, _safeZone select 1, 1];
_list = nearestObjects [_spawnpos, ["static"], _dis];

{ _x allowDamage false; _x addEventHandler ["HandleDamage", {false}]; } forEach _list;

_InGodMode = player getVariable ["isAdminInvulnerable", false];
if (alive player) then {
	if (_safeZone distance player > _dis) then {
		_inSafeZone = false;
		if (isPlayer player) then {
			hintSilent parseText format ["<t size='3.4' color='#ff0000' shadow='0'>AVISO!</t> <t size='1.2'> Você está Saindo Da Favela! Você Será Morto Por Um Sniper! </t>"];
		};
		sleep 5.0;
		player setDamage 1;
		if (!_InGodMode) then {
			player allowDamage true;
		};
	}else{
		_inSafeZone = true;
		if (side player == east) then {

			};
		if (isPlayer player) then {
			systemChat format["Você Voltou Para A Favela %1, Mas Está Na Mira Do Sniper...", (name player)];
		};
		if (!_InGodMode) then {
			player allowDamage true;
		};
	};
};

while {true} do {
	_InGodMode = player getVariable ["isAdminInvulnerable", false];
	if (alive player) then {
		if ((_safeZone distance player < _dis) && (!_inSafeZone)) then {
			if (side player == east) then {
			};
			_inSafeZone = true;
			if (isPlayer player) then {
				systemChat format["Você Voltou Para A Favela %1, Mas Está Na Mira Do Sniper...", (name player)];
			};
			if (!_InGodMode) then {
				player allowDamage true;
			};
		};

		if ((_safeZone distance player > _dis) && (_inSafeZone)) then {
			player removeEventHandler ["fired", _eh1];
			_inSafeZone = false;
			if (isPlayer player) then {
				hintSilent parseText format ["<t size='3.4' color='#ff0000' shadow='0'>AVISO!</t> <t size='1.2'> Você está Saindo Da Favela! Você Será Morto Por Um Sniper! </t>"];
		    };
            sleep 5.0;
		    player setDamage 1;
			if (!_InGodMode) then {
				player allowDamage true;
			};
		};
	};

	sleep 1;
};
