while {true} do
{
  waitUntil {alive vehicle player};
 [] execVM "admin\admins.sqf";
 [] execVM "zonas\setores\Recompensa.sqf";

  waitUntil {!alive player};
};