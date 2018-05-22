#include "..\rj_macros.hpp"  //Incluir Macros
/*

    Author: RobérioJR
	Desc: Inicia As Scripts Da Missao

*/

private "_cor","_limpeza";
_init = false;


  /* DEFINIÇÕES */
 _cor = REALIDADESDORIOCFG(getNumber,"rj_ativar_corrigircor");
 _limpeza = REALIDADESDORIOCFG(getNumber,"rj_ativar_limpeza");

 /* SCRIPTS A SEREM EXECUTADAS */
 
    [] execVM "admin\admins.sqf";                     //Painel ADM
    [] execVM "admin\loop.sqf";                       //Loop Painel ADM
	[] execVM "zonas\safebope.sqf";                   //SAFEZONE BOPE
 // if (_cor isEqualTo 1) then {
	[] execVM "scripts\Cor.sqf";                      //Correção De Cor
 // };
	[] execVM "scripts\gaslacrimo.sqf";               //Gás Lacrimogênio
	[] execVM "scripts\PuloDoMacaco.sqf";             //Pulo Do Macaco SHIFT + V
	[] execVM "scripts\recargaCarreg\Carreg.sqf";     //Recarga De Carregadores CTRL + R
 // if (_limpeza isEqualTo 1) then {
	[] execVM "scripts\Limpeza.sqf";                  //Melhora Peformance
	[] execVM "scripts\Limpeza2.sqf";                 //Melhora Peformance
  //};
	[] execVM "scripts\PF\init.sqf";                  //Ambientação Das Casas
	[] execVM "scripts\R3F_LOG\init.sqf";             //Sistema De Logica/Interação Com Veiculos e Objetos
	[] execVM "scripts\Trafego\init.sqf";             //Sistema De Tráfego/NPCs
	[] execVM "scripts\ClimaDinamico.sqf";            //Mudança Do Clima (Dinâmico)	
	[] execVM "scripts\RepararVeiculo.sqf";           //Sistema De Reparo De Veiculos
	[] execVM "scripts\ZeusFPS.sqf";                  //Mostra FPS Do Jogador No Modo Zeus
	//[] execVM "scripts\LogoInferior\fn_initLogo.sqf"; //Mostra Uma Logo Na Parte Inferior Da Tela

	/* * * * * * * * * * */
_init = true;
	
if (_init isEqualTo 1) then {
    diag_log "Fim Da Inicialização Das Scripts Da Missao.";
	//execVM "algumascriptimportante";
};




