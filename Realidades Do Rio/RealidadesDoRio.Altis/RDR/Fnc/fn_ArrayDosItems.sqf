/*

    Author: RobérioJR

*/

Private ['_TempArray','_TempVar'];

WaitUntil {(!IsNil "RDR_ArmasCfg")};
_TempArray = [];
{
    _TempVar = (_x Select 0);
	_TempArray pushBack _TempVar;
} ForEach RDR_ArmasCfg;

RDR_Armas = _TempArray;

_TempArray = [];
{
    _TempVar = (_x Select 0);
	_TempArray pushBack _TempVar;
} ForEach RDR_PentesCfg;

RDR_Pentes = _TempArray;

_TempArray = [];
{
    _TempVar = (_x Select 0);
	_TempArray pushBack _TempVar;
} ForEach RDR_AcessoriosCfg;

RDR_Acessorios = _TempArray;

_TempArray = [];
{
    _TempVar = (_x Select 0);
	_TempArray pushBack _TempVar;
} ForEach RDR_VeiculosCFG;

RDR_Veiculos = _TempArray;



