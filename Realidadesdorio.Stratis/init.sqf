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
	[] execVM "scripts\recargaCarreg\Carreg.sqf";    //Recarga De Carregadores CTRL + R
	[] execVM "scripts\Restri.sqf";    //Restrição De Altura/Àrea
	[] execVM "zonas\safebope.sqf";    //SAFEZONE BOPE
	[] execVM "zonas\setores\loop.sqf";    //Setores
	call compile preprocessFile "scripts\Punir\Punir_Init.sqf";    //Punição Por TeamKill
	
	//Init AntiHack...
	[] execVM "AntiHack\ACTermal\Init.sqf";    //Anti Termal Hack

 // Remover Linhas Do Mapa...
 (createTrigger ["EmptyDetector", [0,0,0], false]) setTriggerStatements
 [
 	"!triggerActivated thisTrigger", 
 	"thisTrigger setTriggerTimeout [30,30,30,false]",
 	"{if (markerShape _x == 'POLYLINE') then {deleteMarker _x}} forEach allMapMarkers"
 ];
