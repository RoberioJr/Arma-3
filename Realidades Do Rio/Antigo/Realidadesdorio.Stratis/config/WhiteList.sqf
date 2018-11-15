////////////////////////////////////////////
// WhiteList Para BOPE                    //
// By: RobérioJr                          //
// Last Update by RobérioJr on 31-03-2018 //
////////////////////////////////////////////

#include "..\UIDs.sqf"

client_firstSpawn = true;

if(playerSide == west) then
{
	if(!((getPlayerUID player) in _whitelistBOPE)) then
	{
		hint "Você Não Faz Parte Do BOPE!";
		titleFadeOut 9999;
		titleText [format["Você Não Pode Jogar De BOPE!"],"PLAIN",0];
		[] spawn{
			sleep 10;
			endMission "Escolha Outra Equipe";
		}
	};
};

/*
/  Realidades    /     
/      Do        /     
/ Rio De Janeiro /
*/