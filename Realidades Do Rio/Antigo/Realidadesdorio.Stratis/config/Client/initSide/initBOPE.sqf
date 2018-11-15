/*

    Inicialização Do BOPE
	Executado a cada 30Segs

*/


if(playerSide isEqualTo west) then 
  {
    player setVariable ["copLevel",1,true];    //Permissão Para Abrir Portas.
    (unitBackpack player) setObjectTextureGlobal [0,""];    //Mochila Inivisivel
  };
