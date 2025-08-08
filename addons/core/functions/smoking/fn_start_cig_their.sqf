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
* ['something', player] call cigs_core_fnc_start_cig_their;
*
* Public: No
*/  

params ["_target", "_player"];

_player playActionNow "PutDown";
[_player] call FUNC(useLighter);

if (isPlayer _target) then { [QGVAR(EH_notify), [format [LLSTRING(gave_fire), name _player], 1], _target] call CBA_fnc_targetEvent; };

[QGVAR(EH_smoking_start), [_target], _target] call CBA_fnc_targetEvent;
