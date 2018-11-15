/*
/  Realidades    /     
/      Do        /     
/ Rio De Janeiro /
*/

_numerodeCocaina = {"UMI_Item_Cocaine_Brick" == _x} count (items player);
_lucro = _numerodeCocaina * 4000;

if (_numerodeMaconha > 1) then {
	 player removeItems "UMI_Item_Cocaine_Brick";
	 [_lucro,0] call HG_fnc_addOrSubCash;
  };
};

if (_numerodeMaconha < 1) then{
     hint "Você não tem cocaína";
};