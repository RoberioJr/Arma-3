#define true 1
#define false 0

class RDR_Config {
	
	/* Genéricos */
   RDR_MenuInicial = 1; //Menu De Boas Vindas
   RDR_Administradores[] = { //SteamID Dos Administradores
    "76561198134612622", //RobérioJR
	"",
	""
	};
	
	/* Economia */
   RDR_DinheiroInicial = 2500; //Quantia Em Dinheiro Inicial (Novos Jogadores)
   RDR_DinheiroMaximo = 150000; //Quantia Total Que Pode Ser Mantida Na Conta Bancária
   RDR_Pagamento[] = {250,5}; //Pagamento Por Tempo Online {QUANTIDADE,TEMPO(Minutos)}
   RDR_GanhoKill = 150; //Ganho Por Kill
   RDR_PerdaTK = 500; //Perda TeamKill
   
   /* Outros */
   RDR_TempoEntreMissoes = 870; //Tempo Entre As Missões (Em Segundos)
	
};