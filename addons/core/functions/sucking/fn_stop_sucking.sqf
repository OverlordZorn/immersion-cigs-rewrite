#include "../../script_component.hpp"

/*
* Author: Zorn
* Function that will stop the suck.
*
* Arguments:
*
* Return Value:
* None
*
* Example:
* ['something', player] call cigs_core_fnc_stop_Sucking;
*
* Public: No
*/


params ["_unit"];
_unit setVariable [QPVAR(isSucking), false, true];
