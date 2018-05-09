class Life_Clothing {
    idd = 3100;
    name= "Life_Clothing";
    movingEnable = 1;
    enableSimulation = 1;
    //onLoad = "[] execVM 'core\client\keychain\init.sqf'";

    class controlsBackground
    {
        class Background: Life_RscText
        {
	        idc = -1;
			colorBackground[] = {0, 0, 0, 0.7};
	        x = 0.716562 * safezoneW + safezoneX;
	        y = 0.016 * safezoneH + safezoneY;
	        w = 0.273281 * safezoneW;
	        h = 0.968 * safezoneH;
        };
        class Background2: Life_RscText
        {
	        idc = -1;
			colorBackground[] = {0, 0, 0, 0.7};
	        x = 0.716563 * safezoneW + safezoneX;
	        y = 0.016 * safezoneH + safezoneY;
	        w = 0.273281 * safezoneW;
	        h = 0.968 * safezoneH;
        };
    };

    class controls 
    {
        class Title: Life_RscStructuredText
        {
	        idc = 1100;
			colorBackground[] = {0, 0, 0, 0};
	        text = "Clothing Shop"; //--- ToDo: Localize;
	        x = 0.824844 * safezoneW + safezoneX;
	        y = 0.016 * safezoneH + safezoneY;
	        w = 0.0825 * safezoneW;
	        h = 0.033 * safezoneH;
        };
        class ClothingList: Life_RscListbox
        {
	        onLBSelChanged = "[_this] call life_fnc_changeClothes;";
	        idc = 3101;
	        x = 0.732031 * safezoneW + safezoneX;
	        y = 0.06 * safezoneH + safezoneY;
	        w = 0.242344 * safezoneW;
	        h = 0.748 * safezoneH;
        };
        class PriceTag: Life_RscStructuredText
        {
	        idc = 3102;
	        x = 0.778437 * safezoneW + safezoneX;
	        y = 0.907 * safezoneH + safezoneY;
	        w = 0.0567187 * safezoneW;
	        h = 0.022 * safezoneH;
        };
        class TotalPrice: Life_RscStructuredText
        {
	        idc = 3106;
	        x = 0.778437 * safezoneW + safezoneX;
	        y = 0.874 * safezoneH + safezoneY;
	        w = 0.0567187 * safezoneW;
	        h = 0.022 * safezoneH;
        };
        class FilterList: Life_RscCombo
        {
	        onLBSelChanged	= "_this call life_fnc_clothingFilter";
	        idc = 3105;
	        x = 0.835156 * safezoneW + safezoneX;
	        y = 0.819 * safezoneH + safezoneY;
	        w = 0.139219 * safezoneW;
	        h = 0.022 * safezoneH;
	        tooltip = "Use isso para mudar para mochila ou coletes ou alguma outra seção."; //--- ToDo: Localize;
        };
        class Total: Life_RscStructuredText
        {
	        idc = 1103;
	        text = "Total Price:"; //--- ToDo: Localize;
	        x = 0.732031 * safezoneW + safezoneX;
	        y = 0.874 * safezoneH + safezoneY;
	        w = 0.0515625 * safezoneW;
	        h = 0.022 * safezoneH;
        };
        class ItemPrice: Life_RscStructuredText
        {
	        idc = 1104;
	        text = "Item Price:"; //--- ToDo: Localize;
	        x = 0.732031 * safezoneW + safezoneX;
	        y = 0.907 * safezoneH + safezoneY;
	        w = 0.0515625 * safezoneW;
	        h = 0.022 * safezoneH;
        };
        class CloseButtonKey: Life_RscButtonMenu
        {
	        onButtonClick = "closeDialog 0; [] call life_fnc_playerSkins;";

	        idc = -1;
	        text = "Exit"; //--- ToDo: Localize;
	        x = 0.732031 * safezoneW + safezoneX;
	        y = 0.951 * safezoneH + safezoneY;
	        w = 0.0670312 * safezoneW;
	        h = 0.022 * safezoneH;
        };
        class BuyButtonKey: Life_RscButtonMenu
        {
	        onButtonClick = "[] call life_fnc_buyClothes;";

	        idc = -1;
	        text = "Buy"; //--- ToDo: Localize;
	        x = 0.9125 * safezoneW + safezoneX;
	        y = 0.951 * safezoneH + safezoneY;
	        w = 0.0670312 * safezoneW;
	        h = 0.022 * safezoneH;
        };
        class viewAngle: life_RscXSliderH
        {
	        onSliderPosChanged = "[4,_this select 1] call life_fnc_s_onSliderChange;";
	        idc = 3107;
			color[] = {1, 1, 1, 0.45};
            colorActive[] = {1, 1, 1, 0.65};
			text = "";
	        x = 0.00499997 * safezoneW + safezoneX;
	        y = 0.951 * safezoneH + safezoneY;
	        w = 0.221719 * safezoneW;
	        h = 0.033 * safezoneH;
	        tooltip = "Use isso para ver sua pessoa e como elas serão com suas roupas novas e elegantes."; //--- ToDo: Localize;
        };
    };
};