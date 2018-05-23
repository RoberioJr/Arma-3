/*
/         Edit:RoberioJr
/         Description: Painel De Admin
*/

waituntil {!alive player ; !isnull (finddisplay 46)};
if ((getPlayerUID player) in [

    "76561198134612622", 
	"76561198343381444", 
	"76561198090180406",
	"76561198308659047"
	
 ]) 
then {
;
act = player addaction [("<t color=""#9400D3"">" + ("Admin!") +"</t>"),"admin\tools.sqf","",5,false,true,"",""];
//[] execVM "admin\VeiculoSpawn\iniciar.sqf";

};
