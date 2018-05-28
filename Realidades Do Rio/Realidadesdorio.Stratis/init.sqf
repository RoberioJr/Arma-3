/*
/  Realidades    /     
/      Do        /     
/ Rio De Janeiro /
*/

	//Init Scripts De 3º Parte...
	[] execVM "scripts\InitScripts.sqf";            //Inicialização Dos Scripts 
	
	//Init AntiHack...
	[] execVM "AntiHack\ACTermal\Init.sqf";         //Anti Termal Hack
	[] execVM "AntiHack\ACScripts\Anticheat.sqf";   //AntiHack Recoil/Injeção De Script/AdminMenu

	if (hasInterface) then {
    [] execVM "briefing.sqf";                       //Carregar Informações No Mapa
    };
	//Teste de Save
	[] execVM "config\SalvaPosicoes.sqf";           //Salva as Posições dos players para disconnect e connect
	
	//Forçar o uso do Task
	[] execVM "forceTask.sqf";
	
	//Zeus Com Tudo Liberado
	[Admins,true] execVM "scripts\ADV_zeus.sqf";
	
	//NameTags...
	122014 cutrsc ["NameTag","PLAIN"];              //Script NameTags
	
 
 //Remover Voz De Bots Falando No Radio
 0 fadeRadio 0;
 enableRadio false;
 enableSentences false;
 

/* Configurações De Visão */
 
 CHVD_allowNoGrass = true;       //Opção De Desativar Grama 'True = Ativado e False = Desativado'
 CHVD_maxView = 5000;
 CHVD_maxObj = 5000;
 
 
 