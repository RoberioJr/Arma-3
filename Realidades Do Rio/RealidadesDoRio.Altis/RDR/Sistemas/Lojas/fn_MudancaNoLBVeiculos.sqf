/*

    Author: RobérioJR

*/

_Veiculo = lbData [5030,(lbCurSel 5030)];
_Preco = lbValue [5030,(lbCurSel 5030)];

If (IsNil "_Preco") Then { _Preco = ""; };

_menu = findDisplay 5025;

_InfU = _menu displayCtrl 5026;
_InfD = _menu displayCtrl 5027;
_InfT = _menu displayCtrl 5028;
_GrnP = _menu displayCtrl 5029;

_Blindagem = getNumber(configFile >> "CfgVehicles" >> _Veiculo >> "armor");
_VelMaxima = getNumber(configFile >> "CfgVehicles" >> _Veiculo >> "maxSpeed");

_InfU ctrlSetText Format["Preço: %1",_Preco];
_InfD ctrlSetText Format["Blindagem: %1",_Blindagem];
_InfT ctrlSetText Format["Velocidade: %1",_VelMaxima];
_GrnP ctrlSetText Format["R$ %1",RDR_Grana];