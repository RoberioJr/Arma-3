/*

    Author: RobérioJr

*/

_Jogador = _this select 0;
_Valor = _this select 1;

if (_Valor > 0) then {
    _pos = _Jogador modelToWorld[0,3,0];
    _pos = [(_pos select 0),(_pos select 1),0];
    _obj = "Land_Money_F" createVehicle _pos;
    _obj setVariable ["grana",[_Valor,true],true];
	_obj setVariable ["R3F_LOG_disabled", true, true];
    _obj setPos _pos;
    [_obj] remoteExecCall ["RDR_fnc_SimDesabilitar",0];
};