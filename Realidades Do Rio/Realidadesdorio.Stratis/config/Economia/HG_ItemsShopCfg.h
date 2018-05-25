/*
    Author - HoverGuy
	© All Fucks Reserved
	Website - http://www.sunrise-production.com

    Defines available items shops
	
	class YourShopClass - Used as a param for the call, basically the shop you want to display
	{
		conditionToAccess - STRING - Condition that must return either true or false, if true the player will have access to the shop
		
		class YourShopCategory - Shop category, can be whatever you want
		{
			displayName - STRING - Category display name
			items - ARRAY OF ARRAYS - Shop content
			|- 0 - STRING - Classname
			|- 1 - INTEGER - Price
			|- 2 - STRING - Condition that must return either true or false, if true the item appears in the list else no
		};
	};
*/

class HG_DefaultShop // HG_DefaultShop is just a placeholder for testing purposes, you can delete it completely and make your own
{
	conditionToAccess = "true"; // Example: "(playerSide in [west,independent]) AND ((rank player) isEqualTo 'COLONEL')"
	
	class Items
	{
	    displayName = "$STR_HG_SHOP_ITEMS";
		items[] =
		{
		    {"ItemWatch",50,"true"},
			{"ItemCompass",50,"true"},
			{"ItemGPS",50,"true"},
			{"ItemRadio",50,"true"},
			{"ItemMap",50,"true"}
		};
	};
	
	class Magazines
	{
	    displayName = "$STR_HG_SHOP_MAGAZINES";
		items[] =
		{
		    {"30Rnd_65x39_caseless_mag",250,"true"},
            {"16Rnd_9x21_Mag",75,"true"},
	        {"30Rnd_9x21_Mag",150,"true"}
		};
	};
	
	class Scopes
	{
	    displayName = "$STR_HG_SHOP_SCOPES";
		items[] =
		{
		    {"optic_Arco",1000,"true"},
			{"optic_Hamr",1000,"true"}
		};
	};
};

 /* SCOPES E CARREGADORES BOPE */
 
class HG_bope // HG_DefaultShop is just a placeholder for testing purposes, you can delete it completely and make your own
{
	conditionToAccess = "true"; // Example: "(playerSide in [west,independent]) AND ((rank player) isEqualTo 'COLONEL')"
	
	class Items
	{
	    displayName = "Items";
		items[] =
		{
		    {"ItemWatch",50,"true"},
			{"ItemCompass",50,"true"},
			{"ItemGPS",50,"true"},
			{"ItemRadio",50,"true"},
			{"ItemMap",50,"true"}
		};
	};
	
	class Magazines
	{
	    displayName = "Carregadores";
		items[] =
		{
		    {"11Rnd_45ACP_Mag",1,"true"},
            {"16Rnd_9x21_Mag",1,"true"},
			{"20rnd_762_magazine",1,"true"},
			{"FHQ_30Rnd_556x45_Stanag_Tracer_Red",1,"true"},
			{"CSW_20Rnd_57x28_L191",1,"true"},
			{"30Rnd_545x39_Mag_Tracer_Green_F",1,"true"},
			{"150Rnd_556x45_Drum_Mag_Tracer_F",1,"true"},
			{"200Rnd_556x45_Box_Tracer_Red_F",1,"true"},
			{"30Rnd_556x45_Stanag_Tracer_Red",1,"true"},
			{"ACE_30Rnd_556x45_Stanag_Tracer_Dim",1,"true"},
			{"30Rnd_65x39_caseless_green_mag_Tracer",1,"true"},
			{"100Rnd_65x39_caseless_mag_Tracer",1,"true"},
			{"30Rnd_65x39_caseless_mag_Tracer",1,"true"},
			{"30Rnd_762x39_Mag_Tracer_F",1,"true"},
			{"20Rnd_762x51_Mag",1,"true"},
			{"ACE_20Rnd_762x51_Mag_Tracer",1,"true"},
			{"30Rnd_9x21_Red_Mag",1,"true"},
			{"16Rnd_9x21_red_Mag",1,"true"},
			{"hlc_30Rnd_762x39_t_ak",1,"true"},
			{"hlc_30Rnd_545x39_t_ak",1,"true"},
			{"hlc_30Rnd_556x45_T_AUG",1,"true"},
			{"hlc_20Rnd_762x51_T_fal",1,"true"},
			{"hlc_30Rnd_9x19_SD_MP5",1,"true"},
			{"hlc_30rnd_556x45_t",1,"true"},
			{"hlc_50rnd_762x51_MDIM_FAL",1,"true"},
	        {"30Rnd_9x21_Mag",1,"true"}
		};
	};
	
	class Scopes
	{
	    displayName = "Lunetas e Miras";
		items[] =
		{
		    {"FHQ_optic_AC11704",1,"true"},
			{"optic_Aco",1,"true"},
			{"FHQ_optic_AIM",1,"true"},
			{"optic_AMS",1,"true"},
			{"HLC_optic_DocterV",1,"true"},
			{"FHQ_optic_HWS_G33",1,"true"},
			{"FHQ_optic_HWS",1,"true"},
			{"CSW_FN57_Barska",1,"true"},
			{"optic_ERCO_blk_F",1,"true"},
			{"optic_KHS_old",1,"true"},
			{"optic_Holosight_blk_F",1,"true"},
			{"optic_Arco",1,"true"},
			{"optic_Hamr",1,"true"}
		};
	};
	
	class Bipod
	{
		displayName = "Bipé";
		items[] =
		{
			{"bipod_01_F_blk",1,"true"},
			{"bipod_02_F_blk",1,"true"}
		};
	};
};

 /* SCOPES E CARREGADORES BANDIDOS */

class HG_bandido // HG_DefaultShop is just a placeholder for testing purposes, you can delete it completely and make your own
{
	conditionToAccess = "true"; // Example: "(playerSide in [west,independent]) AND ((rank player) isEqualTo 'COLONEL')"
	
	class Items
	{
	    displayName = "Itens";
		items[] =
		{
		    {"ItemWatch",50,"true"},
			{"ItemCompass",50,"true"},
			{"ItemGPS",50,"true"},
			{"ItemRadio",50,"true"},
			{"ItemMap",50,"true"},
			{"TFAR_fadak",150,"true"},
			{"ACE_elasticBandageItem",50,"true"},
			{"ACE_quikClotItem",50,"true"},
			{"ACE_fieldDressingItem",50,"true"},
			{"ACE_adenosineItem",150,"true"},
			{"ACE_atropineItem",150,"true"},
			{"ACE_epinephrineItem",150,"true"},
			{"ACE_morphineItem",150,"true"}
		};
	};
	
	class Magazines
	{
	    displayName = "Carregadores";
		items[] =
		{
            {"16Rnd_9x21_Mag",150,"true"},
			{"30Rnd_762x39_Mag_Tracer_Green_F",250,"true"},
			{"30Rnd_545x39_Mag_Tracer_Green_F",250,"true"},
			{"hlc_30Rnd_545x39_t_ak",400,"true"},
			{"hlc_20Rnd_762x51_T_fal",450,"true"},
			{"30Rnd_9x21_Yellow_Mag",180,"true"},
			{"CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M",350,"true"},
			{"CUP_45Rnd_TE4_LRT4_Green_Tracer_545x39_RPK_M",300,"true"},
			{"CUP_20Rnd_TE1_Red_Tracer_762x51_CZ805B",100,"true"},
			{"30Rnd_556x45_Stanag_Tracer_Red",370,"true"},
			{"CUP_30Rnd_Sa58_M_TracerR",260,"true"},
			{"CUP_64Rnd_Red_Tracer_9x19_Bizon_M",80,"true"},
			{"CUP_20Rnd_762x51_L129_M",800,"true"},
			{"CUP_20Rnd_762x51_FNFAL_M",400,"true"},
			{"30Rnd_556x45_Stanag_Tracer_Red",500,"true"},
			{"hlc_45Rnd_762x39_t_rpk",390,"true"},
			{"hlc_50rnd_762x51_MDIM_FAL",390,"true"},
			{"hlc_20Rnd_762x51_T_amt",400,"true"},
			{"hlc_30Rnd_10mm_JHP_MP5",90,"true"},
			{"hlc_30Rnd_9x19_SD_MP5",90,"true"},
			{"hlc_25Rnd_9x19mm_JHP_AUG",120,"true"},
			{"150Rnd_556x45_Drum_Mag_Tracer_F",200,"true"},
			{"CUP_17Rnd_9x19_glock17",30,"true"},
			{"CUP_15Rnd_9x19_M9",25,"true"},
			{"CUP_30Rnd_9x19_UZI",70,"true"},
			{"16Rnd_9x21_Mag",50,"true"},
			{"30Rnd_9x21_Red_Mag",10,"true"},
			{"6Rnd_RedSignal_F",5,"true"}
		};
	};
	
	class Scopes
	{
	    displayName = "Lunetas e Miras";
		items[] =
		{
		    {"optic_Arco",1000,"true"},
			{"optic_Hamr",1000,"true"}
		};
	};
};

   /* Venda de Drogas */

class HG_ItemDROGAS // HG_DefaultShop is just a placeholder for testing purposes, you can delete it completely and make your own
{
	conditionToAccess = "true"; // Example: "(playerSide in [west,independent]) AND ((rank player) isEqualTo 'COLONEL')"
	
	class Items
	{
	    displayName = "Drogas";
		items[] =
		{
		    {"UMI_Item_Weed_Bale",750,"true"},
			{"UMI_Item_Cocaine_Brick",2000,"true"},
			{"UMI_Item_Coke_Pile_01",1500,"true"}
		};
	};
};