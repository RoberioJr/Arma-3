/*
	Code written by Haz
*/

class config_respawnPoints
{
	respawnPoints[] =
	{
		"azul",
		"docksRespawnPoint",
		"supplyBaseRespawnPoint",
		"sea"
	};
	class bluforRespawnPoint
	{
		name = "BLUFOR Base";
		icon = "\A3\ui_f\data\map\markers\military\flag_CA.paa";
		position = "respawn_west";
		radius = 5;
		condition = ""; // NOT IMPLEMENTED YET
	};
	class docksRespawnPoint
	{
		name = "Docks";
		icon = "\A3\ui_f\data\map\groupicons\selector_selectedMission_ca.paa";
		position = "docks";
		radius = 15;
		condition = ""; // NOT IMPLEMENTED YET
	};
	class supplyBaseRespawnPoint
	{
		name = "Supply Base";
		icon = "\A3\ui_f\data\map\markers\nato\respawn_inf_ca.paa";
		// position[] = {0, 0, 0};
		position = "supplyBase";
		radius = 75;
		condition = ""; // NOT IMPLEMENTED YET
	};
	class sea
	{
		name = "The Sea";
		icon = "\A3\ui_f\data\map\markers\military\flag_CA.paa";
		position[] = {0, 0, 0};
		radius = 125;
		condition = ""; // NOT IMPLEMENTED YET
	};
};