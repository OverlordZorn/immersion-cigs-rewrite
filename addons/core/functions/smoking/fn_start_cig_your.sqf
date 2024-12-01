#include "../../script_component.hpp"

/*
* Author: Zorn
* [Description]
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
if !( [_player] call FUNC(hasLighter) ) exitWith {};

[_player] call FUNC(useLighter);
[_player] call FUNC(start_smoking);

