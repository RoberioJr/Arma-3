/*
/  Realidades    /     
/      Do        /     
/ Rio De Janeiro /
*/

waitUntil {!isServer && !isNull player && player isEqualTo player};
if (player diarySubjectExists "controls") exitWith {};

player createDiarySubject ["Creditos","Creditos"];
player createDiarySubject ["Atualizações","Atualizações"];
player createDiarySubject ["Regras","Regras Gerais"];
player createDiarySubject ["Controles","Controles"];

player createDiaryRecord ["Creditos",
        [
            "Realidades Do Rio",
                "
Equipe: RoberioJr(Scripts), Marvinn(Scripts) and R.Marques(Cenario/Mapa).<br/><br/>
                "
        ]
    ];
	
	player createDiaryRecord ["Atualizações",
        [
            "Atualizações Da Missão",
                "
Para Ficar Por Dentro Das Atualizações Acesse: https://github.com/RoberioJr/Arma-3/tree/master/Realidadesdorio.Stratis<br/><br/>
                "
        ]
    ];