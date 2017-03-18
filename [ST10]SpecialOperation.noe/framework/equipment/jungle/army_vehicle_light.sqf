//////////////////////////////////////////////////////////////////
// Function file for Armed Assault
// Created by: Nuka [www.sealteam10.de]
//////////////////////////////////////////////////////////////////

//[group, position, type/vehicle, backpack, dir]execVM "framework\equipment\jungle\army_vehicle_light.sqf";

private['_group','_position','_unit','_vehicle','_dir','_backpack'];
_group = _this select 0;
_position = _this select 1;
_backpack = if(count _this > 3) then{_this select 3} else{false};
_dir = if(count _this > 4) then{_this select 4} else{0};

switch(_this select 2) do 
{	
	case "m1025_m2":
	{
		//2 - 3
		_vehicle = "rhsusf_m1025_w_m2" createVehicle _position;
		clearWeaponCargoGlobal _vehicle;
		clearMagazineCargoGlobal _vehicle;
		clearBackpackCargoGlobal _vehicle;
		clearItemCargoGlobal _vehicle;
		
		_vehicle animate["hide_A2_Parts",1];
		_vehicle animate["hide_Antenna",1];
		_vehicle animate["hide_CIP",1];
		
		{
			_vehicle setObjectTextureGlobal[_forEachIndex, _x];
		}forEach ([["rhsusf\addons\rhsusf_hmmwv\textures\m998_exterior_w_co.paa","rhsusf\addons\rhsusf_hmmwv\textures\m998_interior_w_co.paa","rhsusf\addons\rhsusf_hmmwv\textures\a2_parts_wd_co.paa","rhsusf\addons\rhsusf_hmmwv\textures\wheel_wranglermt_b_co.paa","rhsusf\addons\rhsusf_hmmwv\textures\m998_mainbody_co.paa","rhsusf\addons\rhsusf_hmmwv\textures\gratting_w_co.paa","rhsusf\addons\rhsusf_hmmwv\textures\tile_exmetal_co.paa","rhsusf\addons\rhsusf_hmmwv\textures\m1025_w_co.paa","rhsusf\addons\rhsusf_hmmwv\textures\mk64mount_w_co.paa","rhsusf\addons\rhsusf_hmmwv\unitdecals\82ndab_505reg_1stbn_e25_w_ca.paa","rhsusf\addons\rhsusf_hmmwv\unitdecals\blankdecal_ca.paa"],
		["rhsusf\addons\rhsusf_hmmwv\textures\m998_exterior_g_co.paa","rhsusf\addons\rhsusf_hmmwv\textures\m998_interior_w_co.paa","rhsusf\addons\rhsusf_hmmwv\textures\a2_parts_g_co.paa","rhsusf\addons\rhsusf_hmmwv\textures\wheel_wranglermt_b_co.paa","rhsusf\addons\rhsusf_hmmwv\textures\m998_mainbody_g_co.paa","rhsusf\addons\rhsusf_hmmwv\textures\gratting_w_co.paa","rhsusf\addons\rhsusf_hmmwv\textures\tile_exmetal_co.paa","rhsusf\addons\rhsusf_hmmwv\textures\m1025_g_co.paa","rhsusf\addons\rhsusf_hmmwv\textures\mk64mount_w_co.paa","rhsusf\addons\rhsusf_hmmwv\unitdecals\82ndab_505reg_1stbn_e25_w_ca.paa","rhsusf\addons\rhsusf_hmmwv\unitdecals\blankdecal_ca.paa"]]call BIS_fnc_selectRandom);
		
		switch(side _group) do
		{
			case WEST:
			{
				//teamleader
				_unit = _group createUnit["B_T_Soldier_SL_F", _position, [], 0, "NONE"];
				[_unit, "jungle_grenadier_m4a1_m203", _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
				_unit moveInCargo _vehicle;
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
				[_unit, ["jungle_rifleman_m4a1","jungle_automaticrifleman_m249_pip_long","jungle_grenadier_m4a1_m203"]call BIS_fnc_selectRandom, _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
				_unit moveInCargo _vehicle;
				//cargo
				_unit = _group createUnit["B_T_Soldier_F", _position, [], 0, "NONE"];
				[_unit, ["jungle_rifleman_m4a1","jungle_antitank_m4a1_at4_heat","jungle_antitank_m4a1_at4_hedp","jungle_antitank_m4a1_at4_hp"]call BIS_fnc_selectRandom, _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
				_unit moveInCargo _vehicle;
			};
			
			case RESISTANCE:
			{
				//teamleader
				_unit = _group createUnit["I_Soldier_SL_F", _position, [], 0, "NONE"];
				[_unit, "jungle_grenadier_m4a1_m203", _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
				_unit moveInCargo _vehicle;
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
				[_unit, ["jungle_rifleman_m4a1","jungle_automaticrifleman_m249_pip_long","jungle_grenadier_m4a1_m203"]call BIS_fnc_selectRandom, _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
				_unit moveInCargo _vehicle;
				//cargo
				_unit = _group createUnit["I_soldier_F", _position, [], 0, "NONE"];
				[_unit, ["jungle_rifleman_m4a1","jungle_antitank_m4a1_at4_heat","jungle_antitank_m4a1_at4_hedp","jungle_antitank_m4a1_at4_hp"]call BIS_fnc_selectRandom, _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
				_unit moveInCargo _vehicle;
			};
			
			default{};
		};
		_group addVehicle _vehicle;
	};
	
	case "m1025_mk19":
	{
		//2 - 3
		_vehicle = "rhsusf_m1025_w_mk19" createVehicle _position;
		clearWeaponCargoGlobal _vehicle;
		clearMagazineCargoGlobal _vehicle;
		clearBackpackCargoGlobal _vehicle;
		clearItemCargoGlobal _vehicle;
		
		_vehicle animate["hide_A2_Parts",1];
		_vehicle animate["hide_Antenna",1];
		_vehicle animate["hide_CIP",1];
		
		{
			_vehicle setObjectTextureGlobal[_forEachIndex, _x];
		}forEach ([["rhsusf\addons\rhsusf_hmmwv\textures\m998_exterior_w_co.paa","rhsusf\addons\rhsusf_hmmwv\textures\m998_interior_w_co.paa","rhsusf\addons\rhsusf_hmmwv\textures\a2_parts_wd_co.paa","rhsusf\addons\rhsusf_hmmwv\textures\wheel_wranglermt_b_co.paa","rhsusf\addons\rhsusf_hmmwv\textures\m998_mainbody_co.paa","rhsusf\addons\rhsusf_hmmwv\textures\gratting_w_co.paa","rhsusf\addons\rhsusf_hmmwv\textures\tile_exmetal_co.paa","rhsusf\addons\rhsusf_hmmwv\textures\m1025_w_co.paa","rhsusf\addons\rhsusf_hmmwv\textures\mk64mount_w_co.paa","rhsusf\addons\rhsusf_hmmwv\unitdecals\82ndab_505reg_1stbn_e25_w_ca.paa","rhsusf\addons\rhsusf_hmmwv\unitdecals\blankdecal_ca.paa"],
		["rhsusf\addons\rhsusf_hmmwv\textures\m998_exterior_g_co.paa","rhsusf\addons\rhsusf_hmmwv\textures\m998_interior_w_co.paa","rhsusf\addons\rhsusf_hmmwv\textures\a2_parts_g_co.paa","rhsusf\addons\rhsusf_hmmwv\textures\wheel_wranglermt_b_co.paa","rhsusf\addons\rhsusf_hmmwv\textures\m998_mainbody_g_co.paa","rhsusf\addons\rhsusf_hmmwv\textures\gratting_w_co.paa","rhsusf\addons\rhsusf_hmmwv\textures\tile_exmetal_co.paa","rhsusf\addons\rhsusf_hmmwv\textures\m1025_g_co.paa","rhsusf\addons\rhsusf_hmmwv\textures\mk64mount_w_co.paa","rhsusf\addons\rhsusf_hmmwv\unitdecals\82ndab_505reg_1stbn_e25_w_ca.paa","rhsusf\addons\rhsusf_hmmwv\unitdecals\blankdecal_ca.paa"]]call BIS_fnc_selectRandom);
		
		switch(side _group) do
		{
			case WEST:
			{
				//teamleader
				_unit = _group createUnit["B_T_Soldier_SL_F", _position, [], 0, "NONE"];
				[_unit, "jungle_grenadier_m4a1_m203", _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
				_unit moveInCargo _vehicle;
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
				[_unit, ["jungle_rifleman_m4a1","jungle_automaticrifleman_m249_pip_long","jungle_grenadier_m4a1_m203"]call BIS_fnc_selectRandom, _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
				_unit moveInCargo _vehicle;
				//cargo
				_unit = _group createUnit["B_T_Soldier_F", _position, [], 0, "NONE"];
				[_unit, ["jungle_rifleman_m4a1","jungle_antitank_m4a1_at4_heat","jungle_antitank_m4a1_at4_hedp","jungle_antitank_m4a1_at4_hp"]call BIS_fnc_selectRandom, _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
				_unit moveInCargo _vehicle;
			};
			
			case RESISTANCE:
			{
				//teamleader
				_unit = _group createUnit["I_Soldier_SL_F", _position, [], 0, "NONE"];
				[_unit, "jungle_grenadier_m4a1_m203", _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
				_unit moveInCargo _vehicle;
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
				[_unit, ["jungle_rifleman_m4a1","jungle_automaticrifleman_m249_pip_long","jungle_grenadier_m4a1_m203"]call BIS_fnc_selectRandom, _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
				_unit moveInCargo _vehicle;
				//cargo
				_unit = _group createUnit["I_soldier_F", _position, [], 0, "NONE"];
				[_unit, ["jungle_rifleman_m4a1","jungle_antitank_m4a1_at4_heat","jungle_antitank_m4a1_at4_hedp","jungle_antitank_m4a1_at4_hp"]call BIS_fnc_selectRandom, _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
				_unit moveInCargo _vehicle;
			};
			
			default{};
		};
		_group addVehicle _vehicle;
	};
	
	case "m1025":
	{
		//1 - 3
		_vehicle = "rhsusf_m1025_w" createVehicle _position;
		clearWeaponCargoGlobal _vehicle;
		clearMagazineCargoGlobal _vehicle;
		clearBackpackCargoGlobal _vehicle;
		clearItemCargoGlobal _vehicle;
		
		_vehicle animate["hide_A2_Parts",1];
		_vehicle animate["hide_Antenna",1];
		_vehicle animate["hide_CIP",1];
		
		{
			_vehicle setObjectTextureGlobal[_forEachIndex, _x];
		}forEach ([["rhsusf\addons\rhsusf_hmmwv\textures\m998_exterior_w_co.paa","rhsusf\addons\rhsusf_hmmwv\textures\m998_interior_w_co.paa","rhsusf\addons\rhsusf_hmmwv\textures\a2_parts_wd_co.paa","rhsusf\addons\rhsusf_hmmwv\textures\wheel_wranglermt_b_co.paa","rhsusf\addons\rhsusf_hmmwv\textures\m998_mainbody_co.paa","rhsusf\addons\rhsusf_hmmwv\textures\gratting_w_co.paa","rhsusf\addons\rhsusf_hmmwv\textures\tile_exmetal_co.paa","rhsusf\addons\rhsusf_hmmwv\textures\m1025_w_co.paa","rhsusf\addons\rhsusf_hmmwv\textures\mk64mount_w_co.paa","rhsusf\addons\rhsusf_hmmwv\unitdecals\82ndab_505reg_1stbn_e25_w_ca.paa","rhsusf\addons\rhsusf_hmmwv\unitdecals\blankdecal_ca.paa"],
		["rhsusf\addons\rhsusf_hmmwv\textures\m998_exterior_g_co.paa","rhsusf\addons\rhsusf_hmmwv\textures\m998_interior_w_co.paa","rhsusf\addons\rhsusf_hmmwv\textures\a2_parts_g_co.paa","rhsusf\addons\rhsusf_hmmwv\textures\wheel_wranglermt_b_co.paa","rhsusf\addons\rhsusf_hmmwv\textures\m998_mainbody_g_co.paa","rhsusf\addons\rhsusf_hmmwv\textures\gratting_w_co.paa","rhsusf\addons\rhsusf_hmmwv\textures\tile_exmetal_co.paa","rhsusf\addons\rhsusf_hmmwv\textures\m1025_g_co.paa","rhsusf\addons\rhsusf_hmmwv\textures\mk64mount_w_co.paa","rhsusf\addons\rhsusf_hmmwv\unitdecals\82ndab_505reg_1stbn_e25_w_ca.paa","rhsusf\addons\rhsusf_hmmwv\unitdecals\blankdecal_ca.paa"]]call BIS_fnc_selectRandom);
		
		switch(side _group) do
		{
			case WEST:
			{
				//teamleader
				_unit = _group createUnit["B_T_Soldier_SL_F", _position, [], 0, "NONE"];
				[_unit, "jungle_grenadier_m4a1_m203", _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
				_unit moveInCargo _vehicle;
				//driver
				_unit = _group createUnit["B_T_Soldier_F", _position, [], 0, "NONE"];
				[_unit, "jungle_rifleman_m4a1", _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
				_unit moveInDriver _vehicle;
				//cargo
				_unit = _group createUnit["B_T_Soldier_F", _position, [], 0, "NONE"];
				[_unit, ["jungle_rifleman_m4a1","jungle_automaticrifleman_m249_pip_long","jungle_grenadier_m4a1_m203"]call BIS_fnc_selectRandom, _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
				_unit moveInCargo _vehicle;
				//cargo
				_unit = _group createUnit["B_T_Soldier_F", _position, [], 0, "NONE"];
				[_unit, ["jungle_rifleman_m4a1","jungle_antitank_m4a1_at4_heat","jungle_antitank_m4a1_at4_hedp","jungle_antitank_m4a1_at4_hp"]call BIS_fnc_selectRandom, _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
				_unit moveInCargo _vehicle;
			};
			
			case RESISTANCE:
			{
				//teamleader
				_unit = _group createUnit["I_Soldier_SL_F", _position, [], 0, "NONE"];
				[_unit, "jungle_grenadier_m4a1_m203", _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
				_unit moveInCargo _vehicle;
				//driver
				_unit = _group createUnit["I_soldier_F", _position, [], 0, "NONE"];
				[_unit, "jungle_rifleman_m4a1", _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
				_unit moveInDriver _vehicle;
				//cargo
				_unit = _group createUnit["I_soldier_F", _position, [], 0, "NONE"];
				[_unit, ["jungle_rifleman_m4a1","jungle_automaticrifleman_m249_pip_long","jungle_grenadier_m4a1_m203"]call BIS_fnc_selectRandom, _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
				_unit moveInCargo _vehicle;
				//cargo
				_unit = _group createUnit["I_soldier_F", _position, [], 0, "NONE"];
				[_unit, ["jungle_rifleman_m4a1","jungle_antitank_m4a1_at4_heat","jungle_antitank_m4a1_at4_hedp","jungle_antitank_m4a1_at4_hp"]call BIS_fnc_selectRandom, _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
				_unit moveInCargo _vehicle;
			};
			
			default{};
		};
		_group addVehicle _vehicle;
	};
	
	case "m1097_2d":
	{
		//1 - 7
		_vehicle = "rhsusf_m998_w_2dr_fulltop" createVehicle _position;
		clearWeaponCargoGlobal _vehicle;
		clearMagazineCargoGlobal _vehicle;
		clearBackpackCargoGlobal _vehicle;
		clearItemCargoGlobal _vehicle;
		
		_vehicle animate["hide_A2_Parts",1];
		_vehicle animate["hide_Antenna",1];
		_vehicle animate["hide_CIP",1];
		
		{
			_vehicle setObjectTextureGlobal[_forEachIndex, _x];
		}forEach ([["rhsusf\addons\rhsusf_hmmwv\textures\m998_exterior_w_co.paa","rhsusf\addons\rhsusf_hmmwv\textures\m998_interior_w_co.paa","rhsusf\addons\rhsusf_hmmwv\textures\a2_parts_wd_co.paa","rhsusf\addons\rhsusf_hmmwv\textures\wheel_wranglermt_b_co.paa","rhsusf\addons\rhsusf_hmmwv\textures\m998_mainbody_co.paa","rhsusf\addons\rhsusf_hmmwv\textures\gratting_w_co.paa","rhsusf\addons\rhsusf_hmmwv\textures\tile_exmetal_co.paa","rhsusf\addons\rhsusf_hmmwv\textures\m1025_w_co.paa","rhsusf\addons\rhsusf_hmmwv\textures\mk64mount_w_co.paa","rhsusf\addons\rhsusf_hmmwv\unitdecals\82ndab_505reg_1stbn_e25_w_ca.paa","rhsusf\addons\rhsusf_hmmwv\unitdecals\blankdecal_ca.paa"],
		["rhsusf\addons\rhsusf_hmmwv\textures\m998_exterior_g_co.paa","rhsusf\addons\rhsusf_hmmwv\textures\m998_interior_w_co.paa","rhsusf\addons\rhsusf_hmmwv\textures\a2_parts_g_co.paa","rhsusf\addons\rhsusf_hmmwv\textures\wheel_wranglermt_b_co.paa","rhsusf\addons\rhsusf_hmmwv\textures\m998_mainbody_g_co.paa","rhsusf\addons\rhsusf_hmmwv\textures\gratting_w_co.paa","rhsusf\addons\rhsusf_hmmwv\textures\tile_exmetal_co.paa","rhsusf\addons\rhsusf_hmmwv\textures\m1025_g_co.paa","rhsusf\addons\rhsusf_hmmwv\textures\mk64mount_w_co.paa","rhsusf\addons\rhsusf_hmmwv\unitdecals\82ndab_505reg_1stbn_e25_w_ca.paa","rhsusf\addons\rhsusf_hmmwv\unitdecals\blankdecal_ca.paa"]]call BIS_fnc_selectRandom);
		
		switch(side _group) do
		{
			case WEST:
			{
				//teamleader
				_unit = _group createUnit["B_T_Soldier_SL_F", _position, [], 0, "NONE"];
				[_unit, "jungle_grenadier_m4a1_m203", _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
				_unit moveInCargo _vehicle;
				//driver
				_unit = _group createUnit["B_T_Soldier_F", _position, [], 0, "NONE"];
				[_unit, "jungle_rifleman_m4a1", _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
				_unit moveInDriver _vehicle;
				//cargo
				_unit = _group createUnit["B_T_Soldier_AR_F", _position, [], 0, "NONE"];
				[_unit, ["jungle_automaticrifleman_m249_pip_long","jungle_maschinegunner_minimi_long"]call BIS_fnc_selectRandom, _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
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
			};
			
			case RESISTANCE:
			{
				//teamleader
				_unit = _group createUnit["I_Soldier_SL_F", _position, [], 0, "NONE"];
				[_unit, "jungle_grenadier_m4a1_m203", _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
				_unit moveInCargo _vehicle;
				//driver
				_unit = _group createUnit["I_soldier_F", _position, [], 0, "NONE"];
				[_unit, "jungle_rifleman_m4a1", _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
				_unit moveInDriver _vehicle;
				//cargo
				_unit = _group createUnit["I_Soldier_LAT_F", _position, [], 0, "NONE"];
				[_unit, ["jungle_automaticrifleman_m249_pip_long","jungle_maschinegunner_minimi_long"]call BIS_fnc_selectRandom, _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
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
			};
			
			default{};
		};
		_group addVehicle _vehicle;
	};
	
	case "m1097_2d_half":
	{
		//1 - 7
		_vehicle = "rhsusf_m998_w_2dr_halftop" createVehicle _position;
		clearWeaponCargoGlobal _vehicle;
		clearMagazineCargoGlobal _vehicle;
		clearBackpackCargoGlobal _vehicle;
		clearItemCargoGlobal _vehicle;
		
		_vehicle animate["hide_A2_Parts",1];
		_vehicle animate["hide_Antenna",1];
		_vehicle animate["hide_CIP",1];
		
		{
			_vehicle setObjectTextureGlobal[_forEachIndex, _x];
		}forEach ([["rhsusf\addons\rhsusf_hmmwv\textures\m998_exterior_w_co.paa","rhsusf\addons\rhsusf_hmmwv\textures\m998_interior_w_co.paa","rhsusf\addons\rhsusf_hmmwv\textures\a2_parts_wd_co.paa","rhsusf\addons\rhsusf_hmmwv\textures\wheel_wranglermt_b_co.paa","rhsusf\addons\rhsusf_hmmwv\textures\m998_mainbody_co.paa","rhsusf\addons\rhsusf_hmmwv\textures\gratting_w_co.paa","rhsusf\addons\rhsusf_hmmwv\textures\tile_exmetal_co.paa","rhsusf\addons\rhsusf_hmmwv\textures\m1025_w_co.paa","rhsusf\addons\rhsusf_hmmwv\textures\mk64mount_w_co.paa","rhsusf\addons\rhsusf_hmmwv\unitdecals\82ndab_505reg_1stbn_e25_w_ca.paa","rhsusf\addons\rhsusf_hmmwv\unitdecals\blankdecal_ca.paa"],
		["rhsusf\addons\rhsusf_hmmwv\textures\m998_exterior_g_co.paa","rhsusf\addons\rhsusf_hmmwv\textures\m998_interior_w_co.paa","rhsusf\addons\rhsusf_hmmwv\textures\a2_parts_g_co.paa","rhsusf\addons\rhsusf_hmmwv\textures\wheel_wranglermt_b_co.paa","rhsusf\addons\rhsusf_hmmwv\textures\m998_mainbody_g_co.paa","rhsusf\addons\rhsusf_hmmwv\textures\gratting_w_co.paa","rhsusf\addons\rhsusf_hmmwv\textures\tile_exmetal_co.paa","rhsusf\addons\rhsusf_hmmwv\textures\m1025_g_co.paa","rhsusf\addons\rhsusf_hmmwv\textures\mk64mount_w_co.paa","rhsusf\addons\rhsusf_hmmwv\unitdecals\82ndab_505reg_1stbn_e25_w_ca.paa","rhsusf\addons\rhsusf_hmmwv\unitdecals\blankdecal_ca.paa"]]call BIS_fnc_selectRandom);
		
		switch(side _group) do
		{
			case WEST:
			{
				//teamleader
				_unit = _group createUnit["B_T_Soldier_SL_F", _position, [], 0, "NONE"];
				[_unit, "jungle_grenadier_m4a1_m203", _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
				_unit moveInCargo _vehicle;
				//driver
				_unit = _group createUnit["B_T_Soldier_F", _position, [], 0, "NONE"];
				[_unit, "jungle_rifleman_m4a1", _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
				_unit moveInDriver _vehicle;
				//cargo
				_unit = _group createUnit["B_T_Soldier_AR_F", _position, [], 0, "NONE"];
				[_unit, ["jungle_automaticrifleman_m249_pip_long","jungle_maschinegunner_minimi_long"]call BIS_fnc_selectRandom, _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
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
			};
			
			case RESISTANCE:
			{
				//teamleader
				_unit = _group createUnit["I_Soldier_SL_F", _position, [], 0, "NONE"];
				[_unit, "jungle_grenadier_m4a1_m203", _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
				_unit moveInCargo _vehicle;
				//driver
				_unit = _group createUnit["I_soldier_F", _position, [], 0, "NONE"];
				[_unit, "jungle_rifleman_m4a1", _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
				_unit moveInDriver _vehicle;
				//cargo
				_unit = _group createUnit["I_Soldier_LAT_F", _position, [], 0, "NONE"];
				[_unit, ["jungle_automaticrifleman_m249_pip_long","jungle_maschinegunner_minimi_long"]call BIS_fnc_selectRandom, _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
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
			};
			
			default{};
		};
		_group addVehicle _vehicle;
	};
	
	case "m1097_2d_half_open":
	{
		//1 - 7
		_vehicle = "rhsusf_m998_w_2dr" createVehicle _position;
		clearWeaponCargoGlobal _vehicle;
		clearMagazineCargoGlobal _vehicle;
		clearBackpackCargoGlobal _vehicle;
		clearItemCargoGlobal _vehicle;
		
		_vehicle animate["hide_A2_Parts",1];
		_vehicle animate["hide_Antenna",1];
		_vehicle animate["hide_CIP",1];
		
		{
			_vehicle setObjectTextureGlobal[_forEachIndex, _x];
		}forEach ([["rhsusf\addons\rhsusf_hmmwv\textures\m998_exterior_w_co.paa","rhsusf\addons\rhsusf_hmmwv\textures\m998_interior_w_co.paa","rhsusf\addons\rhsusf_hmmwv\textures\a2_parts_wd_co.paa","rhsusf\addons\rhsusf_hmmwv\textures\wheel_wranglermt_b_co.paa","rhsusf\addons\rhsusf_hmmwv\textures\m998_mainbody_co.paa","rhsusf\addons\rhsusf_hmmwv\textures\gratting_w_co.paa","rhsusf\addons\rhsusf_hmmwv\textures\tile_exmetal_co.paa","rhsusf\addons\rhsusf_hmmwv\textures\m1025_w_co.paa","rhsusf\addons\rhsusf_hmmwv\textures\mk64mount_w_co.paa","rhsusf\addons\rhsusf_hmmwv\unitdecals\82ndab_505reg_1stbn_e25_w_ca.paa","rhsusf\addons\rhsusf_hmmwv\unitdecals\blankdecal_ca.paa"],
		["rhsusf\addons\rhsusf_hmmwv\textures\m998_exterior_g_co.paa","rhsusf\addons\rhsusf_hmmwv\textures\m998_interior_w_co.paa","rhsusf\addons\rhsusf_hmmwv\textures\a2_parts_g_co.paa","rhsusf\addons\rhsusf_hmmwv\textures\wheel_wranglermt_b_co.paa","rhsusf\addons\rhsusf_hmmwv\textures\m998_mainbody_g_co.paa","rhsusf\addons\rhsusf_hmmwv\textures\gratting_w_co.paa","rhsusf\addons\rhsusf_hmmwv\textures\tile_exmetal_co.paa","rhsusf\addons\rhsusf_hmmwv\textures\m1025_g_co.paa","rhsusf\addons\rhsusf_hmmwv\textures\mk64mount_w_co.paa","rhsusf\addons\rhsusf_hmmwv\unitdecals\82ndab_505reg_1stbn_e25_w_ca.paa","rhsusf\addons\rhsusf_hmmwv\unitdecals\blankdecal_ca.paa"]]call BIS_fnc_selectRandom);
		
		switch(side _group) do
		{
			case WEST:
			{
				//teamleader
				_unit = _group createUnit["B_T_Soldier_SL_F", _position, [], 0, "NONE"];
				[_unit, "jungle_grenadier_m4a1_m203", _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
				_unit moveInCargo _vehicle;
				//driver
				_unit = _group createUnit["B_T_Soldier_F", _position, [], 0, "NONE"];
				[_unit, "jungle_rifleman_m4a1", _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
				_unit moveInDriver _vehicle;
				//cargo
				_unit = _group createUnit["B_T_Soldier_AR_F", _position, [], 0, "NONE"];
				[_unit, ["jungle_automaticrifleman_m249_pip_long","jungle_maschinegunner_minimi_long"]call BIS_fnc_selectRandom, _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
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
			};
			
			case RESISTANCE:
			{
				//teamleader
				_unit = _group createUnit["I_Soldier_SL_F", _position, [], 0, "NONE"];
				[_unit, "jungle_grenadier_m4a1_m203", _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
				_unit moveInCargo _vehicle;
				//driver
				_unit = _group createUnit["I_soldier_F", _position, [], 0, "NONE"];
				[_unit, "jungle_rifleman_m4a1", _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
				_unit moveInDriver _vehicle;
				//cargo
				_unit = _group createUnit["I_Soldier_LAT_F", _position, [], 0, "NONE"];
				[_unit, ["jungle_automaticrifleman_m249_pip_long","jungle_maschinegunner_minimi_long"]call BIS_fnc_selectRandom, _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
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
			};
			
			default{};
		};
		_group addVehicle _vehicle;
	};
	
	case "rg33":
	{
		//1 - 7
		_vehicle = "rhsusf_rg33_wd" createVehicle _position;
		clearWeaponCargoGlobal _vehicle;
		clearMagazineCargoGlobal _vehicle;
		clearBackpackCargoGlobal _vehicle;
		clearItemCargoGlobal _vehicle;
		
		switch(side _group) do
		{
			case WEST:
			{
				//teamleader
				_unit = _group createUnit["B_T_Soldier_SL_F", _position, [], 0, "NONE"];
				[_unit, "jungle_grenadier_m4a1_m203", _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
				_unit moveInCargo _vehicle;
				//driver
				_unit = _group createUnit["B_T_Soldier_F", _position, [], 0, "NONE"];
				[_unit, "jungle_rifleman_m4a1", _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
				_unit moveInDriver _vehicle;
				//cargo
				_unit = _group createUnit["B_T_Soldier_AR_F", _position, [], 0, "NONE"];
				[_unit, ["jungle_automaticrifleman_m249_pip_long","jungle_maschinegunner_minimi_long"]call BIS_fnc_selectRandom, _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
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
			};
			
			case RESISTANCE:
			{
				//teamleader
				_unit = _group createUnit["I_Soldier_SL_F", _position, [], 0, "NONE"];
				[_unit, "jungle_grenadier_m4a1_m203", _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
				_unit moveInCargo _vehicle;
				//driver
				_unit = _group createUnit["I_soldier_F", _position, [], 0, "NONE"];
				[_unit, "jungle_rifleman_m4a1", _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
				_unit moveInDriver _vehicle;
				//cargo
				_unit = _group createUnit["I_Soldier_LAT_F", _position, [], 0, "NONE"];
				[_unit, ["jungle_automaticrifleman_m249_pip_long","jungle_maschinegunner_minimi_long"]call BIS_fnc_selectRandom, _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
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
			};
			
			default{};
		};
		_group addVehicle _vehicle;
	};
	
	case "rg33":
	{
		//1 - 7
		_vehicle = "rhsusf_rg33_wd" createVehicle _position;
		clearWeaponCargoGlobal _vehicle;
		clearMagazineCargoGlobal _vehicle;
		clearBackpackCargoGlobal _vehicle;
		clearItemCargoGlobal _vehicle;
		
		switch(side _group) do
		{
			case WEST:
			{
				//teamleader
				_unit = _group createUnit["B_T_Soldier_SL_F", _position, [], 0, "NONE"];
				[_unit, "jungle_grenadier_m4a1_m203", _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
				_unit moveInCargo _vehicle;
				//driver
				_unit = _group createUnit["B_T_Soldier_F", _position, [], 0, "NONE"];
				[_unit, "jungle_rifleman_m4a1", _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
				_unit moveInDriver _vehicle;
				//cargo
				_unit = _group createUnit["B_T_Soldier_AR_F", _position, [], 0, "NONE"];
				[_unit, ["jungle_automaticrifleman_m249_pip_long","jungle_maschinegunner_minimi_long"]call BIS_fnc_selectRandom, _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
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
			};
			
			case RESISTANCE:
			{
				//teamleader
				_unit = _group createUnit["I_Soldier_SL_F", _position, [], 0, "NONE"];
				[_unit, "jungle_grenadier_m4a1_m203", _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
				_unit moveInCargo _vehicle;
				//driver
				_unit = _group createUnit["I_soldier_F", _position, [], 0, "NONE"];
				[_unit, "jungle_rifleman_m4a1", _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
				_unit moveInDriver _vehicle;
				//cargo
				_unit = _group createUnit["I_Soldier_LAT_F", _position, [], 0, "NONE"];
				[_unit, ["jungle_automaticrifleman_m249_pip_long","jungle_maschinegunner_minimi_long"]call BIS_fnc_selectRandom, _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
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
			};
			
			default{};
		};
		_group addVehicle _vehicle;
	};
	
	case "rg33_m2":
	{
		//1 - 8
		_vehicle = "rhsusf_rg33_m2_wd" createVehicle _position;
		clearWeaponCargoGlobal _vehicle;
		clearMagazineCargoGlobal _vehicle;
		clearBackpackCargoGlobal _vehicle;
		clearItemCargoGlobal _vehicle;
		
		switch(side _group) do
		{
			case WEST:
			{
				//teamleader
				_unit = _group createUnit["B_T_Soldier_SL_F", _position, [], 0, "NONE"];
				[_unit, "jungle_grenadier_m4a1_m203", _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
				_unit moveInCargo _vehicle;
				//driver
				_unit = _group createUnit["B_T_Soldier_F", _position, [], 0, "NONE"];
				[_unit, "jungle_rifleman_m4a1", _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
				_unit moveInDriver _vehicle;
				//gunner
				_unit = _group createUnit["B_T_Soldier_F", _position, [], 0, "NONE"];
				[_unit, "jungle_rifleman_m4a1", _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
				_unit moveInGunner _vehicle;
				//cargo
				_unit = _group createUnit["B_T_Soldier_AR_F", _position, [], 0, "NONE"];
				[_unit, ["jungle_automaticrifleman_m249_pip_long","jungle_maschinegunner_minimi_long"]call BIS_fnc_selectRandom, _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
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
				_unit = _group createUnit["B_T_Medic_F", _position, [], 0, "NONE"];
				[_unit, "jungle_medic_m4a1", _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
				_unit moveInCargo _vehicle;
			};
			
			case RESISTANCE:
			{
				//teamleader
				_unit = _group createUnit["I_Soldier_SL_F", _position, [], 0, "NONE"];
				[_unit, "jungle_grenadier_m4a1_m203", _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
				_unit moveInCargo _vehicle;
				//driver
				_unit = _group createUnit["I_soldier_F", _position, [], 0, "NONE"];
				[_unit, "jungle_rifleman_m4a1", _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
				_unit moveInDriver _vehicle;
				//gunner
				_unit = _group createUnit["I_soldier_F", _position, [], 0, "NONE"];
				[_unit, "jungle_rifleman_m4a1", _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
				_unit moveInGunner _vehicle;
				//cargo
				_unit = _group createUnit["I_Soldier_LAT_F", _position, [], 0, "NONE"];
				[_unit, ["jungle_automaticrifleman_m249_pip_long","jungle_maschinegunner_minimi_long"]call BIS_fnc_selectRandom, _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
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
				_unit = _group createUnit["I_medic_F", _position, [], 0, "NONE"];
				[_unit, "jungle_medic_m4a1", _backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";
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