/*

    Author: RobérioJR

*/
private ["_radio"];

while {true} do
{
    waitUntil {alive player};
    if (vehicle player != player) then {
        _radio = player addaction [("<t color=""#2E9AFE"">" + ("RadioCDD") +"</t>"),"rj\RadioRJ\mscs.sqf","",5,false,true,"",""];
    };
	waitUntil {vehicle player == player};
	    playMusic ""; 
		player removeAction _radio;
	sleep 0.5;
};



