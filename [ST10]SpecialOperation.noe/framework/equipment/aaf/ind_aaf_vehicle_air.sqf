//////////////////////////////////////////////////////////////////
// Function file for Armed Assault
// Created by: Nuka [www.sealteam10.de]
//////////////////////////////////////////////////////////////////

//[group, position, type/vehicle, dir, fly, height, speed]execVM "framework\equipment\aaf\ind_aaf_vehicle_air.sqf";

private['_group','_position','_unit','_vehicle','_dir','_fly','_height','_speed'];
_group = _this select 0;
_position = _this select 1;
_dir = if(count _this > 3) then{_this select 3} else{0}; 
_fly = if(count _this > 4) then{_this select 4} else{false};
_height = if(count _this > 5) then{_this select 5} else{0};
_speed = if(count _this > 6) then{_this select 6} else{0};

switch(_this select 2) do
{		
	case "merlin":
	{
		//2 - 16
		if(_fly) then
		{
			_vehicle = createVehicle ["I_Heli_Transport_02_F", _position, [], 0, "FLY"];
		}
		else
		{
			_vehicle = "I_Heli_Transport_02_F" createVehicle _position;
		};
		
		if(_dir != 0) then
		{
			_vehicle setDir _dir;
		};
		if(_height > 0) then
		{
			_vehicle setPos[getPos _vehicle select 0, getPos _vehicle select 1, _height];
			_vehicle engineOn true;
			_vehicle setVelocity [(vectorDir _vehicle select 0)*_speed,(vectorDir _vehicle select 1)*_speed,(vectorDir _vehicle select 2)*_speed];
		};
		clearWeaponCargoGlobal _vehicle;
		clearMagazineCargoGlobal _vehicle;
		clearBackpackCargoGlobal _vehicle;
		clearItemCargoGlobal _vehicle;
		
		
		//pilot
		_unit = _group createUnit["I_pilot_F", _position, [], 0, "NONE"];
		[_unit, "pilot_mp5kpdw", false]execVM "framework\equipment\aaf\equipment_aaf.sqf";
		_unit moveInDriver _vehicle;
		//pilot
		_unit = _group createUnit["I_pilot_F", _position, [], 0, "NONE"];
		[_unit, "pilot_mp5kpdw", false]execVM "framework\equipment\aaf\equipment_aaf.sqf";
		_unit moveInTurret [_vehicle, [0]];
		
		_group addVehicle _vehicle;
	};
	
	case "wildcat_unarmed":
	{
		//2 - 6
		if(_fly) then
		{
			_vehicle = createVehicle ["I_Heli_light_03_unarmed_F", _position, [], 0, "FLY"];
		}
		else
		{
			_vehicle = "I_Heli_light_03_unarmed_F" createVehicle _position;
		};
		
		if(_dir != 0) then
		{
			_vehicle setDir _dir;
		};
		if(_height > 0) then
		{
			_vehicle setPos[getPos _vehicle select 0, getPos _vehicle select 1, _height];
			_vehicle engineOn true;
			_vehicle setVelocity [(vectorDir _vehicle select 0)*_speed,(vectorDir _vehicle select 1)*_speed,(vectorDir _vehicle select 2)*_speed];
		};
		clearWeaponCargoGlobal _vehicle;
		clearMagazineCargoGlobal _vehicle;
		clearBackpackCargoGlobal _vehicle;
		clearItemCargoGlobal _vehicle;
		
		
		//pilot
		_unit = _group createUnit["I_pilot_F", _position, [], 0, "NONE"];
		[_unit, "pilot_mp5kpdw", false]execVM "framework\equipment\aaf\equipment_aaf.sqf";
		_unit moveInDriver _vehicle;
		//pilot
		_unit = _group createUnit["I_pilot_F", _position, [], 0, "NONE"];
		[_unit, "pilot_mp5kpdw", false]execVM "framework\equipment\aaf\equipment_aaf.sqf";
		_unit moveInTurret [_vehicle, [0]];
		
		_group addVehicle _vehicle;
	};
	
	case "wildcat":
	{
		//2 - 2
		if(_fly) then
		{
			_vehicle = createVehicle ["I_Heli_light_03_F", _position, [], 0, "FLY"];
		}
		else
		{
			_vehicle = "I_Heli_light_03_F" createVehicle _position;
		};
		
		if(_dir != 0) then
		{
			_vehicle setDir _dir;
		};
		if(_height > 0) then
		{
			_vehicle setPos[getPos _vehicle select 0, getPos _vehicle select 1, _height];
			_vehicle engineOn true;
			_vehicle setVelocity [(vectorDir _vehicle select 0)*_speed,(vectorDir _vehicle select 1)*_speed,(vectorDir _vehicle select 2)*_speed];
		};
		clearWeaponCargoGlobal _vehicle;
		clearMagazineCargoGlobal _vehicle;
		clearBackpackCargoGlobal _vehicle;
		clearItemCargoGlobal _vehicle;
		
		
		//pilot
		_unit = _group createUnit["I_pilot_F", _position, [], 0, "NONE"];
		[_unit, "pilot_mp5kpdw", false]execVM "framework\equipment\aaf\equipment_aaf.sqf";
		_unit moveInDriver _vehicle;
		//pilot
		_unit = _group createUnit["I_pilot_F", _position, [], 0, "NONE"];
		[_unit, "pilot_mp5kpdw", false]execVM "framework\equipment\aaf\equipment_aaf.sqf";
		_unit moveInTurret [_vehicle, [0]];
		
		_group addVehicle _vehicle;
	};
	
	case "alca_aa":
	{
		//1 - 0
		if(_fly) then
		{
			_vehicle = createVehicle ["I_Plane_Fighter_03_AA_F", _position, [], 0, "FLY"];
		}
		else
		{
			_vehicle = "I_Plane_Fighter_03_AA_F" createVehicle _position;
		};
		
		if(_dir != 0) then
		{
			_vehicle setDir _dir;
		};
		if(_height > 0) then
		{
			_vehicle setPos[getPos _vehicle select 0, getPos _vehicle select 1, _height];
			_vehicle engineOn true;
			_vehicle setVelocity [(vectorDir _vehicle select 0)*_speed,(vectorDir _vehicle select 1)*_speed,(vectorDir _vehicle select 2)*_speed];
		};
		clearWeaponCargoGlobal _vehicle;
		clearMagazineCargoGlobal _vehicle;
		clearBackpackCargoGlobal _vehicle;
		clearItemCargoGlobal _vehicle;
		
		
		//pilot
		_unit = _group createUnit["I_pilot_F", _position, [], 0, "NONE"];
		[_unit, "pilot_mp5kpdw", false]execVM "framework\equipment\aaf\equipment_aaf.sqf";
		_unit moveInDriver _vehicle;
		
		_group addVehicle _vehicle;
	};
	
	case "alca_cas":
	{
		//1 - 0
		if(_fly) then
		{
			_vehicle = createVehicle ["I_Plane_Fighter_03_CAS_F", _position, [], 0, "FLY"];
		}
		else
		{
			_vehicle = "I_Plane_Fighter_03_CAS_F" createVehicle _position;
		};
		
		if(_dir != 0) then
		{
			_vehicle setDir _dir;
		};
		if(_height > 0) then
		{
			_vehicle setPos[getPos _vehicle select 0, getPos _vehicle select 1, _height];
			_vehicle engineOn true;
			_vehicle setVelocity [(vectorDir _vehicle select 0)*_speed,(vectorDir _vehicle select 1)*_speed,(vectorDir _vehicle select 2)*_speed];
		};
		clearWeaponCargoGlobal _vehicle;
		clearMagazineCargoGlobal _vehicle;
		clearBackpackCargoGlobal _vehicle;
		clearItemCargoGlobal _vehicle;
		
		
		//pilot
		_unit = _group createUnit["I_pilot_F", _position, [], 0, "NONE"];
		[_unit, "pilot_mp5kpdw", false]execVM "framework\equipment\aaf\equipment_aaf.sqf";
		_unit moveInDriver _vehicle;
		
		_group addVehicle _vehicle;
	};
	
	case "c130":
	{
		//2 - 2
		if(_fly) then
		{
			_vehicle = createVehicle ["Cha_C130_AAF", _position, [], 0, "FLY"];
		}
		else
		{
			_vehicle = "Cha_C130_AAF" createVehicle _position;
		};
		
		if(_dir != 0) then
		{
			_vehicle setDir _dir;
		};
		if(_height > 0) then
		{
			_vehicle setPos[getPos _vehicle select 0, getPos _vehicle select 1, _height];
			_vehicle engineOn true;
			_vehicle setVelocity [(vectorDir _vehicle select 0)*_speed,(vectorDir _vehicle select 1)*_speed,(vectorDir _vehicle select 2)*_speed];
		};
		clearWeaponCargoGlobal _vehicle;
		clearMagazineCargoGlobal _vehicle;
		clearBackpackCargoGlobal _vehicle;
		clearItemCargoGlobal _vehicle;
		
		
		//pilot
		_unit = _group createUnit["I_pilot_F", _position, [], 0, "NONE"];
		[_unit, "pilot_mp5kpdw", false]execVM "framework\equipment\aaf\equipment_aaf.sqf";
		_unit moveInDriver _vehicle;
		//pilot
		_unit = _group createUnit["I_pilot_F", _position, [], 0, "NONE"];
		[_unit, "pilot_mp5kpdw", false]execVM "framework\equipment\aaf\equipment_aaf.sqf";
		_unit moveInCargo _vehicle;
		//pilot
		_unit = _group createUnit["I_pilot_F", _position, [], 0, "NONE"];
		[_unit, "pilot_mp5kpdw", false]execVM "framework\equipment\aaf\equipment_aaf.sqf";
		_unit moveInCargo _vehicle;
		
		_group addVehicle _vehicle;
	};
};

_group setVariable["framework_vehicle", _vehicle];


{
	_x setSkill 1;
}forEach (units _group);