#include "..\script_macros.hpp" 
/*

    Author: RobérioJR Asfarc [ASF]

*/

private "_grafico","_neblina","_reparar","_safeszn","_mochinv","_gaslacr","_barstat","_msgnsrj","_marcarj";

   /* DEFINIÇÕES */
  _grafico = LIFE_SETTINGS(getNumber,"rj_ativar_grafico");
  _neblina = LIFE_SETTINGS(getNumber,"rj_ativar_neblina");
  _reparar = LIFE_SETTINGS(getNumber,"rj_ativar_reparoveiculo");
  _safeszn = LIFE_SETTINGS(getNumber,"rj_ativar_safezones");
  _gaslacr = LIFE_SETTINGS(getNumber,"rj_ativar_gaslacrimo");
  _barstat = LIFE_SETTINGS(getNumber,"rj_barradestatus");
  _msgnsrj = LIFE_SETTINGS(getNumber,"rj_msgsconometradas");
  _marcarj = LIFE_SETTINGS(getNumber,"rj_ativar_marcadagua");
   

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
  //[] execVM "rj\Debug\debugrj.sqf";
  
 /* Gás Lacrimogenio */
 if (_gaslacr isEqualTo 1) then {
  diag_log "RJ: Gás Lacrimogênio - Ativado";
  [] execVM "rj\GasLacrimo\gaslacrimo.sqf";
 };
 
 /* Barra De Status */ 
 switch (_barstat) do 
 { 
	Case 1:
	{
	    diag_log "RJ: Barra De Status - Com Icones";
        [] execVM "rj\BarraDeStatus\StatusBarSimples2.sqf";
	};
	Case 2:
	{
	    diag_log "RJ: Barra De Status - Sem Icones";
        [] execVM "rj\BarraDeStatus\StatusBarSimples.sqf";
	};
 };
  
 /* Marcador Do Mapa */
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
  
 /* Loop Sides */
  [] execVM "rj\LoopSide\loopsides.sqf";
  
 /* Mensagens */
 if (_msgnsrj isEqualTo 1) then { 
  diag_log "RJ: Mensagens Cronometradas - Ativado";
  [] execVM "rj\MSG\msgs.sqf";
 };
 
 /* Marca D'Agua Com Logo */
 if (_marcarj isEqualTo 1) then { 
  diag_log "RJ: Marca D'Agua - Ativado";
  [] execVM "rj\Logo\fn_iniciarLogo.sqf";
 };
 

  
 


