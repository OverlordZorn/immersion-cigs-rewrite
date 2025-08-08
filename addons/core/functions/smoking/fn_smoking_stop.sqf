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
* ['something', player] call cigs_core_fnc_smoking_stop;
*
* Public: No
*/

params ["_unit", "_smokeData"];

if (_unit getVariable [QPVAR(isSmoking), false] ) then { _unit setVariable [QPVAR(isSmoking), false, true] };

private _isAwake = lifeState _unit in ["HEALTHY", "INJURED"];
private _isBurning = _unit getVariable ["ace_fire_intensity", 0] > 0;
if ( _isAwake && (!_isBurning) ) then { [_unit, QEGVAR(anim,cig_out), 1] call FUNC(anim); };

private _vanish = switch (true) do {
    case (_isBurning): { true };
    case (_isAwake): { selectRandom [false, true] };
    default { false };
};

[_unit, _smokeData, _vanish] call FUNC(drop_cig);

_unit setVariable [QPVAR(smokeData), nil];
