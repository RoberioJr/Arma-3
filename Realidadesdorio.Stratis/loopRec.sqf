[]spawn {
    while {true} do {
    [] execVM zonas\setores\Recompensa.sqf;
	hintSilent parseText format ["<t size='3.4' color='#ff0000' shadow='0'>AVISO!</t> <t size='1.2'> Você está Saindo Da Favela! Você Será Morto Por Um Sniper! </t>"];
    sleep 5;
    };
};