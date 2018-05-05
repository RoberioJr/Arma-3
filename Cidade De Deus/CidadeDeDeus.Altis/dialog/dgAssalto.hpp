class dgAssalto {
    idd = 9000;
    name= "dgAssalto";
    movingEnable = 0;
    enableSimulation = 1;

	class controlsBackground {
		class RscFrame_1000: Life_RscFrame {
			idc = 1000;
			x = 0.295;
			y = 0.168;
			w = 0.3625;
			h = 0.6;
			colorText[] = {255,255,255,1};
		};

		class RscText_1001: Life_RscText {
			idc = 1001;
			x = 0.2875;
			y = 0.16;
			w = 0.375;
			h = 0.62;
			colorBackground[] = {0,0,0,0.5};
		};
		class RscFrame_1002: Life_RscFrame {
			idc = 1002;
			x = 0.2875;
			y = 0.16;
			w = 0.375;
			h = 0.62;
			colorText[] = {255,255,255,1};
		};

		class RscText_1003: Life_RscText {
			idc = 1003;
			text = "Clique em uma botão";
			x = 0.3525;
			y = 0.22;
			w = 0.3625;
			h = 0.08;
		};
		class RscText_1004: Life_RscText {
			idc = 1004;
			text = "para enviar um ANUNCIO:";
			x = 0.38;
			y = 0.248;
			w = 0.3625;
			h = 0.08;
		};
		class RscFrame_1005: Life_RscFrame {
			idc = 1005;
			x = 0.3425;
			y = 0.236;
			w = 0.25;
			h = 0.08;
			colorText[] = {255,255,255,1};
		};
	};

	class controls {
		class RscButtonMenu_2401: Life_RscButtonMenu {
			idc = 2401;
			text = "btn1";
			x = 0.4125;
			y = 0.44;
			w = 0.125;
			h = 0.04;
		};
		class RscButtonMenu_2402: Life_RscButtonMenu {
			idc = 2402;
			text = "btn2";
			x = 0.4125;
			y = 0.52;
			w = 0.125;
			h = 0.04;
		};
		class RscButtonMenu_2403: Life_RscButtonMenu {
			idc = 2403;
			text = "btn3";
			x = 0.4125;
			y = 0.6;
			w = 0.125;
			h = 0.04;
		};
		class RscButtonMenu_2404: Life_RscButtonMenu {
			idc = 2404;
			text = "X";
            onButtonClick = "closeDialog 0;";
			tooltip = "FECHAR";
			x = 0.6125;
			y = 0.2;
			w = 0.025;
			h = 0.04;
			colorText[] = {255,255,255,1};
		};
		class RscStructuredText_2405: Life_RscStructuredText {
			idc = 2405;
			text = "ANUNCIO";
			x = 0.4225;
			y = 0.364;
			w = 0.1;
			h = 0.04;
		};
	};
};