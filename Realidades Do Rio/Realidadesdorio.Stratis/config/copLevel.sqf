/*
/  Realidades    /     
/      Do        /     
/ Rio De Janeiro /
*/


/* PERMISSÃO PARA ABRIR PORTAS DO BOPE */

waituntil {alive player};

if (playerSide == west) then
{
    setVariable ["copLevel",1,true];
};