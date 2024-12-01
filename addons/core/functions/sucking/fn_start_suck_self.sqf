#include "../../script_component.hpp"

/*
* Author: Zorn
* Function to start sucking the lollipop
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

[_player] call FUNC(start_sucking);

