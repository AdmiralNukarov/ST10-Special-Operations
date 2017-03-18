//////////////////////////////////////////////////////////////////
// Function file for Armed Assault
// Created by: Nuka [www.sealteam10.de]
//////////////////////////////////////////////////////////////////

//[group, position, type/vehicle, backpack, dir]execVM "framework\aaf\ind_aaf_vehicle_armored.sqf";

private['_group','_position','_unit','_vehicle','_dir','_backpack'];
_group = _this select 0;
_position = _this select 1;
_backpack = if(count _this > 3) then{_this select 3} else{false};
_dir = if(count _this > 4) then{_this select 4} else{0};

switch(_this select 2) do
{	
	case "leopard":
	{
		//3 - 0
		_vehicle = "I_MBT_03_cannon_F" createVehicle _position;
		clearWeaponCargoGlobal _vehicle;
		clearMagazineCargoGlobal _vehicle;
		clearBackpackCargoGlobal _vehicle;
		clearItemCargoGlobal _vehicle;
		
		//crewman commander
		_unit = _group createUnit["I_crew_F", _position, [], 0, "NONE"];
		[_unit, "crewman_g36c", false]execVM "framework\equipment\aaf\equipment_aaf.sqf";
		_unit assignAsCommander _vehicle;
		_unit moveInCommander _vehicle;
		//crewman gunner
		_unit = _group createUnit["I_crew_F", _position, [], 0, "NONE"];
		[_unit, "crewman_g36c", false]execVM "framework\equipment\aaf\equipment_aaf.sqf";
		_unit assignAsGunner _vehicle;
		_unit moveInGunner _vehicle;
		//crewman driver
		_unit = _group createUnit["I_crew_F", _position, [], 0, "NONE"];
		[_unit, "crewman_g36c", false]execVM "framework\equipment\aaf\equipment_aaf.sqf";
		_unit assignAsDriver _vehicle;
		_unit moveInDriver _vehicle;
		
		_group addVehicle _vehicle;
	};
	
	case "warrior":
	{
		//3 - 7
		_vehicle = "I_APC_tracked_03_cannon_F" createVehicle _position;
		clearWeaponCargoGlobal _vehicle;
		clearMagazineCargoGlobal _vehicle;
		clearBackpackCargoGlobal _vehicle;
		clearItemCargoGlobal _vehicle;
		
		//crewman commander
		_unit = _group createUnit["I_crew_F", _position, [], 0, "NONE"];
		[_unit, "crewman_g36c", false]execVM "framework\equipment\aaf\equipment_aaf.sqf";
		_unit assignAsCommander _vehicle;
		_unit moveInCommander _vehicle;
		//crewman gunner
		_unit = _group createUnit["I_crew_F", _position, [], 0, "NONE"];
		[_unit, "crewman_g36c", false]execVM "framework\equipment\aaf\equipment_aaf.sqf";
		_unit assignAsGunner _vehicle;
		_unit moveInGunner _vehicle;
		//crewman driver
		_unit = _group createUnit["I_crew_F", _position, [], 0, "NONE"];
		[_unit, "crewman_g36c", false]execVM "framework\equipment\aaf\equipment_aaf.sqf";
		_unit assignAsDriver _vehicle;
		_unit moveInDriver _vehicle;
		
		_group addVehicle _vehicle;
	};
	
	case "mech_warrior":
	{
		//3 - 7
		_vehicle = "I_APC_tracked_03_cannon_F" createVehicle _position;
		clearWeaponCargoGlobal _vehicle;
		clearMagazineCargoGlobal _vehicle;
		clearBackpackCargoGlobal _vehicle;
		clearItemCargoGlobal _vehicle;
		
		//crewman commander
		_unit = _group createUnit["I_crew_F", _position, [], 0, "NONE"];
		[_unit, "crewman_g36c", false]execVM "framework\equipment\aaf\equipment_aaf.sqf";
		_unit assignAsCommander _vehicle;
		_unit moveInCommander _vehicle;
		//crewman gunner
		_unit = _group createUnit["I_crew_F", _position, [], 0, "NONE"];
		[_unit, "crewman_g36c", false]execVM "framework\equipment\aaf\equipment_aaf.sqf";
		_unit assignAsGunner _vehicle;
		_unit moveInGunner _vehicle;
		//crewman driver
		_unit = _group createUnit["I_crew_F", _position, [], 0, "NONE"];
		[_unit, "crewman_g36c", false]execVM "framework\equipment\aaf\equipment_aaf.sqf";
		_unit assignAsDriver _vehicle;
		_unit moveInDriver _vehicle;
		
		//rifleman
		_unit = _group createUnit["I_soldier_F", _position, [], 0, "NONE"];
		[_unit, "rifleman_g36a1", _backpack]execVM "framework\equipment\aaf\equipment_aaf.sqf";
		_unit moveInCargo _vehicle;
		//automaticrifleman
		_unit = _group createUnit["I_Soldier_AR_F", _position, [], 0, "NONE"];
		[_unit, "lmg_mg36a1", _backpack]execVM "framework\equipment\aaf\equipment_aaf.sqf";
		_unit moveInCargo _vehicle;
		//rifleman
		_unit = _group createUnit["I_soldier_F", _position, [], 0, "NONE"];
		[_unit, "rifleman_g36a1", _backpack]execVM "framework\equipment\aaf\equipment_aaf.sqf";
		_unit moveInCargo _vehicle;
		//antiair titan
		_unit = _group createUnit["I_Soldier_AA_F", _position, [], 0, "NONE"];
		[_unit, "antiair_g36a1_titan", _backpack]execVM "framework\equipment\aaf\equipment_aaf.sqf";
		_unit moveInCargo _vehicle;
		//rifleman
		_unit = _group createUnit["I_soldier_F", _position, [], 0, "NONE"];
		[_unit, "rifleman_g36a1", _backpack]execVM "framework\equipment\aaf\equipment_aaf.sqf";
		_unit moveInCargo _vehicle;
		//automaticrifleman
		_unit = _group createUnit["I_Soldier_AR_F", _position, [], 0, "NONE"];
		[_unit, "lmg_mg36a1", _backpack]execVM "framework\equipment\aaf\equipment_aaf.sqf";
		_unit moveInCargo _vehicle;
		//rifleman
		_unit = _group createUnit["I_soldier_F", _position, [], 0, "NONE"];
		[_unit, "rifleman_g36a1", _backpack]execVM "framework\equipment\aaf\equipment_aaf.sqf";
		_unit moveInCargo _vehicle;
		
		_group addVehicle _vehicle;
	};
	
	case "pandur":
	{
		//3 - 8
		_vehicle = "I_APC_Wheeled_03_cannon_F" createVehicle _position;
		clearWeaponCargoGlobal _vehicle;
		clearMagazineCargoGlobal _vehicle;
		clearBackpackCargoGlobal _vehicle;
		clearItemCargoGlobal _vehicle;
		
		//crewman commander
		_unit = _group createUnit["I_crew_F", _position, [], 0, "NONE"];
		[_unit, "crewman_g36c", false]execVM "framework\equipment\aaf\equipment_aaf.sqf";
		_unit assignAsCommander _vehicle;
		_unit moveInCommander _vehicle;
		//crewman gunner
		_unit = _group createUnit["I_crew_F", _position, [], 0, "NONE"];
		[_unit, "crewman_g36c", false]execVM "framework\equipment\aaf\equipment_aaf.sqf";
		_unit assignAsGunner _vehicle;
		_unit moveInGunner _vehicle;
		//crewman driver
		_unit = _group createUnit["I_crew_F", _position, [], 0, "NONE"];
		[_unit, "crewman_g36c", false]execVM "framework\equipment\aaf\equipment_aaf.sqf";
		_unit assignAsDriver _vehicle;
		_unit moveInDriver _vehicle;
				
		_group addVehicle _vehicle;
	};
	
	case "mech_pandur":
	{
		//3 - 8
		_vehicle = "I_APC_Wheeled_03_cannon_F" createVehicle _position;
		clearWeaponCargoGlobal _vehicle;
		clearMagazineCargoGlobal _vehicle;
		clearBackpackCargoGlobal _vehicle;
		clearItemCargoGlobal _vehicle;
		
		//crewman commander
		_unit = _group createUnit["I_crew_F", _position, [], 0, "NONE"];
		[_unit, "crewman_g36c", false]execVM "framework\equipment\aaf\equipment_aaf.sqf";
		_unit assignAsCommander _vehicle;
		_unit moveInCommander _vehicle;
		//crewman gunner
		_unit = _group createUnit["I_crew_F", _position, [], 0, "NONE"];
		[_unit, "crewman_g36c", false]execVM "framework\equipment\aaf\equipment_aaf.sqf";
		_unit assignAsGunner _vehicle;
		_unit moveInGunner _vehicle;
		//crewman driver
		_unit = _group createUnit["I_crew_F", _position, [], 0, "NONE"];
		[_unit, "crewman_g36c", false]execVM "framework\equipment\aaf\equipment_aaf.sqf";
		_unit assignAsDriver _vehicle;
		_unit moveInDriver _vehicle;
		
		//rifleman
		_unit = _group createUnit["I_soldier_F", _position, [], 0, "NONE"];
		[_unit, "rifleman_g36a1", _backpack]execVM "framework\equipment\aaf\equipment_aaf.sqf";
		_unit moveInCargo _vehicle;
		//automaticrifleman
		_unit = _group createUnit["I_Soldier_AR_F", _position, [], 0, "NONE"];
		[_unit, "lmg_mg36a1", _backpack]execVM "framework\equipment\aaf\equipment_aaf.sqf";
		_unit moveInCargo _vehicle;
		//rifleman
		_unit = _group createUnit["I_soldier_F", _position, [], 0, "NONE"];
		[_unit, "rifleman_g36a1", _backpack]execVM "framework\equipment\aaf\equipment_aaf.sqf";
		_unit moveInCargo _vehicle;
		//antiair titan
		_unit = _group createUnit["I_Soldier_AA_F", _position, [], 0, "NONE"];
		[_unit, "antiair_g36a1_titan", _backpack]execVM "framework\equipment\aaf\equipment_aaf.sqf";
		_unit moveInCargo _vehicle;
		//rifleman
		_unit = _group createUnit["I_soldier_F", _position, [], 0, "NONE"];
		[_unit, "rifleman_g36a1", _backpack]execVM "framework\equipment\aaf\equipment_aaf.sqf";
		_unit moveInCargo _vehicle;
		//automaticrifleman
		_unit = _group createUnit["I_Soldier_AR_F", _position, [], 0, "NONE"];
		[_unit, "lmg_mg36a1", _backpack]execVM "framework\equipment\aaf\equipment_aaf.sqf";
		_unit moveInCargo _vehicle;
		//rifleman
		_unit = _group createUnit["I_soldier_F", _position, [], 0, "NONE"];
		[_unit, "rifleman_g36a1", _backpack]execVM "framework\equipment\aaf\equipment_aaf.sqf";
		_unit moveInCargo _vehicle;
		//antiair titan
		_unit = _group createUnit["I_Soldier_AA_F", _position, [], 0, "NONE"];
		[_unit, "antiair_g36a1_titan", _backpack]execVM "framework\equipment\aaf\equipment_aaf.sqf";
		_unit moveInCargo _vehicle;
		
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
_vehicle setUnloadInCombat[true, false];


_vehicle addEventHandler["HandleDamage",{if((_this select 4) == "") then{0};}];