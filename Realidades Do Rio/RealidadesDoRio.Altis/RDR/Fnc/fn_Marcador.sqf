/*
    
    Author: RobérioJR
    
*/

private["_marcadores","_membros","_cormark"];
_marcadores = [];
_membros = [];
_cormark = "ColorYellow";

switch (playerSide) do 
{
    case west: 
	{
	    _cormark = "ColorBlue";   //BOPE AZUL
    };	
	
	case east:
	{
	    _cormark = "ColorRed";    //CV VERMELHO
	};
	
	case civilian: 
	{
	    _cormark = "ColorCivilian";    //CV VERMELHO
	};
	
	case independent: 
	{
	    _cormark = "ColorGreen";  //PCC VERDE
	};
};

 while {VisibleMap} do {
	sleep 0.2;
    _membros = units (group player);
	//Create markers
	{
		_marcador = createMarkerLocal [format["%1_marcador",_x],visiblePosition _x];
		_marcador setMarkerColorLocal _cormark;   //Define a Cor Do Marcador
		_marcador setMarkerTypeLocal "mil_dot";   //Ponto "Bolinha"
		_marcador setMarkerTextLocal format["%1", _x getVariable["realname",name _x]];
	
		_marcadores pushBack [_marcador,_x];
	} foreach _membros;
	
	while {visibleMap} do {
		{
			private["_marcador","_unit"];
			_marcador = _x select 0;
			_unit = _x select 1;
			if(!isNil "_unit") then {
				if(!isNull _unit) then {
				    _marcador setMarkerPosLocal (visiblePosition _unit);
				};
			};
		} foreach _marcadores;
		if(!visibleMap) exitWith {};
		sleep 0.1;
	};

	{deleteMarkerLocal (_x select 0);} foreach _marcadores;
	_marcadores = [];
	_membros = [];
 };