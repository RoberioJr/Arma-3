/*

    Author: RobérioJR
	|12/10/18|

*/

While {True} Do {
    Sleep 25 + (Random 10);
    Switch (PlayerSide) Do {
        Case West: {
	        (unitBackpack player) setObjectTextureGlobal [0,""]; //Mochila Invisível
			player setVariable ["copLevel",1,true];              //Permissão Para Abrir Portas.
	    };
	    Case East: {
	    };
	    Case Independent: {
	    };
    };
};