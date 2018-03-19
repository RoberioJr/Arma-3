//////////////////////
// MadeBY: Marvinn  //
//////////////////////

private "_flagSide1";
_flagSide1 = flagSide RocinhaAlta;
private "_flagSide2";
_flagSide2 = flagSide RocinhaBaixa;
private "_flagSide3";
_flagSide3 = flagSide AreaCap1;
private "_flagSide4";
_flagSide4 = flagSide NovaHolanda;
private "_flagSide5"; 
_flagSide5 = flagSide ZonaInd2;
private "_flagSide6";
_flagSide6 = flagSide ZonaInd3;
private "_flagSide7";
_flagSide7 = flagSide ZonaInd4;
private "_flagSide8";
_flagSide8 = flagSide ZonaInd5;
private "_flagSide9";
_flagSide9 = flagSide ZonaInd6;
private "_flagSide10";
_flagSide10 = flagSide Timbal;
private "_flagSide11";
_flagSide11 = flagSide ParqueUniao;
private "_flagSide12";
_flagSide12 = flagSide MorroVidigal;

hintSilent parseText format ["<t size='3.4' color='#ff0000' shadow='0'>AVISO!</t> <t size='1.2'> Você está Saindo Da Favela! Você Será Morto Por Um Sniper! </t>"];

if (_flagSide1 == east) then{
     [5000,0] call HG_fnc_addOrSubCash;
};

if (_flagSide2 == east) then{
     [3000,0] call HG_fnc_addOrSubCash;
};

if (_flagSide3 == east) then{
     [700,0] call HG_fnc_addOrSubCash;
};

if (_flagSide4 == east) then{
     [5000,0] call HG_fnc_addOrSubCash;
};

if (_flagSide5 == east) then{
     [700,0] call HG_fnc_addOrSubCash;
};

if (_flagSide6 == east) then{
     [700,0] call HG_fnc_addOrSubCash;
};

if (_flagSide7 == east) then{
     [700,0] call HG_fnc_addOrSubCash;
};

if (_flagSide8 == east) then{
     [700,0] call HG_fnc_addOrSubCash;
};

if (_flagSide9 == east) then{
     [700,0] call HG_fnc_addOrSubCash;
};

if (_flagSide10 == east) then{
     [4100,0] call HG_fnc_addOrSubCash;
};

if (_flagSide11 == east) then{
     [4800,0] call HG_fnc_addOrSubCash;
};

if (_flagSide12 == east) then{
     [4000,0] call HG_fnc_addOrSubCash;
};