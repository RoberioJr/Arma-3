while {true} do
{
  waitUntil {alive vehicle player};
[] execVM "territorio.sqf";


  waitUntil {!alive player};
};
