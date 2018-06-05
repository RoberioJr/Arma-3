/*
/  Realidades    /     
/      Do        /     
/ Rio De Janeiro /
*/

_uidGeneral = "76561198343381444";
_uidLider = "76561198308659047";
_uid = getPlayerUID player;

if (_uid == _uidLider or _uid == _uidGeneral) then {
     comprareb addAction ["Pagar pelo desvio de armas do EB($50000)", "scripts\caixa\caixasdoeb.sqf";
};