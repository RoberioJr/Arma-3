/*
/  Realidades    /     
/      Do        /     
/ Rio De Janeiro /
*/

waituntil {alive player};    //Esperar O Jogador Spawnar

/*
if (playerSide == west) then
{
    setVariable ["copLevel",1,true];
};
*/

switch (playerSide) do 
{
    case west: 
	{
	    hint "Inicializando...";
        setVariable ["copLevel",1,true];
		[] execVM "config\Client\initBOPE";
    };
    case east: 
	{
        hint "Inicializando...";
		[] execVM "config\Client|initBandido";
    };
};

