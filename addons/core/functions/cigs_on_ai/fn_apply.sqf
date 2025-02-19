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


private _threshhold = missionNamespace getVariable [QSET(cigsonai_chance), 0];
if (random 1 < _threshhold) exitWith {};

params ["_unit"];

private _sideStr = str side _unit;

private _map = missionNamespace getVariable QGVAR(cigsOnAI_hashmap);
private _selection = _map get _sideStr;

private _package = selectRandom _selection;
private _packageSize = getNumber ( configFile >> "CfgMagazines" >> _package >> "count");
private _remove_amount = floor random _packageSize;

_unit addMagazine [_package, _packageSize - _remove_amount];


private _item = getText ( configFile >> "CfgMagazines" >> _package >> QPVAR(item_glasses) );
private _isSmokeable = getNumber (configFile >> "CfgGlasses" >> _item >> QPVAR(isSmokable) );
// private _isSuckable =  getNumber (configFile >> "CfgGlasses" >> _item >> QPVAR(isSuckable) );


if (_isSmokeable) then {

    _remove_amount = _remove_amount + ceil (random 0.3 * _remove_amount);

    private _lightersCfg = ["LIGHTERS", true] call cigs_core_fnc_getAllItems;
    private _lighterSize = getNumber (_lightersCfg >> "count");
    
    while { _lighterSize < _remove_amount } do { _remove_amount = _remove_amount - _ligherSize };

    _unit addMagazine [configName _lightersCfg, _packageSize - _remove_amount];

};

