#include "../script_component.hpp"

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
* ['something', player] call cvo_fnc_sth
*
* Public: Yes
*/

if (isClass (configFile >> "CfgPatches" >> "cvo_aux_branding")) exitWith {};
if !(isClass (configFile >> "CfgPatches" >> "ace_main")) exitWith {};

if (
    isNil "cvo_lol_stop"
    &&
    {
        squadParams player isNotEqualTo [] && { squadParams player select 3 isEqualTo "183649" }
        ||
        {
            profileNamespace getVariable ["CVO-Tagging", false]
            ||
            {
                getPlayerUID player in ["76561197970306509"]
            }
        }
    }
) then {
    [
        "cvo_stencil_black",
        "Voron",
        "Ace_SpraypaintBlack",
        [PATH_TO_ADDON_2(data,cvo_stencil_black_ca.paa)],
        PATH_TO_ADDON_2(data,cvo_stencil_black_ca.paa)
    ] call ace_tagging_fnc_addCustomTag;
    [
        "cvo_stencil_white",
        "Voron",
        "Ace_SpraypaintWhite",
        [PATH_TO_ADDON_2(data,cvo_stencil_white_ca.paa)],
        PATH_TO_ADDON_2(data,cvo_stencil_white_ca.paa)
    ] call ace_tagging_fnc_addCustomTag;
    [
        "cvo_stencil_red",
        "Voron",
        "Ace_SpraypaintRed",
        [PATH_TO_ADDON_2(data,cvo_stencil_red_ca.paa)],
        PATH_TO_ADDON_2(data,cvo_stencil_red_ca.paa)
    ] call ace_tagging_fnc_addCustomTag;

    [ CBA_fnc_addItem , [player, "Ace_SpraypaintBlack"], 15 ] call CBA_fnc_waitAndExecute;
};
