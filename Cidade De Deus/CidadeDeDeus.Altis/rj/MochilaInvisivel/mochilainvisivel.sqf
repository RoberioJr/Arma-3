#include "..\..\script_macros.hpp" 
/*

    Author: RobérioJR [ASFARC]
	Desc: Tira Textura Das Mochilas

*/

private "_copm","_medm","_civm";

  /* DEFINIÇÕES */
 
 _copm = LIFE_SETTINGS(getNumber,"rj_ativar_mochilainvisivel_cop");
 _medm = LIFE_SETTINGS(getNumber,"rj_ativar_mochilainvisivel_med");
 _civm = LIFE_SETTINGS(getNumber,"rj_ativar_mochilainvisivel_civ");


while {true} do {
    if (_copm isEqualTo 1) then {
        if(playerSide == west) then {(unitBackpack player) setObjectTextureGlobal [1,""];}; // Mochila Invisivel COP
  };
    if (_medm isEqualTo 1) then {
        if(playerSide == independent) then {(unitBackpack player) setObjectTextureGlobal [1,""];}; // Mochila Invisivel MED
  };
    if (_civm isEqualTo 1) then {
        if(playerSide == civilian) then {(unitBackpack player) setObjectTextureGlobal [1,""];}; // Mochila Invisivel CIV
  };
  sleep 10;   //Tempo Entre Os Loops
};
