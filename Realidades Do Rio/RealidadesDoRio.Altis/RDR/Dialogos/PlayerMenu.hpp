/*

    Author: Medeiros && RobérioJr

*/

class PlayerMenu
{
	idd = 5020;
	name= "PlayerMenu";
	
	class ControlsBackground
	{
		class Bg
		{
			type = 0;
			idc = -1;
			x = 0.23459716;
			y = -0.35759493;
			w = 1.27014219;
			h = 1.66772153;
			style = 48;
			text = "Texturas\PlayerMenu.paa";
			colorBackground[] = {};
			colorText[] = {};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW/safezoneH)min 1.2)/1.2)/25)*1);
			access = 0;
			
		};
		
	};
	class Controls
	{
		class ACAO
		{
			type = 1;
			idc = 5021;
			x = 0.68905214;
			y = 0.95886078;
			w = 0.06028439;
			h = 0.08227849;
			style = 0;
			text = "";
			borderSize = 0;
			colorBackground[] = {0,0,0,0};
			colorBackgroundActive[] = {0,0,0,0};
			colorBackgroundDisabled[] = {0,0,0,0};
			colorBorder[] = {0,0,0,0};
			colorDisabled[] = {0,0,0,0};
			colorFocused[] = {0,0,0,0};
			colorShadow[] = {0,0,0,0};
			colorText[] = {0,0,0,0};
			font = "PuristaMedium";
			offsetPressedX = 0.01;
			offsetPressedY = 0.01;
			offsetX = 0.01;
			offsetY = 0.01;
			sizeEx = (((((safezoneW/safezoneH)min 1.2)/1.2)/25)*1);
			soundClick[] = {"\A3\ui_f\data\sound\RscButton\soundClick",0.09,1.0};
			soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter",0.09,1.0};
			soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape",0.09,1.0};
			soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush",0.09,1.0};
			
		};
		class sync
		{
			type = 1;
			idc = 5022;
			x = 0.79383887;
			y = 0.96202534;
			w = 0.05213272;
			h = 0.07911393;
			style = 0;
			text = "";
			borderSize = 0;
			colorBackground[] = {0,0,0,0};
			colorBackgroundActive[] = {0,0,0,0};
			colorBackgroundDisabled[] = {0,0,0,0};
			colorBorder[] = {0,0,0,0};
			colorDisabled[] = {0,0,0,0};
			colorFocused[] = {0,0,0,0};
			colorShadow[] = {0,0,0,0};
			colorText[] = {0,0,0,0};
			font = "PuristaMedium";
			offsetPressedX = 0.01;
			offsetPressedY = 0.01;
			offsetX = 0.01;
			offsetY = 0.01;
			sizeEx = (((((safezoneW/safezoneH)min 1.2)/1.2)/25)*1);
			soundClick[] = {"\A3\ui_f\data\sound\RscButton\soundClick",0.09,1.0};
			soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter",0.09,1.0};
			soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape",0.09,1.0};
			soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush",0.09,1.0};
			
		};
		class msgprivada
		{
			type = 1;
			idc = 5023;
			x = 0.8886256;
			y = 0.95886078;
			w = 0.06398105;
			h = 0.08227849;
			style = 0;
			text = "";
			borderSize = 0;
			colorBackground[] = {0,0,0,0};
			colorBackgroundActive[] = {0,0,0,0};
			colorBackgroundDisabled[] = {0,0,0,0};
			colorBorder[] = {0,0,0,0};
			colorDisabled[] = {0,0,0,0};
			colorFocused[] = {0,0,0,0};
			colorShadow[] = {0,0,0,0};
			colorText[] = {0,0,0,0};
			font = "PuristaMedium";
			offsetPressedX = 0.01;
			offsetPressedY = 0.01;
			offsetX = 0.01;
			offsetY = 0.01;
			sizeEx = (((((safezoneW/safezoneH)min 1.2)/1.2)/25)*1);
			soundClick[] = {"\A3\ui_f\data\sound\RscButton\soundClick",0.09,1.0};
			soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter",0.09,1.0};
			soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape",0.09,1.0};
			soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush",0.09,1.0};
			
		};
		class Config
		{
			type = 1;
			idc = 5024;
			x = 0.99341233;
			y = 0.95886078;
			w = 0.06398105;
			h = 0.08227849;
			style = 0;
			text = "";
			borderSize = 0;
			colorBackground[] = {0,0,0,0};
			colorBackgroundActive[] = {0,0,0,0};
			colorBackgroundDisabled[] = {0,0,0,0};
			colorBorder[] = {0,0,0,0};
			colorDisabled[] = {0,0,0,0};
			colorFocused[] = {0,0,0,0};
			colorShadow[] = {0,0,0,0};
			colorText[] = {0,0,0,0};
			font = "PuristaMedium";
			offsetPressedX = 0.01;
			offsetPressedY = 0.01;
			offsetX = 0.01;
			offsetY = 0.01;
			sizeEx = (((((safezoneW/safezoneH)min 1.2)/1.2)/25)*1);
			soundClick[] = {"\A3\ui_f\data\sound\RscButton\soundClick",0.09,1.0};
			soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter",0.09,1.0};
			soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape",0.09,1.0};
			soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush",0.09,1.0};
			
		};
		class DarDinheiro
		{
			type = 1;
			idc = 5025;
			x = 0.98710902;
			y = 0.3401266;
			w = 0.06137446;
			h = 0.03962027;
			style = 0;
			text = "";
			borderSize = 0;
			colorBackground[] = {0,0,0,0};
			colorBackgroundActive[] = {0,0,0,0};
			colorBackgroundDisabled[] = {0,0,0,0};
			colorBorder[] = {0,0,0,0};
			colorDisabled[] = {0,0,0,0};
			colorFocused[] = {0,0,0,0};
			colorShadow[] = {0,0,0,0};
			colorText[] = {0,0,0,0};
			font = "PuristaMedium";
			offsetPressedX = 0.01;
			offsetPressedY = 0.01;
			offsetX = 0.01;
			offsetY = 0.01;
			sizeEx = (((((safezoneW/safezoneH)min 1.2)/1.2)/25)*1);
			soundClick[] = {"\A3\ui_f\data\sound\RscButton\soundClick",0.09,1.0};
			soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter",0.09,1.0};
			soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape",0.09,1.0};
			soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush",0.09,1.0};
			
		};
		class DinheiroBANCO
		{
			type = 0;
			idc = 5026;
			x = 0.7801422;
			y = -0.04430379;
			w = 0.25909954;
			h = 0.07962027;
			style = 0+2;
			text = "999999";
			colorBackground[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW/safezoneH)min 1.2)/1.2)/25)*1.3);
			
		};
		class DinheiroMao
		{
			type = 0;
			idc = 5027;
			x = 0.7701422;
			y = 0.09860761;
			w = 0.27834124;
			h = 0.06962027;
			style = 0+2;
			text = "999999";
			colorBackground[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW/safezoneH)min 1.2)/1.2)/25)*1.3);
			
		};
		class ValorDoar
		{
			type = 2;
			idc = 5028;
			x = 0.6872038;
			y = 0.34177217;
			w = 0.26540285;
			h = 0.0379747;
			style = 0;
			text = "999999";
			autocomplete = "";
			colorBackground[] = {0,0,0,0};
			colorDisabled[] = {0,0,0,0};
			colorSelection[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW/safezoneH)min 1.2)/1.2)/25)*1.3);
			
		};
		class JogadoresPerto
		{
			type = 4;
			idc = 5029;
			x = 0.77199053;
			y = 0.25316457;
			w = 0.27540286;
			h = 0.05379748;
			style = 16;
			arrowEmpty = "\A3\ui_f\data\GUI\RscCommon\RscCombo\arrow_combo_ca.paa";
			arrowFull = "\A3\ui_f\data\GUI\RscCommon\RscCombo\arrow_combo_active_ca.paa";
			colorBackground[] = {0,0,0,0};
			colorDisabled[] = {0,0,0,0};
			colorSelect[] = {1,1,1,1};
			colorSelectBackground[] = {0,0,0,1};
			colorText[] = {0.102,0.102,0.102,1};
			font = "PuristaMedium";
			maxHistoryDelay = 0;
			sizeEx = (((((safezoneW/safezoneH)min 1.2)/1.2)/25)*1.3);
			soundCollapse[] = {"\A3\ui_f\data\sound\RscCombo\soundCollapse",0.1,1.0};
			soundExpand[] = {"\A3\ui_f\data\sound\RscCombo\soundExpand",0.1,1.0};
			soundSelect[] = {"\A3\ui_f\data\sound\RscCombo\soundSelect",0.1,1.0};
			wholeHeight = 0.3;
			class ComboScrollBar
			{
				color[] = {1,1,1,1};
				thumb = "\A3\ui_f\data\gui\cfg\scrollbar\thumb_ca.paa";
				arrowFull = "\A3\ui_f\data\gui\cfg\scrollbar\arrowFull_ca.paa";
				arrowEmpty = "\A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa";
				border = "\A3\ui_f\data\gui\cfg\scrollbar\border_ca.paa";
				
			};
			
		};
		
	};
	
};
