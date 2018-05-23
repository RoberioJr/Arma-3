waitUntil {!isServer && !isNull player && player isEqualTo player};
if (player diarySubjectExists "controls") exitWith {};

player createDiarySubject ["credits","Credits"];
player createDiarySubject ["changelog","Change Log"];
player createDiarySubject ["serverrules","General Rules"];
player createDiarySubject ["policerules","Police Procedures/Rules"];
player createDiarySubject ["safezones","Safe Zones (No Killing)"];
//player createDiarySubject ["civrules","Civilian Rules"];
player createDiarySubject ["illegalitems","Illegal Activity"];
//player createDiarySubject ["gangrules","Gang Rules"];
//player createDiarySubject ["terrorrules","Terrorism Rules"];
player createDiarySubject ["controls","Controls"];

/*  Example
    player createDiaryRecord ["", //Container
        [
            "", //Subsection
                "
TEXT HERE<br/><br/>
                "
        ]
    ];
*/

    player createDiaryRecord ["credits",
        [
            "AsYetUntitled",
                "
AsYetUntitled (formerly ArmaLife) is a GitHub project which aims to update and keep adding new features to the original 'Altis Life RPG' by Tonic.<br/><br/>
                "
        ]
    ];

    player createDiaryRecord ["changelog",
        [
            "Altis Life Changelog",
                "
The full changelog can be found on the AsYetUntitled/Framework repository on GitHub. https://github.com/AsYetUntitled/Framework/<br/><br/>
v4.4 release 3!<br/>
By: danielstuart14<br/>
Date: 31. May 2016<br/><br/>
v4.4 release 2!<br/>
By: danielstuart14<br/>
Date: 20. March 2016<br/><br/>
v4.4 release 1!<br/>
By: danielstuart14<br/>
Date: 12. February 2016<br/><br/>
v4.3 release 4!<br/>
By: danielstuart14<br/>
Date: 31. January 2016<br/><br/>
v4.3 release 3!<br/>
By: danielstuart14<br/>
Date: Not released<br/><br/>
v4.3 release 2!<br/>
By: danielstuart14<br/>
Date: 22. January 2016<br/><br/>
v4.3 release 1!<br/>
By: danielstuart14<br/>
Date: 19. January 2016<br/><br/>
                "
        ]
    ];

    player createDiaryRecord ["changelog",
        [
            "Server Change Log",
                "
This section is meant for people doing their own edits to the mission, DO NOT REMOVE THE ABOVE.<br/><br/>
                "
        ]
    ];

        player createDiaryRecord ["serverrules",
        [
            "Exploits",
                "
Estas são consideradas explorações, e você não será chutado, mas banido. <br/> <br/>
1. Sair da prisão por qualquer outro método além de pagar fiança ou escapar por helicóptero. <br/>
2. Matar-se para sair do roleplay. Saindo de ser criticado, contido, preso, prisão, etc. Se o registro mostra que você foi preso, então você morreu, você será banido. Não pague fiança e mate-se para uma viagem fácil para casa. Caminha pelo teu preguiçoso. <br/>
3. Duping itens e / ou dinheiro. Se alguém lhe enviar uma quantidade de dinheiro inacessível no início do jogo, informe para um administrador IMEDIATAMENTE e transfira esse dinheiro para um administrador. Faça isso o mais rápido possível ou um administrador pode proibi-lo se eles o vejam sem questionar. <br/>
4. Usando itens claramente pirateados. Se um hacker entrar e gerar itens não obtidos, você pode ser banido por usar esses itens. Informe os itens para os administradores imediatamente e fique longe deles. <br/>
5. Abusando erros ou mecanismos de jogo para obter ganhos. Existe uma arma replicante em algum lugar? Informe-o e deixe-o em paz. Se um administrador apanha você abusando da falha, projete. <br/> <br/>
                "
        ]
    ];

    player createDiaryRecord ["safezones",
        [
            "Safe Zones",
                "
If bombing (bombing can be intentionally exploding a vehicle), robbing, or killing occurs around these or in these areas it is punishable by ban.<br/><br/>
Any vehicle spawn (shop or garage)<br/>
Any weapon shop<br/>
All Police HQs<br/>
Rebel Outposts<br/><br/>
                "
        ]
    ];

    player createDiaryRecord ["serverrules",
        [
            "Bannable Offenses",
                "
Consider this your one and only warning.<br/><br/>
1. Hacking<br/>
2. Cheating<br/>
3. Exploiting (See 'Exploits')<br/>
4. Being kicked 3 or more times.<br/><br/>
                "
        ]
    ];

    player createDiaryRecord ["serverrules",
        [
            "Cop Interaction",
                "
Os itens desta lista podem resultar na sua remoção do servidor e / ou da proibição, com base no critério dos administradores. <br/> <br/>
1. Os civis podem ser presos por procurar em mochilas / veículos da polícia. Constantemente, isso resultará na sua remoção do servidor. <br/>
2. Os civis podem ser presos por seguir policiais no jogo, para dar sua posição. <br/>
3. Os civis ou rebeldes que tomam armas para matar policiais na cidade ou em outro lugar, sem motivo RP, serão considerados RDMing. Veja a seção RDMing. <br/>
4. Seguir e / ou perseguir policiais por longos períodos de tempo será considerado um briefing e / ou spam, e resultará na sua remoção do servidor. <br/>
5. Bloquear ativamente os policiais de fazer seus deveres pode levar a sua prisão. Constantemente, isso resultará na sua remoção do servidor. <br/> <br/>
                "
        ]
    ];

    player createDiaryRecord ["serverrules",
        [
            "Boats",
                "
Os itens desta lista podem resultar na sua remoção do servidor e / ou da proibição, com base no critério dos administradores. <br/> <br/>
1. Repetidamente empurrando barcos sem permissão. <br/>
2. Empurrando um barco com a intenção de machucar ou matar alguém. Isso não é RP, é apenas uma falha na mecânica. <br/>
3. Funcionando corretamente sobre os nadadores / mergulhadores. <br/> <br/>
                "
        ]
    ];

    player createDiaryRecord ["serverrules",
        [
            "Aviation",
                "
Os itens desta lista podem resultar na sua remoção do servidor e / ou da proibição, com base no critério dos administradores. <br/> <br/>
1. Apontando um helicóptero para qualquer coisa. Outros helicópteros, veículos, edifícios. <br/>
2. Voando abaixo de 150m pela cidade constantemente. Uma vez que é ilegal, mais do que isso, você correu o risco de entrar na cidade e, portanto, contra as regras do servidor. <br/>
3. Roubar helicópteros sem aviso prévio e tempo significativo para o motorista bloquear o veículo. Se eles aterrissem e fogem sem bloquear, bem, se eles simplesmente saem e você entra antes que eles tenham a chance de trancá-lo, não há. <br/> <br/>
                "
        ]
    ];

    player createDiaryRecord ["serverrules",
        [
            "Vehicles",
                "
Os itens desta lista podem resultar na sua remoção do servidor e / ou da proibição, com base no critério dos administradores. <br/> <br/>
1. Executando as pessoas sobre (VRDM). Há acidentes e, em seguida, está saindo do seu caminho para fugir de alguém. <br/>
2. Propulsando-se na frente de veículos para se ferir / se machucar. <br/>
3. Recorrendo a outros veículos para causar uma explosão. <br/>
4. Constantemente tentando entrar em veículos que não pertencem a você, a fim de chatear o proprietário do veículo e não tentar RP. <br/>
5. Roubar um veículo apenas para quebrar ou destruí-lo. <br/>
6. Comprar vários veículos com a finalidade de fazer qualquer um dos itens acima. <br/>
7. O único motivo para atirar em um veículo seria desativá-lo e / ou disparar tiros de aviso em um cenário de role-play. Você não deve destruir deliberadamente veículos inimigos. <br/> <br/>
                "
        ]
    ];

    player createDiaryRecord ["serverrules",
        [
            "Communication Rules",
                "
Os itens desta lista podem resultar na sua remoção do servidor e / ou da proibição, com base no critério dos administradores. <br/> <br/>
1. Chat lateral não pode ser usado para tocar música ou de outra forma micspam. <br/>
2. Spamming qualquer canal de bate-papo resultará na sua remoção. <br/>
4. Os canais Teamspeak são divididos em áreas por um motivo. Os policiais devem estar sempre nos canais do policial. <br/>
5. Os civis não podem estar em nenhum canal de policial no teamspeak para coletar informações sobre sua localização ou movimentos. Civs capturados fazendo isso serão removidos do canal. Os agressores repetidos podem ser chutados ou banidos tanto do jogo quanto do teamspeak. <br/> <br/>
                "
        ]
    ];

    player createDiaryRecord ["serverrules",
        [
            "Random Deathmatching (RDM)",
                "
Os itens desta lista podem resultar na sua remoção do servidor e / ou da proibição, com base no critério dos administradores. <br/> <br/>
1. Matar qualquer pessoa sem uma causa maior. <br/>
2. Declarar uma rebelião não é motivo para matar ninguém, até mesmo policiais. <br/>
3. Os policiais e os civis / rebeldes só podem começar em um tiroteio se houver motivos relacionados a um crime. <br/>
4. Se você é morto no fogo cruzado de uma luta, não é RDM. <br/>
5. Matar alguém em uma tentativa de se proteger ou de outros não é RDM. <br/>
6. Tirar um jogador sem dar tempo razoável para seguir as demandas é considerado RDM. <br/> <br/>
Todos são julgados pelos administradores caso a caso. <br/> <br/>
                "
        ]
    ];

    player createDiaryRecord ["serverrules",
        [
            "Regra da nova vida",
                "
A  regra da nova vida aplica-se a policiais e civis. <br/> <br/>
Os itens desta lista podem resultar na sua remoção do servidor e / ou da proibição, com base no critério dos administradores. <br/> <br/>
1. Se você for morto, deve aguardar 15 minutos antes de retornar à cena da sua morte. <br/>
2. Se você morrer durante o papel, seus crimes passados são esquecidos, mas você também não pode se vingar. <br/>
3. Se você é RDM, não é uma vida nova. <br/>
4. Se você reaparecer manualmente, não é uma vida nova. <br/>
5. Se você se matar de forma proposital para evitar o roleplay, não é uma vida nova. <br/> <br/>
                "
        ]
    ];

    player createDiaryRecord ["serverrules",
        [
            "Nao seja Pau no Cu",
                "
Se um administrador tiver que lhe dizer que está sendo um pau no cu, você está fazendo coisas erradas. <br/>
Causando outros sofrimento, interrompendo roleplay, a lista continua. <br/>
Apenas não seja um idiota? <br/>
Esta regra pode ser invocada de acordo com o critério de um administrador. <br/> <br/>
                "
        ]
    ];

// Police Section
    player createDiaryRecord ["policerules",
        [
            "Crisis Negotiation",
                "
Crisis Negotiation must be handled by a Sergeant. If one is not available, the person with the next highest rank must handle the situation.<br/><br/>
                "
        ]
    ];

    player createDiaryRecord ["policerules",
        [
            "Reserva federal",
                "
1. A Reserva Federal é ilegal para os civis entrarem, a menos que tenham recebido autorização. Se os civis entram sem autorização, devem ser escoltados fora do local ou presos se persistirem.
2. Os helicópteros que voem sobre o Federal Reserve podem ser convidados a deixar e desativar se eles se recusarem. <br/>
3. Se o Federal Reserve está sendo roubado, é encorajado que todos os oficiais disponíveis se movam para detê-lo. <br/>
4. Os oficiais próximos devem dirigir-se imediatamente ao Federal Reserve para ajudar. Pequenos crimes podem ser descartados durante um assalto. <br/>
5. A força letal em ladrões de banco pode ser usada se nenhuma outra alternativa estiver disponível. Toda opção para criar e prender a pessoa deve ser feita primeiro. <br/>
6. A polícia não pode disparar cegamente no prédio. <br/>
7. A polícia deve evacuar os civis do prédio durante um assalto. <br/>
8. Qualquer civil que tente ativamente impedir que a polícia entre no prédio possa ser tratado como um cúmplice. <br/>
9. Os oficiais de supervisão podem contratar pessoas ou contratar um grupo de pessoas para trabalhar como guardas de segurança para o banco. Consulte a seção "Contratação" para obter mais informações. <br/> <br/>
                "
        ]
    ];

    player createDiaryRecord ["policerules",
        [
            "Aviation",
                "
1. Nenhum helicóptero pode aterrar dentro dos limites da cidade sem a autorização do oficial de ranking mais alto online. (Exceções sendo o que está listado abaixo.) <br/>
Kavala: o heliporto do hospital (037129) ou docas (031128). <br/>
Athira: o campo esportivo (138185) ou atrás do DMV (140188). <br/>
Pyrgos: os campos Norte / Oriente do DMV (170127) <br/>
Sofia: Oposto à loja de carros (258214) ou aos campos sudeste da garagem (257212) <br/>
Pequenas cidades: um local apropriado pode ser escolhido. Isso deve ser julgado pelos oficiais caso a caso. <br/> <br/>
2. Helicópteros não podem pousar nas estradas. <br/>
3. A polícia pode proibir temporariamente o pouso, mas não pode permanecer fechada por um longo período de tempo. <br/>
4. Helicópteros não podem voar abaixo de 150m pela cidade sem autorização. <br/>
5. Os helicópteros não podem passar a cidade. Os policiais só podem passar o mouse sobre a cidade se houver uma operação policial ativa. <br/> <br/>
                "
        ]
    ];

    player createDiaryRecord ["policerules",
        [
            "Areas Ilegais",
                "
1. As áreas das gangues não são consideradas ilegais. Assim, um policial pode entrar sem uma invasão, mas não pode conter ou impedir alguém dentro sem causa provável / atividade ilegal. (Falar para o gang NPC não é provável causa / atividade ilegal). <br/>
2. Não entre em uma área ilegal, a menos que seja parte de uma invasão. veja Raiding / Camping. <br/>
3. Se você perseguir alguém em uma área ilegal, ligue para o backup. <br/>
4. Sob nenhuma circunstância, um oficial pode acampar qualquer área ilegal. <br/> <br/>
                "
        ]
    ];

    player createDiaryRecord ["policerules",
        [
            "Patrolling",
                "
1. A polícia pode patrulhar as estradas e cidades da ilha à procura de veículos abandonados e atividades criminosas. <br/>
2. As patrulhas podem ser feitas a pé dentro de uma cidade, ou em um veículo quando estiver fora. <br/>
3. As patrulhas não incluem áreas ilegais. Veja Incursão / Camping. <br/> <br/>
                "
        ]
    ];

    player createDiaryRecord ["policerules",
        [
            "Checkpoints",
                "
Os policiais são encorajados a configurar pontos de verificação em áreas estratégicas para ajudar a combater a atividade ilegal e promover a segurança na estrada. <br/> <br/>
1. Um ponto de controle deve consistir em 3 ou mais funcionários, utilizando 2 ou mais veículos. Um ATV não conta como um dos veículos necessários, mas ainda pode ser usado. <br/>
2. Um ponto de controle não pode ser configurado dentro de 300 m de uma área ilegal. Basicamente, você não pode configurar um em cima de uma área ilegal. <br/>
3. Os pontos de verificação só podem ser configurados em estradas, mas não precisa estar em uma encruzilhada. <br/>
4. Os pontos de verificação não precisam ser marcados no mapa. <br/> <br/>
Procedimento de ponto de verificação adequado: <br/>
1. Deixe o motorista parar o veículo a uma distância segura e desligue o motor. <br/>
2. Peça ao condutor e a qualquer passageiro se tiverem armas. <br/>
3. Peça ao condutor e a qualquer passageiro que saia do veículo. Se eles tiverem armas, não as impeçam imediatamente quando saem, diga-lhes que baixem suas armas e lhes dê um tempo razoável para fazê-lo. <br/>
4. Pergunte-lhes de onde eles estão indo e sair. <br/>
5. Pergunte se eles vão enviar uma pesquisa. <br/>
6. Se eles permitem uma pesquisa, você pode restringi-los e pesquisá-los. <br/>
7. Se eles não se submeterem a uma pesquisa, você deve deixá-los ir, a menos que exista uma causa provável. <br/>
8. Depois que a pesquisa for concluída, você pode permitir que eles voltem a entrar no seu veículo e se afastarem. <br/>
9. No caso de encontrar algo ilegal, a pessoa pode ser multada ou presa dependendo do crime. <br/> <br/>
                "
        ]
    ];

    player createDiaryRecord ["policerules",
        [
            "Vehicles",
                "
1. Os veículos no estacionamento, ou razoavelmente estacionados em outro lugar, devem ser deixados sozinhos. <br/>
2. Os veículos que parecem abandonados, quebrados, sem motorista, podem ser confiscados. <br/>
3. Os barcos devem ser estacionados razoavelmente na costa. <br/>
4. Qualquer veículo que não se moveu em uma quantidade significativa de tempo pode ser confiscado. <br/>
5. O aproveitamento é um trabalho essencial para um policial, ajuda a manter o servidor limpo e menos lacrado. <br/>
6. Em caso de dúvida, procure sempre o veículo e indique o (s) proprietário (s) antes de confinar. <br/>
7. As lanchas rápidas da polícia ou Hunter HMGs podem ser usadas para ajudar a apreender criminosos. A arma deve ser usada para desativar veículos, não para explodi-los. <br/> <br/>
                "
        ]
    ];

    player createDiaryRecord ["policerules",
        [
            "Speeding",
                "

318/5000
As seguintes velocidades devem ser aplicadas pela Força de Polícia de Altis para a segurança absoluta dos cidadãos de Kavala e todas as viagens além da cidade. <br/> <br/>
Dentro das principais cidades: <br/>
Estradas pequenas: 50 km / h <br/>
Estradas principais: 65km / h <br/>
Fora das principais cidades: <br/>
Estradas pequenas: 80km / h <br/>
Estradas principais: 110km / h <br/> <br/>
                "
        ]
    ];

    player createDiaryRecord ["policerules",
        [
            "City Protocol",
                "
1. Os oficiais podem patrulhar grandes cidades - Kavala, Athira, Pyrgos e Sofia. <br/>
2. Os oficiais podem parar pela loja de automóveis para garantir que não haja carros que precisam ser confiscados. <br/>
3. Os oficiais não podem ficar de pé ou ficar no centro da cidade. <br/>
4. Os oficiais podem entrar na cidade em grande número se ocorrer um ato rebelde. Depois que a área é clara, eles precisam sair da cidade de novo. <br/>
5. A lei marcial não pode ser declarada a qualquer momento. <br/>
6. Os prédios da Polícia HQ são ilegais para que civis entrem sem autorização, no entanto, NÃO é ilegal que civis estejam próximos, a menos que causem um incômodo. <br/> <br/>
                "
        ]
    ];

    player createDiaryRecord ["policerules",
        [
            "Arresting and Ticketing",
                "
A detenção deve ser feita aos criminosos que são considerados um perigo para si próprios ou para outros. <br/> <br/>
1. Você não pode prender alguém se você tiver dado um bilhete e eles pagaram. <br/>
2. Você deve informar ao suspeito por que eles estão sendo presos antes de prendê-los. <br/>
3. Se um civil é procurado, você pode prendê-los. Não os mate, a menos que a situação caia na seção "Uso da Força Leal". <br/> <br/>
Ticketing um civil é considerado um aviso para o civil. Se eles quebram uma lei, mas não representam uma ameaça para ninguém, você pode assinar um civil. <br/> <br/>
1. Os bilhetes devem ser um preço razoável. <br/>
2. Os preços dos ingressos devem ser baseados nos crimes cometidos. <br/>
3. A recusa de pagar um ingresso legítimo é motivo de prisão. <br/>
4. Dando um bilhete civil e ilegítimo, como $ 100k por excesso de velocidade, etc., não é permitido e resultará na sua remoção do departamento de polícia. <br/> <br/>
Uma lista completa de todos os crimes e as punições adequadas devem ser entregues aos oficiais durante o treinamento. Em caso de dúvida, ou se você não foi treinado, peça a um oficial de ranking superior o que fazer. <br/> <br/>
                "
        ]
    ];

    player createDiaryRecord ["policerules",
        [
            "Weapons",
                "
Nunca foi permitido a um policial fornecer armas civis aos civis. Isso o impedirá do servidor e será removido de um policial. <br/> <br/>
Armas legais para civis para transportar com uma licença: <br/>
1. P07 <br/>
2. Rook <br/>
3. ACP-C2 <br/>
4. Zubr <br/>
5. 4-cinco <br/>
6. PDW2000 <br/> <br/>
Qualquer outra arma (incluindo Silento P07 [Considerado uma arma policial]) é ilegal. <br/> <br/>
1. Os civis não têm permissão para ter uma arma dentro dos limites da cidade. <br/>
2. Os civis podem ter uma arma quando não estão na cidade. No entanto, eles devem se submeter a uma pesquisa de licença se confrontados por um oficial e devem ter a arma abaixada (pressione Ctrl duas vezes). <br/> <br/>
                "
        ]
    ];

    player createDiaryRecord ["policerules",
        [
            "Use of Non-Lethal Force",
                "
Neste momento, o Taser (Silenciado P07) é a única forma de Força Não-Lethal. <br/> <br/>
1. Taser deve ser usado para incapacitar os civis que não cumprem a obrigação para restringi-los. <br/>
2. Não descarregue seu Taser, a menos que pretenda incapacitar um civil, a descarga aleatória da sua arma resultará na sua suspensão. <br/>
3. Utilize apenas o seu Taser de acordo com as leis e as regras, não imponha sua vontade em outros. <br/> <br/>
                "
        ]
    ];

    player createDiaryRecord ["policerules",
        [
            "Raiding/Camping",
                "
O incursão é definido como um esquadrão de policiais invadindo uma área de alta atividade criminosa para impedir os criminosos em atos ilegais. <br/> <br/>
1. A fim de atacar uma área, os policiais devem ter pelo menos 4 agentes envolvidos, um dos quais deve ser um sargento ou acima. <br/>
2. Todos os civis em uma área de invasão podem ser restringidos e procurados. Se nada de ilegal for encontrado, você deve deixá-los ir. <br/>
3. Se forem encontrados ilegais durante uma pesquisa, você pode prender ou multa como de costume. <br/>
5. A força letal só é autorizada conforme descrito em "Uso da força letal". <br/>
6. Depois que a área estiver segura, os oficiais devem sair da área. <br/>
7. Uma área não pode ser invadida novamente por 20 minutos após uma invasão anterior. <br/>
8. Se a invasão for uma falha (Todos os oficiais morrem), o temporizador de 20 minutos ainda se aplica a esses oficiais. <br/>
9. O backup pode ser chamado, mas pode não consistir em oficiais caídos (veja 'Nova regra de vida'). <br/> <br/>
O acampamento é definido como a prolongação da permanência de um oficial em uma área. <br/> <br/>
1. Os pontos de verificação não são considerados acampamentos. Veja a seção Checkpoint para uma definição de procedimentos de ponto de verificação apropriados. <br/>
2. Veja as secções do Protocolo de Roubo do Banco e Agia Marina para mais informações sobre o acampamento na cidade principal. <br/>
3. O acampamento de áreas ilegais fica mais longo do que o necessário depois de uma invasão, ou se os oficiais não realizam uma incursão, mas continuam a assistir e tomar medidas contra civis que entram na área. <br/> <br/>
                "
        ]
    ];

    player createDiaryRecord ["policerules",
        [
            "Chain of Command",
                "
O oficial de serviço de maior ranking é responsável pela força policial fora dos administradores atualmente online. Espera-se que o oficial de alto escalão siga as regras e diretrizes de sua classificação, e deve informar ao administrador no caso de qualquer ação precisar ser tomada. <br/> <br/>
Cadeia de comando da polícia: <br/>
1. Chefe <br/>
2. Chefe Adjunto <br/>
3. Superintendente <br/>
4. Capitão <br/>
5. Tenente <br/>
6. Sargento <br/>
7. Oficial de patrulha sénior <br/>
8. Patrulheiro <br/>
9. Cadet <br/> <br/>
Os policiais no jogo que não estão matriculados / aceitos no SPD são o nível mais baixo e não têm nenhuma opinião nas operações da polícia. <br/> <br/>
                "
        ]
    ];

    player createDiaryRecord ["policerules",
        [
            "Use of Lethal Force",
                "
1. O uso de força letal só é permitido para a proteção de sua vida, outra vida de oficiais ou uma vida de civis, se e somente se a força não letal não for efetiva. <br/>
2. A descarga de uma arma quando não está ameaçada ou não durante exercícios de treinamento não é permitida. Os oficiais capturados em violação desta regra serão removidos do servidor e suspensos do SPD. <br/>
3. A falta de disciplina e procedimento de armas adequadas irá removê-lo do servidor e suspenso do SPD. <br/> <br/>
                "
        ]
    ];

    player createDiaryRecord ["policerules",
        [
            "TeamSpeak Rule",
                "
1. Todos os policiais devem estar no TeamSpeak 3 em um canal de polícia designado. A falha no TeamSpeak durante uma verificação de administrador resultará na sua demissão imediata do servidor. <br/>
2. Junte-se ao TeamSpeak ANTES de gerar como policial, arrasar, juntar-se ao TeamSpeak antes de se juntar ao servidor. <br/> <br/>
                "
        ]
    ];

// Illegal Items Section
    player createDiaryRecord ["illegalitems",
        [
            "Rebel Rules",
                "
Um rebelde é aquele que se levanta em resistência armada contra um governo. Neste caso, seria a polícia. No entanto, devido à pequena quantidade de polícia em comparação com a possível quantidade de rebeldes, não ataque a polícia sem um motivo, seja civil e use o senso comum, e não tome a palavra rebelde literalmente, mas sim como isso fará este divertimento do servidor para todos. <br/> <br/>
1. Um rebelde deve formar uma gangue e declarar intenções. <br/>
2. A resistência não excusa RDMing (veja RDMing em regras gerais) <br/>
3. O jogo de rol da resistência deve ser conduzido de maneiras mais do que roubar constantemente o banco ou atirar policiais. <br/>
4. A resistência deve ser coordenada. <br/>
5. Um motivo apropriado deve estar por trás de cada ataque. <br/> <br/>
                "
        ]
    ];

    player createDiaryRecord ["illegalitems",
        [
            "Gang Rules",
                "
1. Estar numa gangue não é ilegal. Somente quando crimes ilegais são cometidos. <br/>
2. Ser em uma área de gangue não é ilegal. Somente quando participar de atividades ilegais. <br/>
3. As pandas podem manter e controlar áreas de gangue. Outras gangues podem atacar uma quadrilha de controle para competir pelo controle de uma área de gangue. <br/>
4. Para declarar guerra a outra gangue, o líder deve anunciá-la no mundo e todos os membros de gangues de ambas as gangues devem ser notificados. Para uma guerra de gangues a mais longo prazo, uma declaração deve ser feita nos fóruns. <br/>
5. As gangues não podem matar civis desarmados, a menos que o civil seja parte de uma gangue rival e na área controlada de suas gangues. <br/>
6. As gangues não podem matar civis, a menos que estejam ameaçados. Matar civis desarmados porque eles não cumprem é considerado RDM, mas você pode ferir / danificar. <br/> <br/>
                "
        ]
    ];

    player createDiaryRecord ["illegalitems",
        [
            "Illegal Vehicles",
                "
Um civil no controle dos seguintes veículos proibidos está sujeito às conseqüências definidas no controle não autorizado de uma lei de veículo proibida. <br/> <br/>
1. Ifrit <br/>
2. Lancha rápida <br/>
3. Hunter <br/>
4. Police Offroad <br/> <br/>
                "
        ]
    ];

    player createDiaryRecord ["illegalitems",
        [
            "Illegal Weapons",
                "
Um civil que possua o seguinte está sujeito às consequências, conforme definido na posse ilegal de uma lei de armas de fogo. <br/> <br/>
1. Série MX <br/>
2. Série Katiba <br/>
3. Série TRG <br/>
4. Série Mk.20 <br/>
5. Mk.18 ABR <br/>
6. SDAR Rifle <br/>
7. Sting SMG <br/>
8. Silenciado P07 (Taser) <br/>
9. Qualquer explosivo <br/> <br/>
                "
        ]
    ];

    player createDiaryRecord ["illegalitems",
        [
            "Illegal Items",
                "
The following items are illegal to posses:<br/><br/>
1. Turtle<br/>
2. Cocaine<br/>
3. Heroin<br/>
4. Cannabis<br/>
5. Marijuana<br/><br/>
                "
        ]
    ];

// Controls Section

    player createDiaryRecord ["controls",
        [
            "Controles de Medicos de Cops",
                "
F: sirene do veículo. <br/>
L: radar de velocidade (somente policial e arma é P07 Suprimido). <br/>
Shift esquerdo + L: Ativa as luzes da sirene. <br/>
Left Shift + R: Restrain (somente policial). <br/> <br/>
                "
        ]
    ];
    player createDiaryRecord ["controls",
        [
            "Controles de Civil",
                "
Shift esquerdo + G: Knock out / stun (Arma necessária. Usada para roubar). <br/>
Barra de espaço: coloque o recipiente de armazenamento. <br/> <br/>
                "
        ]
    ];
    player createDiaryRecord ["controls",
        [
            "Controles Gerais",
                "
Y: Abra o Menu do Jogador. <br/>
U: Bloqueie e desbloqueie veículos e casas. <br/>
T: Tronco do veículo e armazenamento de itens virtuais da casa. <br/>
Shift esquerdo + B: Renda (mãos na cabeça). <br/>
Windows esquerdo: chave de interação principal. Usado para interagir com objetos como veículos, casas, caixas eletrônicos e jogadores restritos. Pode ser rebote para uma única tecla como H pressionando ESC-> Configurar-> Controles-> Personalizado-> Usar Ação 10. <br/>
Shift esquerdo + H: Holsters a arma em suas mãos. <br/>
Esquerda Ctrl + H: Reverte a ação do coldre. <br/>
Shift + Barra de espaço: Salte. <br/>
Shift esquerdo + O: (un) som de fade (tampões de ouvido). <br/> <br/>
                "
        ]
    ];
