/*
/  Realidades    /     
/      Do        /     
/ Rio De Janeiro /
*/

waitUntil {!isNull player};

_unit = _this select 0;

comment "Remove existing items";
removeAllWeapons _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeHeadgear _unit;
removeGoggles _unit;

_unit forceAddUniform "BOPE_CombatUniform_BLK";
_unit addItemToUniform "FirstAidKit";
_unit addItemToUniform "Chemlight_green";
_unit addVest "BOPE_carrier_1";
for "_i" from 1 to 2 do {_unit addItemToVest "11Rnd_45ACP_Mag";};
_unit addItemToVest "SmokeShell";
_unit addItemToVest "SmokeShellGreen";
_unit addItemToVest "Chemlight_green";
for "_i" from 1 to 3 do {_unit addItemToVest "30Rnd_9x21_Mag";};
_unit addBackpack "B_AssaultPack_blk";
_unit addHeadgear "H_Bandanna_gry";

_unit addWeapon "SMG_02_F";
_unit addPrimaryWeaponItem "acc_flashlight";
_unit addPrimaryWeaponItem "optic_Aco";
_unit addWeapon "hgun_Pistol_heavy_01_MRD_F";
_unit addHandgunItem "optic_MRD";

_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "ItemRadio";

_unit setFace "WhiteHead_18";
_unit setSpeaker "Male08ENG";

if(true) exitWith{};