#include "../../script_component.hpp"

/*
* Author: Zorn
* Function to check if the user has a lighter
*
* Arguments:
*
* Return Value:
* None
*
* Example:
* ['something', _player] call prefix_component_fnc_functionname
*
* Public: No
*/

params ["_player"];

_return = switch (true) do {
    case (magazines _player findIf { getNumber (configFile >> "CfgMagazines" >> _x >> QPVAR(isLighter) ) == 1}  >= 0): { true };     //   finite lighter
    case (    items _player findIf { getNumber (configFile >> "CfgWeapons"   >> _x >> QPVAR(isLighter) ) == 1}  >= 0): { true };     // infinite lighter
    default { false };
};
_return
