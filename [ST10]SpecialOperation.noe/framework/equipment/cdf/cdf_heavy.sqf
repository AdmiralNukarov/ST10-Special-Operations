//////////////////////////////////////////////////////////////////
// Function file for Armed Assault
// Created by: Nuka [www.sealteam10.de]
//////////////////////////////////////////////////////////////////

//[group, position, type/vehicle, backpack, dir]execVM "framework\equipment\cdf\cdf_heavy.sqf";

private['_group','_position','_unit','_vehicle','_dir','_backpack'];
_group = _this select 0;
_position = _this select 1;
_backpack = if(count _this > 3) then{_this select 3} else{false};
_dir = if(count _this > 4) then{_this select 4} else{0};

switch(_this select 2) do 
{	
	case "bmp1":
	{
		//3 - 16
		_vehicle = "rhsgref_cdf_bmp1" createVehicle _position;
		clearWeaponCargoGlobal _vehicle;
		clearMagazineCargoGlobal _vehicle;
		clearBackpackCargoGlobal _vehicle;
		clearItemCargoGlobal _vehicle;
		
		switch(side _group) do
		{
			case WEST:
			{
				//teamleader/commander
				_unit = _group createUnit["rhsgref_cdf_b_reg_crew", _position, [], 0, "NONE"];
				[_unit, "cdf_crewman_aks74u", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit assignAsTurret[_vehicle, [0]];
				_unit moveInTurret[_vehicle, [0]];
				//gunner
				_unit = _group createUnit["rhsgref_cdf_b_reg_crew", _position, [], 0, "NONE"];
				[_unit, "cdf_crewman_aks74u", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit assignAsTurret[_vehicle, [1]];
				_unit moveInTurret[_vehicle, [1]];
				//driver
				_unit = _group createUnit["rhsgref_cdf_b_reg_crew", _position, [], 0, "NONE"];
				[_unit, "cdf_crewman_aks74u", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit assignAsDriver _vehicle;
				_unit moveInDriver _vehicle;
			};
			
			case RESISTANCE:
			{
				//teamleader/commander
				_unit = _group createUnit["rhsgref_cdf_reg_crew", _position, [], 0, "NONE"];
				[_unit, "cdf_crewman_aks74u", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit assignAsTurret[_vehicle, [0]];
				_unit moveInTurret[_vehicle, [0]];
				//gunner
				_unit = _group createUnit["rhsgref_cdf_reg_crew", _position, [], 0, "NONE"];
				[_unit, "cdf_crewman_aks74u", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit assignAsTurret[_vehicle, [1]];
				_unit moveInTurret[_vehicle, [1]];
				//driver
				_unit = _group createUnit["rhsgref_cdf_reg_crew", _position, [], 0, "NONE"];
				[_unit, "cdf_crewman_aks74u", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit assignAsDriver _vehicle;
				_unit moveInDriver _vehicle;
			};
			
			default{};
		};
		_group addVehicle _vehicle;
		_vehicle setUnloadInCombat[true, false];
	};
	
	case "mech_bmp1":
	{
		//3 - 16
		_vehicle = "rhsgref_cdf_bmp1" createVehicle _position;
		clearWeaponCargoGlobal _vehicle;
		clearMagazineCargoGlobal _vehicle;
		clearBackpackCargoGlobal _vehicle;
		clearItemCargoGlobal _vehicle;
		
		switch(side _group) do
		{
			case WEST:
			{
				//teamleader/commander
				_unit = _group createUnit["rhsgref_cdf_b_reg_crew", _position, [], 0, "NONE"];
				[_unit, "cdf_crewman_aks74u", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit assignAsTurret[_vehicle, [0]];
				_unit moveInTurret[_vehicle, [0]];
				//gunner
				_unit = _group createUnit["rhsgref_cdf_b_reg_crew", _position, [], 0, "NONE"];
				[_unit, "cdf_crewman_aks74u", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit assignAsTurret[_vehicle, [1]];
				_unit moveInTurret[_vehicle, [1]];
				//driver
				_unit = _group createUnit["rhsgref_cdf_b_reg_crew", _position, [], 0, "NONE"];
				[_unit, "cdf_crewman_aks74u", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit assignAsDriver _vehicle;
				_unit moveInDriver _vehicle;
				
				//rifleman
				_unit = _group createUnit["rhsgref_cdf_b_reg_rifleman", _position, [], 0, "NONE"];
				[_unit, "cdf_rifleman_ak74m", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//rifleman
				_unit = _group createUnit["rhsgref_cdf_b_reg_rifleman", _position, [], 0, "NONE"];
				[_unit, "cdf_rifleman_ak74m", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//antitank
				_unit = _group createUnit["rhsgref_cdf_b_reg_grenadier_rpg", _position, [], 0, "NONE"];
				[_unit, "cdf_antitank_ak74m_rpg7v", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//grenadier
				_unit = _group createUnit["rhsgref_cdf_b_reg_grenadier", _position, [], 0, "NONE"];
				[_unit, "cdf_grenadier_ak74mgl", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//medic
				_unit = _group createUnit["rhsgref_cdf_b_reg_medic", _position, [], 0, "NONE"];
				[_unit, "cdf_medic_ak74m", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//maschinegunner
				_unit = _group createUnit["rhsgref_cdf_b_reg_machinegunner", _position, [], 0, "NONE"];
				[_unit, "cdf_maschinegunner_pkm", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//rifleman
				_unit = _group createUnit["rhsgref_cdf_b_reg_rifleman", _position, [], 0, "NONE"];
				[_unit, "cdf_rifleman_ak74m", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//marksman
				_unit = _group createUnit["rhsgref_cdf_b_reg_marksman", _position, [], 0, "NONE"];
				[_unit, "cdf_marksman_svd", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//rifleman
				_unit = _group createUnit["rhsgref_cdf_b_reg_rifleman", _position, [], 0, "NONE"];
				[_unit, "cdf_rifleman_ak74m", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//rifleman
				_unit = _group createUnit["rhsgref_cdf_b_reg_rifleman", _position, [], 0, "NONE"];
				[_unit, "cdf_rifleman_ak74m", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//automatic rifleman
				_unit = _group createUnit["rhsgref_cdf_b_reg_machinegunner", _position, [], 0, "NONE"];
				[_unit, "cdf_auromaticrifleman_rpk74", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//antiair
				_unit = _group createUnit["rhsgref_cdf_b_reg_specialist_aa", _position, [], 0, "NONE"];
				[_unit, "cdf_antiair_ak74m_igla", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//antitank
				_unit = _group createUnit["rhsgref_cdf_b_reg_grenadier_rpg", _position, [], 0, "NONE"];
				[_unit, "cdf_antitank_ak74m_rpg7v", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//grenadier
				_unit = _group createUnit["rhsgref_cdf_b_reg_grenadier", _position, [], 0, "NONE"];
				[_unit, "cdf_grenadier_ak74mgl", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//medic
				_unit = _group createUnit["rhsgref_cdf_b_reg_medic", _position, [], 0, "NONE"];
				[_unit, "cdf_medic_ak74m", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//rifleman
				_unit = _group createUnit["rhsgref_cdf_b_reg_rifleman", _position, [], 0, "NONE"];
				[_unit, "cdf_rifleman_ak74m", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
			};
			
			case RESISTANCE:
			{
				//teamleader/commander
				_unit = _group createUnit["rhsgref_cdf_reg_crew", _position, [], 0, "NONE"];
				[_unit, "cdf_crewman_aks74u", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit assignAsTurret[_vehicle, [0]];
				_unit moveInTurret[_vehicle, [0]];
				//gunner
				_unit = _group createUnit["rhsgref_cdf_reg_crew", _position, [], 0, "NONE"];
				[_unit, "cdf_crewman_aks74u", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit assignAsTurret[_vehicle, [1]];
				_unit moveInTurret[_vehicle, [1]];
				//driver
				_unit = _group createUnit["rhsgref_cdf_reg_crew", _position, [], 0, "NONE"];
				[_unit, "cdf_crewman_aks74u", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit assignAsDriver _vehicle;
				_unit moveInDriver _vehicle;
				
				//rifleman
				_unit = _group createUnit["rhsgref_cdf_reg_rifleman", _position, [], 0, "NONE"];
				[_unit, "cdf_rifleman_ak74m", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//rifleman
				_unit = _group createUnit["rhsgref_cdf_reg_rifleman", _position, [], 0, "NONE"];
				[_unit, "cdf_rifleman_ak74m", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//antitank
				_unit = _group createUnit["rhsgref_cdf_reg_grenadier_rpg", _position, [], 0, "NONE"];
				[_unit, "cdf_antitank_ak74m_rpg7v", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//grenadier
				_unit = _group createUnit["rhsgref_cdf_reg_grenadier", _position, [], 0, "NONE"];
				[_unit, "cdf_grenadier_ak74mgl", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//medic
				_unit = _group createUnit["rhsgref_cdf_reg_medic", _position, [], 0, "NONE"];
				[_unit, "cdf_medic_ak74m", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//maschinegunner
				_unit = _group createUnit["rhsgref_cdf_reg_machinegunner", _position, [], 0, "NONE"];
				[_unit, "cdf_maschinegunner_pkm", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//rifleman
				_unit = _group createUnit["rhsgref_cdf_reg_rifleman", _position, [], 0, "NONE"];
				[_unit, "cdf_rifleman_ak74m", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//marksman
				_unit = _group createUnit["rhsgref_cdf_reg_marksman", _position, [], 0, "NONE"];
				[_unit, "cdf_marksman_svd", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//rifleman
				_unit = _group createUnit["rhsgref_cdf_reg_rifleman", _position, [], 0, "NONE"];
				[_unit, "cdf_rifleman_ak74m", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//rifleman
				_unit = _group createUnit["rhsgref_cdf_reg_rifleman", _position, [], 0, "NONE"];
				[_unit, "cdf_rifleman_ak74m", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//automatic rifleman
				_unit = _group createUnit["rhsgref_cdf_reg_machinegunner", _position, [], 0, "NONE"];
				[_unit, "cdf_auromaticrifleman_rpk74", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//antiair
				_unit = _group createUnit["rhsgref_cdf_reg_specialist_aa", _position, [], 0, "NONE"];
				[_unit, "cdf_antiair_ak74m_igla", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//antitank
				_unit = _group createUnit["rhsgref_cdf_reg_grenadier_rpg", _position, [], 0, "NONE"];
				[_unit, "cdf_antitank_ak74m_rpg7v", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//grenadier
				_unit = _group createUnit["rhsgref_cdf_reg_grenadier", _position, [], 0, "NONE"];
				[_unit, "cdf_grenadier_ak74mgl", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//medic
				_unit = _group createUnit["rhsgref_cdf_reg_medic", _position, [], 0, "NONE"];
				[_unit, "cdf_medic_ak74m", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//rifleman
				_unit = _group createUnit["rhsgref_cdf_reg_rifleman", _position, [], 0, "NONE"];
				[_unit, "cdf_rifleman_ak74m", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
			};
			
			default{};
		};
		_group addVehicle _vehicle;
		_vehicle setUnloadInCombat[true, false];
	};
	
	case "bmp1d":
	{
		//3 - 16
		_vehicle = "rhsgref_cdf_bmp1d" createVehicle _position;
		clearWeaponCargoGlobal _vehicle;
		clearMagazineCargoGlobal _vehicle;
		clearBackpackCargoGlobal _vehicle;
		clearItemCargoGlobal _vehicle;
		
		switch(side _group) do
		{
			case WEST:
			{
				//teamleader/commander
				_unit = _group createUnit["rhsgref_cdf_b_reg_crew", _position, [], 0, "NONE"];
				[_unit, "cdf_crewman_aks74u", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit assignAsTurret[_vehicle, [0]];
				_unit moveInTurret[_vehicle, [0]];
				//gunner
				_unit = _group createUnit["rhsgref_cdf_b_reg_crew", _position, [], 0, "NONE"];
				[_unit, "cdf_crewman_aks74u", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit assignAsTurret[_vehicle, [1]];
				_unit moveInTurret[_vehicle, [1]];
				//driver
				_unit = _group createUnit["rhsgref_cdf_b_reg_crew", _position, [], 0, "NONE"];
				[_unit, "cdf_crewman_aks74u", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit assignAsDriver _vehicle;
				_unit moveInDriver _vehicle;
			};
			
			case RESISTANCE:
			{
				//teamleader/commander
				_unit = _group createUnit["rhsgref_cdf_reg_crew", _position, [], 0, "NONE"];
				[_unit, "cdf_crewman_aks74u", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit assignAsTurret[_vehicle, [0]];
				_unit moveInTurret[_vehicle, [0]];
				//gunner
				_unit = _group createUnit["rhsgref_cdf_reg_crew", _position, [], 0, "NONE"];
				[_unit, "cdf_crewman_aks74u", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit assignAsTurret[_vehicle, [1]];
				_unit moveInTurret[_vehicle, [1]];
				//driver
				_unit = _group createUnit["rhsgref_cdf_reg_crew", _position, [], 0, "NONE"];
				[_unit, "cdf_crewman_aks74u", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit assignAsDriver _vehicle;
				_unit moveInDriver _vehicle;
			};
			
			default{};
		};
		_group addVehicle _vehicle;
		_vehicle setUnloadInCombat[true, false];
	};
	
	case "mech_bmp1d":
	{
		//3 - 16
		_vehicle = "rhsgref_cdf_bmp1d" createVehicle _position;
		clearWeaponCargoGlobal _vehicle;
		clearMagazineCargoGlobal _vehicle;
		clearBackpackCargoGlobal _vehicle;
		clearItemCargoGlobal _vehicle;
		
		switch(side _group) do
		{
			case WEST:
			{
				//teamleader/commander
				_unit = _group createUnit["rhsgref_cdf_b_reg_crew", _position, [], 0, "NONE"];
				[_unit, "cdf_crewman_aks74u", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit assignAsTurret[_vehicle, [0]];
				_unit moveInTurret[_vehicle, [0]];
				//gunner
				_unit = _group createUnit["rhsgref_cdf_b_reg_crew", _position, [], 0, "NONE"];
				[_unit, "cdf_crewman_aks74u", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit assignAsTurret[_vehicle, [1]];
				_unit moveInTurret[_vehicle, [1]];
				//driver
				_unit = _group createUnit["rhsgref_cdf_b_reg_crew", _position, [], 0, "NONE"];
				[_unit, "cdf_crewman_aks74u", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit assignAsDriver _vehicle;
				_unit moveInDriver _vehicle;
				
				//rifleman
				_unit = _group createUnit["rhsgref_cdf_b_reg_rifleman", _position, [], 0, "NONE"];
				[_unit, "cdf_rifleman_ak74m", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//rifleman
				_unit = _group createUnit["rhsgref_cdf_b_reg_rifleman", _position, [], 0, "NONE"];
				[_unit, "cdf_rifleman_ak74m", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//antitank
				_unit = _group createUnit["rhsgref_cdf_b_reg_grenadier_rpg", _position, [], 0, "NONE"];
				[_unit, "cdf_antitank_ak74m_rpg7v", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//grenadier
				_unit = _group createUnit["rhsgref_cdf_b_reg_grenadier", _position, [], 0, "NONE"];
				[_unit, "cdf_grenadier_ak74mgl", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//medic
				_unit = _group createUnit["rhsgref_cdf_b_reg_medic", _position, [], 0, "NONE"];
				[_unit, "cdf_medic_ak74m", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//maschinegunner
				_unit = _group createUnit["rhsgref_cdf_b_reg_machinegunner", _position, [], 0, "NONE"];
				[_unit, "cdf_maschinegunner_pkm", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//rifleman
				_unit = _group createUnit["rhsgref_cdf_b_reg_rifleman", _position, [], 0, "NONE"];
				[_unit, "cdf_rifleman_ak74m", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//marksman
				_unit = _group createUnit["rhsgref_cdf_b_reg_marksman", _position, [], 0, "NONE"];
				[_unit, "cdf_marksman_svd", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//rifleman
				_unit = _group createUnit["rhsgref_cdf_b_reg_rifleman", _position, [], 0, "NONE"];
				[_unit, "cdf_rifleman_ak74m", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//rifleman
				_unit = _group createUnit["rhsgref_cdf_b_reg_rifleman", _position, [], 0, "NONE"];
				[_unit, "cdf_rifleman_ak74m", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//automatic rifleman
				_unit = _group createUnit["rhsgref_cdf_b_reg_machinegunner", _position, [], 0, "NONE"];
				[_unit, "cdf_auromaticrifleman_rpk74", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//antiair
				_unit = _group createUnit["rhsgref_cdf_b_reg_specialist_aa", _position, [], 0, "NONE"];
				[_unit, "cdf_antiair_ak74m_igla", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//antitank
				_unit = _group createUnit["rhsgref_cdf_b_reg_grenadier_rpg", _position, [], 0, "NONE"];
				[_unit, "cdf_antitank_ak74m_rpg7v", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//grenadier
				_unit = _group createUnit["rhsgref_cdf_b_reg_grenadier", _position, [], 0, "NONE"];
				[_unit, "cdf_grenadier_ak74mgl", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//medic
				_unit = _group createUnit["rhsgref_cdf_b_reg_medic", _position, [], 0, "NONE"];
				[_unit, "cdf_medic_ak74m", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//rifleman
				_unit = _group createUnit["rhsgref_cdf_b_reg_rifleman", _position, [], 0, "NONE"];
				[_unit, "cdf_rifleman_ak74m", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
			};
			
			case RESISTANCE:
			{
				//teamleader/commander
				_unit = _group createUnit["rhsgref_cdf_reg_crew", _position, [], 0, "NONE"];
				[_unit, "cdf_crewman_aks74u", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit assignAsTurret[_vehicle, [0]];
				_unit moveInTurret[_vehicle, [0]];
				//gunner
				_unit = _group createUnit["rhsgref_cdf_reg_crew", _position, [], 0, "NONE"];
				[_unit, "cdf_crewman_aks74u", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit assignAsTurret[_vehicle, [1]];
				_unit moveInTurret[_vehicle, [1]];
				//driver
				_unit = _group createUnit["rhsgref_cdf_reg_crew", _position, [], 0, "NONE"];
				[_unit, "cdf_crewman_aks74u", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit assignAsDriver _vehicle;
				_unit moveInDriver _vehicle;
				
				//rifleman
				_unit = _group createUnit["rhsgref_cdf_reg_rifleman", _position, [], 0, "NONE"];
				[_unit, "cdf_rifleman_ak74m", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//rifleman
				_unit = _group createUnit["rhsgref_cdf_reg_rifleman", _position, [], 0, "NONE"];
				[_unit, "cdf_rifleman_ak74m", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//antitank
				_unit = _group createUnit["rhsgref_cdf_reg_grenadier_rpg", _position, [], 0, "NONE"];
				[_unit, "cdf_antitank_ak74m_rpg7v", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//grenadier
				_unit = _group createUnit["rhsgref_cdf_reg_grenadier", _position, [], 0, "NONE"];
				[_unit, "cdf_grenadier_ak74mgl", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//medic
				_unit = _group createUnit["rhsgref_cdf_reg_medic", _position, [], 0, "NONE"];
				[_unit, "cdf_medic_ak74m", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//maschinegunner
				_unit = _group createUnit["rhsgref_cdf_reg_machinegunner", _position, [], 0, "NONE"];
				[_unit, "cdf_maschinegunner_pkm", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//rifleman
				_unit = _group createUnit["rhsgref_cdf_reg_rifleman", _position, [], 0, "NONE"];
				[_unit, "cdf_rifleman_ak74m", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//marksman
				_unit = _group createUnit["rhsgref_cdf_reg_marksman", _position, [], 0, "NONE"];
				[_unit, "cdf_marksman_svd", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//rifleman
				_unit = _group createUnit["rhsgref_cdf_reg_rifleman", _position, [], 0, "NONE"];
				[_unit, "cdf_rifleman_ak74m", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//rifleman
				_unit = _group createUnit["rhsgref_cdf_reg_rifleman", _position, [], 0, "NONE"];
				[_unit, "cdf_rifleman_ak74m", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//automatic rifleman
				_unit = _group createUnit["rhsgref_cdf_reg_machinegunner", _position, [], 0, "NONE"];
				[_unit, "cdf_auromaticrifleman_rpk74", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//antiair
				_unit = _group createUnit["rhsgref_cdf_reg_specialist_aa", _position, [], 0, "NONE"];
				[_unit, "cdf_antiair_ak74m_igla", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//antitank
				_unit = _group createUnit["rhsgref_cdf_reg_grenadier_rpg", _position, [], 0, "NONE"];
				[_unit, "cdf_antitank_ak74m_rpg7v", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//grenadier
				_unit = _group createUnit["rhsgref_cdf_reg_grenadier", _position, [], 0, "NONE"];
				[_unit, "cdf_grenadier_ak74mgl", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//medic
				_unit = _group createUnit["rhsgref_cdf_reg_medic", _position, [], 0, "NONE"];
				[_unit, "cdf_medic_ak74m", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//rifleman
				_unit = _group createUnit["rhsgref_cdf_reg_rifleman", _position, [], 0, "NONE"];
				[_unit, "cdf_rifleman_ak74m", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
			};
			
			default{};
		};
		_group addVehicle _vehicle;
		_vehicle setUnloadInCombat[true, false];
	};
	
	case "bmp1p":
	{
		//3 - 16
		_vehicle = "rhsgref_cdf_bmp1p" createVehicle _position;
		clearWeaponCargoGlobal _vehicle;
		clearMagazineCargoGlobal _vehicle;
		clearBackpackCargoGlobal _vehicle;
		clearItemCargoGlobal _vehicle;
		
		switch(side _group) do
		{
			case WEST:
			{
				//teamleader/commander
				_unit = _group createUnit["rhsgref_cdf_b_reg_crew", _position, [], 0, "NONE"];
				[_unit, "cdf_crewman_aks74u", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit assignAsTurret[_vehicle, [0]];
				_unit moveInTurret[_vehicle, [0]];
				//gunner
				_unit = _group createUnit["rhsgref_cdf_b_reg_crew", _position, [], 0, "NONE"];
				[_unit, "cdf_crewman_aks74u", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit assignAsTurret[_vehicle, [1]];
				_unit moveInTurret[_vehicle, [1]];
				//driver
				_unit = _group createUnit["rhsgref_cdf_b_reg_crew", _position, [], 0, "NONE"];
				[_unit, "cdf_crewman_aks74u", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit assignAsDriver _vehicle;
				_unit moveInDriver _vehicle;
			};
			
			case RESISTANCE:
			{
				//teamleader/commander
				_unit = _group createUnit["rhsgref_cdf_reg_crew", _position, [], 0, "NONE"];
				[_unit, "cdf_crewman_aks74u", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit assignAsTurret[_vehicle, [0]];
				_unit moveInTurret[_vehicle, [0]];
				//gunner
				_unit = _group createUnit["rhsgref_cdf_reg_crew", _position, [], 0, "NONE"];
				[_unit, "cdf_crewman_aks74u", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit assignAsTurret[_vehicle, [1]];
				_unit moveInTurret[_vehicle, [1]];
				//driver
				_unit = _group createUnit["rhsgref_cdf_reg_crew", _position, [], 0, "NONE"];
				[_unit, "cdf_crewman_aks74u", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit assignAsDriver _vehicle;
				_unit moveInDriver _vehicle;
			};
			
			default{};
		};
		_group addVehicle _vehicle;
	};
	
	case "mech_bmp1p":
	{
		//3 - 16
		_vehicle = "rhsgref_cdf_bmp1p" createVehicle _position;
		clearWeaponCargoGlobal _vehicle;
		clearMagazineCargoGlobal _vehicle;
		clearBackpackCargoGlobal _vehicle;
		clearItemCargoGlobal _vehicle;
		
		switch(side _group) do
		{
			case WEST:
			{
				//teamleader/commander
				_unit = _group createUnit["rhsgref_cdf_b_reg_crew", _position, [], 0, "NONE"];
				[_unit, "cdf_crewman_aks74u", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit assignAsTurret[_vehicle, [0]];
				_unit moveInTurret[_vehicle, [0]];
				//gunner
				_unit = _group createUnit["rhsgref_cdf_b_reg_crew", _position, [], 0, "NONE"];
				[_unit, "cdf_crewman_aks74u", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit assignAsTurret[_vehicle, [1]];
				_unit moveInTurret[_vehicle, [1]];
				//driver
				_unit = _group createUnit["rhsgref_cdf_b_reg_crew", _position, [], 0, "NONE"];
				[_unit, "cdf_crewman_aks74u", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit assignAsDriver _vehicle;
				_unit moveInDriver _vehicle;
				
				//rifleman
				_unit = _group createUnit["rhsgref_cdf_b_reg_rifleman", _position, [], 0, "NONE"];
				[_unit, "cdf_rifleman_ak74m", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//rifleman
				_unit = _group createUnit["rhsgref_cdf_b_reg_rifleman", _position, [], 0, "NONE"];
				[_unit, "cdf_rifleman_ak74m", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//antitank
				_unit = _group createUnit["rhsgref_cdf_b_reg_grenadier_rpg", _position, [], 0, "NONE"];
				[_unit, "cdf_antitank_ak74m_rpg7v", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//grenadier
				_unit = _group createUnit["rhsgref_cdf_b_reg_grenadier", _position, [], 0, "NONE"];
				[_unit, "cdf_grenadier_ak74mgl", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//medic
				_unit = _group createUnit["rhsgref_cdf_b_reg_medic", _position, [], 0, "NONE"];
				[_unit, "cdf_medic_ak74m", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//maschinegunner
				_unit = _group createUnit["rhsgref_cdf_b_reg_machinegunner", _position, [], 0, "NONE"];
				[_unit, "cdf_maschinegunner_pkm", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//rifleman
				_unit = _group createUnit["rhsgref_cdf_b_reg_rifleman", _position, [], 0, "NONE"];
				[_unit, "cdf_rifleman_ak74m", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//marksman
				_unit = _group createUnit["rhsgref_cdf_b_reg_marksman", _position, [], 0, "NONE"];
				[_unit, "cdf_marksman_svd", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//rifleman
				_unit = _group createUnit["rhsgref_cdf_b_reg_rifleman", _position, [], 0, "NONE"];
				[_unit, "cdf_rifleman_ak74m", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//rifleman
				_unit = _group createUnit["rhsgref_cdf_b_reg_rifleman", _position, [], 0, "NONE"];
				[_unit, "cdf_rifleman_ak74m", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//automatic rifleman
				_unit = _group createUnit["rhsgref_cdf_b_reg_machinegunner", _position, [], 0, "NONE"];
				[_unit, "cdf_auromaticrifleman_rpk74", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//antiair
				_unit = _group createUnit["rhsgref_cdf_b_reg_specialist_aa", _position, [], 0, "NONE"];
				[_unit, "cdf_antiair_ak74m_igla", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//antitank
				_unit = _group createUnit["rhsgref_cdf_b_reg_grenadier_rpg", _position, [], 0, "NONE"];
				[_unit, "cdf_antitank_ak74m_rpg7v", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//grenadier
				_unit = _group createUnit["rhsgref_cdf_b_reg_grenadier", _position, [], 0, "NONE"];
				[_unit, "cdf_grenadier_ak74mgl", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//medic
				_unit = _group createUnit["rhsgref_cdf_b_reg_medic", _position, [], 0, "NONE"];
				[_unit, "cdf_medic_ak74m", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//rifleman
				_unit = _group createUnit["rhsgref_cdf_b_reg_rifleman", _position, [], 0, "NONE"];
				[_unit, "cdf_rifleman_ak74m", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
			};
			
			case RESISTANCE:
			{
				//teamleader/commander
				_unit = _group createUnit["rhsgref_cdf_reg_crew", _position, [], 0, "NONE"];
				[_unit, "cdf_crewman_aks74u", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit assignAsTurret[_vehicle, [0]];
				_unit moveInTurret[_vehicle, [0]];
				//gunner
				_unit = _group createUnit["rhsgref_cdf_reg_crew", _position, [], 0, "NONE"];
				[_unit, "cdf_crewman_aks74u", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit assignAsTurret[_vehicle, [1]];
				_unit moveInTurret[_vehicle, [1]];
				//driver
				_unit = _group createUnit["rhsgref_cdf_reg_crew", _position, [], 0, "NONE"];
				[_unit, "cdf_crewman_aks74u", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit assignAsDriver _vehicle;
				_unit moveInDriver _vehicle;
				
				//rifleman
				_unit = _group createUnit["rhsgref_cdf_reg_rifleman", _position, [], 0, "NONE"];
				[_unit, "cdf_rifleman_ak74m", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//rifleman
				_unit = _group createUnit["rhsgref_cdf_reg_rifleman", _position, [], 0, "NONE"];
				[_unit, "cdf_rifleman_ak74m", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//antitank
				_unit = _group createUnit["rhsgref_cdf_reg_grenadier_rpg", _position, [], 0, "NONE"];
				[_unit, "cdf_antitank_ak74m_rpg7v", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//grenadier
				_unit = _group createUnit["rhsgref_cdf_reg_grenadier", _position, [], 0, "NONE"];
				[_unit, "cdf_grenadier_ak74mgl", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//medic
				_unit = _group createUnit["rhsgref_cdf_reg_medic", _position, [], 0, "NONE"];
				[_unit, "cdf_medic_ak74m", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//maschinegunner
				_unit = _group createUnit["rhsgref_cdf_reg_machinegunner", _position, [], 0, "NONE"];
				[_unit, "cdf_maschinegunner_pkm", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//rifleman
				_unit = _group createUnit["rhsgref_cdf_reg_rifleman", _position, [], 0, "NONE"];
				[_unit, "cdf_rifleman_ak74m", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//marksman
				_unit = _group createUnit["rhsgref_cdf_reg_marksman", _position, [], 0, "NONE"];
				[_unit, "cdf_marksman_svd", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//rifleman
				_unit = _group createUnit["rhsgref_cdf_reg_rifleman", _position, [], 0, "NONE"];
				[_unit, "cdf_rifleman_ak74m", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//rifleman
				_unit = _group createUnit["rhsgref_cdf_reg_rifleman", _position, [], 0, "NONE"];
				[_unit, "cdf_rifleman_ak74m", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//automatic rifleman
				_unit = _group createUnit["rhsgref_cdf_reg_machinegunner", _position, [], 0, "NONE"];
				[_unit, "cdf_auromaticrifleman_rpk74", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//antiair
				_unit = _group createUnit["rhsgref_cdf_reg_specialist_aa", _position, [], 0, "NONE"];
				[_unit, "cdf_antiair_ak74m_igla", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//antitank
				_unit = _group createUnit["rhsgref_cdf_reg_grenadier_rpg", _position, [], 0, "NONE"];
				[_unit, "cdf_antitank_ak74m_rpg7v", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//grenadier
				_unit = _group createUnit["rhsgref_cdf_reg_grenadier", _position, [], 0, "NONE"];
				[_unit, "cdf_grenadier_ak74mgl", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//medic
				_unit = _group createUnit["rhsgref_cdf_reg_medic", _position, [], 0, "NONE"];
				[_unit, "cdf_medic_ak74m", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//rifleman
				_unit = _group createUnit["rhsgref_cdf_reg_rifleman", _position, [], 0, "NONE"];
				[_unit, "cdf_rifleman_ak74m", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
			};
			
			default{};
		};
		_group addVehicle _vehicle;
		_vehicle setUnloadInCombat[true, false];
	};
	
	case "bmp2":
	{
		//3 - 17
		_vehicle = (selectRandom ["rhsgref_cdf_bmp2e","rhsgref_cdf_bmp2"]) createVehicle _position;
		clearWeaponCargoGlobal _vehicle;
		clearMagazineCargoGlobal _vehicle;
		clearBackpackCargoGlobal _vehicle;
		clearItemCargoGlobal _vehicle;
		
		switch(side _group) do
		{
			case WEST:
			{
				//teamleader/commander
				_unit = _group createUnit["rhsgref_cdf_b_reg_crew", _position, [], 0, "NONE"];
				[_unit, "cdf_crewman_aks74u", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit assignAsTurret[_vehicle, [0,0]];
				_unit moveInTurret[_vehicle, [0,0]];
				//gunner
				_unit = _group createUnit["rhsgref_cdf_b_reg_crew", _position, [], 0, "NONE"];
				[_unit, "cdf_crewman_aks74u", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit assignAsTurret[_vehicle, [0]];
				_unit moveInTurret[_vehicle, [0]];
				//driver
				_unit = _group createUnit["rhsgref_cdf_b_reg_crew", _position, [], 0, "NONE"];
				[_unit, "cdf_crewman_aks74u", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit assignAsDriver _vehicle;
				_unit moveInDriver _vehicle;
			};
			
			case RESISTANCE:
			{
				//teamleader/commander
				_unit = _group createUnit["rhsgref_cdf_reg_crew", _position, [], 0, "NONE"];
				[_unit, "cdf_crewman_aks74u", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit assignAsTurret[_vehicle, [0,0]];
				_unit moveInTurret[_vehicle, [0,0]];
				//gunner
				_unit = _group createUnit["rhsgref_cdf_reg_crew", _position, [], 0, "NONE"];
				[_unit, "cdf_crewman_aks74u", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit assignAsTurret[_vehicle, [0]];
				_unit moveInTurret[_vehicle, [0]];
				//driver
				_unit = _group createUnit["rhsgref_cdf_reg_crew", _position, [], 0, "NONE"];
				[_unit, "cdf_crewman_aks74u", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit assignAsDriver _vehicle;
				_unit moveInDriver _vehicle;
			};
			
			default{};
		};
		_group addVehicle _vehicle;
	};
	
	case "mech_bmp2":
	{
		//3 - 17
		_vehicle = (selectRandom ["rhsgref_cdf_bmp2e","rhsgref_cdf_bmp2"]) createVehicle _position;
		clearWeaponCargoGlobal _vehicle;
		clearMagazineCargoGlobal _vehicle;
		clearBackpackCargoGlobal _vehicle;
		clearItemCargoGlobal _vehicle;
		
		switch(side _group) do
		{
			case WEST:
			{
				//teamleader/commander
				_unit = _group createUnit["rhsgref_cdf_b_reg_crew", _position, [], 0, "NONE"];
				[_unit, "cdf_crewman_aks74u", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit assignAsTurret[_vehicle, [0,0]];
				_unit moveInTurret[_vehicle, [0,0]];
				//gunner
				_unit = _group createUnit["rhsgref_cdf_b_reg_crew", _position, [], 0, "NONE"];
				[_unit, "cdf_crewman_aks74u", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit assignAsTurret[_vehicle, [0]];
				_unit moveInTurret[_vehicle, [0]];
				//driver
				_unit = _group createUnit["rhsgref_cdf_b_reg_crew", _position, [], 0, "NONE"];
				[_unit, "cdf_crewman_aks74u", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit assignAsDriver _vehicle;
				_unit moveInDriver _vehicle;
				
				//rifleman
				_unit = _group createUnit["rhsgref_cdf_b_reg_rifleman", _position, [], 0, "NONE"];
				[_unit, "cdf_rifleman_ak74m", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//rifleman
				_unit = _group createUnit["rhsgref_cdf_b_reg_rifleman", _position, [], 0, "NONE"];
				[_unit, "cdf_rifleman_ak74m", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//antitank
				_unit = _group createUnit["rhsgref_cdf_b_reg_grenadier_rpg", _position, [], 0, "NONE"];
				[_unit, "cdf_antitank_ak74m_rpg7v", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//grenadier
				_unit = _group createUnit["rhsgref_cdf_b_reg_grenadier", _position, [], 0, "NONE"];
				[_unit, "cdf_grenadier_ak74mgl", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//medic
				_unit = _group createUnit["rhsgref_cdf_b_reg_medic", _position, [], 0, "NONE"];
				[_unit, "cdf_medic_ak74m", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//maschinegunner
				_unit = _group createUnit["rhsgref_cdf_b_reg_machinegunner", _position, [], 0, "NONE"];
				[_unit, "cdf_maschinegunner_pkm", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//rifleman
				_unit = _group createUnit["rhsgref_cdf_b_reg_rifleman", _position, [], 0, "NONE"];
				[_unit, "cdf_rifleman_ak74m", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//marksman
				_unit = _group createUnit["rhsgref_cdf_b_reg_marksman", _position, [], 0, "NONE"];
				[_unit, "cdf_marksman_svd", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//rifleman
				_unit = _group createUnit["rhsgref_cdf_b_reg_rifleman", _position, [], 0, "NONE"];
				[_unit, "cdf_rifleman_ak74m", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//rifleman
				_unit = _group createUnit["rhsgref_cdf_b_reg_rifleman", _position, [], 0, "NONE"];
				[_unit, "cdf_rifleman_ak74m", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//automatic rifleman
				_unit = _group createUnit["rhsgref_cdf_b_reg_machinegunner", _position, [], 0, "NONE"];
				[_unit, "cdf_auromaticrifleman_rpk74", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//antiair
				_unit = _group createUnit["rhsgref_cdf_b_reg_specialist_aa", _position, [], 0, "NONE"];
				[_unit, "cdf_antiair_ak74m_igla", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//antitank
				_unit = _group createUnit["rhsgref_cdf_b_reg_grenadier_rpg", _position, [], 0, "NONE"];
				[_unit, "cdf_antitank_ak74m_rpg7v", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//grenadier
				_unit = _group createUnit["rhsgref_cdf_b_reg_grenadier", _position, [], 0, "NONE"];
				[_unit, "cdf_grenadier_ak74mgl", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//medic
				_unit = _group createUnit["rhsgref_cdf_b_reg_medic", _position, [], 0, "NONE"];
				[_unit, "cdf_medic_ak74m", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//rifleman
				_unit = _group createUnit["rhsgref_cdf_b_reg_rifleman", _position, [], 0, "NONE"];
				[_unit, "cdf_rifleman_ak74m", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//rifleman
				_unit = _group createUnit["rhsgref_cdf_b_reg_rifleman", _position, [], 0, "NONE"];
				[_unit, "cdf_rifleman_ak74m", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
			};
			
			case RESISTANCE:
			{
				//teamleader/commander
				_unit = _group createUnit["rhsgref_cdf_reg_crew", _position, [], 0, "NONE"];
				[_unit, "cdf_crewman_aks74u", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit assignAsTurret[_vehicle, [0,0]];
				_unit moveInTurret[_vehicle, [0,0]];
				//gunner
				_unit = _group createUnit["rhsgref_cdf_reg_crew", _position, [], 0, "NONE"];
				[_unit, "cdf_crewman_aks74u", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit assignAsTurret[_vehicle, [0]];
				_unit moveInTurret[_vehicle, [0]];
				//driver
				_unit = _group createUnit["rhsgref_cdf_reg_crew", _position, [], 0, "NONE"];
				[_unit, "cdf_crewman_aks74u", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit assignAsDriver _vehicle;
				_unit moveInDriver _vehicle;
				
				//rifleman
				_unit = _group createUnit["rhsgref_cdf_reg_rifleman", _position, [], 0, "NONE"];
				[_unit, "cdf_rifleman_ak74m", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//rifleman
				_unit = _group createUnit["rhsgref_cdf_reg_rifleman", _position, [], 0, "NONE"];
				[_unit, "cdf_rifleman_ak74m", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//antitank
				_unit = _group createUnit["rhsgref_cdf_reg_grenadier_rpg", _position, [], 0, "NONE"];
				[_unit, "cdf_antitank_ak74m_rpg7v", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//grenadier
				_unit = _group createUnit["rhsgref_cdf_reg_grenadier", _position, [], 0, "NONE"];
				[_unit, "cdf_grenadier_ak74mgl", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//medic
				_unit = _group createUnit["rhsgref_cdf_reg_medic", _position, [], 0, "NONE"];
				[_unit, "cdf_medic_ak74m", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//maschinegunner
				_unit = _group createUnit["rhsgref_cdf_reg_machinegunner", _position, [], 0, "NONE"];
				[_unit, "cdf_maschinegunner_pkm", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//rifleman
				_unit = _group createUnit["rhsgref_cdf_reg_rifleman", _position, [], 0, "NONE"];
				[_unit, "cdf_rifleman_ak74m", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//marksman
				_unit = _group createUnit["rhsgref_cdf_reg_marksman", _position, [], 0, "NONE"];
				[_unit, "cdf_marksman_svd", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//rifleman
				_unit = _group createUnit["rhsgref_cdf_reg_rifleman", _position, [], 0, "NONE"];
				[_unit, "cdf_rifleman_ak74m", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//rifleman
				_unit = _group createUnit["rhsgref_cdf_reg_rifleman", _position, [], 0, "NONE"];
				[_unit, "cdf_rifleman_ak74m", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//automatic rifleman
				_unit = _group createUnit["rhsgref_cdf_reg_machinegunner", _position, [], 0, "NONE"];
				[_unit, "cdf_auromaticrifleman_rpk74", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//antiair
				_unit = _group createUnit["rhsgref_cdf_reg_specialist_aa", _position, [], 0, "NONE"];
				[_unit, "cdf_antiair_ak74m_igla", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//antitank
				_unit = _group createUnit["rhsgref_cdf_reg_grenadier_rpg", _position, [], 0, "NONE"];
				[_unit, "cdf_antitank_ak74m_rpg7v", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//grenadier
				_unit = _group createUnit["rhsgref_cdf_reg_grenadier", _position, [], 0, "NONE"];
				[_unit, "cdf_grenadier_ak74mgl", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//medic
				_unit = _group createUnit["rhsgref_cdf_reg_medic", _position, [], 0, "NONE"];
				[_unit, "cdf_medic_ak74m", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//rifleman
				_unit = _group createUnit["rhsgref_cdf_reg_rifleman", _position, [], 0, "NONE"];
				[_unit, "cdf_rifleman_ak74m", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//rifleman
				_unit = _group createUnit["rhsgref_cdf_reg_rifleman", _position, [], 0, "NONE"];
				[_unit, "cdf_rifleman_ak74m", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
			};
			
			default{};
		};
		_group addVehicle _vehicle;
	};
	
	case "bmp2d":
	{
		//3 - 17
		_vehicle = "rhsgref_cdf_bmp2d" createVehicle _position;
		clearWeaponCargoGlobal _vehicle;
		clearMagazineCargoGlobal _vehicle;
		clearBackpackCargoGlobal _vehicle;
		clearItemCargoGlobal _vehicle;
		
		switch(side _group) do
		{
			case WEST:
			{
				//teamleader/commander
				_unit = _group createUnit["rhsgref_cdf_b_reg_crew", _position, [], 0, "NONE"];
				[_unit, "cdf_crewman_aks74u", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit assignAsTurret[_vehicle, [0,0]];
				_unit moveInTurret[_vehicle, [0,0]];
				//gunner
				_unit = _group createUnit["rhsgref_cdf_b_reg_crew", _position, [], 0, "NONE"];
				[_unit, "cdf_crewman_aks74u", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit assignAsTurret[_vehicle, [0]];
				_unit moveInTurret[_vehicle, [0]];
				//driver
				_unit = _group createUnit["rhsgref_cdf_b_reg_crew", _position, [], 0, "NONE"];
				[_unit, "cdf_crewman_aks74u", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit assignAsDriver _vehicle;
				_unit moveInDriver _vehicle;
			};
			
			case RESISTANCE:
			{
				//teamleader/commander
				_unit = _group createUnit["rhsgref_cdf_reg_crew", _position, [], 0, "NONE"];
				[_unit, "cdf_crewman_aks74u", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit assignAsTurret[_vehicle, [0,0]];
				_unit moveInTurret[_vehicle, [0,0]];
				//gunner
				_unit = _group createUnit["rhsgref_cdf_reg_crew", _position, [], 0, "NONE"];
				[_unit, "cdf_crewman_aks74u", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit assignAsTurret[_vehicle, [0]];
				_unit moveInTurret[_vehicle, [0]];
				//driver
				_unit = _group createUnit["rhsgref_cdf_reg_crew", _position, [], 0, "NONE"];
				[_unit, "cdf_crewman_aks74u", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit assignAsDriver _vehicle;
				_unit moveInDriver _vehicle;
			};
			
			default{};
		};
		_group addVehicle _vehicle;
	};
	
	case "mech_bmp2d":
	{
		//3 - 17
		_vehicle = "rhsgref_cdf_bmp2d" createVehicle _position;
		clearWeaponCargoGlobal _vehicle;
		clearMagazineCargoGlobal _vehicle;
		clearBackpackCargoGlobal _vehicle;
		clearItemCargoGlobal _vehicle;
		
		switch(side _group) do
		{
			case WEST:
			{
				//teamleader/commander
				_unit = _group createUnit["rhsgref_cdf_b_reg_crew", _position, [], 0, "NONE"];
				[_unit, "cdf_crewman_aks74u", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit assignAsTurret[_vehicle, [0,0]];
				_unit moveInTurret[_vehicle, [0,0]];
				//gunner
				_unit = _group createUnit["rhsgref_cdf_b_reg_crew", _position, [], 0, "NONE"];
				[_unit, "cdf_crewman_aks74u", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit assignAsTurret[_vehicle, [0]];
				_unit moveInTurret[_vehicle, [0]];
				//driver
				_unit = _group createUnit["rhsgref_cdf_b_reg_crew", _position, [], 0, "NONE"];
				[_unit, "cdf_crewman_aks74u", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit assignAsDriver _vehicle;
				_unit moveInDriver _vehicle;
				
				//rifleman
				_unit = _group createUnit["rhsgref_cdf_b_reg_rifleman", _position, [], 0, "NONE"];
				[_unit, "cdf_rifleman_ak74m", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//rifleman
				_unit = _group createUnit["rhsgref_cdf_b_reg_rifleman", _position, [], 0, "NONE"];
				[_unit, "cdf_rifleman_ak74m", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//antitank
				_unit = _group createUnit["rhsgref_cdf_b_reg_grenadier_rpg", _position, [], 0, "NONE"];
				[_unit, "cdf_antitank_ak74m_rpg7v", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//grenadier
				_unit = _group createUnit["rhsgref_cdf_b_reg_grenadier", _position, [], 0, "NONE"];
				[_unit, "cdf_grenadier_ak74mgl", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//medic
				_unit = _group createUnit["rhsgref_cdf_b_reg_medic", _position, [], 0, "NONE"];
				[_unit, "cdf_medic_ak74m", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//maschinegunner
				_unit = _group createUnit["rhsgref_cdf_b_reg_machinegunner", _position, [], 0, "NONE"];
				[_unit, "cdf_maschinegunner_pkm", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//rifleman
				_unit = _group createUnit["rhsgref_cdf_b_reg_rifleman", _position, [], 0, "NONE"];
				[_unit, "cdf_rifleman_ak74m", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//marksman
				_unit = _group createUnit["rhsgref_cdf_b_reg_marksman", _position, [], 0, "NONE"];
				[_unit, "cdf_marksman_svd", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//rifleman
				_unit = _group createUnit["rhsgref_cdf_b_reg_rifleman", _position, [], 0, "NONE"];
				[_unit, "cdf_rifleman_ak74m", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//rifleman
				_unit = _group createUnit["rhsgref_cdf_b_reg_rifleman", _position, [], 0, "NONE"];
				[_unit, "cdf_rifleman_ak74m", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//automatic rifleman
				_unit = _group createUnit["rhsgref_cdf_b_reg_machinegunner", _position, [], 0, "NONE"];
				[_unit, "cdf_auromaticrifleman_rpk74", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//antiair
				_unit = _group createUnit["rhsgref_cdf_b_reg_specialist_aa", _position, [], 0, "NONE"];
				[_unit, "cdf_antiair_ak74m_igla", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//antitank
				_unit = _group createUnit["rhsgref_cdf_b_reg_grenadier_rpg", _position, [], 0, "NONE"];
				[_unit, "cdf_antitank_ak74m_rpg7v", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//grenadier
				_unit = _group createUnit["rhsgref_cdf_b_reg_grenadier", _position, [], 0, "NONE"];
				[_unit, "cdf_grenadier_ak74mgl", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//medic
				_unit = _group createUnit["rhsgref_cdf_b_reg_medic", _position, [], 0, "NONE"];
				[_unit, "cdf_medic_ak74m", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//rifleman
				_unit = _group createUnit["rhsgref_cdf_b_reg_rifleman", _position, [], 0, "NONE"];
				[_unit, "cdf_rifleman_ak74m", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//rifleman
				_unit = _group createUnit["rhsgref_cdf_b_reg_rifleman", _position, [], 0, "NONE"];
				[_unit, "cdf_rifleman_ak74m", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
			};
			
			case RESISTANCE:
			{
				//teamleader/commander
				_unit = _group createUnit["rhsgref_cdf_reg_crew", _position, [], 0, "NONE"];
				[_unit, "cdf_crewman_aks74u", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit assignAsTurret[_vehicle, [0,0]];
				_unit moveInTurret[_vehicle, [0,0]];
				//gunner
				_unit = _group createUnit["rhsgref_cdf_reg_crew", _position, [], 0, "NONE"];
				[_unit, "cdf_crewman_aks74u", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit assignAsTurret[_vehicle, [0]];
				_unit moveInTurret[_vehicle, [0]];
				//driver
				_unit = _group createUnit["rhsgref_cdf_reg_crew", _position, [], 0, "NONE"];
				[_unit, "cdf_crewman_aks74u", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit assignAsDriver _vehicle;
				_unit moveInDriver _vehicle;
				
				//rifleman
				_unit = _group createUnit["rhsgref_cdf_reg_rifleman", _position, [], 0, "NONE"];
				[_unit, "cdf_rifleman_ak74m", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//rifleman
				_unit = _group createUnit["rhsgref_cdf_reg_rifleman", _position, [], 0, "NONE"];
				[_unit, "cdf_rifleman_ak74m", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//antitank
				_unit = _group createUnit["rhsgref_cdf_reg_grenadier_rpg", _position, [], 0, "NONE"];
				[_unit, "cdf_antitank_ak74m_rpg7v", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//grenadier
				_unit = _group createUnit["rhsgref_cdf_reg_grenadier", _position, [], 0, "NONE"];
				[_unit, "cdf_grenadier_ak74mgl", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//medic
				_unit = _group createUnit["rhsgref_cdf_reg_medic", _position, [], 0, "NONE"];
				[_unit, "cdf_medic_ak74m", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//maschinegunner
				_unit = _group createUnit["rhsgref_cdf_reg_machinegunner", _position, [], 0, "NONE"];
				[_unit, "cdf_maschinegunner_pkm", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//rifleman
				_unit = _group createUnit["rhsgref_cdf_reg_rifleman", _position, [], 0, "NONE"];
				[_unit, "cdf_rifleman_ak74m", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//marksman
				_unit = _group createUnit["rhsgref_cdf_reg_marksman", _position, [], 0, "NONE"];
				[_unit, "cdf_marksman_svd", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//rifleman
				_unit = _group createUnit["rhsgref_cdf_reg_rifleman", _position, [], 0, "NONE"];
				[_unit, "cdf_rifleman_ak74m", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//rifleman
				_unit = _group createUnit["rhsgref_cdf_reg_rifleman", _position, [], 0, "NONE"];
				[_unit, "cdf_rifleman_ak74m", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//automatic rifleman
				_unit = _group createUnit["rhsgref_cdf_reg_machinegunner", _position, [], 0, "NONE"];
				[_unit, "cdf_auromaticrifleman_rpk74", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//antiair
				_unit = _group createUnit["rhsgref_cdf_reg_specialist_aa", _position, [], 0, "NONE"];
				[_unit, "cdf_antiair_ak74m_igla", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//antitank
				_unit = _group createUnit["rhsgref_cdf_reg_grenadier_rpg", _position, [], 0, "NONE"];
				[_unit, "cdf_antitank_ak74m_rpg7v", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//grenadier
				_unit = _group createUnit["rhsgref_cdf_reg_grenadier", _position, [], 0, "NONE"];
				[_unit, "cdf_grenadier_ak74mgl", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//medic
				_unit = _group createUnit["rhsgref_cdf_reg_medic", _position, [], 0, "NONE"];
				[_unit, "cdf_medic_ak74m", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//rifleman
				_unit = _group createUnit["rhsgref_cdf_reg_rifleman", _position, [], 0, "NONE"];
				[_unit, "cdf_rifleman_ak74m", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//rifleman
				_unit = _group createUnit["rhsgref_cdf_reg_rifleman", _position, [], 0, "NONE"];
				[_unit, "cdf_rifleman_ak74m", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
			};
			
			default{};
		};
		_group addVehicle _vehicle;
	};
	
	case "btr60":
	{
		//3 - 16
		_vehicle = "rhsgref_cdf_btr60" createVehicle _position;
		clearWeaponCargoGlobal _vehicle;
		clearMagazineCargoGlobal _vehicle;
		clearBackpackCargoGlobal _vehicle;
		clearItemCargoGlobal _vehicle;
		
		switch(side _group) do
		{
			case WEST:
			{
				//teamleader/commander
				_unit = _group createUnit["rhsgref_cdf_b_reg_crew", _position, [], 0, "NONE"];
				[_unit, "cdf_crewman_aks74u", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit assignAsTurret[_vehicle, [0]];
				_unit moveInTurret[_vehicle, [0]];
				//gunner
				_unit = _group createUnit["rhsgref_cdf_b_reg_crew", _position, [], 0, "NONE"];
				[_unit, "cdf_crewman_aks74u", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit assignAsTurret[_vehicle, [1]];
				_unit moveInTurret[_vehicle, [1]];
				//driver
				_unit = _group createUnit["rhsgref_cdf_b_reg_crew", _position, [], 0, "NONE"];
				[_unit, "cdf_crewman_aks74u", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit assignAsDriver _vehicle;
				_unit moveInDriver _vehicle;
			};
			
			case RESISTANCE:
			{
				//teamleader/commander
				_unit = _group createUnit["rhsgref_cdf_reg_crew", _position, [], 0, "NONE"];
				[_unit, "cdf_crewman_aks74u", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit assignAsTurret[_vehicle, [0]];
				_unit moveInTurret[_vehicle, [0]];
				//gunner
				_unit = _group createUnit["rhsgref_cdf_reg_crew", _position, [], 0, "NONE"];
				[_unit, "cdf_crewman_aks74u", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit assignAsTurret[_vehicle, [1]];
				_unit moveInTurret[_vehicle, [1]];
				//driver
				_unit = _group createUnit["rhsgref_cdf_reg_crew", _position, [], 0, "NONE"];
				[_unit, "cdf_crewman_aks74u", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit assignAsDriver _vehicle;
				_unit moveInDriver _vehicle;
			};
			
			default{};
		};
		_group addVehicle _vehicle;
	};
	
	case "mech_btr60":
	{
		//3 - 15
		_vehicle = "rhsgref_cdf_btr60" createVehicle _position;
		clearWeaponCargoGlobal _vehicle;
		clearMagazineCargoGlobal _vehicle;
		clearBackpackCargoGlobal _vehicle;
		clearItemCargoGlobal _vehicle;
		
		switch(side _group) do
		{
			case WEST:
			{
				//teamleader/commander
				_unit = _group createUnit["rhsgref_cdf_b_reg_crew", _position, [], 0, "NONE"];
				[_unit, "cdf_crewman_aks74u", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit assignAsTurret[_vehicle, [0]];
				_unit moveInTurret[_vehicle, [0]];
				//gunner
				_unit = _group createUnit["rhsgref_cdf_b_reg_crew", _position, [], 0, "NONE"];
				[_unit, "cdf_crewman_aks74u", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit assignAsTurret[_vehicle, [1]];
				_unit moveInTurret[_vehicle, [1]];
				//driver
				_unit = _group createUnit["rhsgref_cdf_b_reg_crew", _position, [], 0, "NONE"];
				[_unit, "cdf_crewman_aks74u", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit assignAsDriver _vehicle;
				_unit moveInDriver _vehicle;
				
				//rifleman
				_unit = _group createUnit["rhsgref_cdf_b_reg_rifleman", _position, [], 0, "NONE"];
				[_unit, "cdf_rifleman_ak74m", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//rifleman
				_unit = _group createUnit["rhsgref_cdf_b_reg_rifleman", _position, [], 0, "NONE"];
				[_unit, "cdf_rifleman_ak74m", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//antitank
				_unit = _group createUnit["rhsgref_cdf_b_reg_grenadier_rpg", _position, [], 0, "NONE"];
				[_unit, "cdf_antitank_ak74m_rpg7v", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//grenadier
				_unit = _group createUnit["rhsgref_cdf_b_reg_grenadier", _position, [], 0, "NONE"];
				[_unit, "cdf_grenadier_ak74mgl", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//medic
				_unit = _group createUnit["rhsgref_cdf_b_reg_medic", _position, [], 0, "NONE"];
				[_unit, "cdf_medic_ak74m", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//maschinegunner
				_unit = _group createUnit["rhsgref_cdf_b_reg_machinegunner", _position, [], 0, "NONE"];
				[_unit, "cdf_maschinegunner_pkm", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//rifleman
				_unit = _group createUnit["rhsgref_cdf_b_reg_rifleman", _position, [], 0, "NONE"];
				[_unit, "cdf_rifleman_ak74m", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//marksman
				_unit = _group createUnit["rhsgref_cdf_b_reg_marksman", _position, [], 0, "NONE"];
				[_unit, "cdf_marksman_svd", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//rifleman
				_unit = _group createUnit["rhsgref_cdf_b_reg_rifleman", _position, [], 0, "NONE"];
				[_unit, "cdf_rifleman_ak74m", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//rifleman
				_unit = _group createUnit["rhsgref_cdf_b_reg_rifleman", _position, [], 0, "NONE"];
				[_unit, "cdf_rifleman_ak74m", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//automatic rifleman
				_unit = _group createUnit["rhsgref_cdf_b_reg_machinegunner", _position, [], 0, "NONE"];
				[_unit, "cdf_auromaticrifleman_rpk74", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//antiair
				_unit = _group createUnit["rhsgref_cdf_b_reg_specialist_aa", _position, [], 0, "NONE"];
				[_unit, "cdf_antiair_ak74m_igla", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//antitank
				_unit = _group createUnit["rhsgref_cdf_b_reg_grenadier_rpg", _position, [], 0, "NONE"];
				[_unit, "cdf_antitank_ak74m_rpg7v", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//grenadier
				_unit = _group createUnit["rhsgref_cdf_b_reg_grenadier", _position, [], 0, "NONE"];
				[_unit, "cdf_grenadier_ak74mgl", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//medic
				_unit = _group createUnit["rhsgref_cdf_b_reg_medic", _position, [], 0, "NONE"];
				[_unit, "cdf_medic_ak74m", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
			};
			
			case RESISTANCE:
			{
				//teamleader/commander
				_unit = _group createUnit["rhsgref_cdf_reg_crew", _position, [], 0, "NONE"];
				[_unit, "cdf_crewman_aks74u", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit assignAsTurret[_vehicle, [0]];
				_unit moveInTurret[_vehicle, [0]];
				//gunner
				_unit = _group createUnit["rhsgref_cdf_reg_crew", _position, [], 0, "NONE"];
				[_unit, "cdf_crewman_aks74u", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit assignAsTurret[_vehicle, [1]];
				_unit moveInTurret[_vehicle, [1]];
				//driver
				_unit = _group createUnit["rhsgref_cdf_reg_crew", _position, [], 0, "NONE"];
				[_unit, "cdf_crewman_aks74u", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit assignAsDriver _vehicle;
				_unit moveInDriver _vehicle;
				
				//rifleman
				_unit = _group createUnit["rhsgref_cdf_reg_rifleman", _position, [], 0, "NONE"];
				[_unit, "cdf_rifleman_ak74m", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//rifleman
				_unit = _group createUnit["rhsgref_cdf_reg_rifleman", _position, [], 0, "NONE"];
				[_unit, "cdf_rifleman_ak74m", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//antitank
				_unit = _group createUnit["rhsgref_cdf_reg_grenadier_rpg", _position, [], 0, "NONE"];
				[_unit, "cdf_antitank_ak74m_rpg7v", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//grenadier
				_unit = _group createUnit["rhsgref_cdf_reg_grenadier", _position, [], 0, "NONE"];
				[_unit, "cdf_grenadier_ak74mgl", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//medic
				_unit = _group createUnit["rhsgref_cdf_reg_medic", _position, [], 0, "NONE"];
				[_unit, "cdf_medic_ak74m", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//maschinegunner
				_unit = _group createUnit["rhsgref_cdf_reg_machinegunner", _position, [], 0, "NONE"];
				[_unit, "cdf_maschinegunner_pkm", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//rifleman
				_unit = _group createUnit["rhsgref_cdf_reg_rifleman", _position, [], 0, "NONE"];
				[_unit, "cdf_rifleman_ak74m", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//marksman
				_unit = _group createUnit["rhsgref_cdf_reg_marksman", _position, [], 0, "NONE"];
				[_unit, "cdf_marksman_svd", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//rifleman
				_unit = _group createUnit["rhsgref_cdf_reg_rifleman", _position, [], 0, "NONE"];
				[_unit, "cdf_rifleman_ak74m", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//rifleman
				_unit = _group createUnit["rhsgref_cdf_reg_rifleman", _position, [], 0, "NONE"];
				[_unit, "cdf_rifleman_ak74m", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//automatic rifleman
				_unit = _group createUnit["rhsgref_cdf_reg_machinegunner", _position, [], 0, "NONE"];
				[_unit, "cdf_auromaticrifleman_rpk74", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//antiair
				_unit = _group createUnit["rhsgref_cdf_reg_specialist_aa", _position, [], 0, "NONE"];
				[_unit, "cdf_antiair_ak74m_igla", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//antitank
				_unit = _group createUnit["rhsgref_cdf_reg_grenadier_rpg", _position, [], 0, "NONE"];
				[_unit, "cdf_antitank_ak74m_rpg7v", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//grenadier
				_unit = _group createUnit["rhsgref_cdf_reg_grenadier", _position, [], 0, "NONE"];
				[_unit, "cdf_grenadier_ak74mgl", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//medic
				_unit = _group createUnit["rhsgref_cdf_reg_medic", _position, [], 0, "NONE"];
				[_unit, "cdf_medic_ak74m", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
			};
			
			default{};
		};
		_group addVehicle _vehicle;
	};
	
	case "btr70":
	{
		//3 - 16
		_vehicle = "rhsgref_cdf_btr70" createVehicle _position;
		clearWeaponCargoGlobal _vehicle;
		clearMagazineCargoGlobal _vehicle;
		clearBackpackCargoGlobal _vehicle;
		clearItemCargoGlobal _vehicle;
		
		switch(side _group) do
		{
			case WEST:
			{
				//teamleader/commander
				_unit = _group createUnit["rhsgref_cdf_b_reg_crew", _position, [], 0, "NONE"];
				[_unit, "cdf_crewman_aks74u", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit assignAsTurret[_vehicle, [0]];
				_unit moveInTurret[_vehicle, [0]];
				//gunner
				_unit = _group createUnit["rhsgref_cdf_b_reg_crew", _position, [], 0, "NONE"];
				[_unit, "cdf_crewman_aks74u", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit assignAsTurret[_vehicle, [1]];
				_unit moveInTurret[_vehicle, [1]];
				//driver
				_unit = _group createUnit["rhsgref_cdf_b_reg_crew", _position, [], 0, "NONE"];
				[_unit, "cdf_crewman_aks74u", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit assignAsDriver _vehicle;
				_unit moveInDriver _vehicle;
			};
			
			case RESISTANCE:
			{
				//teamleader/commander
				_unit = _group createUnit["rhsgref_cdf_reg_crew", _position, [], 0, "NONE"];
				[_unit, "cdf_crewman_aks74u", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit assignAsTurret[_vehicle, [0]];
				_unit moveInTurret[_vehicle, [0]];
				//gunner
				_unit = _group createUnit["rhsgref_cdf_reg_crew", _position, [], 0, "NONE"];
				[_unit, "cdf_crewman_aks74u", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit assignAsTurret[_vehicle, [1]];
				_unit moveInTurret[_vehicle, [1]];
				//driver
				_unit = _group createUnit["rhsgref_cdf_reg_crew", _position, [], 0, "NONE"];
				[_unit, "cdf_crewman_aks74u", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit assignAsDriver _vehicle;
				_unit moveInDriver _vehicle;
			};
			
			default{};
		};
		_group addVehicle _vehicle;
	};
	
	case "mech_btr70":
	{
		//3 - 15
		_vehicle = "rhsgref_cdf_btr70" createVehicle _position;
		clearWeaponCargoGlobal _vehicle;
		clearMagazineCargoGlobal _vehicle;
		clearBackpackCargoGlobal _vehicle;
		clearItemCargoGlobal _vehicle;
		
		switch(side _group) do
		{
			case WEST:
			{
				//teamleader/commander
				_unit = _group createUnit["rhsgref_cdf_b_reg_crew", _position, [], 0, "NONE"];
				[_unit, "cdf_crewman_aks74u", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit assignAsTurret[_vehicle, [0]];
				_unit moveInTurret[_vehicle, [0]];
				//gunner
				_unit = _group createUnit["rhsgref_cdf_b_reg_crew", _position, [], 0, "NONE"];
				[_unit, "cdf_crewman_aks74u", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit assignAsTurret[_vehicle, [1]];
				_unit moveInTurret[_vehicle, [1]];
				//driver
				_unit = _group createUnit["rhsgref_cdf_b_reg_crew", _position, [], 0, "NONE"];
				[_unit, "cdf_crewman_aks74u", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit assignAsDriver _vehicle;
				_unit moveInDriver _vehicle;
				
				//rifleman
				_unit = _group createUnit["rhsgref_cdf_b_reg_rifleman", _position, [], 0, "NONE"];
				[_unit, "cdf_rifleman_ak74m", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//rifleman
				_unit = _group createUnit["rhsgref_cdf_b_reg_rifleman", _position, [], 0, "NONE"];
				[_unit, "cdf_rifleman_ak74m", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//antitank
				_unit = _group createUnit["rhsgref_cdf_b_reg_grenadier_rpg", _position, [], 0, "NONE"];
				[_unit, "cdf_antitank_ak74m_rpg7v", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//grenadier
				_unit = _group createUnit["rhsgref_cdf_b_reg_grenadier", _position, [], 0, "NONE"];
				[_unit, "cdf_grenadier_ak74mgl", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//medic
				_unit = _group createUnit["rhsgref_cdf_b_reg_medic", _position, [], 0, "NONE"];
				[_unit, "cdf_medic_ak74m", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//maschinegunner
				_unit = _group createUnit["rhsgref_cdf_b_reg_machinegunner", _position, [], 0, "NONE"];
				[_unit, "cdf_maschinegunner_pkm", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//rifleman
				_unit = _group createUnit["rhsgref_cdf_b_reg_rifleman", _position, [], 0, "NONE"];
				[_unit, "cdf_rifleman_ak74m", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//marksman
				_unit = _group createUnit["rhsgref_cdf_b_reg_marksman", _position, [], 0, "NONE"];
				[_unit, "cdf_marksman_svd", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//rifleman
				_unit = _group createUnit["rhsgref_cdf_b_reg_rifleman", _position, [], 0, "NONE"];
				[_unit, "cdf_rifleman_ak74m", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//rifleman
				_unit = _group createUnit["rhsgref_cdf_b_reg_rifleman", _position, [], 0, "NONE"];
				[_unit, "cdf_rifleman_ak74m", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//automatic rifleman
				_unit = _group createUnit["rhsgref_cdf_b_reg_machinegunner", _position, [], 0, "NONE"];
				[_unit, "cdf_auromaticrifleman_rpk74", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//antiair
				_unit = _group createUnit["rhsgref_cdf_b_reg_specialist_aa", _position, [], 0, "NONE"];
				[_unit, "cdf_antiair_ak74m_igla", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//antitank
				_unit = _group createUnit["rhsgref_cdf_b_reg_grenadier_rpg", _position, [], 0, "NONE"];
				[_unit, "cdf_antitank_ak74m_rpg7v", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//grenadier
				_unit = _group createUnit["rhsgref_cdf_b_reg_grenadier", _position, [], 0, "NONE"];
				[_unit, "cdf_grenadier_ak74mgl", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//medic
				_unit = _group createUnit["rhsgref_cdf_b_reg_medic", _position, [], 0, "NONE"];
				[_unit, "cdf_medic_ak74m", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
			};
			
			case RESISTANCE:
			{
				//teamleader/commander
				_unit = _group createUnit["rhsgref_cdf_reg_crew", _position, [], 0, "NONE"];
				[_unit, "cdf_crewman_aks74u", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit assignAsTurret[_vehicle, [0]];
				_unit moveInTurret[_vehicle, [0]];
				//gunner
				_unit = _group createUnit["rhsgref_cdf_reg_crew", _position, [], 0, "NONE"];
				[_unit, "cdf_crewman_aks74u", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit assignAsTurret[_vehicle, [1]];
				_unit moveInTurret[_vehicle, [1]];
				//driver
				_unit = _group createUnit["rhsgref_cdf_reg_crew", _position, [], 0, "NONE"];
				[_unit, "cdf_crewman_aks74u", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit assignAsDriver _vehicle;
				_unit moveInDriver _vehicle;
				
				//rifleman
				_unit = _group createUnit["rhsgref_cdf_reg_rifleman", _position, [], 0, "NONE"];
				[_unit, "cdf_rifleman_ak74m", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//rifleman
				_unit = _group createUnit["rhsgref_cdf_reg_rifleman", _position, [], 0, "NONE"];
				[_unit, "cdf_rifleman_ak74m", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//antitank
				_unit = _group createUnit["rhsgref_cdf_reg_grenadier_rpg", _position, [], 0, "NONE"];
				[_unit, "cdf_antitank_ak74m_rpg7v", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//grenadier
				_unit = _group createUnit["rhsgref_cdf_reg_grenadier", _position, [], 0, "NONE"];
				[_unit, "cdf_grenadier_ak74mgl", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//medic
				_unit = _group createUnit["rhsgref_cdf_reg_medic", _position, [], 0, "NONE"];
				[_unit, "cdf_medic_ak74m", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//maschinegunner
				_unit = _group createUnit["rhsgref_cdf_reg_machinegunner", _position, [], 0, "NONE"];
				[_unit, "cdf_maschinegunner_pkm", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//rifleman
				_unit = _group createUnit["rhsgref_cdf_reg_rifleman", _position, [], 0, "NONE"];
				[_unit, "cdf_rifleman_ak74m", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//marksman
				_unit = _group createUnit["rhsgref_cdf_reg_marksman", _position, [], 0, "NONE"];
				[_unit, "cdf_marksman_svd", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//rifleman
				_unit = _group createUnit["rhsgref_cdf_reg_rifleman", _position, [], 0, "NONE"];
				[_unit, "cdf_rifleman_ak74m", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//rifleman
				_unit = _group createUnit["rhsgref_cdf_reg_rifleman", _position, [], 0, "NONE"];
				[_unit, "cdf_rifleman_ak74m", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//automatic rifleman
				_unit = _group createUnit["rhsgref_cdf_reg_machinegunner", _position, [], 0, "NONE"];
				[_unit, "cdf_auromaticrifleman_rpk74", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//antiair
				_unit = _group createUnit["rhsgref_cdf_reg_specialist_aa", _position, [], 0, "NONE"];
				[_unit, "cdf_antiair_ak74m_igla", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//antitank
				_unit = _group createUnit["rhsgref_cdf_reg_grenadier_rpg", _position, [], 0, "NONE"];
				[_unit, "cdf_antitank_ak74m_rpg7v", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//grenadier
				_unit = _group createUnit["rhsgref_cdf_reg_grenadier", _position, [], 0, "NONE"];
				[_unit, "cdf_grenadier_ak74mgl", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
				//medic
				_unit = _group createUnit["rhsgref_cdf_reg_medic", _position, [], 0, "NONE"];
				[_unit, "cdf_medic_ak74m", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit moveInAny _vehicle;
			};
			
			default{};
		};
		_group addVehicle _vehicle;
	};
	
	case "t72b":
	{
		//3 - 0
		_vehicle = "rhsgref_cdf_t72ba_tv" createVehicle _position;
		clearWeaponCargoGlobal _vehicle;
		clearMagazineCargoGlobal _vehicle;
		clearBackpackCargoGlobal _vehicle;
		clearItemCargoGlobal _vehicle;
		
		switch(side _group) do
		{
			case WEST:
			{
				//teamleader/commander
				_unit = _group createUnit["rhsgref_cdf_b_reg_crew", _position, [], 0, "NONE"];
				[_unit, "cdf_crewman_aks74u", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit assignAsTurret[_vehicle, [0,0]];
				_unit moveInTurret[_vehicle, [0,0]];
				//gunner
				_unit = _group createUnit["rhsgref_cdf_b_reg_crew", _position, [], 0, "NONE"];
				[_unit, "cdf_crewman_aks74u", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit assignAsTurret[_vehicle, [0]];
				_unit moveInTurret[_vehicle, [0]];
				//driver
				_unit = _group createUnit["rhsgref_cdf_b_reg_crew", _position, [], 0, "NONE"];
				[_unit, "cdf_crewman_aks74u", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit assignAsDriver _vehicle;
				_unit moveInDriver _vehicle;
			};
			
			case RESISTANCE:
			{
				//teamleader/commander
				_unit = _group createUnit["rhsgref_cdf_reg_crew", _position, [], 0, "NONE"];
				[_unit, "cdf_crewman_aks74u", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit assignAsTurret[_vehicle, [0,0]];
				_unit moveInTurret[_vehicle, [0,0]];
				//gunner
				_unit = _group createUnit["rhsgref_cdf_reg_crew", _position, [], 0, "NONE"];
				[_unit, "cdf_crewman_aks74u", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit assignAsTurret[_vehicle, [0]];
				_unit moveInTurret[_vehicle, [0]];
				//driver
				_unit = _group createUnit["rhsgref_cdf_reg_crew", _position, [], 0, "NONE"];
				[_unit, "cdf_crewman_aks74u", _backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";
				_unit assignAsDriver _vehicle;
				_unit moveInDriver _vehicle;
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