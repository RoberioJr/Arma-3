while {playerSide == east} do
{
  waitUntil {alive vehicle player};
 [] execVM "zonas\setores\Recompensa.sqf";

  waitUntil {!alive player};
};