// Client Side Smoking Settings
// cba

[
	QSET(smoking_intensity),									//    _setting     - Unique setting name. Matches resulting variable name <STRING>
	"LIST",														//    _settingType - Type of setting. Can be "CHECKBOX", "EDITBOX", "LIST", "SLIDER" or "COLOR" <STRING>
	SETLSTRING(smoking_intensity),
																//    _title       - Display name or display name + tooltip (optional, default: same as setting name) <STRING, ARRAY>
	[LSTRING(set_cat_player),LSTRING(set_cat_habits_smoking)], 	//    _category    - Category for the settings menu + optional sub-category <STRING, ARRAY>
	// 
	[[0.75, 1.00, 1.25], [ LLSTRING(set_smoking_intensity_entry_short), LLSTRING(set_smoking_intensity_entry_normal), LLSTRING(set_smoking_intensity_entry_long) ], 1],										
																//    _valueInfo   - Extra properties of the setting depending of _settingType. See examples below <ANY>
	0,															//    _isGlobal    - 1: all clients share the same setting, 2: setting can't be overwritten (optional, default: 0) <NUMBER>
	{},															//    _script      - Script to execute when setting is changed. (optional) <CODE>
	false														//    _needRestart - Setting will be marked as needing mission restart after being changed. (optional, default false) <BOOL>
] call CBA_fnc_addSetting;

[
	QSET(smoking_frequency),									//    _setting     - Unique setting name. Matches resulting variable name <STRING>
	"LIST",														//    _settingType - Type of setting. Can be "CHECKBOX", "EDITBOX", "LIST", "SLIDER" or "COLOR" <STRING>
	SETLSTRING(smoking_frequency),
																//    _title       - Display name or display name + tooltip (optional, default: same as setting name) <STRING, ARRAY>
	[LSTRING(set_cat_player),LSTRING(set_cat_habits_smoking)], 	//    _category    - Category for the settings menu + optional sub-category <STRING, ARRAY>
	// 
	[[0.66, 1.00, 1.33], [ LLSTRING(set_smoking_frequency_entry_less), LLSTRING(set_smoking_frequency_entry_normal), LLSTRING(set_smoking_frequency_entry_often) ], 1],										
																//    _valueInfo   - Extra properties of the setting depending of _settingType. See examples below <ANY>
	0,															//    _isGlobal    - 1: all clients share the same setting, 2: setting can't be overwritten (optional, default: 0) <NUMBER>
	{},															//    _script      - Script to execute when setting is changed. (optional) <CODE>
	false														//    _needRestart - Setting will be marked as needing mission restart after being changed. (optional, default false) <BOOL>
] call CBA_fnc_addSetting;
