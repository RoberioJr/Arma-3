/*

    Author: RobérioJr

*/

RDR_Actions = [];

RDR_Actions = RDR_Actions + [player addAction ["<img image='icone\money.paa' size='0.5'/><t color = '#00FF00'>Pegar Dinheiro</t>",RDR_fnc_PegarDinheiro,"",0,false,false,"","!isNull cursorObject && cursorObject distance player < 4 && (typeOf cursorObject IsEqualTo 'Land_Money_F') && (cursorObject getVariable 'grana' select 1)"]];

	