/*

 By:RobérioJr
 Descr: Spawna Uma Caixa Vazia No Marcador
 Init Do OBJ: this addAction ["<t color='#FF0000'>CAIXA</t>", "[] execVM 'scripts\caixa\caixa1.sqf'", '(alive player) && player distance _target < 3'];

*/

 //Marcador Para Spawn Da Caixa.
 //Caixa A Ser Spawnada.
  _caixa = "Box_NATO_WpsSpecial_F" createVehicle getMarkerPos "caixa1";
  if((getNumber(missionConfigFile >> "CfgClient" >> "clearInventory")) isEqualTo 1) then
  {
	clearItemCargoGlobal _caixa;
    clearMagazineCargoGlobal _caixa;
    clearWeaponCargoGlobal _caixa;
    clearBackpackCargoGlobal _caixa;
  };
  hint "Você Spawnou Uma Caixa. Não Abuse Desse Poder!!";