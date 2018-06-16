////////////////////////////////////////////
// Sistema de Respawn de Bots             //
// BY: Larrow                             //
// EDIT: Marvinn                          //
////////////////////////////////////////////

params[ "_group", "_module", "_groupData" ];

//The below will make each unit in the group have the same random equipment
//Or move it below to //HERE - to make each unit in the group have different equipment
_cloth = "BOPE_CombatUniform_BLK_shortsleeve";
_hat = "BOPE_Beret";
_vest = "BOPE_carrier_1";

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
		     if ( _unit canAddItemToVest "hlc_20Rnd_762x51_B_fal" ) then {
			     _unit addItemToVest "hlc_20Rnd_762x51_B_fal";
			};
		for "_i" from 1 to 2 do {
			if ( _unit canAddItemToVest "ACE_fieldDressing" ) then {
				_unit addItemToVest "ACE_fieldDressing";
			};
		};
	};

	_unit addWeapon "hlc_rifle_FAL5061Rail";
	_unit linkItem "ItemMap";
	_unit linkItem "ItemCompass";
	_unit linkItem "ItemWatch";
	_unit linkItem "ItemRadio";
	_unit linkItem "ItemGPS";

	[ _unit, "PersianHead_A3_01" ] remoteExec [ "setFace", 0, _unit ];
	[ _unit, "male01per" ] remoteExec [ "setSpeaker", 0, _unit ];

}forEach units _group;