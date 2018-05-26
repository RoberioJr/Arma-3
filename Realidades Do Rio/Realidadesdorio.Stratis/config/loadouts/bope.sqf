/*
/  Realidades    /     
/      Do        /     
/ Rio De Janeiro /
*/
private "_rjposition","_vivo";

/*
_rjpositionpri = profileNameSpace getVariable "rjposition";
_vivopri = profileNameSpace getVariable "vivo";

sleep 0.6;
if (_vivo isEqualto "s") exitwith {player setPos _rjposition;};
*/

waitUntil {!isNull player};

_unit = this;

removeAllWeapons _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeHeadgear _unit;
removeGoggles _unit;


_unit forceAddUniform "BOPE_CombatUniform_BLK_shortsleeve";
_unit addItemToUniform "ACE_EarPlugs";
_unit addItemToUniform "ACE_salineIV_250";
_unit addVest "BOPE_carrier_1";
_unit addItemToVest "TFAR_anprc152";
_unit addItemToVest "SmokeShell";
for "_i" from 1 to 2 do {_unit addItemToVest "ACE_fieldDressing";};
for "_i" from 1 to 1 do {_unit addItemToVest "ACE_morphine";};
_unit addHeadgear "BOPE_Beret";


_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "ItemRadio";
_unit linkItem "ItemGPS";


_unit setFace "WhiteHead_06";
_unit	 setSpeaker "Male04ENG";

if(true) exitWith{};

