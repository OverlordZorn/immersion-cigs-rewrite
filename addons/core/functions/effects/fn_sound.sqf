#include "../../script_component.hpp"

/*
* Author: Zorn
* EH Function to the sound 3d on each client
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

params ["_sound", "_source"];
_source say3D _sound;
