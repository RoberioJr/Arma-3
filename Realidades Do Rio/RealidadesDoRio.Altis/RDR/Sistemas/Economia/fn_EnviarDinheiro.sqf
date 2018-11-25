/*

    Author: RobérioJR

*/

_Valor = ctrlText 5025; 
_Jogador = lbData [5029,lbCurSel 5029]; 
_Jogador = call compile format ["%1",_Jogador];

If (!Alive Player) ExitWith {};
If (_Valor > RDR_Grana) ExitWith { Hint "Você Não Tem Dinheiro Suficiente!"; };
If (IsNil "_Valor") ExitWith { Hint "Digite Um Numero Válido!"; };
If !([_Valor] Call RDR_fnc_ENumeral) ExitWith { Hint "Digite Um Numero Válido!"; };
If (_Valor < 1) ExitWith { Hint "Digite Uma Quantia Válida!"; };
If (IsNull _Jogador || IsNil "_Jogador") ExitWith { Hint "Erro Ao Enviar Dinheiro Para Esse Jogador!"; };
If (!Alive _Jogador) ExitWith { Hint "Não Da Pra Dar Dinheiro Pra Um Cadaver..."; };

_Valor = ParseNumber(_Valor);

 [False,_Valor,0] Spawn RDR_fnc_AdcSubGrana; 
 [_Valor,player] RemoteExec ['RDR_fnc_ReceberDinheiro',_Jogador];
 Hint Format["Você Enviou R$ %1 Para %2",_Valor,name _Jogador];
 
 [0] Spawn RDR_fnc_Sincronizar;
