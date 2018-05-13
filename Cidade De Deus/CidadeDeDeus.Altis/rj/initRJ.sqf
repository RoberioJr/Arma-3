#include "..\script_macros.hpp" 
/*

    Author: RobérioJR Asfarc [ASF]

*/

private "_grafico","_neblina","_reparar","_safeszn","_mochinv","_gaslacr";

   /* DEFINIÇÕES */
  _grafico = LIFE_SETTINGS(getNumber,"rj_ativar_grafico");
  _neblina = LIFE_SETTINGS(getNumber,"rj_ativar_neblina");
  _reparar = LIFE_SETTINGS(getNumber,"rj_ativar_reparoveiculo");
  _safeszn = LIFE_SETTINGS(getNumber,"rj_ativar_safezones");
  _mochinv = LIFE_SETTINGS(getNumber,"rj_ativar_mochilainvisivel");
  _gaslacr = LIFE_SETTINGS(getNumber,"rj_ativar_gaslacrimo");
  _barradt = LIFE_SETTINGS(getNumber,"rj_barradestatus_detalhada");
   

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
  
 /* Debug Menu Do RJ */
  [] execVM "rj\Debug\debugrj.sqf";
  
 /* Gás Lacrimogenio */
 if (_gaslacr isEqualTo 1) then {
  diag_log "RJ: Gás Lacrimogênio - Ativado";
  [] execVM "rj\GasLacrimo\gaslacrimo.sqf";
 };
 
 /* Barra De Status */ 
 if (_barradt isEqualTo 1) then {
    diag_log "Barra De Status - Detalhada";
  [] execVM "rj\BarraDeStatus\iniciarstatusbar.sqf";
   } else {
    diag_log "Barra De Status - Simples";
  [] execVM "rj\BarraDeStatus\StatusBarSimples.sqf";
 };
  
  
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


