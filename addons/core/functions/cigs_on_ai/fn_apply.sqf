#include "../../script_component.hpp"

/*
* Author: Zorn
* Function to add the items to an individual unit
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

if (isNull _unit) exitWith {};
if (isPlayer _unit) exitWith {};

if !( SET(cigsonai_enable) ) exitWith {};
if ( random 1 > SET(cigsonai_chance) ) exitWith {};

private _code = {
    params ["_unit"];

    private _map = missionNamespace getVariable QGVAR(cigsOnAI_hashmap);
    
    private _package = selectRandom (_map get str side _unit);
    private _packageSize = getNumber ( configFile >> "CfgMagazines" >> _package >> "count");

    private _remove_amount = floor random _packageSize;

    _unit addMagazine [_package, _packageSize - _remove_amount];


    private _item = getText ( configFile >> "CfgMagazines" >> _package >> QPVAR(item_glasses) );
    private _isSmokeable = getNumber ( configFile >> "CfgGlasses" >> _item >> QPVAR(isSmokable) ) == 1;

    if (_isSmokeable) then {
        _remove_amount = _remove_amount + ceil (random 0.3 * _remove_amount);
        private _lighterCfg = selectRandom (["LIGHTERS", true] call cigs_core_fnc_getAllItems);
        private _lighterSize = getNumber (_lighterCfg >> "count");
        while { _lighterSize < _remove_amount } do { _remove_amount = _remove_amount - _lighterSize };
        _unit addMagazine [configName _lighterCfg, _lighterSize - _remove_amount];
    };
};

[_code, [_unit], SET(cigsonai_delay) min 1] call CBA_fnc_waitAndExecute;

