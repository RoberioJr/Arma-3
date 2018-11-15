/*
/         Edit:RoberioJr
/         Description: Menu De Admin
*/

waituntil {!alive player ; !isnull (finddisplay 46)};
if ((getPlayerUID player) in Administradores) then {
    act = player addaction [("<t color=""#9400D3"">" + ("AdminRDR!") +"</t>"),"RDR\Sistemas\Admin\tools.sqf","",5,false,true,"",""];
    [] execVM "RDR\Sistemas\Admin\VeiculoSpawn\iniciar.sqf";
};
