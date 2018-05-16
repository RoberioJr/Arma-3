/*
/  Realidades    /     
/      Do        /     
/ Rio De Janeiro /
*/


//Sistema De Lojas

params["_player"];

[_player] execVM "scripts\HG\Setup\fn_playerServerInitialization.sqf";

//Sistema de Whitelist By: RobérioJR
/*
_player = _this select 0;
_uid = getPlayerUID _player;

if ( _player getVariable [ "reserved", false ] && { !( _uid in allowed ) } ) then {
[ [], "fnc_reservedSlot", _player ] call BIS_fnc_MP;
};
*/




