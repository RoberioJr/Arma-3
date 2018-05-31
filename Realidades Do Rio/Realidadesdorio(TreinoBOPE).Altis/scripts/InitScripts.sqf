#include "..\rj_macros.hpp"  //Incluir Macros
/*

    Author: RobérioJR
	Desc: Inicia As Scripts Da Missao

*/

private "_cor","_limpeza","_gaslacri","_ambcasas","_stmlogica","_clmdinamic","_trafego","_reparov";


  /* DEFINIÇÕES */
 _cor = REALIDADESDORIOCFG(getNumber,"rj_ativar_corrigircor");
 _limpeza = REALIDADESDORIOCFG(getNumber,"rj_ativar_limpeza");
 _gaslacri = REALIDADESDORIOCFG(getNumber,"rj_ativar_gaslacrimo");
 _ambcasas = REALIDADESDORIOCFG(getNumber,"rj_ativar_ambcasas");
 _stmlogica = REALIDADESDORIOCFG(getNumber,"rj_ativar_syslogica");
 _clmdinamic = REALIDADESDORIOCFG(getNumber,"rj_ativar_climadinamico");
 _trafego = REALIDADESDORIOCFG(getNumber,"rj_ativar_trafego");
 _reparov = REALIDADESDORIOCFG(getNumber,"rj_ativar_reparoveh");

 /* SCRIPTS A SEREM EXECUTADAS */
 
    [] execVM "admin\admins.sqf";                     //Painel ADM
    [] execVM "admin\loop.sqf";                       //Loop Painel ADM
	[] execVM "zonas\safebope.sqf";                   //SAFEZONE BOPE
 if (_cor isEqualTo 1) then {
	[] execVM "scripts\Cor.sqf";                      //Correção De Cor
 };
 if (_gaslacri isEqualTo 1) then {
	[] execVM "scripts\gaslacrimo.sqf";               //Gás Lacrimogênio
 };
	[] execVM "scripts\PuloDoMacaco.sqf";             //Pulo Do Macaco SHIFT + V
	[] execVM "scripts\recargaCarreg\Carreg.sqf";     //Recarga De Carregadores CTRL + R
 if (_limpeza isEqualTo 1) then {
	[] execVM "scripts\Limpeza.sqf";                  //Melhora Peformance
	[] execVM "scripts\Limpeza2.sqf";                 //Melhora Peformance
 };
 if (_ambcasas isEqualTo 1) then {
	[] execVM "scripts\PF\init.sqf";                  //Ambientação Das Casas
 };
 if (_stmlogica isEqualTo 1) then {
	[] execVM "scripts\R3F_LOG\init.sqf";             //Sistema De Logica/Interação Com Veiculos e Objetos
 };
 if (_trafego isEqualTo 1) then {
	[] execVM "scripts\Trafego\init.sqf";             //Sistema De Tráfego/NPCs
 };
 if (_clmdinamic isEqualTo 1) then {
	[] execVM "scripts\ClimaDinamico.sqf";            //Mudança Do Clima (Dinâmico)	
 };
 if (_reparov isEqualTo 1) then {
	[] execVM "scripts\RepararVeiculo.sqf";           //Sistema De Reparo De Veiculos
 };
	[] execVM "scripts\ZeusFPS.sqf";                  //Mostra FPS Do Jogador No Modo Zeus
	[] execVM "scripts\LogoInferior\fn_initLogo.sqf"; //Mostra Uma Logo Na Parte Inferior Da Tela

	/* * * * * * * * * * */
	
    diag_log "Fim Da Inicialização Das Scripts Da Missao.";




