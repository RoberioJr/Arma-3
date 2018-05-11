/*
    Author: RobérioJR
*/

if (LIFE_SETTINGS(getNumber,"rj_ativar_grafico") isEqualTo 1) then {
diag_log "RJ:Melhoria De Grafico - Ativado";

"ColorCorrections" ppEffectEnable true; 
"ColorCorrections" ppEffectAdjust [0.88, 0.88, 0, [0.2, 0.29, 0.4, -0.22], [1, 1, 1, 1.3], [0.15, 0.09, 0.09, 0.0]];
"ColorCorrections" ppEffectCommit 0;

 } else {
  diag_log "RJ:Melhoria De Grafico - Desativado";
};