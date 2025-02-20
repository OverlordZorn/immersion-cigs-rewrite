#include "../../script_component.hpp"

/*
* Author: Zorn
* FNC to process the changes of the Setting
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

["CBA_SettingChanged", {
    params ["_setting", "_value"];

    if !("set_cigsonai_custom_#" in _setting) exitWith {};

    private _arr = _setting splitString "#" select 1 splitString "_";
    private _sideStr = _arr deleteAt 0;
    private _className = _arr joinString "_";

    [_sideStr, _className, _value] call FUNC(hashmap);

}] call CBA_fnc_addEventHandler;

addMissionEventHandler ["EntityCreated", {
	params ["_unit"];

    if !(_unit isKindOf "CAManBase") exitWith {};
    if  (_unit isKindOf "CBA_NamespaceDummy") exitWith {};
    if  (isPlayer _unit) exitWith {};

    [_unit] call FUNC(queue);
}];