/*
/  Realidades    /     
/      Do        /     
/ Rio De Janeiro /
*/

waitUntil {!isNull player};

_unit = _this select 0;
/* Seleção Aleatória De Items */
_roupa = ["pika","mao","legalize","lacoste1","flamengo","U_I_C_Soldier_Bandit_4_F","U_C_Poloshirt_blue","U_I_C_Soldier_Bandit_5_F"] call BIS_fnc_selectRandom;    //Seleção Da Roupa Inicial Bandidos
_armas = [1,2,3,4,5] call BIS_fnc_selectRandom;
switch (_armas) do {
    case 1:{_arma = "CUP_hgun_Compact"; _pente = "CUP_10Rnd_9x19_Compact";};
	case 2:{_arma = "CUP_hgun_Glock17_blk"; _pente = "CUP_17Rnd_9x19_glock17";};
	case 3:{_arma = "hgun_Rook40_F"; _pente = "16Rnd_9x21_red_mag";};
	case 4:{_arma = "CUP_hgun_TaurusTracker455"; _pente = "CUP_6Rnd_45ACP_M";};
	case 5:{_arma = "CUP_hgun_Colt1911"; _pente = "CUP_7Rnd_45ACP_1911";};
};
_bone = ["H_Cap_surfer","H_Cap_khaki_specops_UK","H_Bandanna_surfer","UMI_Dickhead","",""] call BIS_fnc_selectRandom;
_colete = ["V_HarnessO_gry","V_TacVest_brn","V_TacVest_blk",""] call BIS_fnc_selectRandom;
_mochila = ["CUP_B_Bergen_BAF","","",""] call BIS_fnc_selectRandom;
_oculos = ["G_Shades_Green","G_Shades_Blue","G_Shades_Red","G_Shades_Black","G_Bandanna_shades",""] call BIS_fnc_selectRandom;

  /* Removendo Items */
removeAllWeapons _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeHeadgear _unit;
removeGoggles _unit;

/* Adicionando Items */
_unit forceAddUniform _roupa;
_unit addVest _colete;
_unit addBackpack _mochila;
_unit addHeadgear _bone;
_unit addGoggles _oculos;
_unit addItemToUniform "ACE_EarPlugs";
_unit addItemToUniform "TFAR_anprc152";
_unit addItemToUniform _pente;
_unit addItemToUniform _pente;
_unit addItemToUniform _pente;
_unit addItemToUniform _pente;
for "_i" from 1 to 2 do {_unit addItemToVest "ACE_fieldDressing";};


_unit addWeapon _arma;  
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