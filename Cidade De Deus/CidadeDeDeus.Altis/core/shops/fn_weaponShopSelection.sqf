#include "..\..\script_macros.hpp"
/*
    File: fn_weaponShopSelection.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Checks the weapon & adds the price tag.
*/
private ["_control","_index","_shop","_priceTag","_price","_item","_itemArray","_bool"];
_control = [_this,0,controlNull,[controlNull]] call BIS_fnc_param;
_index = [_this,1,-1,[0]] call BIS_fnc_param;
_shop = uiNamespace getVariable ["Weapon_Shop",""];
if (isNull _control) exitWith {closeDialog 0;}; //Bad data
if (_index isEqualTo -1) exitWith {}; //Nothing selected

_priceTag = CONTROL(38400,38404);

if ((uiNamespace getVariable ["Weapon_Shop_Filter",0]) isEqualTo 1) then {
    _item = CONTROL_DATAI(_control,_index);
    _itemArray = M_CONFIG(getArray,"WeaponShops",_shop,"items");
    _item = [_item,_itemArray] call TON_fnc_index;
    _price = ((_itemArray select _item) select 3);
    _priceTag ctrlSetStructuredText parseText format ["<t size='0.8'>Preço: <t color='#8cff9b'>$%1</t></t>",[(_price)] call life_fnc_numberText];
    _control lbSetValue[_index,_price];
} else {
    _price = _control lbValue _index;
	
	/* ALTERAÇÃO BY: ROBÉRIOJR DONORLEVEL */

_doador0desc = LIFE_SETTINGS(getNumber,"rj_desconto_doador0");
_doador1desc = LIFE_SETTINGS(getNumber,"rj_desconto_doador1");
_doador2desc = LIFE_SETTINGS(getNumber,"rj_desconto_doador2");
_doador3desc = LIFE_SETTINGS(getNumber,"rj_desconto_doador3");
_doador4desc = LIFE_SETTINGS(getNumber,"rj_desconto_doador4");
_doador5desc = LIFE_SETTINGS(getNumber,"rj_desconto_doador5");

switch(FETCH_CONST(life_donorlevel)) do
{
	case 0: {_price = _price * _doador0desc;}; 
	case 1: {_price = _price * _doador1desc;};
	case 2: {_price = _price * _doador2desc;}; 
	case 3: {_price = _price * _doador3desc;}; 
	case 4: {_price = _price * _doador4desc;}; 
	case 5: {_price = _price * _doador5desc;}; 
};

/**********************************/
	
    _item = CONTROL_DATAI(_control,_index);
    if (_price > CASH) then {
        _priceTag ctrlSetStructuredText parseText format ["<t size='0.8'>Preço: <t color='#ff0000'>$%1</t><br/>Falta: <t color='#8cff9b'>$%2</t></t>",[(_price)] call life_fnc_numberText,[(_price - CASH)] call life_fnc_numberText];
    } else {
        _priceTag ctrlSetStructuredText parseText format ["<t size='0.8'>Preço: <t color='#8cff9b'>$%1</t></t>",[(_price)] call life_fnc_numberText];
    };
    if ((uiNamespace getVariable ["Weapon_Magazine",0]) isEqualTo 0 && (uiNamespace getVariable ["Weapon_Accessories",0]) isEqualTo 0) then {
            if (isClass (configFile >> "CfgWeapons" >> _item)) then {
                //Magazines menu
                if (isArray (configFile >> "CfgWeapons" >> _item >> "magazines")) then {
                    _itemArray = FETCH_CONFIG2(getArray,"CfgWeapons",_item,"magazines");
                    _bool = false;
                    {
                        _var = _x select 0;
                        _count = {_x == _var} count _itemArray;
                        if (_count > 0) exitWith {_bool = true};
                    } forEach M_CONFIG(getArray,"WeaponShops",_shop,"mags");
                    if (_bool) then {
                        ((findDisplay 38400) displayCtrl 38406) ctrlEnable true;
                    } else {
                        ((findDisplay 38400) displayCtrl 38406) ctrlEnable false;
                    };
                } else {
                    ((findDisplay 38400) displayCtrl 38406) ctrlEnable false;
                };

                //Accessories Menu
                if (isClass (configFile >> "CfgWeapons" >> _item >> "WeaponSlotsInfo")) then {
                    private ["_slotArray"];
                    _itemArray = [];
                    if (isArray (configFile >> "CfgWeapons" >> _item >> "WeaponSlotsInfo" >> "CowsSlot" >> "compatibleItems")) then {
                        _slotArray = FETCH_CONFIG3(getArray,"CfgWeapons",_item,"WeaponSlotsInfo","CowsSlot","compatibleItems");
                        {
                            _itemArray pushBack _x;
                        } forEach _slotArray;
                    };
                    if (isArray (configFile >> "CfgWeapons" >> _item >> "WeaponSlotsInfo" >> "MuzzleSlot" >> "compatibleItems")) then {
                        _slotArray = FETCH_CONFIG3(getArray,"CfgWeapons",_item,"WeaponSlotsInfo","MuzzleSlot","compatibleItems");
                        {
                            _itemArray pushBack _x;
                        } forEach _slotArray;
                    };
                    if (isArray (configFile >> "CfgWeapons" >> _item >> "WeaponSlotsInfo" >> "PointerSlot" >> "compatibleItems")) then {
                        _slotArray = FETCH_CONFIG3(getArray,"CfgWeapons",_item,"WeaponSlotsInfo","PointerSlot","compatibleItems");
                        {
                            _itemArray pushBack _x;
                        } forEach _slotArray;
                    };
                    if (isArray (configFile >> "CfgWeapons" >> _item >> "WeaponSlotsInfo" >> "UnderBarrelSlot" >> "compatibleItems")) then {
                        _slotArray = FETCH_CONFIG3(getArray,"CfgWeapons",_item,"WeaponSlotsInfo","UnderBarrelSlot","compatibleItems");
                        {
                            _itemArray pushBack _x;
                        } forEach _slotArray;
                    };

                    _bool = false;
                    {
                        _var = _x select 0;
                        _count = {_x == _var} count _itemArray;
                        if (_count > 0) exitWith {_bool = true};
                    } forEach M_CONFIG(getArray,"WeaponShops",_shop,"accs");
                    if (_bool) then {
                        ((findDisplay 38400) displayCtrl 38407) ctrlEnable true;
                    } else {
                        ((findDisplay 38400) displayCtrl 38407) ctrlEnable false;
                    };
                } else {
                    ((findDisplay 38400) displayCtrl 38407) ctrlEnable false;
                };
            } else {
            ((findDisplay 38400) displayCtrl 38406) ctrlEnable false;
            ((findDisplay 38400) displayCtrl 38407) ctrlEnable false;
        };
    };
};
