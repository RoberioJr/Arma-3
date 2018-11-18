/*

    Author: RobérioJR

	Uso:
	[0,player,playerside,RDR_Grana,RDR_Banco] remoteExec ["RDR_fnc_PrepararEnvio",2];
	0 - Geral | 1 - Loadout | 2 - Estado Do Jogador | 3 - Dinheiro | 4 - Mortes

*/

_player = _this Select 0;
_side = _this Select 1;
_grana = _this Select 2;
_banco = _this Select 3;
_vivo = _this Select 4;
_uid = _this Select 5;
_loadout = _this Select 6;
_posicao = _this Select 7;

If (_vivo) Then { _vivo = 1; } Else { _vivo = 0; };

_query = "";
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
 
 [1,_query] call RDR_fnc_asyncCall;