/*
  File: fn_zip_blindfoldAction.sqf
  Author: Wackbatt | 76561198071769386
  Desciption: Executes the blindfold function.
  Notes: N/A
  Origin: Altisliferpg.com and armargplife.com
*/
if (cursorobject GetVariable "blindfolded") exitWith {
    [player] remoteExec["zipties_fnc_zip_blindfold", cursorobject];
    [true, "blindfold", 1] call life_fnc_handleInv;
};

if (life_inv_blindfold < 1) exitWith {
    hint "Você Não Tem Um Saco."
};
if !(cursorobject GetVariable "ziptied") exitWith {
    hint "O Jogador Não Está Amarrado."
};

[false, "blindfold", 1] call life_fnc_handleInv;
[player] remoteExec["zipties_fnc_zip_blindfold", cursorobject];
