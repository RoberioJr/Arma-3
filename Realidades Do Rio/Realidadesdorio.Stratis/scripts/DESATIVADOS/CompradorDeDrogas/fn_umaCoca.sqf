	/*
/  Realidades    /     
/      Do        /     
/ Rio De Janeiro /
*/

_numerodeCocaina = {"UMI_Item_Cocaine_Brick" == _x} count (items player);

if (_numerodeCocaina > 1) then {
	 player removeItem "UMI_Item_Cocaine_Brick";
	 [4000,0] call HG_fnc_addOrSubCash;
};

if (_numerodeCocaina < 1) then{
     hint "Você não tem cocaína";
};