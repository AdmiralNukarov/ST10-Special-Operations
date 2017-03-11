//////////////////////////////////////////////////////////////////
// Function file for Armed Assault
// Created by: Nuka [www.sealteam10.de]
//////////////////////////////////////////////////////////////////


private['_group','_position','_backpack'];
_group = _this select 0;
_position = _this select 1;
_backpack = _this select 2;

//squadleader
_unit = _group createUnit["I_Soldier_SL_F", _position, [], 0, "NONE"];
[_unit, "leader_g36a1ag36", _backpack]execVM "framework\equipment\aaf\equipment_aaf.sqf";
//medic
_unit = _group createUnit["I_medic_F", _position, [], 0, "NONE"];
[_unit, "medic_g36a1", _backpack]execVM "framework\equipment\aaf\equipment_aaf.sqf";

//teamleader
_unit = _group createUnit["I_Soldier_TL_F", _position, [], 0, "NONE"];
[_unit, "leader_g36a1ag36", _backpack]execVM "framework\equipment\aaf\equipment_aaf.sqf";
//antitank nlaw
_unit = _group createUnit["I_Soldier_LAT_F", _position, [], 0, "NONE"];
[_unit, "antitank_g36a1_nlaw", _backpack]execVM "framework\equipment\aaf\equipment_aaf.sqf";
//rifleman
_unit = _group createUnit["I_soldier_F", _position, [], 0, "NONE"];
[_unit, "rifleman_g36a1", _backpack]execVM "framework\equipment\aaf\equipment_aaf.sqf";
//antitank nlaw
_unit = _group createUnit["I_Soldier_LAT_F", _position, [], 0, "NONE"];
[_unit, "antitank_g36a1_nlaw", _backpack]execVM "framework\equipment\aaf\equipment_aaf.sqf";

//teamleader
_unit = _group createUnit["I_Soldier_TL_F", _position, [], 0, "NONE"];
[_unit, "leader_g36a1ag36", _backpack]execVM "framework\equipment\aaf\equipment_aaf.sqf";
//antitank titan
_unit = _group createUnit["I_Soldier_AT_F", _position, [], 0, "NONE"];
[_unit, "antitank_g36a1_titan", _backpack]execVM "framework\equipment\aaf\equipment_aaf.sqf";
//rifleman
_unit = _group createUnit["I_soldier_F", _position, [], 0, "NONE"];
[_unit, "rifleman_g36a1", _backpack]execVM "framework\equipment\aaf\equipment_aaf.sqf";
//antitank titan
_unit = _group createUnit["I_Soldier_AT_F", _position, [], 0, "NONE"];
[_unit, "antitank_g36a1_titan", _backpack]execVM "framework\equipment\aaf\equipment_aaf.sqf";

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





/*
I_Soldier_GL_F
I_crew_F
I_Soldier_AR_F
I_Soldier_AA_F
I_Soldier_AT_F
I_medic_F
I_soldier_F
I_Soldier_LAT_F
I_Soldier_M_F
I_Soldier_TL_F
I_Soldier_SL_F
*/