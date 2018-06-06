#include "..\..\script_macros.hpp" 
/*

    Author: RobérioJR [ASFARC]
	Desc: Loop Que Executa Scripts

*/

private "_copm","_medm","_civm","_vehm";

  /* DEFINIÇÕES */
 
 _copm = LIFE_SETTINGS(getNumber,"rj_ativar_mochilainvisivel_cop");
 _medm = LIFE_SETTINGS(getNumber,"rj_ativar_mochilainvisivel_med");
 _civm = LIFE_SETTINGS(getNumber,"rj_ativar_mochilainvisivel_civ");
 _vehm = LIFE_SETTINGS(getNumber,"rj_ativar_autoreparoveicul_med");
 
  /* LOGS */
if (_copm isEqualTo 1) then {diag_log "RJ: Mochilas Invisiveis COP - Ativado";};
if (_medm isEqualTo 1) then {diag_log "RJ: Mochilas Invisiveis MED - Ativado";};
if (_civm isEqualTo 1) then {diag_log "RJ: Mochilas Invisiveis CIV - Ativado";};
if (_vehm isEqualTo 1) then {diag_log "RJ: Auto Reparar Veiculo MED - Ativado";};


while {true} do {
    if(playerSide isEqualTo west) then { //COP
	    if (_copm isEqualTo 1) then {(unitBackpack player) setObjectTextureGlobal [0,""];}; // Mochila Invisivel COP
    };
    if(playerSide isEqualTo independent) then { //SAMU
	    if (_medm isEqualTo 1) then {(unitBackpack player) setObjectTextureGlobal [0,""];}; // Mochila Invisivel MED
		if (_vehm isEqualTo 1) then {vehicle player setfuel 1; vehicle player setdammage 0;}; //Auto Reabastecimento e Reparo de Veiculo
    };
    if(playerSide isEqualTo civilian) then { //CIV
		if (_civm isEqualTo 1) then {(unitBackpack player) setObjectTextureGlobal [0,""];}; // Mochila Invisivel CIV
    };
  sleep 5;   //Tempo Entre Os Loops
};

