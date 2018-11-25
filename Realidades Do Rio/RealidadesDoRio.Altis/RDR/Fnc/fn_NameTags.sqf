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

_ui = uiNamespace getVariable ["RDR_HUD_nameTags",displayNull];
if (isNull _ui) then {
    500 cutRsc["RDR_HUD_NameTags","PLAIN"];
    _ui = uiNamespace getVariable ["RDR_HUD_nameTags",displayNull];
};

_units = nearestObjects[(visiblePosition player),["Man"],30];
_units = _units - [player];

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
        if (count _sPos > 1 && {_distance < 30}) then {
			If ((Side _x) In [east,independent,west,civilian] && (IsPlayer _x)) Then {
				Switch (Side _x) Do {
				    Case west: 
					{
                        _text = format ["<t color='#2E64FE'>%1</t>",name _x];			
					};
					Case east:
					{
					    _text = format ["<t color='#FE2E2E'>%1</t>",name _x];
					};
					Case independent: 
					{
					    _text = format ["<t color='#58FA58'>%1</t>",name _x];
					};
					Case civilian:
					{
					    _text = format ["<t color='#8000FF'>%1</t>",name _x];
					};
				};
				//_text = format ["<t color='#00FF00'>%1</t>",name _x]; //BRANCO
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