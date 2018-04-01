/*
/  Realidades    /     
/      Do        /     
/ Rio De Janeiro /
*/

while {true} do
{
     if (call TFAR_fnc_isTeamSpeakPluginEnabled) then 
    {
	sleep 10;
	} else {
	    cutText ["Ative o task force radio para jogar","BLACK",-1];
	};
};