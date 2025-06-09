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


params ["_unit"];

if !( SET(adv_fatigue_enabled) && {ace_advanced_fatigue_enabled} ) exitWith {};

private _puffs = _unit getVariable [QPVAR(recent_puffs), -1];


if (_puffs isEqualTo -1) then {
    // If no previous puffs have been found, set it to 0 and
    _puffs = 0;

    private _parameters = _unit;
    private _codeToRun = {
        _puffs = _this getVariable [QPVAR(recent_puffs), 0];
        _puffs = _puffs - 1;

        _this setVariable [QPVAR(recent_puffs), _puffs];
        diag_log format ['[CVO](debug)(decreasing) _puffs: %1', _puffs]; 
    };
    private _condition = {
        _this getVariable [QPVAR(recent_puffs), 0] > 0
    };

    private _exitCode = {
        _this setVariable [QPVAR(recent_puffs), nil];
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
            90,
            [_codeToRun, _parameters, _exitCode, _condition]
        ],
        SET(adv_fatigue_decrease_delay) * 60
    ] call CBA_fnc_waitAndExecute;

};

_puffs = _puffs + 1;

private _roll = 0.25 + random 0.75;
private _threshold = linearConversion [0, 200, _puffs, 0, 1, true ];
private _doesCough = _roll < _threshold;

diag_log format ['[CVO](debug)(fn_adv_fatigue_addPuffs) _puffs: %1 - _roll: %2 - _threshold: %3 - _doesCough: %4', _puffs , _roll ,_threshold, _doesCough];

if (_doesCough) then { [_unit] call FUNC(cough); };


_unit setVariable [QPVAR(recent_puffs), _puffs];
diag_log format ['[CVO](debug)(increasing) _puffs: %1', _puffs];
