#include "../../script_component.hpp"

/*
* Author: Zorn
* Checks if the unit can start smoking
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



!(_unit getVariable [QPVAR(isSmoking), false])
&& 
{
    !(_unit getVariable [QPVAR(isSucking), false])
    &&
    {
        getNumber (configFile >> "CfgGlasses" >> goggles _unit >> QPVAR(isSmokable)) == 1
        ||
        {
            getNumber (configFile >> "CfgWeapons" >> hmd _unit >> QPVAR(isSmokable)) == 1
        }
    }
}
