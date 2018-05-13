#include "..\script_macros.hpp" 
/*

    Author: RobérioJR Asfarc [ASF]

*/

private "_guincho";

   /* DEFINIÇÕES */
  _guincho = LIFE_SETTINGS(getNumber,"rj_ativar_guincho");


 /* Guincho Avançado */
 if (_guincho isEqualTo 1) then {
  diag_log "RJ: Guincho Avançado - Ativado";
  [] execVM "rj\GuinchoAvancado\guincho.sqf";
 };