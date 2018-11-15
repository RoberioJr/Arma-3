/*

    Author: Bryan "Tonic" Boardwine
	Edit: RobérioJR

*/

private ["_ui","_units"];
#define iconID 78000
#define scale 0.8

if (visibleMap || {!alive player} || {dialog}) exitWith {
    500 cutText["","PLAIN"];
};

_ui = uiNamespace getVariable ["RJ_HUD_nameTags",displayNull];
if (isNull _ui) then {
    500 cutRsc["RJ_HUD_NameTags","PLAIN"];
    _ui = uiNamespace getVariable ["RJ_HUD_nameTags",displayNull];
};

_units = nearestObjects[(visiblePosition player),["Man"],50];
_units = _units - [player];

Switch (PlayerSide) Do {
    case West: { _Icone = 'Texturas\azul.paa'; };
	case East: { _Icone = 'Texturas\vermelho.paa'; };
	case Independent: {  _Icone = 'Texturas\verde.paa'; };
};

private _index = -1;
{
    private "_text";
    _idc = _ui displayCtrl (iconID + _forEachIndex);
    if (!(lineIntersects [eyePos player, eyePos _x, player, _x]) && alive _x) then {
        _pos = switch (typeOf _x) do {
            default {[visiblePosition _x select 0, visiblePosition _x select 1, ((_x modelToWorld (_x selectionPosition "head")) select 2)+.5]};
        };
        _sPos = worldToScreen _pos;
        _distance = _pos distance player;
        if (count _sPos > 1 && {_distance < 50}) then {
			If ((Side _x) IsEqualTo (Side Player)) Then {
                _text = format ["<t color='#00FF00'><img image='%2' size='1.5'></img></t> %1",name _x,_Icone];
				//_text = format ["<img size='1.2' shadowColor='#000000' image='%2'/>%1",name _x,_Icone];
		    } Else { _text = ""; };
                _idc ctrlSetStructuredText parseText _text;
                _idc ctrlSetPosition [_sPos select 0, _sPos select 1, 0.4, 0.65];
                _idc ctrlSetScale scale;
                _idc ctrlSetFade 0;
                _idc ctrlCommit 0;
                _idc ctrlShow true;
        } else {
            _idc ctrlShow false;
        };
    } else {
        _idc ctrlShow false;
    };
    _index = _forEachIndex;
} forEach _units;
(_ui displayCtrl (iconID + _index + 1)) ctrlSetStructuredText parseText "";