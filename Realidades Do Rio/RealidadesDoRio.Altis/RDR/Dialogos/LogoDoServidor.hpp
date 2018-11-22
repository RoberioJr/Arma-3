class RscPictureRDR
{
	deletable = 0;
	fade = 0;
	access = 0;
    type = 0;
	x = 0;
	y = 0;
	h = 0.04;
	w = 0.2;
	style = 48;
    colorBackground[] = {0,0,0,0};
	colorText[] = {1,1,1,1};
	font = "TahomaB";
	sizeEx = 0;
	lineSpacing = 0;
	text = "";
	fixedWidth = 0;
	shadow = 0;
	tooltipColorText[] = {1,1,1,1};
    tooltipColorBox[] = {1,1,1,1};
    tooltipColorShade[] = {0,0,0,0.65};
};

class LogoDoServidor
{
    duration = 99999;
    idd = 2792;
    onLoad = "uiNamespace setVariable ['Logo_Servidor', _this select 0]";
    onUnload = "uiNamespace setVariable ['Logo_Servidor', nil]";
    class controls
    {
        class imageHolder: RscPictureRDR
        {
	        idc = 1200;
	        x = 0.8850 * safezoneW + safezoneX;
	        y = 0.8300 * safezoneH + safezoneY;
	        w = 0.1 * safezoneW;
	        h = 0.1 * safezoneH;
			deletable = 0;
	        fade = 0;
	        access = 0;
	        type = 0;
	        style = 48;
	        colorBackground[] = {0,0,0,0};
	        colorText[] = {1,1,1,1};
	        font = "TahomaB";
	        sizeEx = 0;
	        lineSpacing = 0;
	        text = "";
	        fixedWidth = 0;
	        shadow = 0;
	        tooltipColorText[] = {1,1,1,1};
            tooltipColorBox[] = {1,1,1,1};
            tooltipColorShade[] = {0,0,0,0.65};
        };
    };
};
