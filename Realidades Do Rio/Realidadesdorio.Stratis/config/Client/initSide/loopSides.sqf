/*

  Loop Dos Sides

*/

waituntil {alive player};
sleep 20;

switch (playerSide) do 
{
    case west: 
	{
		[] execVM "config\Client\initSide\initBOPE.sqf";
    };
    case east: 
	{
		[] execVM "config\Client\initSide\initBandido.sqf";
    };
};
[] execVM "config\Client\initSide\initLoop.sqf"