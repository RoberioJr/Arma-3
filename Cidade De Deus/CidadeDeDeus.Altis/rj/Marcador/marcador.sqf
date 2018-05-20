/*

    Author: RoberioJR
*/

private["_marcadores","_cormark"]; //_membros
_marcadores = [];
//_membros = [];
_cormark = "ColorRed";

switch (playerSide) do 
{
    case west: 
	{
	    _cormark = "ColorBlue";   //COP AZUL
    };	
	
	case civilian: 
	{
	    _cormark = "ColorWhite";    //CIV VERMELHO
	};
	
	case independent: 
	{
	    _cormark = "ColorRed";  //MED VERDEColorRed
	};
};

while {true} do {
	sleep 0.5;
	if(visibleMap) then {
		//_membros = units (group player);
		//Create markers
		{
			_marcador = createMarkerLocal [format["%1_marcador",_x],visiblePosition _x];
			_marcador setMarkerColorLocal _cormark;   //Define a Cor Do Marcador
			_marcador setMarkerTypeLocal "mil_dot";   //Ponto "Bolinha"
			_marcador setMarkerTextLocal format["%1", _x getVariable["realname",name _x]];
		
			_marcadores pushBack [_marcador,_x];
		}; //foreach _membros;
			
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
			sleep 0.08;
		};

		{deleteMarkerLocal (_x select 0);} foreach _marcadores;
		_marcadores = [];
		//_membros = [];
	};
};