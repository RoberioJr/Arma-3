#include "..\..\..\RDR_Macros.hpp"
/*

    Author: RobérioJR

*/

If (!Alive Player) ExitWith {};
If ((currentWeapon player) IsEqualTo "") ExitWith { Hint "Nenhuma Arma Equipada!"; };
If (RDR_LojaAtiva IsEqualTo "") ExitWith { Hint "Erro Ao Verificar A Loja Ativa!"; };

_ArrayDaLoja = RDRCFGARMAS(getArray,RDR_LojaAtiva,"armas");

_Erro = true;
_Valor = 0;
_Arma = "";


{
    If ((currentWeapon player) IsEqualTo (_x Select 0)) Then {
	    _Erro = false;
		_Arma = (_x Select 0);
		_Valor = (_x Select 3);
	};
} ForEach _ArrayDaLoja;

If (_Erro) ExitWith { Hint "Essa Arma Não Pode Ser Vendida Nessa Loja!"; };
If (IsNil "_Valor") Then { _Valor = 0; };
If (_Arma IsEqualTo "" || IsNil "_Arma") ExitWith { Hint "Arma Não Encontrada!"; };
If (_Valor IsEqualTo -1) ExitWith { Hint "Essa Arma Não Pode Ser Vendida!"; };

//If ((currentWeapon player) in RDR_Armas) Then
//{
    //{
	    //_Arma = (_x Select 0);
		//_Valor = (_x Select 1);
		if (_Arma IsEqualTo (currentWeapon player)) Then {
		    player removeWeapon (currentWeapon player);
			//If (IsNil "_Valor") Then {_Valor = 0;};
			//_Valor = Round (_Valor * .25);
			_Valor = (Round _Valor);
			[True,_Valor,0] Call RDR_fnc_AdcSubGrana;
			Hint Format ["Você Vendeu Sua Arma Por: %1",_Valor];
		};
	//} ForEach RDR_ArmasCfg;
//} Else {
    //Hint "Essa Arma Não Pode Ser Vendida!";
//};

 [0] Spawn RDR_fnc_Sincronizar;
