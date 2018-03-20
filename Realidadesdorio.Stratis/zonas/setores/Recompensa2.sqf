params[ "_sector", "_owner" ];

while {true} do{
     if!( _owner isEqualTo sideUnknown ) then {
	     [5000,0] remoteExec [ "HG_fnc_addOrSubCash", _owner ];
		 hintSilent parseText format ["<t size='3.4' color='#ff0000' shadow='0'>PAGAMENTO POR FAVELAS</t> <t size='1.2'> Você recebeu um pagamento de 5000 por cada favela conquistada </t>"];
	     sleep 600;
    };
};