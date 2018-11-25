/*
    
	Author: RobérioJR
	
*/

params["_gear","_cash","_bank","_levelbope","_levelband","_leveladmin","_leveldoador","_jogadorvivo","_bandidopos"];

RDR_Grana = _cash;
RDR_Banco = _bank;
RDR_BopeLevel = _levelbope;
RDR_BandLevel = _levelband;
RDR_AdminLevel = _leveladmin;
RDR_DoadorLevel = _leveldoador;

Switch (PlayerSide) Do {
    Case West: { RDR_BandLevel = 0; };
	Case East: { RDR_BopeLevel = 0; };
	Case Independent: { RDR_BopeLevel = 0; };
};

If (_jogadorvivo IsEqualTo 1) Then {
    RDR_JogadorVivo = true;
	RDR_PosicaoDB = _bandidopos;
} Else { 
    RDR_JogadorVivo = false; 
	RDR_PosicaoDB = [];
};

RDR_LoadoutDB = [];
If (PlayerSide IsEqualto West) Then {
    RDR_LoadoutDB = _gear select 0;
} Else {
    RDR_LoadoutDB = _gear select 1;
};

RDR_VeiculosDoJogador = [];

{
    _Veiculo = _x GetVariable 'RDR_Veiculo_Dono';
    If ((_Veiculo select 1) IsEqualTo (GetPlayerUID Player)) Then {
	    RDR_VeiculosDoJogador PushBack _x;
	};
} ForEach Vehicles;

true;






