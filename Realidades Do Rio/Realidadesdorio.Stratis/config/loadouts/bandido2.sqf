/*
/  Realidades    /     
/      Do        /     
/ Rio De Janeiro /
*/
private "_rjposition","_vivo";

/*
_rjposition = profileNameSpace getVariable "rjposition";
_vivo = profileNameSpace getVariable "vivo";

sleep 0.6;
if (_vivo isEqualto 1) exitwith {player setPos _rjposition;};
*/

waitUntil {!isNull player};

_unit = _this select 0;
_roupa = ["pika","mao","legalize","lacoste1","flamengo"] call BIS_fnc_selectRandom;    //Seleção Da Roupa Inicial Bandidos

removeAllWeapons _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeHeadgear _unit;
removeGoggles _unit;

//_unit forceAddUniform (selectRandom _roupa);
_unit forceAddUniform _roupa;
_unit addItemToUniform "ACE_EarPlugs";
_unit addItemToUniform "";
_unit addItemToUniform "TFAR_anprc152";
_unit addVest "";
for "_i" from 1 to 2 do {_unit addItemToVest "ACE_fieldDressing";};
_unit addHeadgear "";
//_unit addGoggles "G_Shades_Green";


_unit addWeapon "";    //AKS74u 5.45mm
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