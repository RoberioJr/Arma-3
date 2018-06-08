#include "..\script_macros.hpp" 
/*

    Author: RobérioJR Asfarc [ASF]

*/

private "_guincho","_tempoInicial";

   /* DEFINIÇÕES */
  _guincho = LIFE_SETTINGS(getNumber,"rj_ativar_guincho");


 /* Guincho Avançado */
 if (_guincho isEqualTo 1) then {
  diag_log "RJ: Guincho Avançado - Ativado";
  [] execVM "rj\GuinchoAvancado\guincho.sqf";
 };
 
 
 
 
 
 /* LOG COM INFORMAÇÕES SOBRE INICIALIZAÇÃO DO SERVIDOR */
 sleep 1;
 Diag_Log "RJ: Scripts E Modulos RJ Foram Inicializados.";
 _tempoInicial = diag_tickTime;
 sleep 2;
 diag_log "----------------------------------------------------------------------------------------------------";
 diag_log "------------------------------------- Servidor Inicializado ----------------------------------------";
 diag_log "----------------------------------------------------------------------------------------------------";
 diag_log "---------------------------------  Cidade De Deus || Altis Life  -----------------------------------";
 diag_log "-------------------------------------- Scripts By: RoberioJR ---------------------------------------";
 diag_log "----------------------------------------------------------------------------------------------------";
 diag_log format["-------------------------------------- Tempo Gasto: %1 Segs -------------------------------------",(diag_tickTime) - _tempoInicial];
 diag_log "----------------------------------------------------------------------------------------------------";
 
 
 