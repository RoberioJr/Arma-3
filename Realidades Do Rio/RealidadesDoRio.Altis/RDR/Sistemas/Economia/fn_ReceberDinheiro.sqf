/*

    Author: RobérioJR

*/

_Valor = _This Select 0;
_Jogador = _This Select 1;

 [True,_Valor,0] Spawn RDR_fnc_AdcSubGrana;
 Hint Format["Você Recebeu R$ %1 De %2!",_Valor,name _Jogador];

 [0] Spawn RDR_fnc_Sincronizar;