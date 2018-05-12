#include "..\script_macros.hpp" 
/*

    Author: RobérioJR Asfarc [ASF]

*/

private "_grafico","_neblina","_reparar","_safeszn","_mochinv";

   /* DEFINIÇÕES */
  _grafico = LIFE_SETTINGS(getNumber,"rj_ativar_grafico");
  _neblina = LIFE_SETTINGS(getNumber,"rj_ativar_neblina");
  _reparar = LIFE_SETTINGS(getNumber,"rj_ativar_reparoveiculo");
  _safeszn = LIFE_SETTINGS(getNumber,"rj_ativar_safezones");
  _mochinv = LIFE_SETTINGS(getNumber,"rj_ativar_mochilainvisivel");
   

 /* Melhorar Grafico Do Arma */
 if (_grafico isEqualTo 1) then {
  diag_log "RJ: Melhoria De Grafico - Ativado";
  [] execVM "rj\Cor\Cor.sqf";
 };
  
 /* Remover Neblina Do Arma */
 if (_neblina isEqualTo 0) then {
  diag_log "RJ: Neblina - Desativada";
  [] execVM "rj\RemoverNeblina\RemoverNeblina.sqf";
 };
  
 /* Debug Menu Do CCD */
  [] execVM "rj\Debug\iniciar.sqf";
  
 /* Gás Lacrimogenio */
  [] execVM "rj\GasLacrimo\gaslacrimo.sqf";
  
 /* Barra De Status */ 
  [] execVM "rj\BarraDeStatus\iniciarstatusbar.sqf";
  
 /* Mancador Do Mapa */
  [] execVM "rj\Marcador\marcador.sqf";
  
 /* Reparar Veiculo */
 if (_reparar isEqualTo 1) then {
  diag_log "RJ: Reparo De Veiculo Sem ToolKit - Ativado";
  [] execVM "rj\ReparoDeVeiculo\repararveiculo.sqf";
 };
 
 /* SafeZones Do Servidor */
 if (_safeszn isEqualTo 1) then {
  diag_log "RJ: SafeZones - Ativado";
  [] execVM "rj\Safezones\InitSafeZones.sqf";
 };
  
 /* Mochilas Invisiveis */
 if (_mochinv isEqualTo 1) then {
  diag_log "RJ: Mochilas Invisiveis - Ativado";
  [] execVM "rj\MochilaInvisivel\mochilainvisivel.sqf";
 };
 
 /* Guincho Avançado(Executado Pelo Servidor) */
  /*[] execVM "rj\GuinchoAvancado\guincho.sqf"*/


