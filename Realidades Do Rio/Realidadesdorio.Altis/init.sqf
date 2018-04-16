/*
/  Realidades    /     
/      Do        /     
/ Rio De Janeiro /
*/

	//Init Scripts De 3º Parte...
	[] execVM "admin\admins.sqf";                   //Painel ADM
    [] execVM "admin\loop.sqf";                     //Loop Painel ADM
	[] execVM "zonas\safebope.sqf";                 //SAFEZONE BOPE
	[] execVM "scripts\Cor.sqf";                    //Correção De Cor
	[] execVM "scripts\gaslacrimo.sqf";             //Gás Lacrimogênio
	[] execVM "scripts\PuloDoMacaco.sqf";           //Pulo Do Macaco SHIFT + V
	[] execVM "scripts\recargaCarreg\Carreg.sqf";   //Recarga De Carregadores CTRL + R
	[] execVM "scripts\Limpeza.sqf";                //Melhora Peformance
	[] execVM "scripts\Limpeza2.sqf";               //Melhora Peformance
	[] execVM "scripts\PF\init.sqf";                //Ambientação Das Casas
	[] execVM "scripts\R3F_LOG\init.sqf";           //Sistema De Logica/Interação Com Veiculos e Objetos
	[] execVM "scripts\Trafego\init.sqf";           //Sistema De Tráfego/NPCs
	[] execVM "scripts\ClimaDinamico.sqf";          //Mudança Do Clima (Dinâmico)	
	[] execVM "scripts\RepararVeiculo.sqf";         //Sistema De Reparo De Veiculos
	[] execVM "scripts\ZeusFPS.sqf";                //Mostra FPS Do Jogador No Modo Zeus
	[] execVM "scripts\LogoInferior\initLogo.sqf";  //Mostra Uma Logo Na Parte Inferior Da Tela
	
	//Init AntiHack...
	[] execVM "AntiHack\ACTermal\Init.sqf";         //Anti Termal Hack
	[] execVM "AntiHack\ACScripts\Anticheat.sqf";   //AntiHack Recoil/Injeção De Script/AdminMenu

	if (hasInterface) then {
    [] execVM "briefing.sqf";                       //Carregar Informações No Mapa
    };
	
	//NameTags...
	122014 cutrsc ["NameTag","PLAIN"];              //Script NameTags

/*	
 // Remover Linhas Do Mapa...
 (createTrigger ["EmptyDetector", [0,0,0], false]) setTriggerStatements
 [
 	"!triggerActivated thisTrigger", 
 	"thisTrigger setTriggerTimeout [30,30,30,false]",
 	"{if (markerShape _x == 'POLYLINE') then {deleteMarker _x}} forEach allMapMarkers"
 ];
*/
 
 //Remover Voz De Bots Falando No Radio
 0 fadeRadio 0;
 enableRadio false;
 enableSentences false;
 

/* Configurações De Visão */
 
 CHVD_allowNoGrass = true;       //Opção De Desativar Grama 'True = Ativado e False = Desativado'
 CHVD_maxView = 5000;
 CHVD_maxObj = 5000;