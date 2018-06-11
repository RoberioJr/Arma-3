/*

 By:RobérioJr
 Descr: Spawna Uma Caixa Vazia No Marcador
 Init Do OBJ: this addAction ["<t color='#FF0000'>CAIXA</t>", "[] execVM 'scripts\caixa\caixa5.sqf'", '(alive player) && player distance _target < 3'];

*/

 //Marcador Para Spawn Da Caixa.
 //Caixa A Ser Spawnada.
  _caixa5 = "Box_NATO_WpsSpecial_F" createVehicle getMarkerPos "caixa5";
  if((getNumber(missionConfigFile >> "CfgClient" >> "clearInventory")) isEqualTo 1) then
  {
	clearItemCargoGlobal _caixa5;
    clearMagazineCargoGlobal _caixa5;
    clearWeaponCargoGlobal _caixa5;
    clearBackpackCargoGlobal _caixa5;
  };
  hint "Você Spawnou Uma Caixa. Não Abuse Desse Poder!!";
