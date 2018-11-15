/*

    Author: RobérioJR
	Desc:
	_instigator é O Jogador Que Causou A Morte Do Jogador
	_unit é O Jogador Que Morreu
	
*/

params["_unit","_killer","_instigator"];

Private ['_msg'];

if((!isPlayer _instigator) OR {_instigator isEqualTo _unit}) exitWith {};
if((side _instigator) isEqualTo playerSide) then 
{
	/* Penalidade Por TK */
	_msg = Format ['Você Foi Penalizado Por Matar Um Companheiro De Equipe: - R$%1',PerdaTK];
	[_msg,1] RemoteExec ["RJ_fnc_Notificar",_instigator];
	[PerdaTK,0] RemoteExecCall ["RJ_fnc_AdcSubGrana",_instigator];
	
	/* Remover Kill Do Infrator (Killer) */
	[0] RemoteExecCall ["RJ_fnc_AdcSubMorte",_instigator];
} 
	else 
{
	/* Recompensa Por Morte */
	_msg = Format ['Você Matou Um Inimigo, Ganhos: + R$%1',GanhoKill];
	[_msg,2] RemoteExec ["RJ_fnc_Notificar",_instigator];
	[GanhoKill,1] RemoteExecCall ["RJ_fnc_AdcSubGrana",_instigator];
	
	/* Adicionar Kill Ao Killer */
	[1] RemoteExecCall ["RJ_fnc_AdcSubMorte",_instigator];
};

RJ_Loadout_Morto = [_unit] Call RJ_fnc_PegarLoadoutDoCorpo;

_unit setVariable ["Reviver",true,true];
_unit setVariable ["Nome",(Name Player),true];



