//////////////////////////////////////////////////////////////////
// Function file for Armed Assault
// Created by: Nuka [www.sealteam10.de]
//////////////////////////////////////////////////////////////////

//[group, position, backpack]execVM "framework\equipment\jungle\army_squad.sqf";

private["_group","_position","_unit","_backpack"];
_group = _this select 0;
_position = _this select 1;
_backpack = if(count _this > 2) then{_this select 2} else{false};

switch(side _group) do
{
	case WEST:
	{
		//teamleader
		_unit = _group createUnit["B_T_Soldier_SL_F", _position, [], 0, "NONE"];
		[_unit, "jungle_grenadier_m4a1_m203", _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
		//AR / MG
		_unit = _group createUnit["B_T_Soldier_AR_F", _position, [], 0, "NONE"];
		[_unit, ["jungle_automaticrifleman_m249_short_para","jungle_maschinegunner_m60a4"]call BIS_fnc_selectRandom, _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
		//AT
		_unit = _group createUnit["B_T_Soldier_LAT_F", _position, [], 0, "NONE"];
		[_unit, ["jungle_antitank_m4a1_at4_heat","jungle_antitank_m4a1_at4_hedp","jungle_antitank_m4a1_at4_hp"]call BIS_fnc_selectRandom, _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
		//Rifleman
		_unit = _group createUnit["B_T_Soldier_F", _position, [], 0, "NONE"];
		[_unit, "jungle_rifleman_m4a1", _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
		//Grenadier
		_unit = _group createUnit["B_T_Soldier_GL_F", _position, [], 0, "NONE"];
		[_unit, "jungle_grenadier_m4a1_m203", _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
		//Rifleman
		_unit = _group createUnit["B_T_Soldier_F", _position, [], 0, "NONE"];
		[_unit, "jungle_rifleman_m4a1", _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
		//Rifleman
		_unit = _group createUnit["B_T_Soldier_F", _position, [], 0, "NONE"];
		[_unit, "jungle_rifleman_m4a1", _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
		//Medic
		_unit = _group createUnit["B_T_Medic_F", _position, [], 0, "NONE"];
		[_unit, "jungle_medic_m4a1", _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
		//AT
		_unit = _group createUnit["B_T_Soldier_LAT_F", _position, [], 0, "NONE"];
		[_unit, ["jungle_antitank_m4a1_at4_heat","jungle_antitank_m4a1_nlaw"]call BIS_fnc_selectRandom, _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
		//Rifleman
		_unit = _group createUnit["B_T_Soldier_F", _position, [], 0, "NONE"];
		[_unit, "jungle_rifleman_m4a1", _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";

	};
	
	case RESISTANCE:
	{
		//teamleader
		_unit = _group createUnit["I_Soldier_SL_F", _position, [], 0, "NONE"];
		[_unit, "jungle_grenadier_m4a1_m203", _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
		//AR / MG
		_unit = _group createUnit["I_Soldier_LAT_F", _position, [], 0, "NONE"];
		[_unit, ["jungle_automaticrifleman_m249_short_para","jungle_maschinegunner_m60a4"]call BIS_fnc_selectRandom, _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
		//AT
		_unit = _group createUnit["I_Soldier_AT_F", _position, [], 0, "NONE"];
		[_unit, ["jungle_antitank_m4a1_at4_heat","jungle_antitank_m4a1_at4_hedp","jungle_antitank_m4a1_at4_hp"]call BIS_fnc_selectRandom, _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
		//Rifleman
		_unit = _group createUnit["I_soldier_F", _position, [], 0, "NONE"];
		[_unit, "jungle_rifleman_m4a1", _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
		//Grenadier
		_unit = _group createUnit["I_Soldier_GL_F", _position, [], 0, "NONE"];
		[_unit, "jungle_grenadier_m4a1_m203", _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
		//Rifleman
		_unit = _group createUnit["I_soldier_F", _position, [], 0, "NONE"];
		[_unit, "jungle_rifleman_m4a1", _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
		//Rifleman
		_unit = _group createUnit["I_soldier_F", _position, [], 0, "NONE"];
		[_unit, "jungle_rifleman_m4a1", _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
		//Medic
		_unit = _group createUnit["I_medic_F", _position, [], 0, "NONE"];
		[_unit, "jungle_medic_m4a1", _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
		//AT
		_unit = _group createUnit["I_Soldier_AT_F", _position, [], 0, "NONE"];
		[_unit, ["jungle_antitank_m4a1_at4_heat","jungle_antitank_m4a1_nlaw"]call BIS_fnc_selectRandom, _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
		//Rifleman
		_unit = _group createUnit["I_soldier_F", _position, [], 0, "NONE"];
		[_unit, "jungle_rifleman_m4a1", _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";

	};
	
	default{};
};