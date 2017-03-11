//////////////////////////////////////////////////////////////////
// Function file for Armed Assault
// Created by: Nuka [www.sealteam10.de]
//////////////////////////////////////////////////////////////////

//[group, position, type/vehicle, backpack, dir]execVM "framework\equipment\aaf\ind_aaf_vehicle_light.sqf";

private['_group','_position','_unit','_vehicle','_dir','_backpack'];
_group = _this select 0;
_position = _this select 1;
_backpack = if(count _this > 3) then{_this select 3} else{false};
_dir = if(count _this > 4) then{_this select 4} else{0};

switch(_this select 2) do 
{	
	case "fennek":
	{
		//2 - 2
		_vehicle = "I_MRAP_03_F" createVehicle _position;
		clearWeaponCargoGlobal _vehicle;
		clearMagazineCargoGlobal _vehicle;
		clearBackpackCargoGlobal _vehicle;
		clearItemCargoGlobal _vehicle;
		
		
		//teamleader
		_unit = _group createUnit["I_Soldier_TL_F", _position, [], 0, "NONE"];
		[_unit, "leader_g36a1ag36", _backpack]execVM "framework\equipment\aaf\equipment_aaf.sqf";
		_unit moveInCommander _vehicle;
		//rifleman
		_unit = _group createUnit["I_soldier_F", _position, [], 0, "NONE"];
		[_unit, "rifleman_g36a1", _backpack]execVM "framework\equipment\aaf\equipment_aaf.sqf";
		_unit moveInDriver _vehicle;
		//rifleman
		_unit = _group createUnit["I_soldier_F", _position, [], 0, "NONE"];
		[_unit, "rifleman_g36a1", _backpack]execVM "framework\equipment\aaf\equipment_aaf.sqf";
		_unit moveInCargo _vehicle;
		//automaticrifleman
		_unit = _group createUnit["I_Soldier_AR_F", _position, [], 0, "NONE"];
		[_unit, "lmg_mg36a1", _backpack]execVM "framework\equipment\aaf\equipment_aaf.sqf";
		_unit moveInCargo _vehicle;
		
		_group addVehicle _vehicle;
	};
	
	case "fennek_hmg":
	{
		//3 - 1
		_vehicle = "I_MRAP_03_hmg_F" createVehicle _position;
		clearWeaponCargoGlobal _vehicle;
		clearMagazineCargoGlobal _vehicle;
		clearBackpackCargoGlobal _vehicle;
		clearItemCargoGlobal _vehicle;
		
		
		//teamleader
		_unit = _group createUnit["I_Soldier_TL_F", _position, [], 0, "NONE"];
		[_unit, "leader_g36a1ag36", _backpack]execVM "framework\equipment\aaf\equipment_aaf.sqf";
		_unit moveInCommander _vehicle;
		//rifleman
		_unit = _group createUnit["I_soldier_F", _position, [], 0, "NONE"];
		[_unit, "rifleman_g36a1", _backpack]execVM "framework\equipment\aaf\equipment_aaf.sqf";
		_unit moveInDriver _vehicle;
		//rifleman
		_unit = _group createUnit["I_soldier_F", _position, [], 0, "NONE"];
		[_unit, "rifleman_g36a1", _backpack]execVM "framework\equipment\aaf\equipment_aaf.sqf";
		_unit moveInGunner _vehicle;
		//automaticrifleman
		_unit = _group createUnit["I_Soldier_AR_F", _position, [], 0, "NONE"];
		[_unit, "lmg_mg36a1", _backpack]execVM "framework\equipment\aaf\equipment_aaf.sqf";
		_unit moveInCargo _vehicle;
		
		_group addVehicle _vehicle;
	};
	
	case "fennek_gmg":
	{
		//3 - 1
		_vehicle = "I_MRAP_03_gmg_F" createVehicle _position;
		clearWeaponCargoGlobal _vehicle;
		clearMagazineCargoGlobal _vehicle;
		clearBackpackCargoGlobal _vehicle;
		clearItemCargoGlobal _vehicle;
		
		
		//teamleader
		_unit = _group createUnit["I_Soldier_TL_F", _position, [], 0, "NONE"];
		[_unit, "leader_g36a1ag36", _backpack]execVM "framework\equipment\aaf\equipment_aaf.sqf";
		_unit moveInCommander _vehicle;
		//rifleman
		_unit = _group createUnit["I_soldier_F", _position, [], 0, "NONE"];
		[_unit, "rifleman_g36a1", _backpack]execVM "framework\equipment\aaf\equipment_aaf.sqf";
		_unit moveInDriver _vehicle;
		//rifleman
		_unit = _group createUnit["I_soldier_F", _position, [], 0, "NONE"];
		[_unit, "rifleman_g36a1", _backpack]execVM "framework\equipment\aaf\equipment_aaf.sqf";
		_unit moveInGunner _vehicle;
		//automaticrifleman
		_unit = _group createUnit["I_Soldier_AR_F", _position, [], 0, "NONE"];
		[_unit, "lmg_mg36a1", _backpack]execVM "framework\equipment\aaf\equipment_aaf.sqf";
		_unit moveInCargo _vehicle;
		
		_group addVehicle _vehicle;
	};
	
	case "quad":
	{
		//1 - 1
		_vehicle = "I_Quadbike_01_F" createVehicle _position;
		clearWeaponCargoGlobal _vehicle;
		clearMagazineCargoGlobal _vehicle;
		clearBackpackCargoGlobal _vehicle;
		clearItemCargoGlobal _vehicle;
		
		
		//teamleader
		_unit = _group createUnit["I_Soldier_TL_F", _position, [], 0, "NONE"];
		[_unit, "leader_g36a1ag36", false]execVM "framework\equipment\aaf\equipment_aaf.sqf";
		_unit moveInDriver _vehicle;
		//rifleman
		_unit = _group createUnit["I_soldier_F", _position, [], 0, "NONE"];
		[_unit, "rifleman_g36a1", true]execVM "framework\equipment\aaf\equipment_aaf.sqf";
		_unit moveInCargo _vehicle;
		
		_group addVehicle _vehicle;
	};
	
	case "quad_at":
	{
		//1 - 1
		_vehicle = "I_Quadbike_01_F" createVehicle _position;
		clearWeaponCargoGlobal _vehicle;
		clearMagazineCargoGlobal _vehicle;
		clearBackpackCargoGlobal _vehicle;
		clearItemCargoGlobal _vehicle;
		
		
		//teamleader
		_unit = _group createUnit["I_Soldier_TL_F", _position, [], 0, "NONE"];
		[_unit, "leader_g36a1ag36", false]execVM "framework\equipment\aaf\equipment_aaf.sqf";
		_unit moveInDriver _vehicle;
		//antitank titan
		_unit = _group createUnit["I_Soldier_AT_F", _position, [], 0, "NONE"];
		[_unit, "antitank_g36a1_titan", true]execVM "framework\equipment\aaf\equipment_aaf.sqf";
		_unit moveInCargo _vehicle;
		
		_group addVehicle _vehicle;
	};
	
	case "quad_aa":
	{
		//1 - 1
		_vehicle = "I_Quadbike_01_F" createVehicle _position;
		clearWeaponCargoGlobal _vehicle;
		clearMagazineCargoGlobal _vehicle;
		clearBackpackCargoGlobal _vehicle;
		clearItemCargoGlobal _vehicle;
		
		
		//teamleader
		_unit = _group createUnit["I_Soldier_TL_F", _position, [], 0, "NONE"];
		[_unit, "leader_g36a1ag36", false]execVM "framework\equipment\aaf\equipment_aaf.sqf";
		_unit moveInDriver _vehicle;
		//antiair titan
		_unit = _group createUnit["I_Soldier_AA_F", _position, [], 0, "NONE"];
		[_unit, "antiair_g36a1_titan", true]execVM "framework\equipment\aaf\equipment_aaf.sqf";
		_unit moveInCargo _vehicle;
		
		_group addVehicle _vehicle;
	};
	
	case "mot_kamaz":
	{
		//1 - 16
		_vehicle = "I_Truck_02_covered_F" createVehicle _position;
		clearWeaponCargoGlobal _vehicle;
		clearMagazineCargoGlobal _vehicle;
		clearBackpackCargoGlobal _vehicle;
		clearItemCargoGlobal _vehicle;
		
		
		//squadleader
		_unit = _group createUnit["I_Soldier_SL_F", _position, [], 0, "NONE"];
		[_unit, "leader_g36a1ag36", _backpack]execVM "framework\equipment\aaf\equipment_aaf.sqf";
		_unit moveInCargo _vehicle;
		//rifleman
		_unit = _group createUnit["I_soldier_F", _position, [], 0, "NONE"];
		[_unit, "rifleman_g36a1", _backpack]execVM "framework\equipment\aaf\equipment_aaf.sqf";
		_unit moveInDriver _vehicle;
		//rifleman
		_unit = _group createUnit["I_soldier_F", _position, [], 0, "NONE"];
		[_unit, "rifleman_g36a1", _backpack]execVM "framework\equipment\aaf\equipment_aaf.sqf";
		_unit moveInCargo _vehicle;
		//automaticrifleman
		_unit = _group createUnit["I_Soldier_AR_F", _position, [], 0, "NONE"];
		[_unit, "lmg_mg36a1", _backpack]execVM "framework\equipment\aaf\equipment_aaf.sqf";
		_unit moveInCargo _vehicle;
		//grenadier
		_unit = _group createUnit["I_Soldier_GL_F", _position, [], 0, "NONE"];
		[_unit, "grenadier_g36a1ag36", _backpack]execVM "framework\equipment\aaf\equipment_aaf.sqf";
		_unit moveInCargo _vehicle;
		//rifleman
		_unit = _group createUnit["I_soldier_F", _position, [], 0, "NONE"];
		[_unit, "rifleman_g36a1", _backpack]execVM "framework\equipment\aaf\equipment_aaf.sqf";
		_unit moveInCargo _vehicle;
		//antitank nlaw
		_unit = _group createUnit["I_Soldier_LAT_F", _position, [], 0, "NONE"];
		[_unit, "antitank_g36a1_nlaw", _backpack]execVM "framework\equipment\aaf\equipment_aaf.sqf";
		_unit moveInCargo _vehicle;
		//maschinegunner
		_unit = _group createUnit["I_Soldier_AR_F", _position, [], 0, "NONE"];
		[_unit, "mg_m60e4", _backpack]execVM "framework\equipment\aaf\equipment_aaf.sqf";
		_unit moveInCargo _vehicle;
		//rifleman
		_unit = _group createUnit["I_soldier_F", _position, [], 0, "NONE"];
		[_unit, "rifleman_g36a1", _backpack]execVM "framework\equipment\aaf\equipment_aaf.sqf";
		_unit moveInCargo _vehicle;
		//rifleman
		_unit = _group createUnit["I_soldier_F", _position, [], 0, "NONE"];
		[_unit, "rifleman_g36a1", _backpack]execVM "framework\equipment\aaf\equipment_aaf.sqf";
		_unit moveInCargo _vehicle;
		//medic
		_unit = _group createUnit["I_medic_F", _position, [], 0, "NONE"];
		[_unit, "medic_g36a1", _backpack]execVM "framework\equipment\aaf\equipment_aaf.sqf";
		_unit moveInCargo _vehicle;
		//antitank nlaw
		_unit = _group createUnit["I_Soldier_LAT_F", _position, [], 0, "NONE"];
		[_unit, "antitank_g36a1_nlaw", _backpack]execVM "framework\equipment\aaf\equipment_aaf.sqf";
		_unit moveInCargo _vehicle;
		//marksman
		_unit = _group createUnit["I_Soldier_M_F", _position, [], 0, "NONE"];
		[_unit, "marksman_psg1", _backpack]execVM "framework\equipment\aaf\equipment_aaf.sqf";
		_unit moveInCargo _vehicle;
		//grenadier
		_unit = _group createUnit["I_Soldier_GL_F", _position, [], 0, "NONE"];
		[_unit, "grenadier_g36a1ag36", _backpack]execVM "framework\equipment\aaf\equipment_aaf.sqf";
		_unit moveInCargo _vehicle;
		//grenadier
		_unit = _group createUnit["I_Soldier_GL_F", _position, [], 0, "NONE"];
		[_unit, "grenadier_g36a1ag36", _backpack]execVM "framework\equipment\aaf\equipment_aaf.sqf";
		_unit moveInCargo _vehicle;
		//rifleman
		_unit = _group createUnit["I_soldier_F", _position, [], 0, "NONE"];
		[_unit, "rifleman_g36a1", _backpack]execVM "framework\equipment\aaf\equipment_aaf.sqf";
		_unit moveInCargo _vehicle;
		//rifleman
		_unit = _group createUnit["I_soldier_F", _position, [], 0, "NONE"];
		[_unit, "rifleman_g36a1", _backpack]execVM "framework\equipment\aaf\equipment_aaf.sqf";
		_unit moveInCargo _vehicle;
		
		
		_group addVehicle _vehicle;
	};
	
	case "mot_kamaz_open":
	{
		//1 - 16
		_vehicle = "I_Truck_02_transport_F" createVehicle _position;
		clearWeaponCargoGlobal _vehicle;
		clearMagazineCargoGlobal _vehicle;
		clearBackpackCargoGlobal _vehicle;
		clearItemCargoGlobal _vehicle;
		
		
		//squadleader
		_unit = _group createUnit["I_Soldier_SL_F", _position, [], 0, "NONE"];
		[_unit, "leader_g36a1ag36", _backpack]execVM "framework\equipment\aaf\equipment_aaf.sqf";
		_unit moveInCargo _vehicle;
		//rifleman
		_unit = _group createUnit["I_soldier_F", _position, [], 0, "NONE"];
		[_unit, "rifleman_g36a1", _backpack]execVM "framework\equipment\aaf\equipment_aaf.sqf";
		_unit moveInDriver _vehicle;
		//rifleman
		_unit = _group createUnit["I_soldier_F", _position, [], 0, "NONE"];
		[_unit, "rifleman_g36a1", _backpack]execVM "framework\equipment\aaf\equipment_aaf.sqf";
		_unit moveInCargo _vehicle;
		//automaticrifleman
		_unit = _group createUnit["I_Soldier_AR_F", _position, [], 0, "NONE"];
		[_unit, "lmg_mg36a1", _backpack]execVM "framework\equipment\aaf\equipment_aaf.sqf";
		_unit moveInCargo _vehicle;
		//grenadier
		_unit = _group createUnit["I_Soldier_GL_F", _position, [], 0, "NONE"];
		[_unit, "grenadier_g36a1ag36", _backpack]execVM "framework\equipment\aaf\equipment_aaf.sqf";
		_unit moveInCargo _vehicle;
		//rifleman
		_unit = _group createUnit["I_soldier_F", _position, [], 0, "NONE"];
		[_unit, "rifleman_g36a1", _backpack]execVM "framework\equipment\aaf\equipment_aaf.sqf";
		_unit moveInCargo _vehicle;
		//antitank nlaw
		_unit = _group createUnit["I_Soldier_LAT_F", _position, [], 0, "NONE"];
		[_unit, "antitank_g36a1_nlaw", _backpack]execVM "framework\equipment\aaf\equipment_aaf.sqf";
		_unit moveInCargo _vehicle;
		//maschinegunner
		_unit = _group createUnit["I_Soldier_AR_F", _position, [], 0, "NONE"];
		[_unit, "mg_m60e4", _backpack]execVM "framework\equipment\aaf\equipment_aaf.sqf";
		_unit moveInCargo _vehicle;
		//rifleman
		_unit = _group createUnit["I_soldier_F", _position, [], 0, "NONE"];
		[_unit, "rifleman_g36a1", _backpack]execVM "framework\equipment\aaf\equipment_aaf.sqf";
		_unit moveInCargo _vehicle;
		//rifleman
		_unit = _group createUnit["I_soldier_F", _position, [], 0, "NONE"];
		[_unit, "rifleman_g36a1", _backpack]execVM "framework\equipment\aaf\equipment_aaf.sqf";
		_unit moveInCargo _vehicle;
		//medic
		_unit = _group createUnit["I_medic_F", _position, [], 0, "NONE"];
		[_unit, "medic_g36a1", _backpack]execVM "framework\equipment\aaf\equipment_aaf.sqf";
		_unit moveInCargo _vehicle;
		//antitank nlaw
		_unit = _group createUnit["I_Soldier_LAT_F", _position, [], 0, "NONE"];
		[_unit, "antitank_g36a1_nlaw", _backpack]execVM "framework\equipment\aaf\equipment_aaf.sqf";
		_unit moveInCargo _vehicle;
		//marksman
		_unit = _group createUnit["I_Soldier_M_F", _position, [], 0, "NONE"];
		[_unit, "marksman_psg1", _backpack]execVM "framework\equipment\aaf\equipment_aaf.sqf";
		_unit moveInCargo _vehicle;
		//grenadier
		_unit = _group createUnit["I_Soldier_GL_F", _position, [], 0, "NONE"];
		[_unit, "grenadier_g36a1ag36", _backpack]execVM "framework\equipment\aaf\equipment_aaf.sqf";
		_unit moveInCargo _vehicle;
		//grenadier
		_unit = _group createUnit["I_Soldier_GL_F", _position, [], 0, "NONE"];
		[_unit, "grenadier_g36a1ag36", _backpack]execVM "framework\equipment\aaf\equipment_aaf.sqf";
		_unit moveInCargo _vehicle;
		//rifleman
		_unit = _group createUnit["I_soldier_F", _position, [], 0, "NONE"];
		[_unit, "rifleman_g36a1", _backpack]execVM "framework\equipment\aaf\equipment_aaf.sqf";
		_unit moveInCargo _vehicle;
		//rifleman
		_unit = _group createUnit["I_soldier_F", _position, [], 0, "NONE"];
		[_unit, "rifleman_g36a1", _backpack]execVM "framework\equipment\aaf\equipment_aaf.sqf";
		_unit moveInCargo _vehicle;
		
		
		_group addVehicle _vehicle;
	};
	
	case "kamaz":
	{
		//1 - 16
		_vehicle = "I_Truck_02_covered_F" createVehicle _position;
		clearWeaponCargoGlobal _vehicle;
		clearMagazineCargoGlobal _vehicle;
		clearBackpackCargoGlobal _vehicle;
		clearItemCargoGlobal _vehicle;
		
		
		//rifleman
		_unit = _group createUnit["I_soldier_F", _position, [], 0, "NONE"];
		[_unit, "rifleman_g36a1", _backpack]execVM "framework\equipment\aaf\equipment_aaf.sqf";
		_unit moveInDriver _vehicle;
		
		_group addVehicle _vehicle;
	};
	
	case "kamaz_open":
	{
		//1 - 16
		_vehicle = "I_Truck_02_transport_F" createVehicle _position;
		clearWeaponCargoGlobal _vehicle;
		clearMagazineCargoGlobal _vehicle;
		clearBackpackCargoGlobal _vehicle;
		clearItemCargoGlobal _vehicle;
		
		
		//rifleman
		_unit = _group createUnit["I_soldier_F", _position, [], 0, "NONE"];
		[_unit, "rifleman_g36a1", _backpack]execVM "framework\equipment\aaf\equipment_aaf.sqf";
		_unit moveInDriver _vehicle;
		
		_group addVehicle _vehicle;
	};
};

_group setVariable["framework_vehicle", _vehicle];


if(_dir != 0) then
{
	_vehicle setDir _dir;
};

{
	_x setSkill 1;
}forEach (units _group);

_vehicle addEventHandler["HandleDamage",{if((_this select 4) == "") then{0};}];