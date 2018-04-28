/*
/  Realidades    /     
/      Do        /     
/ Rio De Janeiro /
*/

if(alive player) then {
createDialog "dlg_respawnSelectionMenu";
};

while {true} do {
	if(!alive player) then{
    waitUntil {alive player};
    createDialog "dlg_respawnSelectionMenu";
    };			
};