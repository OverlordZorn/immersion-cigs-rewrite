#include "../../script_component.hpp"

/*
* Author: Zorn
* Checks if the unit can stop smoking
*
* Arguments:
*
* Return Value:
* None
*
* Example:
* ['something', player] call cigs_core_fnc_canStopSmoking;
*
* Public: No
*/

params ["_unit"];

(_unit getVariable [QPVAR(isSmoking), false])
&& 
{
    getNumber (configFile >> "CfgGlasses" >> goggles _unit >> QPVAR(isSmokable)) == 1
    ||
    {
        getNumber (configFile >> "CfgWeapons" >> hmd _unit >> QPVAR(isSmokable)) == 1
    }
}
