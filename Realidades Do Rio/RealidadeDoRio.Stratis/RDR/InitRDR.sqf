/*

    Author: RobérioJR
	|07/08/18|

*/

//Cfg Master
[] execVM "RJ\Cfg\Cfg_Master.sqf";
//Cfg Loadout (Arsenal)
[] execVM "RJ\Cfg\Cfg_Loadout.sqf";
//Cfg Spawns
[] execVM "RJ\Cfg\Cfg_SpawnPoints.sqf";
//Cfg Armas
[] execVM "RJ\Cfg\Cfg_Store.sqf";
//Cfg Veiculos
[] execVM "RJ\Cfg\Cfg_Veiculos.sqf";

[
    2*60,  // seconds to delete dead bodies (0 means don't delete)
    2*60,  // seconds to delete dead vehicles (0 means don't delete)
    3*60,  // seconds to delete immobile vehicles (0 means don't delete)
    1*60,  // seconds to delete dropped weapons (0 means don't delete)
    10*60, // seconds to deleted planted explosives (0 means don't delete)
    4*60   // seconds to delete dropped smokes/chemlights (0 means don't delete)
] Spawn RJ_fnc_Limpeza;

RJ_MISSAO_DIR = str missionConfigFile select [0, count str missionConfigFile - 15];

call compileFinal preprocessFileLineNumbers "RJ\Sistemas\FAR\FAR_revive_init.sqf";

CfgsProntas = True;



