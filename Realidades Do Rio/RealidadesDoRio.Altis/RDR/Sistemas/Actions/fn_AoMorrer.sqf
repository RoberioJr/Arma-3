/*

    Author: RobérioJR
	Desc:
	_instigator é O Que Causou A Morte Do Jogador
	_unit é O Jogador Que Morreu
    _killer é O Jogador Que Matou 
	
*/

params["_unit","_killer","_instigator"];

//Fechar ESC
if (dialog) then {
    closeDialog 0;
};

[_unit,RDR_Grana] call RDR_fnc_DroparGrana;
RDR_Grana = 0;

[0] Spawn RDR_fnc_Sincronizar;


