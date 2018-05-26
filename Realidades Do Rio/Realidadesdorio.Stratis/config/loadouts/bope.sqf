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

removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;
removeGoggles player;


player forceAddUniform "BOPE_CombatUniform_BLK_shortsleeve";
player addItemToUniform "ACE_EarPlugs";
player addItemToUniform "ACE_salineIV_250";
player addVest "BOPE_carrier_1";
player addItemToVest "TFAR_anprc152";
player addItemToVest "SmokeShell";
for "_i" from 1 to 2 do {player addItemToVest "ACE_fieldDressing";};
for "_i" from 1 to 1 do {player addItemToVest "ACE_morphine";};
player addHeadgear "BOPE_Beret";


player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "ItemRadio";
player linkItem "ItemGPS";


player setFace "WhiteHead_06";
player setSpeaker "Male04ENG";

if(true) exitWith{};

