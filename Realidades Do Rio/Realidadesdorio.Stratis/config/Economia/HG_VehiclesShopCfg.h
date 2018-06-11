/*
    Author - HoverGuy
	© All Fucks Reserved
	Website - http://www.sunrise-production.com
	
    Defines available vehicle shops
	
	class YourShopClass - Used as a param for the call, basically the shop you want to display
	{
		conditionToAccess - STRING - Condition that must return either true or false, if true the player will have access to the shop
		
		class YourShopCategory - Shop category, can be whatever you want
		{
			displayName - STRING - Category display name
			vehicles - ARRAY OF ARRAYS - Shop content
			|- 0 - STRING - Classname
			|- 1 - INTEGER - Price
			|- 2 - STRING - Condition that must return either true or false, if true the vehicle appears in the list else no
			spawnPoints - ARRAY OF ARRAYS - Spawn positions (markers/positions)
			|- 0 - STRING - Display name in the dialog
			|- 1 - ARRAY OF MIXED - Markers/positions
		};
	};
*/

 /* LOJA DE CARRO */
class HG_DefaultShop // HG_DefaultShop is just a placeholder for testing purposes, you can delete it completely and make your own
{
    conditionToAccess = "true"; // Example: "(playerSide in [west,independent]) AND ((rank player) isEqualTo 'COLONEL')"
	
    class Civil
	{
	    displayName = "Veiculos Civis";
		vehicles[] =
		{
		    {"C_SUV_01_F",9000,"true"},
			{"walker_a3_gtigolf",4000,"true"},
			{"C_Offroad_01_F",6000,"true"},
			{"C_Hatchback_01_sport_F",7000,"true"},
			{"C_Quadbike_01_F",500,"true"},
			{"C_Offroad_02_unarmed_F_black",6000,"true"},
			{"C_Van_02_vehicle_F",9500,"true"},
			{"c4hch_civ",10000,"true"},
			{"206_vl",11000,"true"},
			{"chfcrsciv",12000,"true"},
			{"AC1D_ford_mustang_NFS_SPEC",20000,"true"}
		};
	    spawnPoints[] =
		{
			{"Spawn 1",{"civilian_vehicles_spawn_1"}}
		};
	};
};

 /* LOJA DE CARROS 2 */
class HG_DefaultShop2 // HG_DefaultShop is just a placeholder for testing purposes, you can delete it completely and make your own
{
    conditionToAccess = "true"; // Example: "(playerSide in [west,independent]) AND ((rank player) isEqualTo 'COLONEL')"
	
    class Civil
	{
	    displayName = "Veiculos Civis";
		vehicles[] =
		{
		    {"C_SUV_01_F",12000,"true"},
			{"walker_a3_gtigolf",9000,"true"},
			{"C_Offroad_01_F",11000,"true"},
			{"C_Hatchback_01_sport_F",12000,"true"},
			{"C_Quadbike_01_F",1000,"true"},
			{"C_Offroad_02_unarmed_F_black",11000,"true"},
			{"C_Van_02_vehicle_F",9900,"true"},
			{"c4hch_civ",16000,"true"},
			{"206_vl",19000,"true"},
			{"chfcrsciv",18000,"true"},
			{"AC1D_ford_mustang_NFS_SPEC",32000,"true"}
		};
	    spawnPoints[] =
		{
			{"Spawn 1",{"civilian_vehicles_spawn_2"}}
		};
	};
};

 /* LOJA DE CARROS 3 */
class HG_DefaultShop3 // HG_DefaultShop is just a placeholder for testing purposes, you can delete it completely and make your own
{
    conditionToAccess = "true"; // Example: "(playerSide in [west,independent]) AND ((rank player) isEqualTo 'COLONEL')"
	
    class Civil
	{
	    displayName = "Veiculos Civis";
		vehicles[] =
		{
		    {"C_SUV_01_F",12000,"true"},
			{"walker_a3_gtigolf",9000,"true"},
			{"C_Offroad_01_F",11000,"true"},
			{"C_Hatchback_01_sport_F",12000,"true"},
			{"C_Quadbike_01_F",1000,"true"},
			{"C_Offroad_02_unarmed_F_black",11000,"true"},
			{"C_Van_02_vehicle_F",9900,"true"},
			{"c4hch_civ",16000,"true"},
			{"206_vl",19000,"true"},
			{"chfcrsciv",18000,"true"},
			{"AC1D_ford_mustang_NFS_SPEC",32000,"true"}
		};
	    spawnPoints[] =
		{
			{"Spawn",{"civilian_vehicles_spawn_3"}}
		};
	};
};


/* LOJA DE CAMINHÃO */
class HG_Caminhao // HG_DefaultShop is just a placeholder for testing purposes, you can delete it completely and make your own
{
    conditionToAccess = "true"; // Example: "(playerSide in [west,independent]) AND ((rank player) isEqualTo 'COLONEL')"
	
    class Caminhao
	{
	    displayName = "Loja De Caminhões";
		vehicles[] =
		{
			{"C_Van_01_transport_F",3000,"true"},
			{"C_Van_01_box_F",3500,"true"},
			{"C_Truck_02_transport_F",4250,"true"},
			{"C_Truck_02_covered_F",5000,"true"}
		};
	    spawnPoints[] =
		{
			{"Spawn 2",{"spawn_caminhao_1"}}
		};
	};
};


 /*                      //
/                         /
/  Loja De Veiculos BOPE  /
/                         /
 */                      //
 
class HG_BOPEveiculos // HG_DefaultShop is just a placeholder for testing purposes, you can delete it completely and make your own
{
    conditionToAccess = "(playerSide in [west])"; // Example: "(playerSide in [west,independent]) AND ((rank player) isEqualTo 'COLONEL')"
	
	class BOPE
	{
	    displayName = "Viaturas";
		vehicles[] =
		{
		    {"BOPE_Hunter_NATO",1,"true"},
			{"BOPE_OffRoad_NATO",1,"true"},
			{"MAverick_BOPE",1,"true"},
			{"SUV_BOPE",1,"true"},
			{"GMC_PM",1,"true"}
	    };
		spawnPoints[] =
		{
			{"Spawn BOPE",{"military_vehicles_spawn_1"}}
		};
	};
	
	class BOPEheli
	{
		displayName = "Helicopteros";
		vehicles[] =
		{
			{"BOPE_MH9hummingbird",1,"true"},
			{"BOPE_HellCat",1,"true"},
			{"B_Heli_Transport_01_F",1,"true"}
		};
		spawnPoints[] =
		{
		    {"Spawn Heli",{"spawn_heli_bope_1"}},
			{"Spawn Heli2",{"spawn_heli_bope_2"}}
		};
	};
};

 /*                      //
/                         /
/  Loja De Veiculos DOADORES  /
/                         /
 */                      //

class HG_DoadoresVeiculos
{
    conditionToAccess = "true"; // Example: "(playerSide in [west,independent]) AND ((rank player) isEqualTo 'COLONEL')"
	
    class Civil
	{
	    displayName = "Veiculos de Doadores";
		vehicles[] =
		{
		};
	    spawnPoints[] =
		{
			{"Spawn Veiculos Doadores",{"spawn_vehiculos_doadores"}}
		};
	};
};
