/*
/  Realidades    /     
/      Do        /     
/ Rio De Janeiro /
*/

waitUntil {!isNull player};

_unit = _this select 0;


removeAllWeapons _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeHeadgear _unit;
removeGoggles _unit;


_unit forceAddUniform "legalize";
_unit addItemToUniform "ACE_EarPlugs";
_unit addItemToUniform "";
_unit addItemToUniform "TFAR_fadak";
_unit addVest "V_TacVest_brn";
for "_i" from 1 to 4 do {_unit addItemToVest "hlc_30Rnd_545x39_t_ak";};    //Carregadores 5.45mm Para AKS75u
for "_i" from 1 to 2 do {_unit addItemToVest "ACE_fieldDressing";};
_unit addHeadgear "";
//_unit addGoggles "G_Shades_Green";


_unit addWeapon "hlc_rifle_aks74u";    //AKS74u 5.45mm
_unit addPrimaryWeaponItem "";
_unit addWeapon "";
_unit addweapon "";


_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "ItemRadio";
_unit linkItem "ItemGPS";

_unit setFace "PersianHead_A3_01";
_unit setSpeaker "male01per";

if(true) exitWith{};