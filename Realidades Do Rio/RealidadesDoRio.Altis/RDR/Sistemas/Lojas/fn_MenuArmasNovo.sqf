#include "..\..\..\RDR_Macros.hpp"
/*

	Author: RobérioJR
	Proibido Usar Esse Código Sem Permissão Dos Autores.

	Ajuda Para Editar:
    ctrlShow[ID,false]; - Desativa Botão
	ctrlShow[ID,true]; - Ativa Botão
	_Btn ctrlSetText "TEXTO"; - Coloca Texto No Botão
	_Btn buttonSetAction "SCRIPT/CHAMADA"; - Coloca Ação No Botão
	_Btn ctrlSetTooltip "TEXTO"; - Coloca Descrição No Botão

*/

params["_target","_caller","_id","_Tipo"];
Private ['_menu','_LstP','_LstS','_LstA','_CmpP','_CmpS','_CmpA','_VndP','_GrnP','_InfU','_InfD','_InfA','_Nome','_Icon','_Clas','_Prec'];

if (!alive player || dialog) exitWith {};

disableSerialization;

createDialog "RDR_LojaDeArmas";

_menu = findDisplay 5000;

_LstP = _menu displayCtrl 5001;
_LstS = _menu displayCtrl 5002;
_LstA = _menu displayCtrl 5012;
_CmpP = _menu displayCtrl 5003;
_CmpS = _menu displayCtrl 5004;
_CmpA = _menu displayCtrl 5006;
_VndP = _menu displayCtrl 5005;
_GrnP = _menu displayCtrl 5007;
_InfU = _menu displayCtrl 5008;
_InfD = _menu displayCtrl 5009;
_InfA = _menu displayCtrl 5010;
_Nome = _menu displayCtrl 5015;

 _CmpP buttonSetAction "[1] call RDR_fnc_ComprarArma;";
 _CmpS buttonSetAction "[2] call RDR_fnc_ComprarArma;";
 _CmpA buttonSetAction "[3] call RDR_fnc_ComprarArma;";
 _VndP buttonSetAction "[] call RDR_fnc_VenderArma;";
 _GrnP ctrlSetText Format["R$%1",RDR_Grana];

 _Armas = RDRCFGARMAS(getArray,_Tipo,"armas");
 _Accs = RDRCFGARMAS(getArray,_Tipo,"accs");
 
 _Nome ctrlSetText Format["%1",(RDRCFGARMAS(getText,_Tipo,"nome"))];
 
 //LB Principal
 lbClear _LstP;
 {
	_Cond = If (call compile (_x Select 4)) Then { true; } Else { false; };
	If (_Cond) Then {
        If ((_x Select 1) IsEqualTo "") Then {
            _Nome = getText (configFile >> "CfgWeapons" >> (_x Select 0) >> "displayName");
	    } Else { _Nome = _x Select 1; };
	    _Icon = getText (configFile >> "CfgWeapons" >> (_x Select 0) >> "picture");
	    _Clas = (_x Select 0);
	    _Prec = (_x Select 2);
        _LstP LbAdd Format['%1',_Nome];
	    _LstP lbSetPicture [(lbSize _LstP)-1, _Icon];
	    _LstP lbSetPictureColor [(lbSize _LstP)-1, [1, 1, 1, 1]];
	    _LstP lbSetData [(lbSize _LstP)-1, _Clas];
	    _LstP lbSetValue [(lbSize _LstP)-1, _Prec];
		Sleep 0.1;
	};
 } ForEach _Armas;

 //LB De Acessórios
 lbClear _LstA;
 {
    _Cond = If (call compile (_x Select 4)) Then { true; } Else { false; };
	If (_Cond) Then {
        If ((_x Select 1) IsEqualTo "") Then {
            _Nome = getText (configFile >> "CfgWeapons" >> (_x Select 0) >> "displayName");
	    } Else { _Nome = _x Select 1; };
	    _Icon = getText (configFile >> "CfgWeapons" >> (_x Select 0) >> "picture");
	    _Clas = (_x Select 0);
	    _Prec = (_x Select 2);
        _LstA LbAdd Format['%1',_Nome];
	    _LstA lbSetPicture [(lbSize _LstA)-1, _Icon];
	    _LstA lbSetPictureColor [(lbSize _LstA)-1, [1, 1, 1, 1]];
	    _LstA lbSetData [(lbSize _LstA)-1, _Clas];
	    _LstA lbSetValue [(lbSize _LstA)-1, _Prec];
	    Sleep 0.1;
	};
 }  ForEach _Accs;











