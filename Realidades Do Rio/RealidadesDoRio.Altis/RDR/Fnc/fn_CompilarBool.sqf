/*

    Author: RobérioJr

*/

Params ["_Codigo"];

private _Ret = false;

private _Compilar = call compile _Codigo;

If (_Compilar) Then {
    _Ret = true;
} Else {
    _Ret = false;
};

_Ret;