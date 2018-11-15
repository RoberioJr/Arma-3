
params[ "_sector", "_owner", "_Valor" ];

while {true} do{
    if!( _owner isEqualTo sideUnknown ) then {
	    [_Valor,1] remoteExec ["RJ_fnc_AdcSubGrana", _owner];
		hintSilent parseText format ["<t size='3.4' color='#ff0000' shadow='0'>PAGAMENTO POR ZONAS</t> <t size='1.2'> Você recebeu um pagamento por cada Zona Independente conquistada </t>"];
	    sleep 900;
    };
};