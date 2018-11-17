/*

    Author: RobérioJR
	|07/08/18|

*/

//Cfg Master
[] execVM "RDR\Cfg\Cfg_Master.sqf";
//Cfg Loadout (Arsenal)
[] execVM "RDR\Cfg\Cfg_Loadout.sqf";
//Cfg Spawns
[] execVM "RDR\Cfg\Cfg_SpawnPoints.sqf";
//Cfg Armas
[] execVM "RDR\Cfg\Cfg_Store.sqf";
//Cfg Veiculos
[] execVM "RDR\Cfg\Cfg_Veiculos.sqf";

[
    2*60,  // seconds to delete dead bodies (0 means don't delete)
    2*60,  // seconds to delete dead vehicles (0 means don't delete)
    3*60,  // seconds to delete immobile vehicles (0 means don't delete)
    1*60,  // seconds to delete dropped weapons (0 means don't delete)
    10*60, // seconds to deleted planted explosives (0 means don't delete)
    4*60   // seconds to delete dropped smokes/chemlights (0 means don't delete)
] Spawn RDR_fnc_Limpeza;

RDR_MISSAO_DIR = str missionConfigFile select [0, count str missionConfigFile - 15];

call compileFinal preprocessFileLineNumbers "RDR\Sistemas\FAR\FAR_revive_init.sqf";

CfgsProntas = True;



