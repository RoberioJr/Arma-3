/*

    Author: RobérioJR

*/

private ["_container","_unit"];
if (count _this isEqualTo 1) exitWith {false};
_unit = _this select 0;
_container = _this select 1;

 /* Bloquear Inventário Dos Veiculos */
if (call {_veh = _container; _types = ["LandVehicle","Ship","Air"];_res = false; {if (_veh isKindOf _x) exitWith { _res = true };} forEach _types;_res}) exitWith {
    hint "Não é Prossivel Olhar O Inventário Dos Veiculos!";
    true;
};

