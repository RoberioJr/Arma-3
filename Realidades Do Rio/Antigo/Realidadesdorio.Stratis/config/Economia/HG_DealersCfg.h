/*
    Author - HoverGuy
	© All Fucks Reserved
	Website - http://www.sunrise-production.com
	
    Defines available traders
	
	class YourDealerClass - Used as a param for the call, basically the dealer you want to display
	{
		conditionToAccess - STRING - Condition that must return either true or false, if true the player will have access to the dealer
		
		interestedIn - ARRAY OF ARRAYS - Vehicles that the dealer is interested in buying
		|- 0 - STRING - Vehicle classname
		|- 1 - INTEGER - Vehicle sell price
	};
*/

class HG_DefaultDealer  // HG_DefaultDealer is just a placeholder for testing purposes, you can delete it completely and make your own
{
	conditionToAccess = "true"; // Example: "(playerSide in [west,independent]) AND ((rank player) isEqualTo 'COLONEL')"
	
	interestedIn[] = 
	{
		{"C_Quadbike_01_F",1200},
		{"C_SUV_01_F",3500},
		{"C_Van_01_box_F",4500},
		{"C_Offroad_01_F",3000},
		{"C_Van_01_transport_F",5200},
		{"C_Hatchback_01_sport_F",3500},
		{"BOPE_OffRoad_NATO",5000},
		{"BOPE_Hunter_NATO",8000}
	};
};
