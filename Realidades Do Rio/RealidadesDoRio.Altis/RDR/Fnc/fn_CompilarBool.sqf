/*

    Author: RobérioJr

*/

Params ["_Codigo"];

private _Ret = false;

//private _Compilar = call compile _Codigo;

if (_Codigo isEqualTo "") exitWith {true};

private _Compilar = call compile _Codigo;

if (_Compilar isEqualType true) then {
    if (_Compilar) then {
        _Ret = true;
    };
} else {
    _Ret = true;
};

_Ret;
