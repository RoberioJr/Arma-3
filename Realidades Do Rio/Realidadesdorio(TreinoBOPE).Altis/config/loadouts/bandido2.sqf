/*
/  Realidades    /     
/      Do        /     
/ Rio De Janeiro /
*/

waitUntil {!isNull player};

_unit = _this select 0;
_roupa = ["pika","mao","legalize"] call BIS_fnc_selectRandom    //Seleção Da Roupa Inicial Bandidos


removeAllWeapons _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeHeadgear _unit;
removeGoggles _unit;

_unit forceAddUniform _roupa;
_unit addItemToUniform "FirstAidKit";
_unit addItemToUniform "Chemlight_green";
_unit addItemToUniform "TFAR_anprc154";
_unit addVest "";
for "_i" from 1 to 2 do {_unit addItemToVest "";};
_unit addItemToVest "";
_unit addItemToVest "";
_unit addItemToVest "";
for "_i" from 1 to 3 do {_unit addItemToVest "";};
_unit addBackpack "";
_unit addHeadgear "";

_unit addWeapon "";
_unit addPrimaryWeaponItem "";
_unit addPrimaryWeaponItem "";
_unit addWeapon "";
_unit addHandgunItem "";

_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "ItemRadio";

_unit setFace "WhiteHead_18";
_unit setSpeaker "Male08ENG";

if(true) exitWith{};