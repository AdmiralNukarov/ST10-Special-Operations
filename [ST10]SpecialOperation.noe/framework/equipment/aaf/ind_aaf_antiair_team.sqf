//////////////////////////////////////////////////////////////////
// Function file for Armed Assault
// Created by: Nuka [www.sealteam10.de]
//////////////////////////////////////////////////////////////////

private['_group','_position','_backpack'];
_group = _this select 0;
_position = _this select 1;
_backpack = _this select 2;

//teamleader
_unit = _group createUnit["I_Soldier_TL_F", _position, [], 0, "NONE"];
[_unit, "leader_g36a1ag36", _backpack]execVM "framework\equipment\aaf\equipment_aaf.sqf";
//antiair titan
_unit = _group createUnit["I_Soldier_AA_F", _position, [], 0, "NONE"];
[_unit, "antiair_g36a1_titan", _backpack]execVM "framework\equipment\aaf\equipment_aaf.sqf";
//rifleman
_unit = _group createUnit["I_soldier_F", _position, [], 0, "NONE"];
[_unit, "rifleman_g36a1", _backpack]execVM "framework\equipment\aaf\equipment_aaf.sqf";
//antiair titan
_unit = _group createUnit["I_Soldier_AA_F", _position, [], 0, "NONE"];
[_unit, "antiair_g36a1_titan", _backpack]execVM "framework\equipment\aaf\equipment_aaf.sqf";


{
	_x setskill 1;
}forEach (units _group);