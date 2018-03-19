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
	[] execVM "scripts\Intro.sqf";    //Intro Do Servidor
	[] execVM "scripts\Limpeza.sqf";    //Melhora Peformance
	[] execVM "scripts\PF\init.sqf";    //Ambientação Das Casas
	[] execVM "zonas\safebope.sqf";    //SAFEZONE BOPE
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

 
 //Remover Voz De Bots Falando No Radio
 0 fadeRadio 0;
 enableRadio false;
 enableSentences false;
 

//            //////////////////////////////////// Configurações De Visão ///////////////////////////////////////              //
 
 CHVD_allowNoGrass = true;
 CHVD_maxView = 5000;
 CHVD_maxObj = 5000;
/*
CHVD_fnc_drawDebug = {
	hintSilent format ["
		VD: %1
		OVD: %2
		TG: %3
	", viewDistance, getObjectViewDistance select 0, getTerrainGrid];
};

[] spawn {
	for "_i" from 0 to 1 step 0 do {
		_currentVD = viewDistance;			
		waitUntil {_currentVD != viewDistance};
		call CHVD_fnc_drawDebug;
	};
};

[] spawn {
	for "_i" from 0 to 1 step 0 do {
		_currentVD = getObjectViewDistance select 0;			
		waitUntil {_currentVD != getObjectViewDistance select 0};
		call CHVD_fnc_drawDebug;
	};
};

[] spawn {
	for "_i" from 0 to 1 step 0 do {
		_currentVD = getTerrainGrid;			
		waitUntil {_currentVD != getTerrainGrid};
		call CHVD_fnc_drawDebug;
	};
};