/*
/         Edit:RoberioJr
/         Description: Painel De Admin
*/
#include "..\UIDs.sqf"

waituntil {!alive player ; !isnull (finddisplay 46)};
if ((getPlayerUID player) in _Admins) then {

act = player addaction [("<t color=""#9400D3"">" + ("Admin!") +"</t>"),"admin\tools.sqf","",5,false,true,"",""];
//[] execVM "admin\VeiculoSpawn\iniciar.sqf";

};
