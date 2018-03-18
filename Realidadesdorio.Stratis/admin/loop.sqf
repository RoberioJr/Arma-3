while {true} do
{
  waitUntil {alive vehicle player};
 [] execVM "admin\admins.sqf";

  waitUntil {!alive player};
};