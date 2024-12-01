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

ZRN_LOG_1(_this);

params ["_unit", "_player"];

ZRN_LOG_2(_unit,_player);

if !([_player] call FUNC(hasLighter)) exitWith {};
_player playActionNow "PutDown";

[_player] call FUNC(useLighter);
[QGVAR(EH_notify), [format [LLSTRING(gave_fire), name _player], 1], _unit] call CBA_fnc_targetEvent;
[QGVAR(EH_start_cig), [_unit],_unit] call CBA_fnc_targetEvent; // raises event local