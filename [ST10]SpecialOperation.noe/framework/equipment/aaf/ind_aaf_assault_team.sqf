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
//automaticrifleman
_unit = _group createUnit["I_Soldier_AR_F", _position, [], 0, "NONE"];
[_unit, "lmg_mg36a1", _backpack]execVM "framework\equipment\aaf\equipment_aaf.sqf";
//grenadier
_unit = _group createUnit["I_Soldier_GL_F", _position, [], 0, "NONE"];
[_unit, "grenadier_g36a1ag36", _backpack]execVM "framework\equipment\aaf\equipment_aaf.sqf";

//grenadier
_unit = _group createUnit["I_Soldier_GL_F", _position, [], 0, "NONE"];
[_unit, "grenadier_g36a1ag36", _backpack]execVM "framework\equipment\aaf\equipment_aaf.sqf";
//automaticrifleman
_unit = _group createUnit["I_Soldier_AR_F", _position, [], 0, "NONE"];
[_unit, "lmg_mg36a1", _backpack]execVM "framework\equipment\aaf\equipment_aaf.sqf";
//grenadier
_unit = _group createUnit["I_Soldier_GL_F", _position, [], 0, "NONE"];
[_unit, "grenadier_g36a1ag36", _backpack]execVM "framework\equipment\aaf\equipment_aaf.sqf";


{
	_x setskill 1;
}forEach (units _group);