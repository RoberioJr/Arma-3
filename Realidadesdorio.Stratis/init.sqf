/*
/  Realidades    /     
/      Do        /     
/ Rio De Janeiro /
*/

	//Init Scripts De 3º Parte...
	[] execVM "admin\admins.sqf";    //Painel ADM
    [] execVM "admin\loop.sqf";    //Loop Painel ADM
	[] execVM "scripts\Cor.sqf";    //Correção De Cor
	[] execVM "scripts\dlc.sqf";    //Desbloqueia Veiculos Com DLC
	[] execVM "scripts\gaslacrimo.sqf";    //Gás Lacrimogênio
	[] execVM "scripts\PuloDoMacaco.sqf";    //Pulo Do Macaco SHIFT + V
	//[] execVM "scripts\recargaCarreg\Carreg.sqf";    //Recarga De Carregadores CTRL + R //INUTILIZADO
	[] execVM "scripts\IntroCAM.sqf";    //IntroCAM
	[] execVM "scripts\Limpeza.sqf";    //Melhora Peformance
	[] execVM "scripts\PF\init.sqf";    //Ambientação Das Casas
	[] execVM "zonas\safebope.sqf";    //SAFEZONE BOPE
	[] execVM "loopRec.sqf";   //Loop de Recompensas das Áreas
	[] execVM "R3F_LOG\init.sqf";    //Sistema De Logica\Interação Com Veiculos e Objetos
	call compile preprocessFile "scripts\Punir\Punir_Init.sqf";    //Punição Por TeamKill
	
	//Init AntiHack...
	[] execVM "AntiHack\ACTermal\Init.sqf";    //Anti Termal Hack

	if (hasInterface) then {
    [] execVM "briefing.sqf"; //Carregar Informações No Mapa
    };
	
 // Remover Linhas Do Mapa...
 (createTrigger ["EmptyDetector", [0,0,0], false]) setTriggerStatements
 [
 	"!triggerActivated thisTrigger", 
 	"thisTrigger setTriggerTimeout [30,30,30,false]",
 	"{if (markerShape _x == 'POLYLINE') then {deleteMarker _x}} forEach allMapMarkers"
 ];
