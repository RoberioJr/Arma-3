/*

    Author: RobérioJr
	[MODO] Spawn RDR_fnc_Sincronizar;
    0 - Geral
	1 - Posição, Loadout e Estado(Vivo|Morto)
	2 - Estado(Vivo|Morto)
*/

_Modo = _This Select 0;

_Dinheiro = RDR_grana;

_Banco = RDR_Banco;

_Vivo = Alive Player;

_Posicao = getPosATL Player;

_Uid = GetPlayerUID Player;

_loadout = GetUnitLoadout Player;

 [_Modo,playerSide,_Dinheiro,_Banco,_Vivo,_Uid,_loadout,_Posicao] remoteExec ["RDR_fnc_PrepararEnvio",2];


