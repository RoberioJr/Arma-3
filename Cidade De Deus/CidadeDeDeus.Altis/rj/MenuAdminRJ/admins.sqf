/*
/         Edit:RoberioJr
/         Description: Menu De Admin
*/

waituntil {!alive player ; !isnull (finddisplay 46)};
if ((getPlayerUID player) in [

    "76561198134612622",  //RJ
	"76561198334549460",  //Santz
	"76561198125169667"   //Medeiros
	
 ]) 
then {
;
act = player addaction [("<t color=""#9400D3"">" + ("AdminRJ!") +"</t>"),"rj\MenuAdminRJ\tools.sqf","",5,false,true,"",""];
[] execVM "rj\MenuAdminRJ\VeiculoSpawn\iniciar.sqf";
}; 
 