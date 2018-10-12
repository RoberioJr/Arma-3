/*

    Author: RobérioJR & Tonic

*/

disableSerialization;
["",0,0.2,10,0,0,8] spawn BIS_fnc_dynamicText;

createDialog "RscDisplayWelcome";

_display = findDisplay 999999;
_text1 = _display displayCtrl 1100;
_buttonSpoiler = _display displayCtrl 2400;
_textSpoiler = _display displayCtrl 1101;
_text2 = _display displayCtrl 1102;

_Mensagem = "";
_Mensagem = _Mensagem + "<t align='center' size='5' color='#C0BEBE' shadow='0'>A3 Domination</t><br /><br />";
_Mensagem = _Mensagem + "Domination é Um Novo Modo De Jogo Sendo Desenvolvido Por RobérioJR.<br /><br />";
_Mensagem = _Mensagem + "Alguns Controles:<br /><br />";
_Mensagem = _Mensagem + "<a color='#00DFFF'>•</a> Shift + O: <a color='#56BDD6'>Fones De Ouvido</a><br />";
_Mensagem = _Mensagem + "<a color='#00DFFF'>•</a> Shift + H: <a color='#56BDD6'>Colocar Arma No Coldre</a><br />";
_Mensagem = _Mensagem + "<a color='#00DFFF'>•</a> U: <a color='#56BDD6'>Destrancar Ou Trancar Veiculo </a><br />";
_Mensagem = _Mensagem + "<a color='#00DFFF'>•</a> Y: <a color='#56BDD6'>Configurações De Renderização</a><br />";
_Mensagem = _Mensagem + "<a color='#00DFFF'>•</a> ASPAS: <a color='#56BDD6'>Menu Do Jogador (EM BREVE)</a><br />";
_Mensagem = _Mensagem + "Obrigado Por Jogar Em Nosso Servidor, <a color='#B000FF'>A3 Domination.</a><br />";
_Mensagem = _Mensagem + "Tenha Um Bom Jogo!";

_text1 ctrlSetStructuredText (parseText _Mensagem);

_positionText1 = ctrlPosition _text1;
_yText1 = _positionText1 select 1;
_hText1 = ctrlTextHeight _text1;
_text1 ctrlSetPosition [_positionText1 select 0, _yText1, _positionText1 select 2, _hText1];
_text1 ctrlCommit 0;
_buttonSpoiler ctrlSetFade 1;
_buttonSpoiler ctrlCommit 0;
_buttonSpoiler ctrlEnable false;
_textSpoiler ctrlSetFade 1;
_textSpoiler ctrlCommit 0;
_text2 ctrlSetFade 1;
_text2 ctrlCommit 0;
