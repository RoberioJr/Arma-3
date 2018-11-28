/*

    Author: RobérioJR

*/ 

class RDR_CfgVeiculos {
	
	class BOPE { 
	    nome = "Loja De Veiculos BOPE";
		tipo = "BOPE";
	    condicao = "RDR_BopeLevel >= 1";
		veiculos[] = {
		 //{ "CLASSNAME", "NOME"(Opt), VALOR, "CONDIÇÃO ex: 'RDR_BopeLevel == 3'"(Opt) }
			{ "B_G_Quadbike_01_F", "Quadriciculo", 500, "" },
			{ "B_G_Offroad_01_F", "Caminhonete", 1250, "" }
		};
	};
	
	class BAND {
	    nome = "Aluguel De Veiculos";
		tipo = "BAND";
	    condicao = "";
		veiculos[] = {
			{ "B_G_Quadbike_01_F", "Quadriciculo", 500, "" },
			{ "B_G_Offroad_01_F", "Caminhonete", 1250, "" }
		};
	};
};