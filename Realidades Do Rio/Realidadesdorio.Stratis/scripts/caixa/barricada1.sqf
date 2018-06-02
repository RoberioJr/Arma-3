/*

 By:RobérioJr
 Descr: Spawna Uma Barricada Vazia No Marcador
 Init Do OBJ: this addAction ["<t color='#FF0000'>BARRICADAS</t>", "[] execVM 'scripts\caixa\barricada1.sqf'", '(alive player) && player distance _target < 3'];

*/

 //Marcador Para Spawn Da Barricada.
 //Barricada A Ser Spawnada.
  _barricada = "Land_CncBarrier_F" createVehicle getMarkerPos "barricada1";
  hint "Você Spawnou Uma Barricada. Não Abuse Desse Poder!!";
