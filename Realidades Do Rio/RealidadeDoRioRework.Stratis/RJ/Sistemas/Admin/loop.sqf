while {true} do
{
  waitUntil {alive vehicle player};
 [] execVM "RJ\Sistemas\Admin\admins.sqf";

  waitUntil {!alive player};
};