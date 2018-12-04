/*

    Author: RobérioJR

*/ 

class RDR_CfgArmas {
	
	class BOPE {
	    nome = "Loja De Armas BOPE";
		tipo = "BOPE";
	    condicao = "RDR_BopeLevel >= 1";
		armas[] = {
		 //{ "CLASSNAME", "NOME"(Opt), VALOR, VALOR VENDA (-1 Para Desativar), "CONDIÇÃO ex: 'RDR_BopeLevel == 3'"(Opt) }
			{ "arifle_Mk20_F", "Mk20 5.56mm", 500, 150, "RDR_BopeLevel >= 1" },
			{ "arifle_SPAR_01_blk_F", "Spar 16 5.56mm", 750, 250, "RDR_BopeLevel >= 1" },
			{ "arifle_Katiba_F", "Katiba 6.5mm", 1000, 350, "RDR_BopeLevel >= 2" },
			{ "arifle_MX_F", "MX 6.5mm", 1250, 450, "RDR_BopeLevel >= 2" }
		};
		pentes[] = {
			{ "30Rnd_556x45_Stanag_Tracer_Red", 50, "" },
			{ "30Rnd_65x39_caseless_green_mag_Tracer", 100, "RDR_BopeLevel >= 1" }
		};
		acces[] = {
			{ "optic_Hamr", 300, "" },
			{ "optic_AMS", 500, "RDR_BopeLevel >= 2" }
		};
	};
	
	class BAND {
	    nome = "Traficante De Armas";
		tipo = "BAND";
	    condicao = "";
		armas[] = {
			{ "arifle_Katiba_F", "Katiba 6.5mm", 1000, 250, "" }
		};
		pentes[] = {
			{ "30Rnd_65x39_caseless_green_mag_Tracer", 100, "" }
		};
		acces[] = {
			{ "optic_Hamr", 300, "" },
			{ "optic_AMS", 500, "" }
		};
	};
};