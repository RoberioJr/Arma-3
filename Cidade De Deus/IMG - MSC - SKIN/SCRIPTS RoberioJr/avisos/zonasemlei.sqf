if (isDedicated) exitWith {};
waitUntil {!isNull player};
waitUntil {time > 0};

private ["_eh1","_inSafeZone","_safeZone","_dis", "_playerSide", "_spawnpos", "_list"];
_inSafeZone = false;
_safeZone = getMarkerPos "zonasemlei";
_playerSide = side player;
_dis = 1900;


_spawnpos = [ _safeZone select 0, _safeZone select 1, 1];
_list = nearestObjects [_spawnpos, ["static"], _dis];

{ _x allowDamage false; _x addEventHandler ["HandleDamage", {false}]; } forEach _list;

if (alive player) then {
	if (_safeZone distance player > _dis) then {
		_inSafeZone = false;
		if (isPlayer player) then {
			hintSilent parseText format ["<t size='3.2' color='#ff0000' shadow='0'>AVISO!</t> <t size='1.2'> Você está Saindo Da Zona Sem Lei, Mas Ainda Está Em Perigo! </t>"];
		};
	}else{
		_inSafeZone = true;
		if (isPlayer player) then {
			hintSilent parseText format ["<t size='3.2' color='#ff0000' shadow='0'>AVISO!</t> <t size='1.2'> Você está Entrando Na Zona Sem Lei. Regras Não São Válidas Aqui! </t>"];
		};
	};
};

while {true} do {
	if (alive player) then {

		if ((_safeZone distance player < _dis) && (!_inSafeZone)) then {
			_inSafeZone = true;
			if (isPlayer player) then {
                hintSilent parseText format ["<t size='3.2' color='#ff0000' shadow='0'>AVISO!</t> <t size='1.2'> Você está Entrando Na Zona Sem Lei. Regras Não São Válidas Aqui! </t>"];
			};
		};

		if ((_safeZone distance player > _dis) && (_inSafeZone)) then {
			_inSafeZone = false;
			if (isPlayer player) then {
				hintSilent parseText format ["<t size='3.4' color='#ff0000' shadow='0'>AVISO!</t> <t size='1.2'> Você está Saindo Da Zona Sem Lei! Mas Ainda Está Em Perigo! </t>"];
			};
		};
	};

	sleep 1;
};
