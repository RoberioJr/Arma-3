/*

    Author: RobérioJR

*/
Private ['_Base','_Cor','_marker'];

Switch (PlayerSide) Do {
    Case West: { _Base = SpawnAzul; _Cor = 'ColorBlue'; };
	Case East: { _Base = SpawnVermelho; _Cor = 'ColorRed'; };
	Case Independent:{ _Base = SpawnVerde; _Cor = 'ColorGreen'; };
};

_marker = createMarkerLocal [Format["Base_%1_%2",name Player,Random(99)], (GetMarkerPos _Base)];
_marker setMarkerShapeLocal "ELLIPSE"; 
_marker setMarkerSizeLocal [RaioSafeZoneBase, RaioSafeZoneBase];
_marker setMarkerColorLocal _Cor;
_marker setMarkerAlphaLocal 0.65;

JogadorNaBase = False;

While {True} Do {
    WaitUntil {Alive Player};
    Sleep 1.5;
	If ((GetMarkerPos _Base) Distance Player < RaioSafeZoneBase && (!JogadorNaBase)) Then {
	    player removeAllEventHandlers "handleDamage";
        player addEventHandler ["handleDamage", {false}];
		JogadorNaBase = True;
		[] Spawn { While {JogadorNaBase} Do { vehicle player setdammage 0; Sleep 0.001; };};
	};
	If ((GetMarkerPos _Base) Distance Player > RaioSafeZoneBase && (JogadorNaBase)) Then {
	    player removeAllEventHandlers "handleDamage";
		JogadorNaBase = False;
	};
};