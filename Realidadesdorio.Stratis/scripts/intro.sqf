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

// Triggers the audio intro.ogg via "class CfgMusic" from description.ext
[] spawn {
	playMusic "FirstyIntro";
};
// Loading text on black background change YOURTEXT with what you want. They appear in order, centered on the screen.
	titleCut ["", "BLACK FADED", 999];
[] Spawn {
	titleText ["By: RoberioJr","PLAIN"]; 
	titleFadeOut 3;
	sleep 3;
	titleText ["Teste1","PLAIN"];
	titleFadeOut 3;
	sleep 3;
	titleText ["Teste2","PLAIN"];
	titleFadeOut 3;
	sleep 3;
	titleText ["Teste3","PLAIN"];
	titleFadeOut 3;
	sleep 3;
	titleCut ["", "BLACK IN", 5];
	};
	
// Messages shown ingame on the right "storytelling"
private ["_messages", "_timeout"];

_messages = [
	["Bem Vindo Ao Bope x Cv", (name player)], // change YOURMAPNAME with the Map you want the script to greet you with.
	["", "Leia As Regras Antes De Começar"], //First story text
	["", "Siga O Roleplay"], //Second story text
	["", "Frase3"], //Third story text
	["", "Frase4"] //Fourth story text
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