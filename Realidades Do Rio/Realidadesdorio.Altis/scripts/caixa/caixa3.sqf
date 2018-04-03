/*

 By:RobérioJr
 Descr: Spawna Uma Caixa Vazia No Marcador
 Init Do OBJ: this addAction ["<t color='#FF0000'>CAIXA</t>", "[] execVM 'scripts\caixa\caixa3.sqf'", '(alive player) && player distance _target < 3'];

*/

 //Marcador Para Spawn Da Caixa.
 //Caixa A Ser Spawnada.
  _caixa3 = "Box_NATO_WpsSpecial_F" createVehicle getMarkerPos "caixa3";
  if((getNumber(missionConfigFile >> "CfgClient" >> "clearInventory")) isEqualTo 1) then
  {
	clearItemCargoGlobal _caixa3;
    clearMagazineCargoGlobal _caixa3;
    clearWeaponCargoGlobal _caixa3;
    clearBackpackCargoGlobal _caixa3;
  };
  hint "Você Spawnou Uma Caixa. Não Abuse Desse Poder!!";
