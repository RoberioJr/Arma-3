/*

    Author: RobérioJR

*/

params [
    ["_Veiculo",objNull,[objNull]],
    ["_Estado",2,[0,false]]
];

if (isNull _Veiculo) exitWith {};

_Veiculo lock _Estado;