/*

    Author: RobérioJR

*/

Private ['_Tipo','_Item','_Preco','_Grn','_Falta'];

_Tipo = Param [0,0,[0]];

If (!Alive Player) ExitWith {};

If (_Tipo IsEqualTo 1) Then {
    _Item = lbData [5001,(lbCurSel 5001)];
    _Preco = lbValue [5001,(lbCurSel 5001)];
	if ((lbCurSel 5001) isEqualTo -1) exitWith {hint "Selecione Um Item Primeiro!"};
};
If (_Tipo IsEqualTo 2) Then {
    _Item = lbData [5002,(lbCurSel 5002)];
    _Preco = lbValue [5002,(lbCurSel 5002)];
	if ((lbCurSel 5002) isEqualTo -1) exitWith {hint "Selecione Um Item Primeiro!"};
};
If (_Tipo IsEqualTo 3) Then {
    _Item = lbData [5012,(lbCurSel 5012)];
    _Preco = lbValue [5012,(lbCurSel 5012)];
	if ((lbCurSel 5012) isEqualTo -1) exitWith {hint "Selecione Um Item Primeiro!"};
};
_Grn = (findDisplay 5000) displayCtrl 5007;

if (isNil "_Preco") then { _Preco = 0; };

If (RDR_Grana < _Preco) ExitWith {
    _Falta = _Preco - RDR_Grana;
    Hint Format["Você Não Tem Dinheiro Suficiente, Está Faltando R$%1 Para Comprar Esse Item.",_Falta];
	playSound "FD_CP_Not_Clear_F";
};

If (_Tipo IsEqualTo 1) Then {
    If (RDR_Grana > _Preco) Then {
        [False,_Preco, 0] Call RDR_fnc_AdcSubGrana;
        Player AddWeapon _Item;
	    playSound "FD_Finish_F";
    };
};

If (_Tipo IsEqualTo 2) Then {
    If (player CanAdd _Item) Then {
        If (RDR_Grana > _Preco) Then {
            [False,_Preco, 0] Call RDR_fnc_AdcSubGrana;
            Player AddItem _Item;
			playSound "FD_Finish_F";
        };
	} else {
	    Hint "Sem Espaço Para Esse Item!";
		playSound "FD_CP_Not_Clear_F";
	};
};

If (_Tipo IsEqualTo 3) Then {
    If (player CanAdd _Item) Then {
        If (RDR_Grana > _Preco) Then {
            [False,_Preco, 0] Call RDR_fnc_AdcSubGrana;
			Player addPrimaryWeaponItem _Item;
			playSound "FD_Finish_F";
        };
	} else {
	    Hint "Sem Espaço Na Arma Para Esse Item!";
		playSound "FD_CP_Not_Clear_F";
	};
};
_Grn ctrlSetText Format["R$%1",RDR_Grana];

 [3] Call RDR_fnc_SalvarProfile;




