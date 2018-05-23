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
_roupa = ["pika","mao","legalize","lacoste1","flamengo","riodejaneiro1"] call BIS_fnc_selectRandom;    //Seleção Da Roupa Inicial Bandidos

removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;
removeGoggles player;

//_unit forceAddUniform (selectRandom _roupa);
player forceAddUniform _roupa;
player addItemToUniform "ACE_EarPlugs";
player addItemToUniform "";
player addItemToUniform "TFAR_anprc152";
player addVest "";
for "_i" from 1 to 2 do {player addItemToVest "ACE_fieldDressing";};
_unit addHeadgear "";
//_unit addGoggles "G_Shades_Green";


player addWeapon "";    //AKS74u 5.45mm
player addPrimaryWeaponItem "";
player addWeapon "";
player addweapon "";


player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "ItemRadio";
player linkItem "ItemGPS";

player setFace "PersianHead_A3_01";
player setSpeaker "male01per";

if(true) exitWith{};