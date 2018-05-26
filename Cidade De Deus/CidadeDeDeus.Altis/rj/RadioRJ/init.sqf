while {true} do
{
    waitUntil {alive player};
    if (vehicle player != player) then {
        player addaction [("<t color=""#9400D3"">" + ("RadioRJ!") +"</t>"),"rj\RadioRJ\mscs.sqf","",5,false,true,"",""];
    };
};