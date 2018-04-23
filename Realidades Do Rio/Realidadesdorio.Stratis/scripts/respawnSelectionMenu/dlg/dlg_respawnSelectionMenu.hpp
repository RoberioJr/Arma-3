/*
	Code written by Haz
*/

#include "scripts\respawnSelectionMenu\dlg\IDCs.hpp"

class dlg_respawnSelectionMenu
{
	idd = 13579;
	movingEnable = 1;
	onLoad = "uiNamespace setVariable [""disp_respawnSelectionMenu"", (_this select 0)]; [(_this select 0)] call BIS_fnc_guiEffectTiles; [] call Haz_fnc_respawnSelectionMenu;";
	onUnload = "uiNamespace setVariable [""disp_respawnSelectionMenu"", nil];";
	class controlsBackground
	{
		class TileGroup : RscControlsGroupNoScrollbars
		{
			idc = 115099;
			x = "safezoneX";
			y = "safezoneY";
			w = "safezoneW";
			h = "safezoneH";
			disableCustomColors = 1;
			class controls
			{
				class TileFrame : RscFrame
				{
					idc = 114999;
					x = 0;
					y = 0;
					w = "safezoneW";
					h = "safezoneH";
					colortext[] = {0, 0, 0, 1};
				};
				class Tile_0_0 : RscText
				{
					idc = 115000;
					x = "(0 * 1 / 6) * safezoneW";
					y = "(0 * 1 / 6) * safezoneH";
					w = "1 / 6 * safezoneW";
					h = "1 / 6 * safezoneH";
					colorBackground[] = {0, 0, 0, 0.1};
				};
				class Tile_0_1 : RscText
				{
					idc = 115001;
					x = "(0 * 1 / 6) * safezoneW";
					y = "(1 * 1 / 6) * safezoneH";
					w = "1 / 6 * safezoneW";
					h = "1 / 6 * safezoneH";
					colorBackground[] = {0, 0, 0, 0.1};
				};
				class Tile_0_2 : RscText
				{
					idc = 115002;
					x = "(0 * 1 / 6) * safezoneW";
					y = "(2 * 1 / 6) * safezoneH";
					w = "1 / 6 * safezoneW";
					h = "1 / 6 * safezoneH";
					colorBackground[] = {0, 0, 0, 0.1};
				};
				class Tile_0_3 : RscText
				{
					idc = 115003;
					x = "(0 * 1 / 6) * safezoneW";
					y = "(3 * 1 / 6) * safezoneH";
					w = "1 / 6 * safezoneW";
					h = "1 / 6 * safezoneH";
					colorBackground[] = {0, 0, 0, 0.1};
				};
				class Tile_0_4 : RscText
				{
					idc = 115004;
					x = "(0 * 1 / 6) * safezoneW";
					y = "(4 * 1 / 6) * safezoneH";
					w = "1 / 6 * safezoneW";
					h = "1 / 6 * safezoneH";
					colorBackground[] = {0, 0, 0, 0.1};
				};
				class Tile_0_5 : RscText
				{
					idc = 115005;
					x = "(0 * 1 / 6) * safezoneW";
					y = "(5 * 1 / 6) * safezoneH";
					w = "1 / 6 * safezoneW";
					h = "1 / 6 * safezoneH";
					colorBackground[] = {0, 0, 0, 0.1};
				};
				class Tile_1_0 : RscText
				{
					idc = 115010;
					x = "(1 * 1 / 6) * safezoneW";
					y = "(0 * 1 / 6) * safezoneH";
					w = "1 / 6 * safezoneW";
					h = "1 / 6 * safezoneH";
					colorBackground[] = {0, 0, 0, 0.1};
				};
				class Tile_1_1 : RscText
				{
					idc = 115011;
					x = "(1 * 1 / 6) * safezoneW";
					y = "(1 * 1 / 6) * safezoneH";
					w = "1 / 6 * safezoneW";
					h = "1 / 6 * safezoneH";
					colorBackground[] = {0, 0, 0, 0.1};
				};
				class Tile_1_2 : RscText
				{
					idc = 115012;
					x = "(1 * 1 / 6) * safezoneW";
					y = "(2 * 1 / 6) * safezoneH";
					w = "1 / 6 * safezoneW";
					h = "1 / 6 * safezoneH";
					colorBackground[] = {0, 0, 0, 0.1};
				};
				class Tile_1_3 : RscText
				{
					idc = 115013;
					x = "(1 * 1 / 6) * safezoneW";
					y = "(3 * 1 / 6) * safezoneH";
					w = "1 / 6 * safezoneW";
					h = "1 / 6 * safezoneH";
					colorBackground[] = {0, 0, 0, 0.1};
				};
				class Tile_1_4 : RscText
				{
					idc = 115014;
					x = "(1 * 1 / 6) * safezoneW";
					y = "(4 * 1 / 6) * safezoneH";
					w = "1 / 6 * safezoneW";
					h = "1 / 6 * safezoneH";
					colorBackground[] = {0, 0, 0, 0.1};
				};
				class Tile_1_5 : RscText
				{
					idc = 115015;
					x = "(1 * 1 / 6) * safezoneW";
					y = "(5 * 1 / 6) * safezoneH";
					w = "1 / 6 * safezoneW";
					h = "1 / 6 * safezoneH";
					colorBackground[] = {0, 0, 0, 0.1};
				};
				class Tile_2_0 : RscText
				{
					idc = 115020;
					x = "(2 * 1 / 6) * safezoneW";
					y = "(0 * 1 / 6) * safezoneH";
					w = "1 / 6 * safezoneW";
					h = "1 / 6 * safezoneH";
					colorBackground[] = {0, 0, 0, 0.1};
				};
				class Tile_2_1 : RscText
				{
					idc = 115021;
					x = "(2 * 1 / 6) * safezoneW";
					y = "(1 * 1 / 6) * safezoneH";
					w = "1 / 6 * safezoneW";
					h = "1 / 6 * safezoneH";
					colorBackground[] = {0, 0, 0, 0.1};
				};
				class Tile_2_2 : RscText
				{
					idc = 115022;
					x = "(2 * 1 / 6) * safezoneW";
					y = "(2 * 1 / 6) * safezoneH";
					w = "1 / 6 * safezoneW";
					h = "1 / 6 * safezoneH";
					colorBackground[] = {0, 0, 0, 0.1};
				};
				class Tile_2_3 : RscText
				{
					idc = 115023;
					x = "(2 * 1 / 6) * safezoneW";
					y = "(3 * 1 / 6) * safezoneH";
					w = "1 / 6 * safezoneW";
					h = "1 / 6 * safezoneH";
					colorBackground[] = {0, 0, 0, 0.1};
				};
				class Tile_2_4 : RscText
				{
					idc = 115024;
					x = "(2 * 1 / 6) * safezoneW";
					y = "(4 * 1 / 6) * safezoneH";
					w = "1 / 6 * safezoneW";
					h = "1 / 6 * safezoneH";
					colorBackground[] = {0, 0, 0, 0.1};
				};
				class Tile_2_5 : RscText
				{
					idc = 115025;
					x = "(2 * 1 / 6) * safezoneW";
					y = "(5 * 1 / 6) * safezoneH";
					w = "1 / 6 * safezoneW";
					h = "1 / 6 * safezoneH";
					colorBackground[] = {0, 0, 0, 0.1};
				};
				class Tile_3_0 : RscText
				{
					idc = 115030;
					x = "(3 * 1 / 6) * safezoneW";
					y = "(0 * 1 / 6) * safezoneH";
					w = "1 / 6 * safezoneW";
					h = "1 / 6 * safezoneH";
					colorBackground[] = {0, 0, 0, 0.1};
				};
				class Tile_3_1 : RscText
				{
					idc = 115031;
					x = "(3 * 1 / 6) * safezoneW";
					y = "(1 * 1 / 6) * safezoneH";
					w = "1 / 6 * safezoneW";
					h = "1 / 6 * safezoneH";
					colorBackground[] = {0, 0, 0, 0.1};
				};
				class Tile_3_2 : RscText
				{
					idc = 115032;
					x = "(3 * 1 / 6) * safezoneW";
					y = "(2 * 1 / 6) * safezoneH";
					w = "1 / 6 * safezoneW";
					h = "1 / 6 * safezoneH";
					colorBackground[] = {0, 0, 0, 0.1};
				};
				class Tile_3_3 : RscText
				{
					idc = 115033;
					x = "(3 * 1 / 6) * safezoneW";
					y = "(3 * 1 / 6) * safezoneH";
					w = "1 / 6 * safezoneW";
					h = "1 / 6 * safezoneH";
					colorBackground[] = {0, 0, 0, 0.1};
				};
				class Tile_3_4 : RscText
				{
					idc = 115034;
					x = "(3 * 1 / 6) * safezoneW";
					y = "(4 * 1 / 6) * safezoneH";
					w = "1 / 6 * safezoneW";
					h = "1 / 6 * safezoneH";
					colorBackground[] = {0, 0, 0, 0.1};
				};
				class Tile_3_5 : RscText
				{
					idc = 115035;
					x = "(3 * 1 / 6) * safezoneW";
					y = "(5 * 1 / 6) * safezoneH";
					w = "1 / 6 * safezoneW";
					h = "1 / 6 * safezoneH";
					colorBackground[] = {0, 0, 0, 0.1};
				};
				class Tile_4_0 : RscText
				{
					idc = 115040;
					x = "(4 * 1 / 6) * safezoneW";
					y = "(0 * 1 / 6) * safezoneH";
					w = "1 / 6 * safezoneW";
					h = "1 / 6 * safezoneH";
					colorBackground[] = {0, 0, 0, 0.1};
				};
				class Tile_4_1 : RscText
				{
					idc = 115041;
					x = "(4 * 1 / 6) * safezoneW";
					y = "(1 * 1 / 6) * safezoneH";
					w = "1 / 6 * safezoneW";
					h = "1 / 6 * safezoneH";
					colorBackground[] = {0, 0, 0, 0.1};
				};
				class Tile_4_2 : RscText
				{
					idc = 115042;
					x = "(4 * 1 / 6) * safezoneW";
					y = "(2 * 1 / 6) * safezoneH";
					w = "1 / 6 * safezoneW";
					h = "1 / 6 * safezoneH";
					colorBackground[] = {0, 0, 0, 0.1};
				};
				class Tile_4_3 : RscText
				{
					idc = 115043;
					x = "(4 * 1 / 6) * safezoneW";
					y = "(3 * 1 / 6) * safezoneH";
					w = "1 / 6 * safezoneW";
					h = "1 / 6 * safezoneH";
					colorBackground[] = {0, 0, 0, 0.1};
				};
				class Tile_4_4 : RscText
				{
					idc = 115044;
					x = "(4 * 1 / 6) * safezoneW";
					y = "(4 * 1 / 6) * safezoneH";
					w = "1 / 6 * safezoneW";
					h = "1 / 6 * safezoneH";
					colorBackground[] = {0, 0, 0, 0.1};
				};
				class Tile_4_5 : RscText
				{
					idc = 115045;
					x = "(4 * 1 / 6) * safezoneW";
					y = "(5 * 1 / 6) * safezoneH";
					w = "1 / 6 * safezoneW";
					h = "1 / 6 * safezoneH";
					colorBackground[] = {0, 0, 0, 0.1};
				};
				class Tile_5_0 : RscText
				{
					idc = 115050;
					x = "(5 * 1 / 6) * safezoneW";
					y = "(0 * 1 / 6) * safezoneH";
					w = "1 / 6 * safezoneW";
					h = "1 / 6 * safezoneH";
					colorBackground[] = {0, 0, 0, 0.1};
				};
				class Tile_5_1 : RscText
				{
					idc = 115051;
					x = "(5 * 1 / 6) * safezoneW";
					y = "(1 * 1 / 6) * safezoneH";
					w = "1 / 6 * safezoneW";
					h = "1 / 6 * safezoneH";
					colorBackground[] = {0, 0, 0, 0.1};
				};
				class Tile_5_2 : RscText
				{
					idc = 115052;
					x = "(5 * 1 / 6) * safezoneW";
					y = "(2 * 1 / 6) * safezoneH";
					w = "1 / 6 * safezoneW";
					h = "1 / 6 * safezoneH";
					colorBackground[] = {0, 0, 0, 0.1};
				};
				class Tile_5_3 : RscText
				{
					idc = 115053;
					x = "(5 * 1 / 6) * safezoneW";
					y = "(3 * 1 / 6) * safezoneH";
					w = "1 / 6 * safezoneW";
					h = "1 / 6 * safezoneH";
					colorBackground[] = {0, 0, 0, 0.1};
				};
				class Tile_5_4 : RscText
				{
					idc = 115054;
					x = "(5 * 1 / 6) * safezoneW";
					y = "(4 * 1 / 6) * safezoneH";
					w = "1 / 6 * safezoneW";
					h = "1 / 6 * safezoneH";
					colorBackground[] = {0, 0, 0, 0.1};
				};
				class Tile_5_5 : RscText
				{
					idc = 115055;
					x = "(5 * 1 / 6) * safezoneW";
					y = "(5 * 1 / 6) * safezoneH";
					w = "1 / 6 * safezoneW";
					h = "1 / 6 * safezoneH";
					colorBackground[] = {0, 0, 0, 0.1};
				};
			};
		};
	};
	class controls
	{
		class title : RscTitle
		{
			idc = dlg_respawnSelectionMenu_title;
			x = 0.2 * safezoneW + safezoneX;
			y = 0.2 * safezoneH + safezoneY;
			w = 0.6 * safezoneW;
			h = 0.0333333 * safezoneH;
			text = $STR_dialogTitle;
			colorBackground[] = {"(profileNamespace getVariable ['GUI_BCG_RGB_R', 0.13])", "(profileNamespace getVariable ['GUI_BCG_RGB_G', 0.54])", "(profileNamespace getVariable ['GUI_BCG_RGB_B', 0.21])", 1};
		};
		class background : RscPicture
		{
			idc = dlg_respawnSelectionMenu_background;
			x = 0.2 * safezoneW + safezoneX;
			y = 0.233334 * safezoneH + safezoneY;
			w = 0.6 * safezoneW;
			h = 0.5 * safezoneH;
			text = "#(argb,8,8,3)color(0,0,0,0.75)";
		};
		class respawnPoints : RscListbox
		{
			idc = dlg_respawnSelectionMenu_respawnPoints;
			x = 0.2125 * safezoneW + safezoneX;
			y = 0.25 * safezoneH + safezoneY;
			w = 0.15 * safezoneW;
			h = 0.466667 * safezoneH;
			text = "";
			rowHeight = 0.090;
		};
		class map : RscMapControl
		{
			idc = dlg_respawnSelectionMenu_map;
			x = 0.375 * safezoneW + safezoneX;
			y = 0.25 * safezoneH + safezoneY;
			w = 0.4125 * safezoneW;
			h = 0.466667 * safezoneH;
			text = "";
		};
		class sliderText : RscText
		{
			idc = dlg_respawnSelectionMenu_sliderText;
			x = 0.229166 * safezoneW + safezoneX;
			y = 0.733333 * safezoneH + safezoneY;
			w = 0.541667 * safezoneW;
			h = 0.0333333 * safezoneH;
			style = ST_CENTER;
			sizeEx = (GUI_GRID_H * 1.15);
			shadow = 2;
			text = $STR_sliderText;
			colorBackground[] = {0, 0, 0, 0.35};
		};
		class leftArrowIB : RscButton
		{
			idc = dlg_respawnSelectionMenu_leftArrowIB;
			x = 0.2 * safezoneW + safezoneX;
			y = 0.733333 * safezoneH + safezoneY;
			w = 0.025 * safezoneW;
			h = 0.0333333 * safezoneH;
			text = "";
			colorFocused[] = {0, 0, 0, 0};
			colorSecondary[] = {0, 0, 0, 0};
			color2Secondary[] = {0, 0, 0, 0};
			colorBackground[] = {0, 0, 0, 0};
			colorBackground2[] = {0, 0, 0, 0};
			colorBackgroundFocused[] = {0, 0, 0, 0};
			colorBackgroundActive[] = {0, 0, 0, 0};
		};
		class rightArrowIB : RscButton
		{
			idc = dlg_respawnSelectionMenu_rightArrowIB;
			x = 0.775 * safezoneW + safezoneX;
			y = 0.733333 * safezoneH + safezoneY;
			w = 0.025 * safezoneW;
			h = 0.0333333 * safezoneH;
			text = "";
			colorFocused[] = {0, 0, 0, 0};
			colorSecondary[] = {0, 0, 0, 0};
			color2Secondary[] = {0, 0, 0, 0};
			colorBackground[] = {0, 0, 0, 0};
			colorBackground2[] = {0, 0, 0, 0};
			colorBackgroundFocused[] = {0, 0, 0, 0};
			colorBackgroundActive[] = {0, 0, 0, 0};
		};
		class leftArrow : RscPicture
		{
			idc = dlg_respawnSelectionMenu_leftArrow;
			x = 0.2 * safezoneW + safezoneX;
			y = 0.733333 * safezoneH + safezoneY;
			w = 0.025 * safezoneW;
			h = 0.0333333 * safezoneH;
			text = "\A3\ui_f\data\gui\cfg\slider\arrowEmpty_ca.paa";
		};
		class rightArrow : RscPicture
		{
			idc = dlg_respawnSelectionMenu_rightArrow;
			x = 0.775 * safezoneW + safezoneX;
			y = 0.733333 * safezoneH + safezoneY;
			w = 0.025 * safezoneW;
			h = 0.0333333 * safezoneH;
			text = "\A3\ui_f\data\gui\cfg\slider\arrowEmpty_ca.paa";
		};
		class suspend : RscButton
		{
			idc = dlg_respawnSelectionMenu_suspend;
			x = 0.2 * safezoneW + safezoneX;
			y = 0.766667 * safezoneH + safezoneY;
			w = 0.1 * safezoneW;
			h = 0.0333333 * safezoneH;
			text = $STR_suspend;
		};
		class respawn : RscButton
		{
			idc = dlg_respawnSelectionMenu_respawn;
			x = 0.7 * safezoneW + safezoneX;
			y = 0.766667 * safezoneH + safezoneY;
			w = 0.1 * safezoneW;
			h = 0.0333333 * safezoneH;
			text = $STR_respawn;
		};
	};
};