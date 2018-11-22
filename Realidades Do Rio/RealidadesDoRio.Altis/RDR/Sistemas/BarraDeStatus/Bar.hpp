#define ST_RIGHT 0x01


class RDR_statusbar { //Centralizada
    idd = -1;
	onLoad = "uiNamespace setVariable ['RDR_statusbar', _this select 0]";
	onUnload = "uiNamespace setVariable ['RDR_statusbar', objNull]";
	onDestroy = "uiNamespace setVariable ['RDR_statusbar', objNull]";
	fadein = 0;
	fadeout = 0;
	duration = 10e10;
	movingEnable = 0;
	controlsBackground[] = {};
	objects[] = {};
	class controls {
		class statusBarText {
			idc = 10713;
			x = 0.185 * safezoneW + safezoneX;
			y = 0.965000 * safezoneH + safezoneY; //Padrão: 0.940044 | Quanto Mais Alto O Numero, Mais Baixo Será A Barra
			w = 0.65 * safezoneW;
			h = 0.0300033 * safezoneH;
			shadow = 1;
			colorBackground[] = { 1, 0.3, 0, 0.0 };  // uncomment and increase 4th number to have a background
			font = "LucidaConsoleB"; //Padrao: 'PuristaSemibold'
			size = 0.035;
			type = 13;
			style = 2;
			text="";
			class Attributes {
				align="center";
				color = "#FFFFFF";
			};
		};
	};
};
/* Antiga
class RDR_statusbar {
	idd = -1;
	onLoad = "uiNamespace setVariable ['RDR_statusbar', _this select 0]";
	onUnload = "uiNamespace setVariable ['RDR_statusbar', objNull]";
	onDestroy = "uiNamespace setVariable ['RDR_statusbar', objNull]";
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
			text="RDR: Aguarde Um Momento...";
			class Attributes {
				align="center";
			    color = "#FFFFFF";
			};
		};
	};
};  
*/