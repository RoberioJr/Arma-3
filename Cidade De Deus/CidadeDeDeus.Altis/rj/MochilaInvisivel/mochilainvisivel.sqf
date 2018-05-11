/*

    Author: RobérioJR [ASFARC]
	Desc: Tira Textura Das Mochilas

*/

if (LIFE_SETTINGS(getNumber,"rj_ativar_mochilainvisivel") isEqualTo 1) then {
 diag_log "RJ:Mochilas Invisiveis - Ativado";

    while {true} do {
        if (LIFE_SETTINGS(getNumber,"rj_ativar_mochilainvisivel_cop") isEqualTo 1) then {
            if(playerSide == west) then {(unitBackpack player) setObjectTextureGlobal [1,""];}; // Mochila Invisivel COP
   };
        if (LIFE_SETTINGS(getNumber,"rj_ativar_mochilainvisivel_med") isEqualTo 1) then {
           if(playerSide == independent) then {(unitBackpack player) setObjectTextureGlobal [1,""];}; // Mochila Invisivel MED
   };
        if (LIFE_SETTINGS(getNumber,"rj_ativar_mochilainvisivel_civ") isEqualTo 1) then {
           if(playerSide == civilian) then {(unitBackpack player) setObjectTextureGlobal [1,""];}; // Mochila Invisivel CIV
   };
    sleep 10;   //Tempo Entre Os Loops
  };
 } else {
  diag_log "RJ:Mochilas Invisiveis - Desativado";
};