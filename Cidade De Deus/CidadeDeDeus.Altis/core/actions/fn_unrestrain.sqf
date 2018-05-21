#include "..\..\script_macros.hpp"
/*
    File: fn_unrestrain.sqf
    Author:

    Description:

*/
private ["_unit"];
_unit = param [0,objNull,[objNull]];

//EDIT RJ
if (playerSide isEqualTo civilian) then {
    if(!([false,"keys",1] call life_fnc_handleInv)) exitWith { hint "Você Não as Chaves Da Algema!"; };
    [true,"keys",1] call life_fnc_handleInv; // Remove if you want the keys a one time use.
};

if (isNull _unit || !(_unit getVariable ["restrained",false])) exitWith {}; //Error check?

_unit setVariable ["restrained",false,true];
_unit setVariable ["Escorting",false,true];
_unit setVariable ["transporting",false,true];
detach _unit;

[0,"STR_NOTF_Unrestrain",true,[_unit getVariable ["realname",name _unit], profileName]] remoteExecCall ["life_fnc_broadcast",west];