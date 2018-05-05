////////////////////////////////////////////
// WhiteList Para BOPE                    //
// By: RobérioJr                          //
// Last Update by RobérioJr on 31-03-2018 //
////////////////////////////////////////////



//////////////////////////////////////////////////////////////////////////////
//// Colocar Abaixo Os SteamUID Dos Jogadores Autorizados a Jogar De BOPE ////
//////////////////////////////////////////////////////////////////////////////


_whitelist = [
"76561198134612622",   //RobérioJr
"76561198343381444",   //Marques
"76561198090180406",   //Marvinn
"76561198057401657",   //Leo Sniper
"76561198253773517",   //PandaHussein
"76561198023694452",   //WendelMatavelli 
"76561198263455821",   //Atilla
"76561198255786561",   //Thiago
"76561198135072921",   //Strilicherk
"76561198271154939",   //Poulak
"76561198332826021"    //Pix
];















    ///////////////////////////
    //// Não Editar Abaixo ////
    ///////////////////////////
	
client_firstSpawn = true;

if(playerSide == west) then
{
	if(!((getPlayerUID player) in _whitelist)) then
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