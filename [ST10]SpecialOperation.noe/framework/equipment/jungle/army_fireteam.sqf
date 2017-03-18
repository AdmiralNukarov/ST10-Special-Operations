//////////////////////////////////////////////////////////////////
// Function file for Armed Assault
// Created by: Nuka [www.sealteam10.de]
//////////////////////////////////////////////////////////////////

//[group, position, backpack]execVM "framework\equipment\jungle\army_fireteam.sqf";

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
		//Rifleman
		_unit = _group createUnit["B_T_Soldier_F", _position, [], 0, "NONE"];
		[_unit, "jungle_rifleman_m4a1", _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
		//AR / MG
		_unit = _group createUnit["B_T_Soldier_AR_F", _position, [], 0, "NONE"];
		[_unit, ["jungle_automaticrifleman_m249_pip_long","jungle_maschinegunner_minimi_long"]call BIS_fnc_selectRandom, _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
		//Rifleman
		_unit = _group createUnit["B_T_Soldier_F", _position, [], 0, "NONE"];
		[_unit, "jungle_rifleman_m4a1", _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
	};
	
	case RESISTANCE:
	{
		//teamleader
		_unit = _group createUnit["I_Soldier_SL_F", _position, [], 0, "NONE"];
		[_unit, "jungle_grenadier_m4a1_m203", _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
		//Rifleman
		_unit = _group createUnit["I_soldier_F", _position, [], 0, "NONE"];
		[_unit, "jungle_rifleman_m4a1", _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
		//AR / MG
		_unit = _group createUnit["I_Soldier_LAT_F", _position, [], 0, "NONE"];
		[_unit, ["jungle_automaticrifleman_m249_pip_long","jungle_maschinegunner_minimi_long"]call BIS_fnc_selectRandom, _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
		//Rifleman
		_unit = _group createUnit["I_soldier_F", _position, [], 0, "NONE"];
		[_unit, "jungle_rifleman_m4a1", _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
	};
	
	default{};
};