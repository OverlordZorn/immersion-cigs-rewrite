#include "../../script_component.hpp"

/*
* Author: Zorn
* Function to stop smoking
*
* Arguments:
*
* Return Value:
* None
*
* Example:
* ['something', player] call prefix_component_fnc_functionname
*
* Public: No
*/

params ["_player"];
_player setVariable [QPVAR(isSmoking), false, true];
[_unit, QEGVAR(anim,cig_out), 1] call FUNC(anim);
