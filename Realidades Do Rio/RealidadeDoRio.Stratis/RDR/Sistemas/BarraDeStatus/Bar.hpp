#define ST_RIGHT 0x01

class rj_statusbar {
	idd = -1;
	onLoad = "uiNamespace setVariable ['rj_statusbar', _this select 0]";
	onUnload = "uiNamespace setVariable ['rj_statusbar', objNull]";
	onDestroy = "uiNamespace setVariable ['rj_statusbar', objNull]";
	fadein = 0;
	fadeout = 0;
	duration = 10e10;
	movingEnable = 0;
	controlsBackground[] = {};
	objects[] = {};
	class controls {
		class statusBarText {
			idc = 10713;
			x = safezoneX + safezoneW - 1; //Padrao: 1
			y = safezoneY + safezoneH - 0.08;
			w = 1;
			h = 0.08;     //Padrão 0.03
			shadow = 1;
			colorBackground[] = { 1, 0.3, 0, 0.0 };  // uncomment and increase 4th number to have a background
			font = "PuristaSemibold";
			size = 0.035;
			type = 13;
			style = 1;
			text="RJ: Aguarde Um Momento...";
			class Attributes {
				align="center";
			    color = "#FFFFFF";
			};
		};
	};
};