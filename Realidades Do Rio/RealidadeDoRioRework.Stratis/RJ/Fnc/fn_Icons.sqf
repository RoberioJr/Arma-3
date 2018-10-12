
Switch (PlayerSide) Do {
    Case West: { 
	MarkRJ = 
	[
	    [SpawnAzul,'Texturas\azul.paa','Base Do Time']
	] 
	};
	Case East: { 
	MarkRJ = 
	[
	    [SpawnVermelho,'Texturas\vermelho.paa','Base Do Time']
	] 
	};
	Case Independent: { 
	MarkRJ = 
	[
	    [SpawnVerde,'Texturas\verde.paa','Base Do Time']
	] 
	};
};

findDisplay 12 displayCtrl 51 ctrlAddEventHandler ["Draw", 
    '  
	{
        _this select 0 drawIcon [
	    RJ_MISSAO_DIR + (_x select 1),
        [1,1,1,1],  
        getMarkerPos (_x select 0), 
        24,  
        24,  
        0, 
        (_x select 2), 
        1,  
        0.05,  
        "TahomaB",  
        "right"  
        ]  
	} ForEach MarkRJ;
    '
];


