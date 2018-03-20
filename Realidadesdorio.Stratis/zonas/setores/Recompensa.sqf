params[ "_sector", "_owner" ];

while {true} do{
     if!( _owner isEqualTo sideUnknown ) then {
	     [700,0] remoteExec [ "HG_fnc_addOrSubCash", _owner ];
		 hintSilent parseText format ["<t size='3.4' color='#ff0000' shadow='0'>PAGAMENTO POR ZONAS</t> <t size='1.2'> Você recebeu um pagamento por cada Zona Independente conquistada </t>"];
	     sleep 600;
    };
};