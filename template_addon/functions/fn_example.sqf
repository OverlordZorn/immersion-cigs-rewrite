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

ZRN_LOG_3(MAINPREFIX,PREFIX,COMPONENT);
ZRN_LOG_2(localize "STR_mod_author", localize "STR_mod_URL");
ZRN_LOG_3(MAJOR,MINOR,PATCH);

ZRN_LOG_MSG(DID SOMEONE FORGOT TO REPLACE STUFF IN THE TEMPLATE MOD?);
systemChat "DID SOMEONE FORGOT TO REPLACE STUFF IN THE TEMPLATE MOD?";