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

Private ['_menu','_LstB','_CmpP','_GrnP','_Nome','_Icon','_Clas','_Prec'];

if (!alive player || dialog) exitWith {};

disableSerialization;

createDialog "RDR_LojaDeVeiculos";

_menu = findDisplay 5025;

_LstB = _menu displayCtrl 5030;
_CmpP = _menu displayCtrl 5031;
_GrnP = _menu displayCtrl 5029;

 _CmpP buttonSetAction "[] call RDR_fnc_ComprarVeiculo;";
 _GrnP ctrlSetText Format["R$ %1",RDR_Grana];


 //LB Principal
 lbClear _LstB;
 {
    _Nome = getText (configFile >> "CfgVehicles" >> (_x Select 0) >> "displayName");
	_Icon = getText (configFile >> "CfgVehicles" >> (_x Select 0) >> "picture");
	_Clas = (_x Select 0);
	_Prec = (_x Select 1);
    _LstB LbAdd Format['%1',_Nome];
	_LstB lbSetPicture [(lbSize _LstB)-1, _Icon];
	_LstB lbSetPictureColor [(lbSize _LstB)-1, [1, 1, 1, 1]];
	_LstB lbSetData [(lbSize _LstB)-1, _Clas];
	_LstB lbSetValue [(lbSize _LstB)-1, _Prec];
 } ForEach RDR_VeiculosCFG;




