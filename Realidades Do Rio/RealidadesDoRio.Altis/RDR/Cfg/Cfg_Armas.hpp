/*

    Author: RobérioJR

*/ 

class RDR_CfgArmas {
	
	class BOPE { 
	    nome = "Loja De Armas BOPE";
		tipo = "BOPE";
	    //condicao = "";
		armas[] = {
		 //{ "CLASSNAME", "NOME", VALOR, VALOR VENDA (-1 Para Desativar), "CONDIÇÃO ex: 'call RDR_BopeLevel == 3'" }
			{ "arifle_Katiba_F", "Katiba 6.5mm", 1000, 250, "call RDR_BopeLevel >= 1" }
		};
		pentes[] = {
			{ "30Rnd_65x39_caseless_green_mag_Tracer", "Pente Katiba 6.5 30Rnd", 100, 35, "call RDR_BopeLevel >= 1" }
		};
		accs[] = {
			{ "optic_ACO_grn_smg", "", 300, 75, "" }
		};
	};
	
	class BAND {
	    nome = "Traficante De Armas";
		tipo = "BAND";
	    //condicao = "";
		armas[] = {
			{ "arifle_Katiba_F", "Katiba 6.5mm", 1000, 250, "" }
		};
		pentes[] = {
			{ "30Rnd_65x39_caseless_green_mag_Tracer", "Pente Katiba 6.5 30Rnd", 100, 35, "" }
		};
		accs[] = {
			{ "optic_ACO_grn_smg", "", 300, 75, "" }
		};
	};
};