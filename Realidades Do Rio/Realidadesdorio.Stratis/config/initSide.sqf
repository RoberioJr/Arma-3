/*
/  Realidades    /     
/      Do        /     
/ Rio De Janeiro /
*/


/* PERMISSÃO PARA ABRIR PORTAS DO BOPE */

waituntil {alive player};    //Esperar O Jogador Spawnar
sleep 10;    //Esperar 10 Segundos

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
    };
    case east: 
	{
        hint "Inicializando...";
    };
};

