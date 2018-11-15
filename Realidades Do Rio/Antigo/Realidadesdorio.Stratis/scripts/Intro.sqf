/*
	  ***************************************
	  ***************************************
	  ******[]======================[]*******
	  ******[]       Scripts        []*******
	  ******[]======================[]*******
	  ******[] \ BOPE COMANDO V   / []*******
	  ******[]  \  By RoberioJr  /  []*******
	  ******[]======================[]*******
	  ***************************************
	  ***************************************
*/


[] spawn {
	playMusic "musica";
};

	titleCut ["", "BLACK FADED", 999];
[] Spawn {
	titleText ["Desenvolvido Por: RoberioJr, Marvinn e R.Marques","PLAIN"]; 
	titleFadeOut 3;
	sleep 3;
	titleText ["BOPE: Realidades Do Rio","PLAIN"];
	titleFadeOut 3;
	sleep 3;
	titleText ["Em Desenvolvimento","PLAIN"];
	titleFadeOut 3;
	sleep 3;
	titleText ["Siga O Roleplay","PLAIN"];
	titleFadeOut 3;
	sleep 3;
	titleCut ["", "BLACK IN", 5];
	};
	

private ["_messages", "_timeout"];

_messages = [
	["Bem Vindo Ao Bope: Realidades Do Rio", (name player)],
	["", "Leia As Regras Antes De Começar"],
	["", "Siga O Roleplay"],
	["", "Missão Em Desenvolvimento"],
	["", "Frase4"]
];

_timeout = 8;
{
	private ["_title", "_content", "_titleText"];
	uiSleep 2;
	_title = _x select 0;
	_content = _x select 1;
	_titleText = format[("<t font='TahomaB' size='0.40' color='#FFFFFF' align='left' shadow='1' shadowColor='#000000'>%1</t><br /><t shadow='1'shadowColor='#000000' font='TahomaB' size='0.60' color='#FFFFFF' align='left'>%2</t>"), _title, _content];
	[_titleText,[safezoneX + safezoneW - 0.8,0.50],[safezoneY + safezoneH - 0.8,0.7],_timeout,0.5] spawn BIS_fnc_dynamicText;
	uiSleep (_timeout * 1.1);
} forEach _messages;