/*
    Author - HoverGuy
    © All Fucks Reserved
	Website - http://www.sunrise-production.com
*/

class HG
{
	class AdminMenu
	{
		file = "scripts\HG\Functions\Client\AdminMenu";
		class adminMenuBtns {};
		class adminMenuListChanged {};
		class checkboxChanged {};
		class dialogOnLoadAdminMenu {};
		class refreshPlayers {};
		class refreshWhitelist {};
	};
	
	class AI
	{
		file = "scripts\HG\Functions\Client\AI";
	    class aiUnitSetup {};	
	};
	
	class ATM
	{
		file = "scripts\HG\Functions\Client\ATM";
		class atmBtns {};
		class atmReceived {};
		class atmRefresh {};
		class dialogOnLoadATM {};
	};
	
	class Dealer
	{
		file = "scripts\HG\Functions\Client\Dealer";
		class dealerListChanged {};
		class dealerSell {};
		class dialogOnLoadDealer {};
		class refreshDealer {};
	};
	
	class EVH
	{
		file = "scripts\HG\Functions\Client\EVH";
		class handleRating {};
		class inventoryClosed {};
		class inventoryOpened {};
		class keyDown {};
		class killed {};
		class respawn {};
	};
	
	class Garage
	{
		file = "scripts\HG\Functions\Client\Garage";
		class delVehicle {};
		class dialogOnLoadGarage {};
		class fillGarage {};
	    class garageSpawn {};
		class refreshGarage {};
		class storeVehicleClient {};
	};
	
	class GearShop
	{
		file = "scripts\HG\Functions\Client\GearShop";
		class buyGear {};
		class dialogOnLoadGear {};
		class dialogOnUnloadGear {};
		class fillBox {};
		class gearSelectionChanged {};
		class handleGear {};
		class reset {};
		class xGearSelectionChanged {};
	};
	
	class Generic
	{
		file = "scripts\HG\Functions\Client\Generic";
		class addOrSubCash {};
		class addOrSubKills {};
		class addOrSubXP {};
	    class currencyToText {};
		class emptyVehicle {};
		class getConfig {};
		class hasEnoughMoney {};
		class isItBusy {};
		class isNumeric {};
		class lockOrUnlock {};
		class markers {};
		class nearbyATM {};
		class parseGear {};
		class paycheck {};
		class setOwner {};
		class setRank {};
	};
	
	class GiveKey
	{
		file = "scripts\HG\Functions\Client\GiveKey";
		class dialogOnLoadGiveKey {};
		class giveKeyBtns {};
		class refreshKeyCombo {};
		class refreshKeyList {};
	};
	
	class GiveMoney
	{
		file = "scripts\HG\Functions\Client\GiveMoney";
		class dialogOnloadGiveMoney {};
		class giveMoneyBtn {};
	};
	
	class HUD
	{
		file = "scripts\HG\Functions\Client\HUD";
		class HUD {};
	};
	
	class ItemsShop
	{
		file = "scripts\HG\Functions\Client\ItemsShop";
		class dialogOnLoadItems {};
		class dialogOnUnloadItems {};
		class handleItems {};
		class itemBtns {};
		class itemSelectionChanged {};
		class xItemSelectionChanged {};
	};
	
	class Tags
	{
		file = "scripts\HG\Functions\Client\Tags";
		class playerTags {};
	};
	
	class Trader
	{
		file = "scripts\HG\Functions\Client\Trader";
		class dialogOnLoadTrader {};
		class dialogOnUnloadTrader {};
		class gearHandler {};
		class gearItem {};
		class refreshTrader {};
		class traderBtns {};
		class traderTreeChanged {};
	};
	
	class VehiclesShop
	{
		file = "scripts\HG\Functions\Client\VehiclesShop";
		class addActions {};
		class buyToGarage {};
		class buyVehicle {};
		class dialogOnLoadVehicles {};
		class dialogOnUnloadVehicles {};
		class vehicleColor {};
		class vehicleRotate {};
		class vehicleSelectionChanged {};
		class xVehicleSelectionChanged {};
	};
};
