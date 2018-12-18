_Bot = _This Select 0;
_Dono = _This Select 1;
_Arma = selectRandom ["BAD_IA2_762","hlc_rifle_ak12","CUP_smg_MP5A5","hlc_rifle_aek971"];

removeAllWeapons _Bot;
removeAllItems _Bot;
removeAllAssignedItems _Bot;
removeUniform _Bot;
removeVest _Bot;
removeBackpack _Bot;
removeHeadgear _Bot;
removeGoggles _Bot;

Switch (true) Do {
    Case (_Dono IsEqualTo "BOPE"):{ 
        _Bot forceAddUniform "BOPE_CombatUniform_BLK";
		_Bot addVest "vest_BOPE";
		_Bot addHeadGear "Helmet_preto";
		_Bot addGoggles "G_Bandanna_beast";
		[_Bot,"hlc_rifle_FAL5061",5] call BIS_fnc_addWeapon;
    };
	Case (_Dono IsEqualTo "CV"):{
	    _Bot forceAddUniform "tigre";
        _Bot addVest "V_PlateCarrierGL_blk";
        _Bot addHeadgear "H_Cap_blk";
        _Bot addGoggles "G_Bandanna_shades";
		[_Bot,_Arma,5] call BIS_fnc_addWeapon;
	};
	Case (_Dono IsEqualTo "PCC"):{
	    _Bot forceAddUniform "lacoste";
        _Bot addVest "V_PlateCarrierGL_blk";
        _Bot addGoggles "G_Bandanna_shades";
		[_Bot,_Arma,5] call BIS_fnc_addWeapon;	
	};
};

_Bot addWeapon "CUP_hgun_Glock17";
for "_i" from 1 to 3 do {_Bot addItemToUniform "CUP_17Rnd_9x19_glock17";};

_Bot linkItem "ItemMap";
_Bot linkItem "ItemCompass";
_Bot linkItem "ItemRadio";

_Bot setFace "TanoanHead_A3_02";
_Bot setSpeaker "male01gre";
