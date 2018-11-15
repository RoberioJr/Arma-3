while {true} do
{
  waitUntil {alive vehicle player};
 [] execVM "RDR\Sistemas\Admin\admins.sqf";

  waitUntil {!alive player};
};