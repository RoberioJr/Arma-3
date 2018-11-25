/*

	Author: RobérioJR
	
	Ajuda Para Editar:
    ctrlShow[ID,false]; - Desativa Botão
	ctrlShow[ID,true]; - Ativa Botão
	_Btn ctrlSetText "TEXTO"; - Coloca Texto No Botão
	_Btn buttonSetAction "SCRIPT/CHAMADA"; - Coloca Ação No Botão
	_Btn ctrlSetTooltip "TEXTO"; - Coloca Descrição No Botão
	
*/

/* Definições */
#define BtnAC 5021
#define BtnSY 5022
#define BtnMS 5023
#define BtnCF 5024
#define BtnDD 5025
#define BtnBA 5026
#define BtnDM 5027
#define BtnDR 5028
#define BtnJP 5029

disableSerialization;

/* Série De Condições */
if (!alive player || dialog) exitWith {};

createDialog "PlayerMenu";

_menu = findDisplay 5020;

_BtnAC = _menu displayCtrl BtnAC;
_BtnSY = _menu displayCtrl BtnSY;
_BtnMS = _menu displayCtrl BtnMS;
_BtnCF = _menu displayCtrl BtnCF;
_BtnDD = _menu displayCtrl BtnDD;
_BtnBA = _menu displayCtrl BtnBA;
_BtnDM = _menu displayCtrl BtnDM;
_BtnDR = _menu displayCtrl BtnDR;
_BtnJP = _menu displayCtrl BtnJP;
 
 /* Definições dos Botões */

 /* Descrições */
_BtnAC ctrlSetTooltip "Menu De Ações";
_BtnSY ctrlSetTooltip "Salvar Dados";
_BtnMS ctrlSetTooltip "Enviar Mensagem";
_BtnCF ctrlSetTooltip "Configurações";

 /* Ações */
 _BtnAC buttonSetAction "[] Spawn RDR_fnc_MenuAnims;";
 _BtnSY buttonSetAction "If (!RDR_SyncTrancado) Then { [0] Spawn RDR_fnc_Sincronizar; [] Spawn RDR_fnc_LockSync; Hint 'Dados Sincronizados'; } Else { Hint 'Aguarde Para Sincronizar Novamente!'; };";
 //_BtnMS buttonSetAction "[2] call RJM_fnc_radio;";
 _BtnCF buttonSetAction "[] Call CHVD_fnc_openDialog;";
 _BtnDD buttonSetAction "[] Spawn RDR_fnc_EnviarDinheiro; _BtnBA = ((findDisplay 5020)displayCtrl 5026); _BtnDM = ((findDisplay 5020)displayCtrl 5027); _BtnBA ctrlSetText Format['R$ %1',RDR_Banco]; _BtnDM ctrlSetText Format['R$ %1',RDR_Grana];";
 _BtnBA ctrlSetText Format["R$ %1",RDR_Banco];
 _BtnDM ctrlSetText Format["R$ %1",RDR_Grana];
 //_BtnDR buttonSetAction "[6] call RJM_fnc_radio;"; //Valor Doar
 
 lbClear _BtnJP;
 _JogadoresProximos = [];
 { if (player distance _x < 7) then {_JogadoresProximos pushBack _x}; } forEach playableUnits;
 {
    if (!isNull _x && alive _x && player distance _x < 10 && !(_x isEqualTo player)) then {
        _BtnJP lbAdd format ["%1",name _x];
        _BtnJP lbSetData [(lbSize _BtnJP)-1,str(_x)];
    };
 } forEach _JogadoresProximos;

  
  

  