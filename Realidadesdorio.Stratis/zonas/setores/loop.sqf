while {true} do
{
  waitUntil {alive vehicle player};
[] execVM "zonas\setores\territorio.sqf";


  waitUntil {!alive player};
};