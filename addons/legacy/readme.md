# Cigs Legacy Addon

## What does it do

### Update Personal Loadouts
When the assosiated CBA Setting is enabled, code will be everytime the ace arsenal or vanilla arsenal is opened.
Said code will itterate over the players saved loadouts and replace legacy classnames with their new classname.

### Update Missions Default Loadouts

When ACE Default Loadouts are defined within the mission itself, the missionmaker can run the following code from the debug console in the editor:

`[] call cigs_legacy_fnc_update_defaultLoadouts;`

This will itterate over the stored default loadouts within the missionNamespace and replace legacy calssnames with their new counterpart.

Once the mission has been saved afterwards, this change will be permanent.
