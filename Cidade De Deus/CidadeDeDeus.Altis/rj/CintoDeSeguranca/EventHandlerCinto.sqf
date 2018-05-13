/*

    Adp: RJ

*/
if (hasInterface) then {
    player addEventHandler ["GetOutMan", {
        life_seatbelt = false;
        //[] call life_fnc_hudUpdate; //--Enable if you are putting a hud option to display when your seatbelt is on
    }];
};

if (hasInterface) then {
    player addEventHandler ["GetInMan", {
        life_seatbelt = false;
        //[] call life_fnc_hudUpdate; //--Enable if you are putting a hud option to display when your seatbelt is on
    }];
};