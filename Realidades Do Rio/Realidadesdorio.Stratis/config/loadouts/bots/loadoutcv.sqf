////////////////////////////////////////////
// Sistema de Respawn de Bots             //
// BY: Larrow                             //
// EDIT: Marvinn                          //
////////////////////////////////////////////

params[ "_group", "_module", "_groupData" ];

//The below will make each unit in the group have the same random equipment
//Or move it below to //HERE - to make each unit in the group have different equipment
_cloth = selectRandom ["pika","mao","legalize","lacoste1","flamengo","U_I_C_Soldier_Bandit_4_F","U_C_Poloshirt_blue","U_I_C_Soldier_Bandit_5_F"];
_hat = selectRandom ["H_Cap_surfer","H_Cap_khaki_specops_UK","H_Bandanna_surfer","",""];
_vest = selectRandom ["V_HarnessO_gry","V_TacVest_brn","V_TacVest_blk",""];
_backpack = selectRandom ["CUP_B_Bergen_BAF","","",""];
_glass = selectRandom ["G_Shades_Green","G_Shades_Blue","G_Shades_Red","G_Shades_Black","G_Bandanna_shades",""];

{
	_x params[ "_unit" ];

	//HERE

	/* Remove Items */
	removeAllWeapons _unit;
	removeAllItems _unit;
	removeAllAssignedItems _unit;
	removeUniform _unit;
	removeVest _unit;
	removeBackpack _unit;
	removeHeadgear _unit;
	removeGoggles _unit;

	/* Add Items */
	if !( _cloth == "" ) then {
		_unit forceAddUniform _cloth;
		{
			if ( _unit canAddItemToUniform _x ) then {
				_unit addItemToUniform _x;
			};
		}forEach [
			"ACE_EarPlugs",
			"TFAR_anprc152",
			"ACE_morphine",
			"ACE_salineIV_250"
		];
	};

	if !( _hat == "" ) then {
		_unit addHeadgear _hat;
	};

	if !( _vest == "" ) then {
		_unit addVest _vest;
		for "_i" from 1 to 3 do {
		     if ( _unit canAddItemToVest "ACE_fieldDressing" ) then {
			     _unit addItemToVest "hlc_30Rnd_545x39_t_ak";
			};
		for "_i" from 1 to 2 do {
			if ( _unit canAddItemToVest "ACE_fieldDressing" ) then {
				_unit addItemToVest "ACE_fieldDressing";
			};
		};
	};

	if !( _backpack == "" ) then {
		_unit addBackpack _backpack;
	};

	if !( _glass == "" ) then {
		_unit addGoggles _glass;
	};

	_unit addWeapon "hlc_rifle_akm";
	_unit linkItem "ItemMap";
	_unit linkItem "ItemCompass";
	_unit linkItem "ItemWatch";
	_unit linkItem "ItemRadio";
	_unit linkItem "ItemGPS";

	[ _unit, "PersianHead_A3_01" ] remoteExec [ "setFace", 0, _unit ];
	[ _unit, "male01per" ] remoteExec [ "setSpeaker", 0, _unit ];

}forEach units _group;