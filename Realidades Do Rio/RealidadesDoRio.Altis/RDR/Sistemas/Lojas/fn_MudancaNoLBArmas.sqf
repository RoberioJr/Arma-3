/*

    Author: RobérioJR

*/

_Arma = lbData [5001,(lbCurSel 5001)];
_PrecoPent = lbValue [5002,(lbCurSel 5002)];
_PrecoArma = lbValue [5001,(lbCurSel 5001)];
_PrecoAces = lbValue [5012,(lbCurSel 5012)];
//_Item = call BIS_fnc_compatibleItems;

If (IsNil "_PrecoPent") Then { _PrecoPent = ""; };
If (IsNil "_PrecoArma") Then { _PrecoArma = ""; };
If (IsNil "_PrecoAces") Then { _PrecoAces = ""; };

_menu = findDisplay 5000;
_LstS = _menu displayCtrl 5002;
_GrnP = _menu displayCtrl 5007;
_InfU = _menu displayCtrl 5008;
_InfD = _menu displayCtrl 5009;
_InfA = _menu displayCtrl 5010;

lbClear _LstS;
 {
    _Nome = getText (configFile >> "CfgMagazines" >> (_x Select 0) >> "displayName");
	_Icon = getText (configFile >> "CfgMagazines" >> (_x Select 0) >> "picture");
	_Pent = getArray (configFile >> "CfgWeapons" >> _Arma >> "magazines");
	_Clas = (_x Select 0);
	_Prec = (_x Select 1);
	if (_Clas in _Pent) Then {
        _LstS LbAdd Format['%1',_Nome];
	    _LstS lbSetPicture [(lbSize _LstS)-1, _Icon];
		_LstS lbSetPictureColor [(lbSize _LstS)-1, [1, 1, 1, 1]];
	    _LstS lbSetData [(lbSize _LstS)-1, _Clas];
	    _LstS lbSetValue [(lbSize _LstS)-1, _Prec];
	};
 } ForEach RDR_PentesCfg;


_InfU ctrlSetText Format["Preço: %1",_PrecoArma];
_InfD ctrlSetText Format["Preço: %1",_PrecoPent];
_InfA ctrlSetText Format["Preço: %1",_PrecoAces];
_GrnP ctrlSetText Format["R$%1",RDR_Grana];