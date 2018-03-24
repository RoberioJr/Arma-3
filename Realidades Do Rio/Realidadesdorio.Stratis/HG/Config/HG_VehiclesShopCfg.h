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

class HG_DefaultShop // HG_DefaultShop is just a placeholder for testing purposes, you can delete it completely and make your own
{
    conditionToAccess = "true"; // Example: "(playerSide in [west,independent]) AND ((rank player) isEqualTo 'COLONEL')"
	
    class Civilian
	{
	    displayName = "$STR_HG_SHOP_CIVILIAN";
		vehicles[] =
		{
		    {"C_SUV_01_F",2000,"true"},
			{"walker_a3_gtigolf",2000,"true"},
			{"C_Offroad_01_F",2400,"true"},
			{"C_Hatchback_01_sport_F",2000,"true"},
			{"C_Quadbike_01_F",1000,"true"},
			{"C_Offroad_02_unarmed_F_black",2450,"true"},
			{"C_Van_01_transport_F",3000,"true"},
			{"C_Van_01_box_F",3500,"true"},
			{"C_Van_02_vehicle_F",3250,"true"},
			{"C_Truck_02_transport_F",4250,"true"},
			{"C_Truck_02_covered_F",5000,"true"}
		};
	    spawnPoints[] =
		{
			{"$STR_HG_MARKER_1",{"civilian_vehicles_spawn_1",}}
		};
	};
	//Desativado Veiculos Militares...
	/*
	class Military
	{
	    displayName = "$STR_HG_SHOP_MILITARY";
		vehicles[] =
		{
		    {"B_MRAP_01_F",1,"true"}
	    };
		spawnPoints[] =
		{
			{"$STR_HG_MARKER_2",{"military_vehicles_spawn_1"}}
		};
	};
	*/
};
