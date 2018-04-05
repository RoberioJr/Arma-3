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
        setVariable ["copLevel",1,true];
		[] execVM "config\Client\initSide\initBOPE.sqf";
    };
    case east: 
	{
		[] execVM "config\Client\initSide\initBandido.sqf";
    };
};

