/*
*    FORMAT:
*        STRING (Conditions) - Must return boolean :
*            String can contain any amount of conditions, aslong as the entire
*            string returns a boolean. This allows you to check any levels, licenses etc,
*            in any combination. For example:
*                "call life_coplevel && license_civ_someLicense"
*            This will also let you call any other function.
*
*
*    ARRAY FORMAT:
*        0: STRING (Classname): Item Classname
*        1: STRING (Nickname): Nickname that will appear purely in the shop dialog
*        2: SCALAR (Buy price)
*        3: SCALAR (Sell price): To disable selling, this should be -1
*        4: STRING (Conditions): Same as above conditions string
*
*    Weapon classnames can be found here: https://community.bistudio.com/wiki/Arma_3_CfgWeapons_Weapons
*    Item classnames can be found here: https://community.bistudio.com/wiki/Arma_3_CfgWeapons_Items
*
*/
class WeaponShops {
    //Armory Shops
    class gun {
        name = "Loja De Armas Legalizadas";
        side = "civ";
        conditions = "license_civ_gun";
        items[] = {
            { "hgun_Rook40_F", "", 6500, -1, "" },
            { "hgun_Pistol_01_F", "", 7000, -1, "" }, //Apex DLC
            { "hgun_Pistol_heavy_02_F", "", 9850, -1, "" },
            { "hgun_ACPC2_F", "", 11500, -1, "" },
            { "SMG_05_F", "", 18000, -1, "" }, //Apex DLC
            { "hgun_PDW2000_F", "", 20000, -1, "" }
        };
        mags[] = {
            { "16Rnd_9x21_Mag", "", 125, -1, "" },
            { "6Rnd_45ACP_Cylinder", "", 150, -1, "" },
            { "9Rnd_45ACP_Mag", "", 200, -1, "" },
            { "30Rnd_9x21_Mag", "", 250, -1, "" },
            { "30Rnd_9x21_Mag_SMG_02", "", 250, -1, "" }, //Apex DLC
            { "10Rnd_9x21_Mag", "", 250, -1, "" } //Apex DLC
        };
        accs[] = {
            { "acc_flashlight_pistol", "", 1000, -1, "" },//Pistol Flashlight
            { "optic_ACO_grn_smg", "", 2500, -1, "" }
        };
    };

    class rebel {
        name = "Loja De Armas Clandestinas";
        side = "civ";
        conditions = "license_civ_rebel";
        items[] = {
            { "Rangefinder", "", 15000, -1, "" }, //Focalizador
			{ "hgun_Pistol_heavy_01_MRD_F", "", 7500, -1, "" }, //4-Five
			{ "arifle_SDAR_F", "", 25000, -1, "" }, //SDAR
            { "arifle_TRG20_F", "", 35000, -1, "" }, //TRG-20
			{ "arifle_Mk20_F", "", 40000, -1, "" }, //MK-20
			{ "arifle_CTAR_blk_F", "", 45000, -1, "" }, //CAR
			{ "arifle_SPAR_01_blk_F", "", 50000, -1, "" }, //SPAR-16
            { "arifle_Katiba_F", "", 60000, -1, "" }, //Katiba
			{ "arifle_MXC_F", "", 60000, -1, "" }, //MXC
			{ "arifle_MX_F", "", 70000, -1, "" }, //MX
			{ "arifle_MXM_F", "", 90000, -1, "" }, //MXM
			{ "arifle_MXM_Black_F", "", 90000, -1, "" }, //MXM
			{ "arifle_MX_SW_F", "", 130000, -1, "" }, //MX-SW
			{ "arifle_MX_SW_Black_F", "", 130000, -1, "" }, //MX-SW
			{ "LMG_03_F", "", 150000, -1, "" }, //LIM-85
			{ "LMG_Mk200_F", "", 280000, -1, "" }, //MK200
			{ "LMG_Zafir_F", "", 480000, -1, "" }, //Zafir
			{ "arifle_AKS_F", "", 35000, -1, "" }, //AKS
            { "arifle_AKM_F", "", 100000, -1, "" }, //AKM
			{ "arifle_AK12_F", "", 160000, -1, "" }, //AK-12
			{ "srifle_DMR_07_blk_F", "", 60000, -1, "" }, //CMR
			{ "srifle_DMR_01_F", "", 150000, -1, "" }, // Rahim
			{ "srifle_EBR_F", "", 170000, -1, "" }, //MK18
			{ "srifle_DMR_06_olive_F", "", 190000, -1, "" }, //MK14
			{ "srifle_DMR_03_F", "", 200000, -1, "" }, //MKl
			{ "arifle_SPAR_03_blk_F", "", 220000, -1, "" } //SPAR-17
        };
        mags[] = {
            { "30Rnd_556x45_Stanag_Tracer_Red", "", 475, -1, "" }, //5.56 30rnd TRG, SPAR-16 e MK20
            { "30Rnd_762x39_Mag_Tracer_Green_F", "", 750, -1, "" }, //7.62 30rnd AK12 e AKM
            { "30Rnd_545x39_Mag_Tracer_Green_F", "", 300, -1, "" }, //5.45 30rnd AKS
            { "30Rnd_65x39_caseless_green_mag_Tracer", "", 525, -1, "" }, //6.5 30rnd Katiba
            { "10Rnd_762x54_Mag", "", 750, -1, "" }, //7.62 10rnd
            { "20Rnd_556x45_UW_mag", "", 225, -1, "" }, //5.56 20rnd
			{ "150Rnd_762x54_Box_Tracer", "", 5000, -1, "" }, //7.62 150rnd Zafir
			{ "200Rnd_65x39_cased_Box_Tracer", "", 4250, -1, "" }, //6.5 200rnd MK200
			{ "200Rnd_556x45_Box_Tracer_Red_F", "", 3250, -1, "" }, //5.56 200rnd LIM-85
			{ "11Rnd_45ACP_Mag", "", 150, -1, "" },
			{ "30Rnd_65x39_caseless_mag_Tracer", "", 525, -1, "" }, //6.5 30rnd MX
			{ "100Rnd_65x39_caseless_mag_Tracer", "", 1750, -1, "" }, //6.5 100rnd mxSW
			{ "20Rnd_762x51_Mag", "", 1750, -1, "" }, //7.62 20rnd sniper
			{ "20Rnd_650x39_Cased_Mag_F", "", 525, -1, "" }, //6.5 20rnd sniper
            { "30Rnd_580x42_Mag_Tracer_F", "", 475, -1, "" } //5.8 30rnd
        };
        accs[] = {
            { "acc_flashlight", "", 1000, -1, "" },
            { "optic_ACO_grn", "", 2000, -1, "" },
            { "optic_Holosight", "", 2000, -1, "" },
			{ "optic_MRCO", "", 3500, -1, "" },
            { "optic_Hamr", "", 7500, -1, "" },
            { "optic_Arco", "", 7000, -1, "" },
			{ "optic_Arco_blk_F", "", 7000, -1, "" },
			{ "optic_ERCO_snd_F", "", 6500, -1, "" },
			{ "optic_ERCO_blk_F", "", 6500, -1, "" },
			{ "optic_DMS", "", 10000, -1, "" },
			{ "optic_AMS", "", 15000, -1, "" },
			{ "optic_AMS_snd", "", 15000, -1, "" },
			{ "optic_LRPS", "", 50000, -1, "" },
			{ "bipod_01_F_blk", "", 7500, -1, "" },
			{ "bipod_02_F_blk", "", 7000, -1, "" }
        };
    };

    class gang {
        name = "Armamento Clandestino";
        side = "civ";
        conditions = "";
        items[] = {
            { "hgun_Rook40_F", "", 1500, -1, "" },
            { "hgun_Pistol_heavy_02_F", "", 2500, -1, "" },
            { "hgun_ACPC2_F", "", 4500, -1, "" },
            { "hgun_PDW2000_F", "", 9500, -1, "" }
        };
        mags[] = {
            { "16Rnd_9x21_Mag", "", 125, -1, "" },
            { "6Rnd_45ACP_Cylinder", "", 150, -1, "" },
            { "9Rnd_45ACP_Mag", "", 200, -1, "" },
            { "30Rnd_9x21_Mag", "", 250, -1, "" }
        };
        accs[] = {
            { "acc_flashlight_pistol", "", 500, -1, "" },//Pistol Flashlight
            { "optic_ACO_grn_smg", "", 950, -1, "" }
        };
    };

    //Basic Shops
    class genstore {
        name = "Loja De Variedades";
        side = "civ";
        conditions = "";
        items[] = {
            { "Binocular", "", 150, -1, "" },
            { "ItemGPS", "", 100, -1, "" },
            { "ItemMap", "", 50, -1, "" },
            { "ItemCompass", "", 50, -1, "" },
            { "ItemWatch", "", 50, -1, "" },
            { "FirstAidKit", "", 150, -1, "" },
            { "NVGoggles", "", 2000, -1, "" },
            { "Chemlight_red", "", 300, -1, "" },
            { "Chemlight_yellow", "", 300, -1, "" },
            { "Chemlight_green", "", 300, -1, "" },
            { "Chemlight_blue", "", 300, -1, "" }
        };
        mags[] = {};
        accs[] = {};
    };

    class f_station_store {
        name = "Posto De Gasolina";
        side = "";
        conditions = "";
        items[] = {
            { "Binocular", "", 750, -1, "" },
            { "ItemGPS", "", 500, -1, "" },
            { "ItemMap", "", 250, -1, "" },
            { "ItemCompass", "", 250, -1, "" },
            { "ItemWatch", "", 250, -1, "" },
            { "FirstAidKit", "", 750, -1, "" },
            { "NVGoggles", "", 10000, -1, "" },
            { "Chemlight_red", "", 1500, -1, "" },
            { "Chemlight_yellow", "", 1500, -1, "" },
            { "Chemlight_green", "", 1500, -1, "" },
            { "Chemlight_blue", "", 1500, -1, "" }
        };
        mags[] = {};
        accs[] = {};
    };

    //Cop Shops
    class cop_basic {
        name = "Lojas de Armas Policial";
        side = "cop";
        conditions = "";
        items[] = {
			{ "Rangefinder", "", 15000, -1, "" }, //Focalizador
            { "Binocular", "", 150, -1, "" },
            { "ItemGPS", "", 100, -1, "" },
            { "FirstAidKit", "", 150, -1, "" },
            { "NVGoggles", "", 2000, -1, "" },
            { "HandGrenade_Stone", $STR_W_items_Flashbang, 1500, -1, "" },
			{ "SmokeShellYellow", "Gás Lacrimogêneo", 3000, -1, "" },
            { "hgun_P07_snds_F", $STR_W_items_StunPistol, 2500, -1, "" },
            { "arifle_SDAR_F", $STR_W_items_TaserRifle, 12000, -1, "" },
            { "hgun_P07_F", "", 7500, -1, "" },
            { "hgun_P07_khk_F", "", 7500, -1, "" }, //Apex DLC
            { "hgun_Pistol_heavy_01_F", "", 9500, -1, "call life_coplevel >= 1" },
			{ "hgun_ACPC2_F", "", 17500, -1, "call life_coplevel >= 3" },
            { "SMG_02_ACO_F", "", 22500, -1, "" },
            { "arifle_MX_Black_F", "MX Preta 6.5mm", 45000, -1, "call life_coplevel >= 2" },
            { "arifle_MXC_Black_F", "MXC Preta 6.5mm", 40000, -1, "call life_coplevel >= 1" },
			{ "arifle_MXM_Black_F", "MXM Preta 6.5mm", 90000, -1, "call life_coplevel >= 3" }, //MXM
            { "srifle_DMR_03_F", "MK-l EMR 7.62mm", 100000, -1, "call life_coplevel >= 3" }, //Apex DLC Sniper
			{ "arifle_AK12_F", "AK12 7.62mm", 120000, -1, "call life_coplevel >= 3" }, //AK-12
			{ "LMG_03_F", "LIM-85 5.56mm", 150000, -1, "call life_coplevel >= 2" }, //LIM-85
			{ "LMG_Mk200_F", "MK200 6.5mm", 160000, -1, "call life_coplevel >= 4" }, //MK200
			{ "srifle_EBR_Hamr_pointer_F", "MK18 EBR 7.62mm", 90000, -1, "call life_coplevel >= 3" }
        };
        mags[] = {
            { "16Rnd_9x21_Mag", "", 125, -1, "" },
            { "20Rnd_556x45_UW_mag", $STR_W_mags_TaserRifle, 125, -1, "" },
            { "11Rnd_45ACP_Mag", "", 130, -1, "" },
            { "30Rnd_65x39_caseless_mag", "", 350, -1, "" },
            { "30Rnd_9x21_Mag", "", 250, -1, "" },
            { "9Rnd_45ACP_Mag", "", 200, -1, "" },
			{ "30Rnd_762x39_Mag_Tracer_Green_F", "", 750, -1, "" }, //7.62 30rnd AK12 e AKM
		    { "200Rnd_65x39_cased_Box_Tracer", "", 2750, -1, "" }, //6.5 200rnd MK200
			{ "200Rnd_556x45_Box_Tracer_Red_F", "", 1850, -1, "" }, //5.56 200rnd LIM-85
			{ "20Rnd_762x51_Mag", "", 1250, -1, "" }, //7.62 20rnd sniper
            { "20Rnd_650x39_Cased_Mag_F", "", 200, -1, "" } //Apex DLC
        };
        accs[] = {
            { "muzzle_snds_L", "", 650, -1, "" },
            { "optic_MRD", "", 2750, -1, "call life_coplevel >= 1" },
            { "acc_flashlight_pistol", "", 250, -1, "call life_coplevel >= 1" },//Pistol Flashlight
            { "acc_flashlight", "", 750, -1, "call life_coplevel >= 2" },
            { "optic_Holosight", "", 1200, -1, "call life_coplevel >= 1" },
            { "optic_Arco", "", 2500, -1, "call life_coplevel >= 2" },
            { "optic_ams", "", 12000, -1, "call life_coplevel >= 4" },
			{ "bipod_01_F_blk", "", 7500, -1, "call life_coplevel >= 2" },
			{ "bipod_02_F_blk", "", 7000, -1, "" }
        };
    };

    //Medic Shops
    class med_basic {
        name = "store";
        side = "med";
        conditions = "";
        items[] = {
            { "ItemGPS", "", 100, -1, "" },
            { "Binocular", "", 150, -1, "" },
            { "FirstAidKit", "", 150, -1, "" },
            { "NVGoggles", "", 1200, -1, "" }
        };
        mags[] = {};
        accs[] = {};
    };
};
