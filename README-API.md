# Readme for Mission and Mod Makers


## Public API Keys

| Event Key | Parameters | Locality | Type | Description |
|--------|--------|--------|--------|--------|
| `cigs_core_eh_smoking_local` | _unit, _currentTime, _currentItem, _itemType | Local | Listen | Smoking Loop |
| `cigs_core_eh_smoking_server` | _unit, _currentTime, _currentItem, _itemType | Server | Listen | Smoking Loop |
| `cigs_core_eh_sucking_local` | _unit, _currentTime, _currentItem, _itemType | Local | Listen | Sucking Loop |
| `cigs_core_eh_sucking_server` | _unit, _currentTime, _currentItem, _itemType | Server | Listen | Sucking Loop |
| `cigs_core_eh_useLighter_local` | _unit, _className, _type | Local | Listen | Using a Lighter |
| `cigs_core_eh_useLighter_server` | _unit, _className, _type | Server | Listen | Using a Lighter |
| `cigs_core_eh_eatCig_local` | _unit, _item, _slot | Local | Listen | Eating a Cigarette |
| `cigs_core_eh_eatCig_server` | _unit, _item, _slot | Server | Listen | Eating a Cigarette |


## Useful Functions
- `[_unit] call cigs_core_fnc_start_smoking;` - Lets a Unit - AI or Players - Start Smoking - Requires Smokeable Item in Glasses or HMD Slot
- `["PACKAGES"] call cigs_core_fnc_getAllItems;` - To retrieve all Packages classnames
- `["LIGHTERS"] call cigs_core_fnc_getAllItems;` - To retrieve all Lighters classnames
- `["ALL"] call cigs_core_fnc_getAllItems;` - To retrieve Both
