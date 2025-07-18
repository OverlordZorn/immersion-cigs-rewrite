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
diag_log format ['[CVO](debug)(fn_stop_cig) _player: %1', _player];
