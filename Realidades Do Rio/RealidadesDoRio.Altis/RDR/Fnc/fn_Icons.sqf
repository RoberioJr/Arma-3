
Switch (PlayerSide) Do {
    Case West: {
	MarkRDR =
	[
	    [SpawnAzul,'Texturas\azul.paa','Base Do Time']
	]
	};
	Case East: {
	MarkRDR =
	[
	    [SpawnVermelho,'Texturas\vermelho.paa','Base Do Time']
	]
	};
	Case Independent: {
	MarkRDR =
	[
	    [SpawnVerde,'Texturas\verde.paa','Base Do Time']
	]
	};
};

findDisplay 12 displayCtrl 51 ctrlAddEventHandler ["Draw",
    '
	{
        _this select 0 drawIcon [
	    RDR_MISSAO_DIR + (_x select 1),
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
	} ForEach MarkRDR;
    '
];


