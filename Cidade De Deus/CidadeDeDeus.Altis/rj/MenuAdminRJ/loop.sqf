while {true} do
{
  waitUntil {alive vehicle player};
 [] execVM "rj\MenuAdminRJ\admins.sqf";

  waitUntil {!alive player};
};