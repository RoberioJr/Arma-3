_spawn = "C_Hatchback_01_sport_F";
_posplr = [((getPos player) select 0) + 2, ((getPos player) select 1) + 2, 0];
_dirplr = getDir player;
_spwnveh = _spawn createVehicle (_posplr);
_spwnveh setVariable ["Sarge",1,true];
/*
player removeAction car;
player removeAction car1;
player removeAction car2;
player removeAction line1;
player removeAction line2;
player removeAction godmode;
player removeAction tele;
player removeAction guns;
player removeAction mainveh;
player removeAction cgod;
player removeAction hplay;
*/