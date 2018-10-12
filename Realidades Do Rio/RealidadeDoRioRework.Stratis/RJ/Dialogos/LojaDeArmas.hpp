/*

    Author: RobérioJR

*/

class RJ_LojaDeArmas 
{
	idd = 5000;
	name = "RJ_LojaDeArmas";
	movingEnable = true;
	enableSimulation = 1;

	class ControlsBackground
	{
		class Fundo
		{
			type = 0;
			idc = -1;
			x = -0.01303538;
			y = 0.13399505;
			w = 1.01862198;
			h = 0.85359803;
			style = 0+80;
			text = "";
			colorBackground[] = {0.302,0.302,0.302,0.5};
			colorText[] = {0,0,0,0};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW/safezoneH)min 1.2)/1.2)/25)*1);
		};
		class FundoAmmo
		{
			type = 0;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.25488282;
			y = safeZoneY + safeZoneH * 0.34027778;
			w = safeZoneW * 0.11914063;
			h = safeZoneH * 0.30555556;
			style = 0;
			text = "";
			colorBackground[] = {0.502,0.502,0.502,0.8};
			colorText[] = {0,0,0,0};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW/safezoneH)min 1.2)/1.2)/25)*1);
		};
		class Titulo
		{
			type = 0;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.23046875;
			y = safeZoneY + safeZoneH * 0.171875;
			w = safeZoneW * 0.53417969;
			h = safeZoneH * 0.0625;
			style = 2;
			text = "Loja De Armas";
			colorBackground[] = {0.302,0.302,0.302,0.7};
			colorText[] = {0.949,0.949,0.949,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW/safezoneH)min 1.2)/1.2)/25)*2);
		};
		class FundoAcessorios
		{
			type = 0;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.62109375;
			y = safeZoneY + safeZoneH * 0.34027778;
			w = safeZoneW * 0.11914063;
			h = safeZoneH * 0.30555556;
			style = 0;
			text = "";
			colorBackground[] = {0.502,0.502,0.502,0.8};
			colorText[] = {0,0,0,0};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW/safezoneH)min 1.2)/1.2)/25)*1);
		};
	};
	class Controls
	{
		class ListBoxRJ
		{
			type = 5;
			idc = 5001;
			x = safeZoneX + safeZoneW * 0.37695313;
			y = safeZoneY + safeZoneH * 0.34027778;
			w = safeZoneW * 0.24121094;
			h = safeZoneH * 0.37152778;
			style = 16;
			colorBackground[] = {0.502,0.502,0.502,0.8};
			colorDisabled[] = {0.302,0.302,0.302,1};
			colorSelect[] = {0.702,0.702,0.702,1};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			maxHistoryDelay = 0;
			rowHeight = 0.04;
			sizeEx = (((((safezoneW/safezoneH)min 1.2)/1.2)/25)*1.3);
			soundSelect[] = {"\A3\ui_f\data\sound\RscListbox\soundSelect",0.09,1.0};
			onLBSelChanged = "_this call RJ_fnc_MudancaNoLBArmas";
			class ListScrollBar
			{
				color[] = {1,1,1,1};
				thumb = "\A3\ui_f\data\gui\cfg\scrollbar\thumb_ca.paa";
				arrowFull = "\A3\ui_f\data\gui\cfg\scrollbar\arrowFull_ca.paa";
				arrowEmpty = "\A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa";
				border = "\A3\ui_f\data\gui\cfg\scrollbar\border_ca.paa";
			};
		};
		class ListBoxAmmoRJ
		{
			type = 5;
			idc = 5002;
			x = safeZoneX + safeZoneW * 0.25488282;
			y = safeZoneY + safeZoneH * 0.34027778;
			w = safeZoneW * 0.11914063;
			h = safeZoneH * 0.29861112;
			style = 16;
			colorBackground[] = {0,0,0,0};
			colorDisabled[] = {0.302,0.302,0.302,1};
			colorSelect[] = {0.702,0.702,0.702,1};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			maxHistoryDelay = 0;
			rowHeight = 0.030;
			sizeEx = (((((safezoneW/safezoneH)min 1.2)/1.2)/25)*1);
			soundSelect[] = {"\A3\ui_f\data\sound\RscListbox\soundSelect",0.09,1.0};
			onLBSelChanged = "_this call RJ_fnc_MudancaNoLBArmas";
			class ListScrollBar
			{
				color[] = {1,1,1,1};
				thumb = "\A3\ui_f\data\gui\cfg\scrollbar\thumb_ca.paa";
				arrowFull = "\A3\ui_f\data\gui\cfg\scrollbar\arrowFull_ca.paa";
				arrowEmpty = "\A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa";
				border = "\A3\ui_f\data\gui\cfg\scrollbar\border_ca.paa";
			};
		};
		class ListBoxAcessoriosRJ
		{
			type = 5;
			idc = 5012;
			x = safeZoneX + safeZoneW * 0.62109375;
			y = safeZoneY + safeZoneH * 0.34027778;
			w = safeZoneW * 0.11914063;
			h = safeZoneH * 0.29861112;
			style = 16;
			colorBackground[] = {0,0,0,0};
			colorDisabled[] = {0.302,0.302,0.302,1};
			colorSelect[] = {0.702,0.702,0.702,1};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			maxHistoryDelay = 0;
			rowHeight = 0.030;
			sizeEx = (((((safezoneW/safezoneH)min 1.2)/1.2)/25)*1);
			soundSelect[] = {"\A3\ui_f\data\sound\RscListbox\soundSelect",0.09,1.0};
			onLBSelChanged = "_this call RJ_fnc_MudancaNoLBArmas";
			class ListScrollBar
			{
				color[] = {1,1,1,1};
				thumb = "\A3\ui_f\data\gui\cfg\scrollbar\thumb_ca.paa";
				arrowFull = "\A3\ui_f\data\gui\cfg\scrollbar\arrowFull_ca.paa";
				arrowEmpty = "\A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa";
				border = "\A3\ui_f\data\gui\cfg\scrollbar\border_ca.paa";
			};
		};
		class ComprarRJ
		{
			type = 1;
			idc = 5003;
			x = safeZoneX + safeZoneW * 0.41113282;
			y = safeZoneY + safeZoneH * 0.72916667;
			w = safeZoneW * 0.0703125;
			h = safeZoneH * 0.03819445;
			style = 2;
			text = "Comprar";
			borderSize = 0;
			colorBackground[] = {0.4,0.4,0.4,1};
			colorBackgroundActive[] = {0.6,0.6,0.6,1};
			colorBackgroundDisabled[] = {0.2,0.2,0.2,1};
			colorBorder[] = {0,0,0,0};
			colorDisabled[] = {0.2,0.2,0.2,1};
			colorFocused[] = {0.2,0.2,0.2,1};
			colorShadow[] = {0,0,0,0};
			colorText[] = {0.949,0.949,0.949,1};
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
		class ComprarAmmoRJ
		{
			type = 1;
			idc = 5004;
			x = 0.07821231;
			y = 0.72456577;
			w = 0.13407822;
			h = 0.05459058;
			style = 2;
			text = "Comprar";
			borderSize = 0;
			colorBackground[] = {0.4,0.4,0.4,1};
			colorBackgroundActive[] = {0.6,0.6,0.6,1};
			colorBackgroundDisabled[] = {0.2,0.2,0.2,1};
			colorBorder[] = {0,0,0,0};
			colorDisabled[] = {0.2,0.2,0.2,1};
			colorFocused[] = {0.2,0.2,0.2,1};
			colorShadow[] = {0,0,0,0};
			colorText[] = {0.949,0.949,0.949,1};
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
		class ComprarAcessoriosRJ
		{
			type = 1;
			idc = 5006;
			x = 0.77653632;
			y = 0.72456577;
			w = 0.13407822;
			h = 0.05459058;
			style = 2;
			text = "Comprar";
			borderSize = 0;
			colorBackground[] = {0.4,0.4,0.4,1};
			colorBackgroundActive[] = {0.6,0.6,0.6,1};
			colorBackgroundDisabled[] = {0.2,0.2,0.2,1};
			colorBorder[] = {0,0,0,0};
			colorDisabled[] = {0.2,0.2,0.2,1};
			colorFocused[] = {0.2,0.2,0.2,1};
			colorShadow[] = {0,0,0,0};
			colorText[] = {0.949,0.949,0.949,1};
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
		class VenderRJ
		{
			type = 1;
			idc = 5005;
			x = safeZoneX + safeZoneW * 0.5234375;
			y = safeZoneY + safeZoneH * 0.72916667;
			w = safeZoneW * 0.0703125;
			h = safeZoneH * 0.03819445;
			style = 2;
			text = "Vender";
			borderSize = 0;
			colorBackground[] = {0.4,0.4,0.4,1};
			colorBackgroundActive[] = {0.6,0.6,0.6,1};
			colorBackgroundDisabled[] = {0.2,0.2,0.2,1};
			colorBorder[] = {0,0,0,0};
			colorDisabled[] = {0.2,0.2,0.2,1};
			colorFocused[] = {0.2,0.2,0.2,1};
			colorShadow[] = {0,0,0,0};
			colorText[] = {0.949,0.949,0.949,1};
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
		class Grana
		{
			type = 0;
			idc = 5007;
			x = 0.05351957;
			y = 0.87826304;
			w = 0.13407822;
			h = 0.05459058;
			style = 0;
			text = " R$ 999999";
			colorBackground[] = {0,0,0,0};
			colorText[] = {0.949,0.949,0.949,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW/safezoneH)min 1.2)/1.2)/25)*1.25);
		};
		class InfoArma
		{
			type = 0;
			idc = 5008;
			x = 0.41839858;
			y = 0.20878418;
			w = 0.15063317;
			h = 0.05459058;
			style = 0;
			text = " Preço: 0";
			colorBackground[] = {0,0,0,0};
			colorText[] = {0.949,0.949,0.949,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW/safezoneH)min 1.2)/1.2)/25)*1.18);
		};
		class InfoAmmo
		{
			type = 0;
			idc = 5009;
			x = 0.06351961;
			y = 0.20404474;
			w = 0.16063317;
			h = 0.05459058;
			style = 0;
			text = " Preço: 0";
			colorBackground[] = {0,0,0,0};
			colorText[] = {0.949,0.949,0.949,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW/safezoneH)min 1.2)/1.2)/25)*1.18);
		};
		class InfoAcessorios
		{
			type = 0;
			idc = 5010;
			x = 0.75839864;
			y = 0.20878419;
			w = 0.15063317;
			h = 0.05459058;
			style = 0;
			text = " Preço: 0";
			colorBackground[] = {0,0,0,0};
			colorText[] = {0.949,0.949,0.949,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW/safezoneH)min 1.2)/1.2)/25)*1.18);
		};
	};
};
