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

params ["_unit", "_itemType", "_currentItem", "_currentTime", "_maxTime"];



// Fail/Break/Exit Conditions => If this Function will return true, it will interrupt the smokeing
(
    // if the unit is alive and awake
    lifeState _unit in ["HEALTHY", "INJURED"]
    &&
    {
        // if the unit isnt smokeing
        _unit getVariable [QPVAR(isSmoking), false]
        &&
        {
            // If the current smokable isnt smokable
            switch (_itemType) do {
                case "GOGGLES": { getNumber (configFile >> "CfgGlasses" >> _currentItem >> QPVAR(isSmokable)) == 1 };
                case "HMD": { getNumber (configFile >> "CfgWeapons" >> _currentItem >> QPVAR(isSmokable)) == 1 };
                default { false };
            }
            &&
            {
                // If the smokeingTime exeeced max succ time
                _currentTime <= _maxTime
                &&
                {
                    // if the actual gear isnt the expected smokable
                    switch (_itemType) do {
                        case "GOGGLES": { _currentItem == goggles _unit };
                        case "HMD":     { _currentItem == hmd     _unit };
                        default { false };
                    };
                }
            }
        }
    }
)