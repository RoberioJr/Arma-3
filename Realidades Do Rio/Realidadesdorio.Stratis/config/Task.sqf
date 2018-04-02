/*
/  Realidades    /
/      Do        /
/ Rio De Janeiro /
*/

_var = true;

while(_var) do {
     titleCut ["", "BLACK FADED", 999];
[] Spawn {
    titleText ["Ative O Task Force Radio","PLAIN"]; 
    titleFadeOut 3;
    sleep 3;
    titleText ["Ative O Task Force Radio","PLAIN"];
    titleFadeOut 3;
    sleep 3;
};

if (call TFAR_fnc_isTeamSpeakPluginEnabled) then {
     _var = false;
};