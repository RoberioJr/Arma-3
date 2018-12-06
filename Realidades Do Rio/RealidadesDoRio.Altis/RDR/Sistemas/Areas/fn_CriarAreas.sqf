/*

    Author: RobérioJR

*/

if (!isServer) exitWith {};

_Area = _This Select 0;
_Raio = _This Select 1;
_Ganho = _This Select 2;
_Delay = _This Select 3;

If (IsNil "_Area" || IsNil "_Raio" || IsNil "_Ganho") ExitWith { Diag_Log "Erro Ao Configurar Uma Área!"; };
If (_Raio < 1) ExitWith { Diag_Log "Erro Ao Configurar Uma Área, Raio Menor Que 1!"; };

_PntsBOPE = 0;
_PntsCV = 0;
_PntsPCC = 0;
_PntsCIV = 0;
_MaxPontos = 5;	

_ControladoBOPE = false;
_ControladoCV = false;
_ControladoPCC = false;
_ControladoCIV = false;

 /* Criar Área Sem Dono */
_VarMarcador = Format["%1_%2",_Area,"Cap"];
_Marcador = createMarker [_VarMarcador,(GetMarkerPos _Area)];
_Marcador setMarkerShape "ELLIPSE";
_Marcador setMarkerColor "coloryellow";
_Marcador setMarkerSize [_Raio,_Raio];
_Marcador setMarkerBrush "SOLID";
_VarPonto = Format["%1_%2",_Area,"Ponto"];
_Ponto = createMarker [_VarPonto,(GetMarkerPos _Area)];
_Ponto setMarkerType "mil_dot"; //Ponto "Bolinha"
_Ponto setMarkerColor "coloryellow";
_Ponto setMarkerText "Área Neutra";


SERVER SetVariable [_VarMarcador,"NEUTRO"];

 /* Monitorar Área */
While {true} Do {

    {
	    if (((_x distance (GetMarkerPos _Marcador)) < _Raio) && Alive _x) Then {
		    _Side = Side _x;
			Switch (_Side) Do {
			    case West: 
				{ 
				    _PntsBOPE = _PntsBOPE + 1; _PntsCV = _PntsCV - 1; _PntsPCC = _PntsPCC - 1; _PntsCIV = _PntsCIV - 1; 
			    };
	            case East: 
				{ 
				    _PntsCV = _PntsCV + 1; _PntsBOPE = _PntsBOPE - 1; _PntsPCC = _PntsPCC - 1; _PntsCIV = _PntsCIV - 1;
				};
                case Independent: 
				{ 
				    _PntsPCC = _PntsPCC + 1; _PntsBOPE = _PntsBOPE - 1; _PntsCV = _PntsCV - 1; _PntsCIV = _PntsCIV - 1;
				};
				case Civilian: 
				{ 
				    _PntsCIV = _PntsCIV + 1; _PntsBOPE = _PntsBOPE - 1; _PntsCV = _PntsCV - 1; _PntsPCC = _PntsPCC - 1;
				}; 
			};
		};
		
		If (_PntsBOPE >= _MaxPontos) Then { _PntsBOPE = _MaxPontos; };
		If (_PntsCV >= _MaxPontos) Then { _PntsCV = _MaxPontos; };
		If (_PntsPCC >= _MaxPontos) Then { _PntsPCC = _MaxPontos; };
		If (_PntsCIV >= _MaxPontos) Then { _PntsCIV = _MaxPontos; };
		
		If (_PntsBOPE < 0) Then { _PntsBOPE = 0 };
		If (_PntsCV < 0) Then { _PntsCV = 0 };
		If (_PntsPCC < 0) Then { _PntsPCC = 0 };
		If (_PntsCIV < 0) Then { _PntsCIV = 0 };
		
	} forEach playableUnits;
	
	//If ((_PntsBOPE IsEqualTo _MaxPontos) && !_ControladoBOPE) Then { _ControladoBOPE = True; _ControladoCV = False; _ControladoPCC = False; _ControladoCIV = False; _Marcador setMarkerColor "colorblue"; SERVER SetVariable [_VarMarcador,"BOPE"]; [_VarMarcador,_Ganho,_Delay] Spawn RDR_fnc_RecompensaAreas; };
	//If ((_PntsCV IsEqualTo _MaxPontos) && !_ControladoCV) Then { _ControladoCV = True; _ControladoBOPE = False; _ControladoCIV = False; _ControladoPCC = False; _Marcador setMarkerColor "colorred"; SERVER SetVariable [_VarMarcador,"CV"]; [_VarMarcador,_Ganho,_Delay] Spawn RDR_fnc_RecompensaAreas; };
	//If ((_PntsPCC IsEqualTo _MaxPontos) && !_ControladoPCC) Then { _ControladoPCC = True; _ControladoCIV = False; _ControladoBOPE = False; _ControladoCV = False; _Marcador setMarkerColor "colorgreen"; SERVER SetVariable [_VarMarcador,"PCC"]; [_VarMarcador,_Ganho,_Delay] Spawn RDR_fnc_RecompensaAreas; };
	//If ((_PntsCIV IsEqualTo _MaxPontos) && !_ControladoCIV) Then { _ControladoCIV = True; _ControladoBOPE = False; _ControladoCV = False; _ControladoPCC = False; _Marcador setMarkerColor "colorcivilian"; SERVER SetVariable [_VarMarcador,"CIV"]; [_VarMarcador,_Ganho,_Delay] Spawn RDR_fnc_RecompensaAreas; };
	
	If ((_PntsBOPE IsEqualTo _MaxPontos) && !_ControladoBOPE) Then { _ControladoBOPE = True; _ControladoCV = False; _ControladoPCC = False; _ControladoCIV = False; [_VarMarcador,_VarPonto,"BOPE"] Spawn RDR_fnc_AtualizarArea; [_VarMarcador,_Ganho,_Delay] Spawn RDR_fnc_RecompensaAreas; };
	If ((_PntsCV IsEqualTo _MaxPontos) && !_ControladoCV) Then { _ControladoCV = True; _ControladoBOPE = False; _ControladoCIV = False; _ControladoPCC = False; [_VarMarcador,_VarPonto,"CV"] Spawn RDR_fnc_AtualizarArea; [_VarMarcador,_Ganho,_Delay] Spawn RDR_fnc_RecompensaAreas; };
	If ((_PntsPCC IsEqualTo _MaxPontos) && !_ControladoPCC) Then { _ControladoPCC = True; _ControladoCIV = False; _ControladoBOPE = False; _ControladoCV = False; [_VarMarcador,_VarPonto,"PCC"] Spawn RDR_fnc_AtualizarArea; [_VarMarcador,_Ganho,_Delay] Spawn RDR_fnc_RecompensaAreas; };
	If ((_PntsCIV IsEqualTo _MaxPontos) && !_ControladoCIV) Then { _ControladoCIV = True; _ControladoBOPE = False; _ControladoCV = False; _ControladoPCC = False; [_VarMarcador,_VarPonto,"CIV"] Spawn RDR_fnc_AtualizarArea; [_VarMarcador,_Ganho,_Delay] Spawn RDR_fnc_RecompensaAreas; };
	
    Sleep 4;
};



