/*

    Author: RobérioJR

*/

If (!Alive Player) ExitWith {};
If ((currentWeapon player) IsEqualTo "") ExitWith { Hint "Nenhuma Arma Equipada!"; };

If ((currentWeapon player) in RDR_Armas) Then
{
    {
	    _Arma = (_x Select 0);
		_Valor = (_x Select 1);
		if (_Arma IsEqualTo (currentWeapon player)) Then {
		    player removeWeapon (currentWeapon player);
			If (IsNil "_Valor") Then {_Valor = 0;};
			_Valor = Round (_Valor * .25);
			[True,_Valor, 0] Call RDR_fnc_AdcSubGrana;
			Hint Format ["Você Vendeu Sua Arma Por: %1",_Valor];
		};
	} ForEach RDR_ArmasCfg;
} Else {
    Hint "Essa Arma Não Pode Ser Vendida!";
};

 [0] Spawn RDR_fnc_Sincronizar;
