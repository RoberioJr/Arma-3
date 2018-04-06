/*

    Inicialização Do BOPE
	Executado a cada 40Segs

*/


if(playerSide isEqualTo west) then 
  {
    setVariable ["copLevel",1,true];    //Permissão Para Abrir Portas.
    (unitBackpack player) setObjectTextureGlobal [0,""];    //Mochila Inivisivel
  };
