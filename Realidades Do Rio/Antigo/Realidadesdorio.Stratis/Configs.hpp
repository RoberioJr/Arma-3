/*

    /  Realidades    /     
    /      Do        /     
    / Rio De Janeiro /

	Configurações Do Servidor
	Author: RobérioJR e Marvinn.

 É Necessário incluir o 'rj_macros.hpp'. EX: ( #include "..\rj_macros.hpp" ) [..\ = voltar uma pasta]
 USO: if (REALIDADESDORIOCFG(getNumber,"rj_ativar_ITEM") isEqualTo 1) then { SCRIPT; };
	
*/
/* DEFINIÇÕES, NÃO EDITAR!! */
 #define true 1
 #define false 0
/************    ************/
class realidades_do_rioCFG {


  /* Sistemas/Scripts */
  
 rj_ativar_corrigircor = true;       //Melhoria Do Grafico Do Arma (Correção De Cor)
 rj_ativar_limpeza = true;           //Melhora De Peformance Do Servidor (Limpa Cadaveres e Itens Do Chao Em Um Determinado Periodo De Tempo)
 rj_ativar_gaslacrimo = true;        //Ativa Granadas De Gas Lacrimogênio
 rj_ativar_ambcasas = true;          //Sistema De Ambientação Das Casas (Moveis e Decorações - Afeta o Desempenho!)
 rj_ativar_syslogica = true;         //Ativa Sistema De Logica (Mover Objetos, Entre Outras Funcionalidades)
 rj_ativar_climadinamico = true;     //Ativa Sistema De Clima Dinâmico (Muda O Clima A Cada 20 mins)
 rj_ativar_trafego = true;           //Ativa Sistema De Tráfego (NPCs Com Veiculos Se Locomovendo Pelo Mapa)
 rj_ativar_reparoveh = true;         //Ativa Sistema De Reparo De Veiculos (Necessita Do ToolKit)
 rj_ativar_whitelist = true;         //Ativa Sistema De Whitelist Para O BOPE (Config: config\WhiteList.sqf)
 
 
 
};

