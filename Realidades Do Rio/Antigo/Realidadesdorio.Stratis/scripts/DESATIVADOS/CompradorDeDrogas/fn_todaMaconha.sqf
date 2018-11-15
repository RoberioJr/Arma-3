/*
/  Realidades    /     
/      Do        /     
/ Rio De Janeiro /
*/

_numerodeMaconha = {"UMI_Item_Weed_Bale" == _x} count (items player);
_lucro = _numerodeMaconha * 1500;

if (_numerodeMaconha > 1) then {
	 player removeItems "UMI_Item_Weed_Bale";
	 [_lucro,0] call HG_fnc_addOrSubCash;
  };
};

if (_numerodeMaconha < 1) then{
     hint "Você não tem maconha";
};