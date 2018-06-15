/*

    Author: RobérioJR

*/

    if (vehicle player != player) then {
	    playSound "botao";
	    cutText ["Tocando: Hungria - Insônia Part. Tribo Da Periferia", "PLAIN"];
	    sleep 1.5;
        playMusic "um";
		//[] remoteExec ["playMusic 'INSONIA'", crew (vehicle player), 0];
		//{"INSONIA" remoteExec ["playMusic"]} forEach crew (vehicle player);
    };