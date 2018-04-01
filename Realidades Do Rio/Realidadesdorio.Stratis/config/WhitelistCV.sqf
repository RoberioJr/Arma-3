_whitelist = [
"76561198090180406" //Marvinn
];

if(!((getPlayerUID player) in _whitelist)) then
	{
		hint "Você não é Líder do Comando Vermelho";
		titleFadeOut 9999;
		titleText [format["Você não comanda o CV"],"PLAIN",0];
		[] spawn{
			sleep 10;
			endMission "Entre como bandido";
		}
	};
};