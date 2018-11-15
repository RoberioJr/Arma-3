/*
/  Realidades    /     
/      Do        /     
/ Rio De Janeiro /
*/

_numerodeMaconha = {"UMI_Item_Weed_Bale" == _x} count (items player);

if (_numerodeMaconha > 1) then {
	 player removeItem "UMI_Item_Weed_Bale";
	 [1500,0] call HG_fnc_addOrSubCash;
  };
};

if (_numerodeMaconha < 1) then{
     hint "Você não tem maconha";
};