/*

    Author: RobérioJR Asfarc [ASF]
	desc:Remover Neblina

*/
if (LIFE_SETTINGS(getNumber,"rj_ativar_neblina") isEqualTo 0) then {
 diag_log "RJ:Neblina - Desativada";
  [] spawn {
      while{true} do {
          sleep 20;
          300 setFog 0;
          sleep 600;
      };
  };
 } else {
    diag_log "RJ:Neblina - Ativada";
};