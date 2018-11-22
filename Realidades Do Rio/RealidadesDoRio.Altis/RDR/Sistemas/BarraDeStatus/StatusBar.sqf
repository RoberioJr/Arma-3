Private ['_rscLayer','_WestplayHUD','_EastplayHUD','_IndepplayHUD','_damage','_FpsHud','_Dinheiro','_Kills'];

waitUntil {!(isNull (findDisplay 46))};
waitUntil {JogadorPronto};
disableSerialization;
_rscLayer = "RDR_statusbar" call BIS_fnc_rscLayer;
_rscLayer cutRsc["RDR_statusbar","PLAIN"];
[] spawn {
uiSleep 2;
 while {true} do {
 uiSleep 1;
 if(isNull ((uiNamespace getVariable "RDR_statusbar")displayCtrl 10713)) then {
    diag_log "Erro Na Barra De Status, Criando-a Novamente...";
    disableSerialization;
    _rscLayer = "RDR_statusbar" call BIS_fnc_rscLayer;
    _rscLayer cutRsc["RDR_statusbar","PLAIN"];
 };

//Setar Variaveis e Valores das Mesmas
_WestplayHUD = west countSide playableUnits; //1
_EastplayHUD = east countSide playableUnits; //2
_IndepplayHUD = independent countSide playableUnits; //3
_damage = round ((1 - (damage player)) * 100); //4
_FpsHud = round (diag_fps); //5
_Dinheiro = RDR_Grana; //6

((uiNamespace getVariable "RDR_statusbar")displayCtrl 10713)ctrlSetStructuredText parseText
 format["<t shadow='1' shadowColor='#000000'>
 <img size='1.0' shadowColor='#000000' image='Texturas\azul.paa'/>%1
 <img size='1.0' shadowColor='#000000' image='Texturas\vermelho.paa'/>%2
 <img size='1.0' shadowColor='#000000' image='Texturas\verde.paa'/>%3
 <img size='1.2' shadowColor='#000000' image='Texturas\health.paa'/>%4
 <img size='1.1' shadowColor='#000000' image='Texturas\fps.paa'/>%5
 <img size='1.1' shadowColor='#000000' image='Texturas\money.paa'/>%6
 </t>",_WestplayHUD,_EastplayHUD,_IndepplayHUD, _damage, _FpsHud, _Dinheiro];
 };
};

