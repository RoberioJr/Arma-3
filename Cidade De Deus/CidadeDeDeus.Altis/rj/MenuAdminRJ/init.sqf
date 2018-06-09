[] execVM "rj\MenuAdminRJ\loop.sqf";
waitUntil {alive vehicle player};
sleep 20;
if (FETCH_CONST(life_adminlevel) >= 1) then {
    [] execVM "rj\MenuAdminRJ\VeiculoSpawn\iniciar.sqf"; 
};