//////////////////////////////////////////////////////////////////
// Function file for Armed Assault
// Created by: Nuka [www.sealteam10.de]
//////////////////////////////////////////////////////////////////

//[group, position, type/vehicle, backpack, dir]execVM "framework\equipment\jungle\army_vehicle_heavy.sqf";

private['_group','_position','_unit','_vehicle','_dir','_backpack'];
_group = _this select 0;
_position = _this select 1;
_backpack = if(count _this > 3) then{_this select 3} else{false};
_dir = if(count _this > 4) then{_this select 4} else{0};

switch(_this select 2) do 
{	
	case "m1117asv":
	{
		//3 - 4
		_vehicle = (["rhsusf_M1117_W","rhsusf_M1117_O"]call BIS_fnc_selectRandom) createVehicle _position;
		clearWeaponCargoGlobal _vehicle;
		clearMagazineCargoGlobal _vehicle;
		clearBackpackCargoGlobal _vehicle;
		clearItemCargoGlobal _vehicle;
		
		_vehicle animate["DUKE_Hide",1];
		
		{
			_vehicle setObjectTextureGlobal[_forEachIndex, _x];
		}forEach ([["rhsusf\addons\rhsusf_m1117\data\m1117_tex1_green_co.paa","rhsusf\addons\rhsusf_m1117\data\m1117_armour_green_co.paa","rhsusf\addons\rhsusf_m1117\data\m1117_turret_green_co.paa","rhsusf\addons\rhsusf_m1117\data\m1117_wheel_green_co.paa","rhsusf\addons\rhsusf_hmmwv\textures\a2_parts_g_co.paa","rhsusf\addons\rhsusf_m1a1\duke\data\duke_antennae_wd_co.paa"],
		["rhsusf\addons\rhsusf_m1117\data\m1117_tex1_od_co.paa","rhsusf\addons\rhsusf_m1117\data\m1117_armour_od_co.paa","rhsusf\addons\rhsusf_m1117\data\m1117_turret_od_co.paa","rhsusf\addons\rhsusf_m1117\data\m1117_wheel_green_co.paa","rhsusf\addons\rhsusf_hmmwv\textures\a2_parts_g_co.paa","rhsusf\addons\rhsusf_m1a1\duke\data\duke_antennae_wd_co.paa"]]call BIS_fnc_selectRandom);
		
		switch(side _group) do
		{
			case WEST:
			{
				//teamleader/commander
				_unit = _group createUnit["B_T_Soldier_SL_F", _position, [], 0, "NONE"];
				[_unit, "jungle_grenadier_m4a1_m203", _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
				_unit moveInTurret[_vehicle, [0,0]];
				//driver
				_unit = _group createUnit["B_T_Soldier_F", _position, [], 0, "NONE"];
				[_unit, "jungle_rifleman_m4a1", _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
				_unit moveInDriver _vehicle;
				//gunner
				_unit = _group createUnit["B_T_Soldier_F", _position, [], 0, "NONE"];
				[_unit, "jungle_rifleman_m4a1", _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
				_unit moveInGunner _vehicle;
				
				//cargo
				_unit = _group createUnit["B_T_Soldier_F", _position, [], 0, "NONE"];
				[_unit, "jungle_rifleman_m4a1", _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
				_unit moveInCargo _vehicle;
				//cargo
				_unit = _group createUnit["B_T_Soldier_LAT_F", _position, [], 0, "NONE"];
				[_unit, ["jungle_antitank_m4a1_at4_heat","jungle_antitank_m4a1_at4_hedp","jungle_antitank_m4a1_at4_hp"]call BIS_fnc_selectRandom, _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
				_unit moveInCargo _vehicle;
				//cargo
				_unit = _group createUnit["B_T_Soldier_GL_F", _position, [], 0, "NONE"];
				[_unit, "jungle_grenadier_m4a1_m203", _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
				_unit moveInCargo _vehicle;
				//cargo
				_unit = _group createUnit["B_T_Soldier_F", _position, [], 0, "NONE"];
				[_unit, "jungle_rifleman_m4a1", _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
				_unit moveInCargo _vehicle;
			};
			
			case RESISTANCE:
			{
				//teamleader/commander
				_unit = _group createUnit["I_Soldier_SL_F", _position, [], 0, "NONE"];
				[_unit, "jungle_grenadier_m4a1_m203", _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
				_unit moveInTurret[_vehicle, [0,0]];
				//driver
				_unit = _group createUnit["I_soldier_F", _position, [], 0, "NONE"];
				[_unit, "jungle_rifleman_m4a1", _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
				_unit moveInDriver _vehicle;
				//gunner
				_unit = _group createUnit["I_soldier_F", _position, [], 0, "NONE"];
				[_unit, "jungle_rifleman_m4a1", _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
				_unit moveInGunner _vehicle;
				
				//cargo
				_unit = _group createUnit["I_soldier_F", _position, [], 0, "NONE"];
				[_unit, "jungle_rifleman_m4a1", _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
				_unit moveInCargo _vehicle;
				//cargo
				_unit = _group createUnit["I_Soldier_LAT_F", _position, [], 0, "NONE"];
				[_unit, ["jungle_antitank_m4a1_at4_heat","jungle_antitank_m4a1_at4_hedp","jungle_antitank_m4a1_at4_hp"]call BIS_fnc_selectRandom, _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
				_unit moveInCargo _vehicle;
				//cargo
				_unit = _group createUnit["I_Soldier_GL_F", _position, [], 0, "NONE"];
				[_unit, "jungle_grenadier_m4a1_m203", _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
				_unit moveInCargo _vehicle;
				//cargo
				_unit = _group createUnit["I_soldier_F", _position, [], 0, "NONE"];
				[_unit, "jungle_rifleman_m4a1", _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
				_unit moveInCargo _vehicle;
			};
			
			default{};
		};
		_group addVehicle _vehicle;
	};
	
	case "m113_m2":
	{
		//2 - 11
		_vehicle = "rhsusf_m113_usarmy" createVehicle _position;
		clearWeaponCargoGlobal _vehicle;
		clearMagazineCargoGlobal _vehicle;
		clearBackpackCargoGlobal _vehicle;
		clearItemCargoGlobal _vehicle;
		
		_vehicle animate["IFF_Panels_Hide",1];
		
		{
			_vehicle setObjectTextureGlobal[_forEachIndex, _x];
		}forEach ([["rhsusf\addons\rhsusf_m113\data_new\m113a3_01_sup_wd_co.paa","rhsusf\addons\rhsusf_m113\data_new\m113a3_02_sup_wd_co.paa","rhsusf\addons\rhsusf_m113\data_new\m113a3_03_wd_co.paa","rhsusf\addons\rhsusf_m113\data_new\m113a3_int03_wd_co.paa","rhsusf\addons\rhsusf_m113\data_new\m23_pintle_wd_co.paa","rhsusf\addons\rhsusf_m113\data_new\m113a3_shield_od_co.paa"],
		["rhsusf\addons\rhsusf_m113\data_new\m113a3_01_sup_wd_co.paa","rhsusf\addons\rhsusf_m113\data_new\m113a3_02_sup_wd_co.paa","rhsusf\addons\rhsusf_m113\data_new\m113a3_03_wd_co.paa","rhsusf\addons\rhsusf_m113\data_new\m113a3_int03_wd_co.paa","rhsusf\addons\rhsusf_m113\data_new\m23_pintle_wd_co.paa","rhsusf\addons\rhsusf_m113\data_new\m113a3_shield_od_co.paa"]]call BIS_fnc_selectRandom);
		
		switch(side _group) do
		{
			case WEST:
			{
				//teamleader
				_unit = _group createUnit["B_T_Soldier_SL_F", _position, [], 0, "NONE"];
				[_unit, "jungle_grenadier_m4a1_m203", _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
				_unit moveInCargo _vehicle;
				
				//driver
				_unit = _group createUnit["B_T_Crew_F", _position, [], 0, "NONE"];
				[_unit, "jungle_crewman_m4a1", _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
				_unit moveInDriver _vehicle;
				//gunner
				_unit = _group createUnit["B_T_Crew_F", _position, [], 0, "NONE"];
				[_unit, "jungle_crewman_m4a1", _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
				_unit moveInGunner _vehicle;
				
				//cargo
				_unit = _group createUnit["B_T_Soldier_AR_F", _position, [], 0, "NONE"];
				[_unit, ["jungle_automaticrifleman_m249_short_para","jungle_maschinegunner_m60a4"]call BIS_fnc_selectRandom, _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
				_unit moveInCargo _vehicle;
				//cargo
				_unit = _group createUnit["B_T_Soldier_LAT_F", _position, [], 0, "NONE"];
				[_unit, ["jungle_antitank_m4a1_at4_heat","jungle_antitank_m4a1_at4_hedp","jungle_antitank_m4a1_at4_hp"]call BIS_fnc_selectRandom, _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
				_unit moveInCargo _vehicle;
				//cargo
				_unit = _group createUnit["B_T_Soldier_F", _position, [], 0, "NONE"];
				[_unit, "jungle_rifleman_m4a1", _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
				_unit moveInCargo _vehicle;
				//cargo
				_unit = _group createUnit["B_T_Soldier_GL_F", _position, [], 0, "NONE"];
				[_unit, "jungle_grenadier_m4a1_m203", _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
				_unit moveInCargo _vehicle;
				//cargo
				_unit = _group createUnit["B_T_Soldier_F", _position, [], 0, "NONE"];
				[_unit, "jungle_rifleman_m4a1", _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
				_unit moveInCargo _vehicle;
				//cargo
				_unit = _group createUnit["B_T_Soldier_F", _position, [], 0, "NONE"];
				[_unit, "jungle_rifleman_m4a1", _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
				_unit moveInCargo _vehicle;
				//cargo
				_unit = _group createUnit["B_T_Medic_F", _position, [], 0, "NONE"];
				[_unit, "jungle_medic_m4a1", _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
				_unit moveInCargo _vehicle;
				//cargo
				_unit = _group createUnit["B_T_Soldier_LAT_F", _position, [], 0, "NONE"];
				[_unit, ["jungle_antitank_m4a1_at4_heat","jungle_antitank_m4a1_nlaw"]call BIS_fnc_selectRandom, _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
				_unit moveInCargo _vehicle;
			};
			
			case RESISTANCE:
			{
				//teamleader
				_unit = _group createUnit["I_Soldier_SL_F", _position, [], 0, "NONE"];
				[_unit, "jungle_grenadier_m4a1_m203", _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
				_unit moveInCargo _vehicle;
				
				//driver
				_unit = _group createUnit["I_crew_F", _position, [], 0, "NONE"];
				[_unit, "jungle_rifleman_m4a1", _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
				_unit moveInDriver _vehicle;
				//gunner
				_unit = _group createUnit["I_crew_F", _position, [], 0, "NONE"];
				[_unit, "jungle_crewman_m4a1", _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
				_unit moveInGunner _vehicle;
				
				//cargo
				_unit = _group createUnit["I_Soldier_LAT_F", _position, [], 0, "NONE"];
				[_unit, ["jungle_automaticrifleman_m249_short_para","jungle_maschinegunner_m60a4"]call BIS_fnc_selectRandom, _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
				_unit moveInCargo _vehicle;
				//cargo
				_unit = _group createUnit["I_Soldier_AT_F", _position, [], 0, "NONE"];
				[_unit, ["jungle_antitank_m4a1_at4_heat","jungle_antitank_m4a1_at4_hedp","jungle_antitank_m4a1_at4_hp"]call BIS_fnc_selectRandom, _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
				_unit moveInCargo _vehicle;
				//cargo
				_unit = _group createUnit["I_soldier_F", _position, [], 0, "NONE"];
				[_unit, "jungle_rifleman_m4a1", _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
				_unit moveInCargo _vehicle;
				//cargo
				_unit = _group createUnit["I_Soldier_GL_F", _position, [], 0, "NONE"];
				[_unit, "jungle_grenadier_m4a1_m203", _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
				_unit moveInCargo _vehicle;
				//cargo
				_unit = _group createUnit["I_soldier_F", _position, [], 0, "NONE"];
				[_unit, "jungle_rifleman_m4a1", _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
				_unit moveInCargo _vehicle;
				//cargo
				_unit = _group createUnit["I_soldier_F", _position, [], 0, "NONE"];
				[_unit, "jungle_rifleman_m4a1", _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
				_unit moveInCargo _vehicle;
				//cargo
				_unit = _group createUnit["I_medic_F", _position, [], 0, "NONE"];
				[_unit, "jungle_medic_m4a1", _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
				_unit moveInCargo _vehicle;
				//cargo
				_unit = _group createUnit["I_Soldier_AT_F", _position, [], 0, "NONE"];
				[_unit, ["jungle_antitank_m4a1_at4_heat","jungle_antitank_m4a1_nlaw"]call BIS_fnc_selectRandom, _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
				_unit moveInCargo _vehicle;
			};
			
			default{};
		};
		_group addVehicle _vehicle;
	};
	
	case "m113_mk19":
	{
		//2 - 11
		_vehicle = "rhsusf_m113_usarmy_MK19" createVehicle _position;
		clearWeaponCargoGlobal _vehicle;
		clearMagazineCargoGlobal _vehicle;
		clearBackpackCargoGlobal _vehicle;
		clearItemCargoGlobal _vehicle;
		
		_vehicle animate["IFF_Panels_Hide",1];
		
		{
			_vehicle setObjectTextureGlobal[_forEachIndex, _x];
		}forEach ([["rhsusf\addons\rhsusf_m113\data_new\m113a3_01_wd_l_co.paa","rhsusf\addons\rhsusf_m113\data_new\m113a3_02_wd_l_co.paa","rhsusf\addons\rhsusf_m113\data_new\m113a3_03_wd_co.paa","rhsusf\addons\rhsusf_m113\data_new\m113a3_int03_wd_co.paa","rhsusf\addons\rhsusf_hmmwv\textures\mk64mount_w_co.paa"],
		["rhsusf\addons\rhsusf_m113\data_new\m113a3_01_od_l_co.paa","rhsusf\addons\rhsusf_m113\data_new\m113a3_02_od_l_co.paa","rhsusf\addons\rhsusf_m113\data_new\m113a3_03_wd_co.paa","rhsusf\addons\rhsusf_m113\data_new\m113a3_int03_wd_co.paa","rhsusf\addons\rhsusf_hmmwv\textures\mk64mount_w_co.paa"]]call BIS_fnc_selectRandom);
		
		switch(side _group) do
		{
			case WEST:
			{
				//teamleader
				_unit = _group createUnit["B_T_Soldier_SL_F", _position, [], 0, "NONE"];
				[_unit, "jungle_grenadier_m4a1_m203", _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
				_unit moveInCargo _vehicle;
				
				//driver
				_unit = _group createUnit["B_T_Crew_F", _position, [], 0, "NONE"];
				[_unit, "jungle_crewman_m4a1", _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
				_unit moveInDriver _vehicle;
				//gunner
				_unit = _group createUnit["B_T_Crew_F", _position, [], 0, "NONE"];
				[_unit, "jungle_crewman_m4a1", _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
				_unit moveInGunner _vehicle;
				
				//cargo
				_unit = _group createUnit["B_T_Soldier_AR_F", _position, [], 0, "NONE"];
				[_unit, ["jungle_automaticrifleman_m249_short_para","jungle_maschinegunner_m60a4"]call BIS_fnc_selectRandom, _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
				_unit moveInCargo _vehicle;
				//cargo
				_unit = _group createUnit["B_T_Soldier_LAT_F", _position, [], 0, "NONE"];
				[_unit, ["jungle_antitank_m4a1_at4_heat","jungle_antitank_m4a1_at4_hedp","jungle_antitank_m4a1_at4_hp"]call BIS_fnc_selectRandom, _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
				_unit moveInCargo _vehicle;
				//cargo
				_unit = _group createUnit["B_T_Soldier_F", _position, [], 0, "NONE"];
				[_unit, "jungle_rifleman_m4a1", _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
				_unit moveInCargo _vehicle;
				//cargo
				_unit = _group createUnit["B_T_Soldier_GL_F", _position, [], 0, "NONE"];
				[_unit, "jungle_grenadier_m4a1_m203", _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
				_unit moveInCargo _vehicle;
				//cargo
				_unit = _group createUnit["B_T_Soldier_F", _position, [], 0, "NONE"];
				[_unit, "jungle_rifleman_m4a1", _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
				_unit moveInCargo _vehicle;
				//cargo
				_unit = _group createUnit["B_T_Soldier_F", _position, [], 0, "NONE"];
				[_unit, "jungle_rifleman_m4a1", _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
				_unit moveInCargo _vehicle;
				//cargo
				_unit = _group createUnit["B_T_Medic_F", _position, [], 0, "NONE"];
				[_unit, "jungle_medic_m4a1", _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
				_unit moveInCargo _vehicle;
				//cargo
				_unit = _group createUnit["B_T_Soldier_LAT_F", _position, [], 0, "NONE"];
				[_unit, ["jungle_antitank_m4a1_at4_heat","jungle_antitank_m4a1_nlaw"]call BIS_fnc_selectRandom, _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
				_unit moveInCargo _vehicle;
			};
			
			case RESISTANCE:
			{
				//teamleader
				_unit = _group createUnit["I_Soldier_SL_F", _position, [], 0, "NONE"];
				[_unit, "jungle_grenadier_m4a1_m203", _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
				_unit moveInCargo _vehicle;
				
				//driver
				_unit = _group createUnit["I_crew_F", _position, [], 0, "NONE"];
				[_unit, "jungle_rifleman_m4a1", _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
				_unit moveInDriver _vehicle;
				//gunner
				_unit = _group createUnit["I_crew_F", _position, [], 0, "NONE"];
				[_unit, "jungle_crewman_m4a1", _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
				_unit moveInGunner _vehicle;
				
				//cargo
				_unit = _group createUnit["I_Soldier_LAT_F", _position, [], 0, "NONE"];
				[_unit, ["jungle_automaticrifleman_m249_short_para","jungle_maschinegunner_m60a4"]call BIS_fnc_selectRandom, _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
				_unit moveInCargo _vehicle;
				//cargo
				_unit = _group createUnit["I_Soldier_AT_F", _position, [], 0, "NONE"];
				[_unit, ["jungle_antitank_m4a1_at4_heat","jungle_antitank_m4a1_at4_hedp","jungle_antitank_m4a1_at4_hp"]call BIS_fnc_selectRandom, _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
				_unit moveInCargo _vehicle;
				//cargo
				_unit = _group createUnit["I_soldier_F", _position, [], 0, "NONE"];
				[_unit, "jungle_rifleman_m4a1", _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
				_unit moveInCargo _vehicle;
				//cargo
				_unit = _group createUnit["I_Soldier_GL_F", _position, [], 0, "NONE"];
				[_unit, "jungle_grenadier_m4a1_m203", _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
				_unit moveInCargo _vehicle;
				//cargo
				_unit = _group createUnit["I_soldier_F", _position, [], 0, "NONE"];
				[_unit, "jungle_rifleman_m4a1", _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
				_unit moveInCargo _vehicle;
				//cargo
				_unit = _group createUnit["I_soldier_F", _position, [], 0, "NONE"];
				[_unit, "jungle_rifleman_m4a1", _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
				_unit moveInCargo _vehicle;
				//cargo
				_unit = _group createUnit["I_medic_F", _position, [], 0, "NONE"];
				[_unit, "jungle_medic_m4a1", _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
				_unit moveInCargo _vehicle;
				//cargo
				_unit = _group createUnit["I_Soldier_AT_F", _position, [], 0, "NONE"];
				[_unit, ["jungle_antitank_m4a1_at4_heat","jungle_antitank_m4a1_nlaw"]call BIS_fnc_selectRandom, _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
				_unit moveInCargo _vehicle;
			};
			
			default{};
		};
		_group addVehicle _vehicle;
	};
	
	case "m113":
	{
		//2 - 11
		_vehicle = "rhsusf_m113_usarmy_unarmed" createVehicle _position;
		clearWeaponCargoGlobal _vehicle;
		clearMagazineCargoGlobal _vehicle;
		clearBackpackCargoGlobal _vehicle;
		clearItemCargoGlobal _vehicle;
		
		_vehicle animate["IFF_Panels_Hide",1];
		
		{
			_vehicle setObjectTextureGlobal[_forEachIndex, _x];
		}forEach ([["rhsusf\addons\rhsusf_m113\data_new\m113a3_01_wd_l_co.paa","rhsusf\addons\rhsusf_m113\data_new\m113a3_02_wd_l_co.paa","rhsusf\addons\rhsusf_m113\data_new\m113a3_03_wd_co.paa","rhsusf\addons\rhsusf_m113\data_new\m113a3_int03_wd_co.paa"],
		["rhsusf\addons\rhsusf_m113\data_new\m113a3_01_od_l_co.paa","rhsusf\addons\rhsusf_m113\data_new\m113a3_02_od_l_co.paa","rhsusf\addons\rhsusf_m113\data_new\m113a3_03_wd_co.paa","rhsusf\addons\rhsusf_m113\data_new\m113a3_int03_wd_co.paa"]]call BIS_fnc_selectRandom);
		
		switch(side _group) do
		{
			case WEST:
			{
				//teamleader
				_unit = _group createUnit["B_T_Soldier_SL_F", _position, [], 0, "NONE"];
				[_unit, "jungle_grenadier_m4a1_m203", _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
				_unit moveInCargo _vehicle;
				
				//driver
				_unit = _group createUnit["B_T_Crew_F", _position, [], 0, "NONE"];
				[_unit, "jungle_crewman_m4a1", _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
				_unit moveInDriver _vehicle;
				//gunner
				_unit = _group createUnit["B_T_Crew_F", _position, [], 0, "NONE"];
				[_unit, "jungle_crewman_m4a1", _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
				_unit moveInGunner _vehicle;
				
				//cargo
				_unit = _group createUnit["B_T_Soldier_AR_F", _position, [], 0, "NONE"];
				[_unit, ["jungle_automaticrifleman_m249_short_para","jungle_maschinegunner_m60a4"]call BIS_fnc_selectRandom, _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
				_unit moveInCargo _vehicle;
				//cargo
				_unit = _group createUnit["B_T_Soldier_LAT_F", _position, [], 0, "NONE"];
				[_unit, ["jungle_antitank_m4a1_at4_heat","jungle_antitank_m4a1_at4_hedp","jungle_antitank_m4a1_at4_hp"]call BIS_fnc_selectRandom, _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
				_unit moveInCargo _vehicle;
				//cargo
				_unit = _group createUnit["B_T_Soldier_F", _position, [], 0, "NONE"];
				[_unit, "jungle_rifleman_m4a1", _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
				_unit moveInCargo _vehicle;
				//cargo
				_unit = _group createUnit["B_T_Soldier_GL_F", _position, [], 0, "NONE"];
				[_unit, "jungle_grenadier_m4a1_m203", _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
				_unit moveInCargo _vehicle;
				//cargo
				_unit = _group createUnit["B_T_Soldier_F", _position, [], 0, "NONE"];
				[_unit, "jungle_rifleman_m4a1", _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
				_unit moveInCargo _vehicle;
				//cargo
				_unit = _group createUnit["B_T_Soldier_F", _position, [], 0, "NONE"];
				[_unit, "jungle_rifleman_m4a1", _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
				_unit moveInCargo _vehicle;
				//cargo
				_unit = _group createUnit["B_T_Medic_F", _position, [], 0, "NONE"];
				[_unit, "jungle_medic_m4a1", _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
				_unit moveInCargo _vehicle;
				//cargo
				_unit = _group createUnit["B_T_Soldier_LAT_F", _position, [], 0, "NONE"];
				[_unit, ["jungle_antitank_m4a1_at4_heat","jungle_antitank_m4a1_nlaw"]call BIS_fnc_selectRandom, _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
				_unit moveInCargo _vehicle;
			};
			
			case RESISTANCE:
			{
				//teamleader
				_unit = _group createUnit["I_Soldier_SL_F", _position, [], 0, "NONE"];
				[_unit, "jungle_grenadier_m4a1_m203", _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
				_unit moveInCargo _vehicle;
				
				//driver
				_unit = _group createUnit["I_crew_F", _position, [], 0, "NONE"];
				[_unit, "jungle_rifleman_m4a1", _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
				_unit moveInDriver _vehicle;
				//gunner
				_unit = _group createUnit["I_crew_F", _position, [], 0, "NONE"];
				[_unit, "jungle_crewman_m4a1", _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
				_unit moveInGunner _vehicle;
				
				//cargo
				_unit = _group createUnit["I_Soldier_LAT_F", _position, [], 0, "NONE"];
				[_unit, ["jungle_automaticrifleman_m249_short_para","jungle_maschinegunner_m60a4"]call BIS_fnc_selectRandom, _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
				_unit moveInCargo _vehicle;
				//cargo
				_unit = _group createUnit["I_Soldier_AT_F", _position, [], 0, "NONE"];
				[_unit, ["jungle_antitank_m4a1_at4_heat","jungle_antitank_m4a1_at4_hedp","jungle_antitank_m4a1_at4_hp"]call BIS_fnc_selectRandom, _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
				_unit moveInCargo _vehicle;
				//cargo
				_unit = _group createUnit["I_soldier_F", _position, [], 0, "NONE"];
				[_unit, "jungle_rifleman_m4a1", _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
				_unit moveInCargo _vehicle;
				//cargo
				_unit = _group createUnit["I_Soldier_GL_F", _position, [], 0, "NONE"];
				[_unit, "jungle_grenadier_m4a1_m203", _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
				_unit moveInCargo _vehicle;
				//cargo
				_unit = _group createUnit["I_soldier_F", _position, [], 0, "NONE"];
				[_unit, "jungle_rifleman_m4a1", _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
				_unit moveInCargo _vehicle;
				//cargo
				_unit = _group createUnit["I_soldier_F", _position, [], 0, "NONE"];
				[_unit, "jungle_rifleman_m4a1", _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
				_unit moveInCargo _vehicle;
				//cargo
				_unit = _group createUnit["I_medic_F", _position, [], 0, "NONE"];
				[_unit, "jungle_medic_m4a1", _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
				_unit moveInCargo _vehicle;
				//cargo
				_unit = _group createUnit["I_Soldier_AT_F", _position, [], 0, "NONE"];
				[_unit, ["jungle_antitank_m4a1_at4_heat","jungle_antitank_m4a1_nlaw"]call BIS_fnc_selectRandom, _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
				_unit moveInCargo _vehicle;
			};
			
			default{};
		};
		_group addVehicle _vehicle;
	};
};

if(_dir != 0) then
{
	_vehicle setDir _dir;
};

{
	_x setSkill 1;
}forEach (units _group);

_vehicle addEventHandler["HandleDamage",{if((_this select 4) == "") then{0};}];