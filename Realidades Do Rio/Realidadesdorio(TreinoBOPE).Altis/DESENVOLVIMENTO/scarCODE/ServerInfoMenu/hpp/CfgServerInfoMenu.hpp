class CfgServerInfoMenu
{
   addAction = 0; // Enable/disable action menu item | use 0 to disable | default: 1 (enabled)
   antiHACK = "infiSTAR + BattlEye";
   hostedBy = "MGT HOST";
   ipPort = "185.50.105.213-2322";
   openKey = "User7"; // https://community.bistudio.com/wiki/inputAction/actions
   openAtLogin = no;
   restart = 4; // Amount of hours before server automatically restarts
   serverName = "Team Core Serve Stratis";
   class menuItems
   {
      // title AND content accept formatted text ( since update Oct5.2016 )
	  class first
      {
         menuName = "Regras";
         title = "Regras do Servidor";
         content[] = {
            "<t size='1.70'>Regras do Servidor <t color='#FFDE3B'>Team Core STRATIS</t></t><br />",
            "1 - Proibido qualquer prática de anti-jogo no ARMA3 utilizando-se dos erros ou bugs do servidor ou do próprio jogo. Seja para atravessar paredes, pedras ou quaisquer outros obstáculos, de fora para dentro e vice-versa: 1º Ban temporário <t color='#FF0000'>2º Ban permanente</t><br />",
			"2 - Proibido uso de hacks:<t color='#FF0000'>1º Ban permanente.</t><br />",
            "3 - Não reclame excessivamente de lag no chat do jogo: 1º aviso verbal, 2º kick <t color='#FF0000'>3º Ban permanente.</t><br />",
			"4 - Caso seja banido, entrar na pagina do TEAM CORE no Facebook e solicitar revisão (se for cabível).<br />",	
            "5 - Proibido falar no chat global. Exceto para falar com admins ou para conversar com outros players de outro time. 1º aviso verbal, 2º kick <t color='#FF0000'>3º Ban temporário.</t><br />",
            "6 - <t color='#FF0000'>Obs:</t>Verifique as demais regras clicando no link.  <a href='http://a3teamcore.blogspot.com.br/2016/09/regras-arma-3.html'>http://a3teamcore.blogspot.com.br</a> <br />",
            "7 - Qualquer dúvida, chame um dos Administradores<br />"
		
         };
      };
      class second
      {
         menuName = "Missões";
         title = "<t color='#ffffff'>Missões do Servidor</t>";
         content[] = {
            "<br/>• Small Money Shipment: $75,000<br />• Medium Money Shipment: $150,000<br />• Large Money Shipment: $200,000<br />• Heavy Money Shipment: $300,000<br />• Sunken Treasure: $200,000<br /></p>"
         };
      };
	  class third
      {
         menuName = "Eventos";
         title = "Eventos são elaborados pelos admins";
         content[] = {"<t size='1.75'>Próximo Evento</t><br />• NÃO DISPONIVEL<<br />"};
      };
      class fourth
      {
         menuName = "Admins";
         title = "ADMINISTRADORES";
         //content[] = {"<t size='1.75'>ADMINS</t><br /><t color='#0091CD'>• ª B ª D o M <br />• Koala <br />• E.Melo <br />• ThE_LioN<br /></t>"};
         //"<t size='1.75'>MONITORES</t><br /><t color='#0091CD'>• CORE-BrRj Maverick, CORE-EMelo, CORE-Rankatoko, CORE-John117, CORE-BISPO e CORE-ABADOM</t/><<br />"};
      };
      class fifth
      {
         menuName = "Rank";
         title = "TOP 100";
         content[] = {"<t size='1.75'>Rank</t><br /><a href='http://rank-core.mgthost1.com.br'> http://rank-core.mgthost1.com.br/</a><br />"};
      };
      class sixth
      {
         menuName = "Comunicação";
         title = "SERVIDOR DE VOZ E WEBSITE"; 
         content[] = {
            "Website: <t color='#0091CD'><a href='http://a3teamcore.blogspot.com.br'>http://a3teamcore.blogspot.com.br</a></t><br/>TeamSpeak: <t color='#0091CD'>coreoficial.ts3gamer.com</t>"
			         };
      };
      class seventh
      {
         menuName = "Doações";
         title = "Colabore com nosso servidor";
         content[] = {
            "Clique no link: <t color='#0091CD'><a href='http://a3teamcore.blogspot.com.br/2016/09/doacoes-para-manuntecao.html'>http://a3teamcore.blogspot.com.br</a></t>"
         };
      };
	   class eighth
      {
         menuName = "Agradecimentos";
         title = "Agradecimentos Especiais";
         content[] = {"Agradecimentos especiais por nos ajudar com pequenos problemas encontrados durante a programação deste servidor:<br />• [7th] 20_MataR e seu clan <br /> • CORE - Fabricio e seu clan</t>"};
      };

   };
};
