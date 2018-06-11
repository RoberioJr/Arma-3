/*

 By:RobérioJr
 Descr: Spawna Uma Caixa Vazia No Marcador
 Init Do OBJ: this addAction ["<t color='#FF0000'>CAIXA</t>", "[] execVM 'scripts\caixa\caixa2.sqf'", '(alive player) && player distance _target < 3'];

*/

 //Marcador Para Spawn Da Caixa.
 _hasEnough = [150] call HG_fnc_hasEnoughMoney;
 if (_hasEnough) then {
  _caixa2 = "Box_NATO_WpsSpecial_F" createVehicle getMarkerPos "caixa2";
  [150,1] call HG_fnc_addOrSubCash;
  if((getNumber(missionConfigFile >> "CfgClient" >> "clearInventory")) isEqualTo 1) then
  {
	clearItemCargoGlobal _caixa2;
    clearMagazineCargoGlobal _caixa2;
    clearWeaponCargoGlobal _caixa2;
    clearBackpackCargoGlobal _caixa2;
  };
  hint "Você Comprou Uma Caixa. Use Ela Para Guardar Armamento e Items!!";
} else { hint "Você Não Possui Dinheiro Suficiente..."; }