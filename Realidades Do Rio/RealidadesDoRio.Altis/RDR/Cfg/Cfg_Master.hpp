#define true 1
#define false 0

class RDR_Config {
	
	/* Genéricos */
   RDR_MenuInicial = 1; //Menu De Boas Vindas
   RDR_Administradores[] = //SteamID Dos Administradores
    { 
     "76561198134612622", //RobérioJR
	 "76561198090180406", //Marvinn
	 ""
	};
	
	/* Economia */
   RDR_DinheiroInicial = 2500; //Quantia Em Dinheiro Inicial (Novos Jogadores)
   RDR_DinheiroMaximo = 150000; //Quantia Total Que Pode Ser Mantida Na Conta Bancária
   RDR_Pagamento[] = {250,5}; //Pagamento Por Tempo Online {QUANTIDADE,TEMPO(Minutos)}
   RDR_GanhoKill = 150; //Ganho Por Kill
   RDR_PerdaTK = 500; //Perda TeamKill
   
   /* Esc Menu */
   RDR_EscMenuTempo = 8; //Tempo Para Liberar O ABORT (Em Segundos)
   RDR_EscMenuExtrasAtivar = true; //Ativar Frase No ESC Menu
   RDR_EscMenuExtras = "Realidades Do Rio"; //Frase Que Aparecerá No ESC
   
   /* Menu De CFG De Redenrização */
   RDR_HabilitarRGrama = true;
   RDR_MaximoVisao = 5000;
   RDR_MaximoObjetos = 5000;
   
   /* Outros */
   RDR_TempoEntreMissoes = 870; //Tempo Entre As Missões (Em Segundos)
   RDR_TempoSincronizar = 200; //Tempo Para Sincronizar Manualmente Novamente (Em Segundos)
   RDR_MenuAnims[] = //Menu De Animações | Cfgs
   {
	{ "Kung Fu", "AmovPercMstpSnonWnonDnon_exerciseKata" },
	{ "Flexões", "AmovPercMstpSnonWnonDnon_exercisePushup" },
	{ "Agachamento (Rapido)", "AmovPercMstpSnonWnonDnon_exercisekneeBendB" },
	{ "Agachamento (Normal)", "AmovPercMstpSnonWnonDnon_exercisekneeBendA" },
	{ "Assustado", "AmovPercMstpSnonWnonDnon_Scared" }
   };
   RDR_Musicas[] = //{"Nome Da Musica", "ClassName Da Musica"}
   {
	{ "Vai Tomar No Cu - Ananda Joker", "vaitomarnocu" },
	{ "O Corre - Cynthia Luz Ft.Cacife Clan", "ocorre" },
	{ "", "" },
	{ "", "" },
	{ "", "" },
	{ "", "" }
   };
   RDR_AreasDeCapturar[] = //{"MARCADOR,RAIO,GANHO,DELAY DOS GANHOS(Em Minutos)"}
   {
	{"Area1",100,125,5},
	{"Area2",250,200,5}
   };
	
};

 /* Cfgs Do TaskForceRádio */
class ForceTFAR {
	//Settings for TFAR
	RDR_AtivarTaskForceRadio = false;
	tf_radio_channel_name = "TaskForceRadio"; //TFAR channel name.
	tf_radio_channel_password = "BOPE5659"; //TFAR channel password.

	//Force TFAR Settings.
	ftfar_server_name = "RealidadesDoRio"; //Server name.
	ftfar_server_ipaddress = "149.56.201.89:9987"; //Server ip address.
	ftfar_server_password = ""; //Server password.
	ftfar_wait_for_action_time = 30; //Time in seconds.
};