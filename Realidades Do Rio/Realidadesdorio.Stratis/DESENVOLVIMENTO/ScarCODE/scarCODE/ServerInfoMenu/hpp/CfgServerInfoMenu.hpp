class CfgServerInfoMenu
{
   addAction = 1; // Enable/disable action menu item | use 0 to disable | default: 1 (enabled)
   antiHACK = "BASIX + BattlEye";
   hostedBy = "Delta Servers";
   ipPort = "000.123.456.789:2302";
   openKey = "User7"; // https://community.bistudio.com/wiki/inputAction/actions
   openAtLogin = no;
   restart = 6; // Amount of hours before server automatically restarts
   serverName = "BOPE: Realidades Do Rio";
   class menuItems
   {
      // title AND content accept formatted text ( since update Oct5.2016 )
      class first
      {
         menuName = "Geral";
         title = "<t color='#ffffff'>GENERAL INFORMATION</t>";
         content[] = {
            "This is some placeholder text"
         };
      };
      class second
      {
         menuName = "1.Regras de Conhecimento Basico";
         title = "1.Regras de Conhecimento Basico";
         content[] = {
            "1.1 - Qualquer um pego trapaceando em nosso servidor será banido e reportado à BI (Bohemia Interactive).",
            "1.2 - Perceba que alguns cenários podem possuir conteúdo adulto.",
            "1.3 - Não é tolerado nenhum tipo de racismo, machismo, intolerância sexual, religiosa ou qualquer outro tipo de preconceito seja em ambiente IC ou OOC, incluindo também intrigas pessoais e a reprodução de qualquer conteúdo repugnante, como abuso sexual.",
            "1.4 - Não atrapalhar outros jogadores com brincadeiras.",
            "1.5 - Perturbar com comportamento inadequado não será permitido(ex.: spam).",
            "1.6 - Você não pode forçar alguém a quebrar regras do servidor.",
            "1.7 - Caso tenha algum problema técnico ou dúvida que a equipe possa resolver, aguarde na sala “Aguardando Atendimento” do Teamspeak. Caso sejam problemas de quebra de regra por parte de jogadores ou tentativa de reembolso use o fórum. Estes últimos casos só serão atendidos no Teamspeak caso haja disponibilidade de equipe e tenha sido postada no fórum a situação.",
         };
      };
      class third
      {
         menuName = "2.Regras do Teamspeak";
         title = "2.Regras do Teamspeak";
         content[] = {
             "2.1 - Para estar no servidor do jogo você deve ter o plug-in “Task Force Arma 3 Radio” instalado e ativado.",
             "2.2 - Evite deixar o microfone transmitindo quando estiver falando com pessoas de seu ambiente doméstico. Caso seja necessário crie uma tecla de atalho para a funcionalidade “Push-to-Talk”."
             "2.3 - Não use soundboard."
		 };
      };
      class fourth
      {
         menuName = "3.Regras específicas";
         title = "3.Regras específicas";
         content[] = {
			 "3.1 - Você não pode interromper ou atrapalhar um evento do servidor.",
             "3.2 -  Você não pode forçar um outro jogador a interagir com um Caixa Eletrônico."
		 };
      };
      class fifth
      {
         menuName = "4.Regras Sobre Zonas Seguras";
         title = "4.Regras Sobre Zonas Seguras";
         content[] = {
			 "Nenhum tipo de ação perigosa pode ser iniciada em uma ZS.",
             "Lista de ZS: Base do BOPE, Areas de Respawn de Facções e futuramente mais.",
             "4.1 - Não se pode atirar de fora para dentro ou de dentro para fora de uma ZS.",
             "4.2 - Em caso de tentativa de resgate de prisioneiros, a prisão não será considerada ZS."
		 };
      };
      class sixth
      {
         menuName = "5.Regras Especificas da Policia";
         title = "5.Regras Especificas da Policia";
         content[] = {
             "5.1 - Não é permitido a policiais acampar em locais de processamento ou venda de produto ilegal ao menos que haja uma denúncia.",
             "5.2 - Não é permitido nenhum policial dar ou vender ou armazenar equipamentos da polícia."
         };
      };
      class seventh
      {
         menuName = "Manual de Boa Conduta";
         title = "Manual de Boa Conduta";
         content[] = {
           "Estes tópicos aborda fatores que não apoiamos serem feitos no servidor, mas também não são passivos de punição, são algumas situações que consideramos importantes para o fair play e diversão geral.",
           "Não cometer team kill.",
           "Atrapalhar a jogada do próximo.",
           "Não sequestrar jogadores ao menos que seja necessário para completar um plano maior.",
           "Não abandonar veículos pelas ruas.",
           "Punições: Jogadores que descumprirem regras terão como punição uma advertência dada como tag no Teamspeak. Serão toleradas no máximo 2 advertências, de forma a cada uma destas ser acompanhada de um banimento caso a equipe julgue necessário.",
           "1ª Advertência = 1 a 3 dias de banimento",
           "2ª Advertência = 7 dias de banimento",
           "3ª Advertência = Banimento permanente"
         };
	  };
     class eighty
      {
         menuName = "Doadores";
         title = "Doadores";
         content[] = {
            "Toda pessoa que adquirir uma vantagem de doador obrigatoriamente concordará com os termos desta seção.",
            "As exclusividades de Doador sempre estarão sujeitas a mudança com aviso prévio.",
            "Cabe ressaltar que a  aquisição do chamado  “Doador” não caracteriza por si um sistema de compra e venda interna de itens ou coisas do gênero.",
            "Para um melhor estímulo para que jogadores realizem as doações, foi criado bônus de prêmios específicos para determinados valores, divididos em 3 níveis. Os chamados “Pacotes de Doador” são:",
            "<t size='1.25'>Doador Básico( R$20,00 )</t>:",
            "1 Arma customizada.",
            "2 Roupas customizadas.",
            "1 Veículo customizado.",
            "1 Slot reservado.",
            "<t size='1.25'>Doador Médio ( R$40,00 )</t>:",
            "2 Armas customizadas.",
            "4 Roupas customizadas.",
            "2 Veículos customizados.",
            "1 Slot reservado.",
            "<t size='1.25'>Doador Alto ( R$40,00 )</t>:",
            "4 Armas customizadas.",
            "6 Roupas customizadas.",
            "3 Veículos customizados.",
            "1 Slot reservado."
         };
      };
   };
};
