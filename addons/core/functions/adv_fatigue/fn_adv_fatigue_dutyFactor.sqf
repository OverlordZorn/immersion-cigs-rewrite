#include "../../script_component.hpp"

/*
* Author: Zorn
* Function to be used for advanced fatuige
*
* Arguments:
*
* Return Value:
* Duty Factor as Number
*
* Example:
* ['something', player] call prefix_component_fnc_functionname
*
* Public: No
*/

params ["_player"];

linearConversion [0, 1000, _player getVariable [QPVAR(recentPuffs), 0], 1, 3, true];



// max time 330

// avg a puff every 35 sec

330 / 35 = 9