/*
  
    Author: RobérioJR
  
*/

if (playerSide isEqualTo civilian) then {
    if (isServer) then 
    {
	    /* Definições */
	    private _nomedoCanal1 = "FaceBook";
		private _nomedoCanal2 = "Canal De Ajuda";
		
		/* Criação De Canais */
		
		//FaceBook
	    private _canalID1 = radioChannelCreate [[0, 33, 255, 0.87], _nomedoCanal1, "%UNIT_NAME", []];  //COR AZUL
	    if (_canalID1 == 0) exitWith {diag_log format ["Canal Customizado '%1' Falhou Na Criação!", _nomedoCanal1]};
	    [_canalID1, {_this radioChannelAdd [player]}] remoteExec ["call", [0, -2] select isDedicated, _nomedoCanal1];
		
		sleep 0.2;
		
		//Canal De Ajuda
		private _canalID2 = radioChannelCreate [[255, 0, 0, 0.70], _nomedoCanal2, "%UNIT_NAME", []];  //COR VERMELHA
	    if (_canalID2 == 0) exitWith {diag_log format ["Canal Customizado '%1' Falhou Na Criação!", _nomedoCanal2]};
	    [_canalID2, {_this radioChannelAdd [player]}] remoteExec ["call", [0, -2] select isDedicated, _nomedoCanal2];
    };
};

sleep 0.6;  //Fix Na Hora De Gerar Canais Que Ficavam com o Mesmo ID

if (playerSide isEqualTo west) then {
    if (isServer) then 
    {
	    /* Definições */
	    private _nomedoCanal1 = "Radio BOPE";
		private _nomedoCanal2 = "Radio PM";
		
		/* Criação De Canais */
		
		//BOPE
		if (FETCH_CONST(life_coplevel) >= 11) then
		{
	        private _canalID3 = radioChannelCreate [[0, 0, 5, 0.78], _nomedoCanal1, "%UNIT_NAME", []];  //COR PRETO
	        if (_canalID3 == 0) exitWith {diag_log format ["Canal Customizado '%1' Falhou Na Criação!", _nomedoCanal1]};
	        [_canalID3, {_this radioChannelAdd [player]}] remoteExec ["call", [0, -2] select isDedicated, _nomedoCanal1];
		};
		
		sleep 0.2;
		
		//PM
		if (FETCH_CONST(life_coplevel) <= 10) then
		{
		    private _canalID4 = radioChannelCreate [[0, 0, 255, 0.75], _nomedoCanal2, "%UNIT_NAME", []];  //COR AZUL
	        if (_canalID4 == 0) exitWith {diag_log format ["Canal Customizado '%1' Falhou Na Criação!", _nomedoCanal2]};
	        [_canalID4, {_this radioChannelAdd [player]}] remoteExec ["call", [0, -2] select isDedicated, _nomedoCanal2];
		};
    };
};