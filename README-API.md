# Readme for Mission and Mod Makers


## Public API Keys

| Event Key | Parameters | Locality | Type | Description |
|--------|--------|--------|--------|--------|
| `cigs_core_api_takeFromPack` | _unit, _class_cigpack, _item_glasses, _item_hmd | Local | Listen | Sucking Loop |
| `cigs_core_api_useLighter` | _unit, _className, _type | Local | Listen | Using a Lighter |
| `cigs_core_api_smoking` | _unit, _currentTime, _currentItem, _itemType | Local | Listen | Smoking Loop |
| `cigs_core_api_sucking` | _unit, _currentTime, _currentItem, _itemType | Local | Listen | Sucking Loop |
| `cigs_core_api_eatCig` | _unit, _item, _slot | Local | Listen | Eating a Cigarette |



## Useful Functions
- `[_unit] call cigs_core_fnc_start_smoking;` - Lets a Unit - AI or Players - Start Smoking - Requires Smokeable Item in Glasses or HMD Slot
- `["PACKAGES"] call cigs_core_fnc_getAllItems;` - To retrieve all Packages classnames
- `["LIGHTERS"] call cigs_core_fnc_getAllItems;` - To retrieve all Lighters classnames
- `["ALL"] call cigs_core_fnc_getAllItems;` - To retrieve Both
