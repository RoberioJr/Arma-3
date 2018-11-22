/*

    Author: RobérioJR

	Uso:
	[0,player,playerside,RDR_Grana,RDR_Banco] remoteExec ["RDR_fnc_PrepararEnvio",2];
	0 - Geral | 1 - Loadout | 2 - Estado Do Jogador | 3 - Dinheiro | 4 - Mortes

*/

_modo = _this Select 0;
_side = _this Select 1;
_grana = _this Select 2;
_banco = _this Select 3;
_vivo = _this Select 4;
_uid = _this Select 5;
_loadout = _this Select 6;
_posicao = _this Select 7;

If (_vivo) Then { _vivo = 1; } Else { _vivo = 0; };
If (_modo IsEqualto 2) Then { _vivo = 0; }; //Modo Exclusivo Para O Sistema FAR
If (_vivo IsEqualTo 0) Then { _posicao = []; };

_query = "";

Switch (_modo) Do {
    Case 0: {
        switch (_side) do {
            case west: 
	        {
	           _query = format["UPDATE players SET dinheiro = '%1', bancoacc = '%2', bope_gear = '%3', alive = '%4' WHERE PID = '%5'",_grana,_banco,_loadout,_vivo,_uid];
	        };
            case east: 
	        {
	           _query = format["UPDATE players SET dinheiro = '%1', bancoacc = '%2', band_gear = '%3', band_position = '%4', alive = '%5' WHERE PID = '%6'",_grana,_banco,_loadout,_posicao,_vivo,_uid];
	        };
            case independent: 
	        {
	           _query = format["UPDATE players SET dinheiro = '%1', bancoacc = '%2', band_gear = '%3', band_position = '%4', alive = '%5' WHERE PID = '%6'",_grana,_banco,_loadout,_posicao,_vivo,_uid];
	        };
        };
	};
    Case 1: {
	
	};
    Case 2: {
        If (_side IsEqualTo west) Then {
	        _query = format["UPDATE players SET bope_gear = '%1', alive = '%2' WHERE PID = '%3'",_loadout,_vivo,_uid];
	    } Else {
		    _query = format["UPDATE players SET band_gear = '%1', band_position = '%2', alive = '%3' WHERE PID = '%4'",_loadout,_posicao,_vivo,_uid];
		};
	};
};
 
 [1,_query] call RDR_fnc_asyncCall;