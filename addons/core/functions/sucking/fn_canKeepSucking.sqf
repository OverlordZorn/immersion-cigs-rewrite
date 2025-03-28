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


// Fail/Break/Exit Conditions => If this Function will return false, it will interrupt the smoking
(
    // if the unit is dead
    lifeState _unit in ["HEALTHY", "INJURED"]
    &&
    {
        // if the unit isnt sucking
        (_unit getVariable [QPVAR(isSucking), false])

        &&
        {
            // If current item is consumable
            switch (_itemType) do {
                case "GOGGLES": { getNumber (configFile >> "CfgGlasses" >> _currentItem >> QPVAR(isSuckable)) == 1 };
                case "HMD": { getNumber (configFile >> "CfgWeapons" >> _currentItem >> QPVAR(isSuckable)) == 1 };
                default { false };
            }
            &&
            {
                // If the suckingTime exeeced max succ time
                _currentTime <= _maxTime
                &&
                {
                    // if the actual gear still the indented item
                    switch (_itemType) do {
                        case "GOGGLES": { _currentItem == goggles _unit };
                        case "HMD":     { _currentItem == hmd     _unit };
                        default { false };
                    }
                }
            }
        }
    }
)
