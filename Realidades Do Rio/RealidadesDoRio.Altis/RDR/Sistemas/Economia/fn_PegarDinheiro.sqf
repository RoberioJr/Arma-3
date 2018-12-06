/*

    Author: RobérioJR

*/

If (!Alive Player) ExitWith {};
If !(TypeOf CursorObject IsEqualTo "Land_Money_F") ExitWith {};
If (RDR_JogadorOcupado) ExitWith { ["Aguarde Para Fazer Isso Novamente!!.",1] Spawn RDR_fnc_Notificar; };

_Obj = CursorObject;
_Valor = (_Obj getVariable 'grana') select 0;

[2] Spawn RDR_fnc_Ocupado;

deleteVehicle _Obj;
player playMove "AinvPknlMstpSlayWrflDnon";

[true,_Valor,0] Call RDR_fnc_AdcSubGrana;
[Format["Você Pegou R$%1.",_Valor],1] Spawn RDR_fnc_Notificar;

[0] Spawn RDR_fnc_Sincronizar;