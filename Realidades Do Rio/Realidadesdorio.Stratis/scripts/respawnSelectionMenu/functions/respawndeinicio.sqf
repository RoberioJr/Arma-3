/*
/  Realidades    /     
/      Do        /     
/ Rio De Janeiro /
*/

while {true} do {
		     if(alive player) then {
             createDialog "dlg_respawnSelectionMenu";
		};
		    if(!alive player) then{
            waitUntil {alive player};
            createDialog "dlg_respawnSelectionMenu";
        };			
	};
};