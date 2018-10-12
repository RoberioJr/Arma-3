/*

    Author: RobérioJR

*/

class RJ_LojaDeVeiculos
{
	idd = 5025;
	name = "RJ_LojaDeVeiculos";
	movingEnable = true;
	enableSimulation = 1;
	
	class ControlsBackground
	{
		class Fundo
		{
			type = 0;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.23730469;
			y = safeZoneY + safeZoneH * 0.14930556;
			w = safeZoneW * 0.52441407;
			h = safeZoneH * 0.69965278;
			style = 0;
			text = "";
			colorBackground[] = {0.302,0.302,0.302,0.75};
			colorText[] = {0,0,0,0};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
		class Titulo
		{
			type = 0;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.23730469;
			y = safeZoneY + safeZoneH * 0.07638889;
			w = safeZoneW * 0.52441407;
			h = safeZoneH * 0.06770834;
			style = 0+2;
			text = "Loja De Veiculos";
			colorBackground[] = {0.302,0.302,0.302,0.75};
			colorText[] = {0.902,0.902,0.902,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 2);
			
		};
		class Info1
		{
			type = 0;
			idc = 5026;
			x = safeZoneX + safeZoneW * 0.60351563;
			y = safeZoneY + safeZoneH * 0.27083334;
			w = safeZoneW * 0.15820313;
			h = safeZoneH * 0.06770834;
			style = 0;
			text = "Preço: 0";
			colorBackground[] = {0,0,0,0};
			colorText[] = {0.949,0.949,0.949,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1.15);
			
		};
		class Info2
		{
			type = 0;
			idc = 5027;
			x = safeZoneX + safeZoneW * 0.60351563;
			y = safeZoneY + safeZoneH * 0.36805556;
			w = safeZoneW * 0.15820313;
			h = safeZoneH * 0.06770834;
			style = 0;
			text = "Blindagem: ";
			colorBackground[] = {0,0,0,0};
			colorText[] = {0.949,0.949,0.949,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1.15);
			
		};
		class Info3
		{
			type = 0;
			idc = 5028;
			x = safeZoneX + safeZoneW * 0.60351563;
			y = safeZoneY + safeZoneH * 0.46527778;
			w = safeZoneW * 0.15820313;
			h = safeZoneH * 0.06770834;
			style = 0;
			text = "Velocidade: ";
			colorBackground[] = {0,0,0,0};
			colorText[] = {0.949,0.949,0.949,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1.15);
			
		};
		class Grana
		{
			type = 0;
			idc = 5029;
			x = safeZoneX + safeZoneW * 0.26171875;
			y = safeZoneY + safeZoneH * 0.78125;
			w = safeZoneW * 0.18261719;
			h = safeZoneH * 0.04340278;
			style = 0;
			text = "R$99999999";
			colorBackground[] = {0,0,0,0};
			colorText[] = {0.949,0.949,0.949,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
	};
	class Controls
	{
		class ListBoxVeiculos
		{
			type = 5;
			idc = 5030;
			x = safeZoneX + safeZoneW * 0.28613282;
			y = safeZoneY + safeZoneH * 0.22222223;
			w = safeZoneW * 0.3046875;
			h = safeZoneH * 0.52083334;
			style = 16;
			colorBackground[] = {0.4,0.4,0.4,0.5};
			colorDisabled[] = {0,0,0,0};
			colorSelect[] = {0.702,0.702,0.702,1};
			colorText[] = {0.949,0.949,0.949,1};
			font = "PuristaMedium";
			maxHistoryDelay = 0;
			rowHeight = 0.05;
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1.3);
			soundSelect[] = {"\A3\ui_f\data\sound\RscListbox\soundSelect",0.09,1.0};
			onLBSelChanged = "_this call RJ_fnc_MudancaNoLBVeiculos";
			class ListScrollBar
			{
				color[] = {1,1,1,1};
				thumb = "\A3\ui_f\data\gui\cfg\scrollbar\thumb_ca.paa";
				arrowFull = "\A3\ui_f\data\gui\cfg\scrollbar\arrowFull_ca.paa";
				arrowEmpty = "\A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa";
				border = "\A3\ui_f\data\gui\cfg\scrollbar\border_ca.paa";
				
			};
			
		};
		class Comprar
		{
			type = 1;
			idc = 5031;
			x = safeZoneX + safeZoneW * 0.60351563;
			y = safeZoneY + safeZoneH * 0.63541667;
			w = safeZoneW * 0.13378907;
			h = safeZoneH * 0.06770834;
			style = 0+2;
			text = "Comprar";
			borderSize = 0;
			colorBackground[] = {0.302,0.302,0.302,1};
			colorBackgroundActive[] = {0.6,0.6,0.6,1};
			colorBackgroundDisabled[] = {0.2,0.2,0.2,1};
			colorBorder[] = {0,0,0,0};
			colorDisabled[] = {0.2,0.2,0.2,1};
			colorFocused[] = {0.2,0.2,0.2,1};
			colorShadow[] = {0,0,0,0};
			colorText[] = {0.902,0.902,0.902,1};
			font = "PuristaMedium";
			offsetPressedX = 0.01;
			offsetPressedY = 0.01;
			offsetX = 0.01;
			offsetY = 0.01;
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1.3);
			soundClick[] = {"\A3\ui_f\data\sound\RscButton\soundClick",0.09,1.0};
			soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter",0.09,1.0};
			soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape",0.09,1.0};
			soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush",0.09,1.0};
			
		};
		
	};
	
};
