/*

    Author: RobérioJr
	[] Call RDR_fnc_Sincronizar;

*/

_Dinheiro = RDR_grana;

_Banco = RDR_Banco;

_Vivo = Alive Player;

_Posicao = getPosATL Player;

_Uid = GetPlayerUID Player;

_loadout = GetUnitLoadout Player;


 [player,playerSide,_Dinheiro,_Banco,_Vivo,_Uid,_loadout,_Posicao] remoteExec ["RDR_fnc_PrepararEnvio",2];


