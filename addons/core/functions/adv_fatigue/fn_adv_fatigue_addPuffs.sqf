#include "../../script_component.hpp"

/*
* Author: Zorn
* Fnc 
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


private ["_unit"];

private _puffs = _unit getVariable [QPVAR(recentPuffs), "404"];

if (_puffs isEqualTo "404") then {
    // If no previous puffs have been found, set it to 0 and 
    _puffs = 0;

    private _parameters = [_unit];
    private _codeToRun = {
        params ["_unit"];
        _puffs = _unit getVariable [QPVAR(recentPuffs), 0];
        _unit setVariable [QPVAR(recentPuffs), _puffs - 1];
    };
    private _condition = {
        params ["_unit"];
        _unit getVariable [QPVAR(recentPuffs), 0] > 0;
    };

    private _exitCode = {
        params ["_unit"];
        _unit setVariable [QPVAR(recentPuffs), nil];
    };




    [
        CBA_fnc_addPerFrameHandler,
        [
            {
                params ["_args", "_handle"];
                _args params ["_codeToRun", "_parameters", "_exitCode", "_condition"];

                if (_parameters call _condition) then {
                    _parameters call _codeToRun;
                } else {
                    _handle call CBA_fnc_removePerFrameHandler;
                    _parameters call _exitCode;
                };
            },
            60,
            [_codeToRun, _parameters, _exitCode, _condition]
        ],
        60 * missionNamespace getVariable [QSET(adv_fatigue_modifier), 1]
    ] call CBA_fnc_waitAndExecute;

};

_unit setVariable [QPVAR(recentPuffs), _puffs + 1];
