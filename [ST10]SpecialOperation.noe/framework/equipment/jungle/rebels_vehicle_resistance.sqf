//////////////////////////////////////////////////////////////////
// Function file for Armed Assault
// Created by: Nuka [www.sealteam10.de]
//////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////
// Function file for Armed Assault
// Created by: Nuka [www.sealteam10.de]
//////////////////////////////////////////////////////////////////

//[group, position, vehicle type, direction]execVM "framework\equipment\jungle\rebels_vehicle_resistance.sqf";

private['_group','_position','_unit','_vehicle','_dir','_handle'];
_group = _this select 0;
_position = _this select 1;
_dir = if(count _this > 3) then{_this select 3} else{0};


switch(_this select 2) do 
{	
	case "offroad_m2":
	{
		//2 - 1
		_vehicle = "B_G_Offroad_01_armed_F" createVehicle _position;
		clearWeaponCargoGlobal _vehicle;
		clearMagazineCargoGlobal _vehicle;
		clearBackpackCargoGlobal _vehicle;
		clearItemCargoGlobal _vehicle;
		
		_handle = [_group, _position, ([[2,1,0,0],[2,0,0,1],[0,1,1,1],[1,0,1,1],[1,1,0,1],[3,0,0,0]]call BIS_fnc_selectRandom)]execVM "framework\equipment\jungle\rebels_random_resistance.sqf";
		waitUntil{scriptDone _handle};
		{
			_x moveInAny _vehicle;
		}forEach (units _group);		
		_group addVehicle _vehicle;
	};
	
	case "offroad":
	{
		//1 - 5
		_vehicle = "B_G_Offroad_01_F" createVehicle _position;
		clearWeaponCargoGlobal _vehicle;
		clearMagazineCargoGlobal _vehicle;
		clearBackpackCargoGlobal _vehicle;
		clearItemCargoGlobal _vehicle;
		
		_handle = [_group, _position, ([[2,2,1,1],[4,1,1,0],[5,0,1,0],[6,0,0,0],[4,1,0,1]]call BIS_fnc_selectRandom)]execVM "framework\equipment\jungle\rebels_random_resistance.sqf";
		waitUntil{scriptDone _handle};
		{
			_x moveInAny _vehicle;
		}forEach (units _group);		
		_group addVehicle _vehicle;
	};
	
	case "truck":
	{
		//1 - 12
		_vehicle = "B_G_Van_01_transport_F" createVehicle _position;
		clearWeaponCargoGlobal _vehicle;
		clearMagazineCargoGlobal _vehicle;
		clearBackpackCargoGlobal _vehicle;
		clearItemCargoGlobal _vehicle;
		
		_handle = [_group, _position, ([[7,3,1,2],[8,2,2,1],[7,2,2,2],[9,1,1,2],[6,4,0,3]]call BIS_fnc_selectRandom)]execVM "framework\equipment\jungle\rebels_random_resistance.sqf";
		waitUntil{scriptDone _handle};
		{
			_x moveInAny _vehicle;
		}forEach (units _group);		
		_group addVehicle _vehicle;
	};
	
	case "quad":
	{
		//1 - 1
		_vehicle = "B_G_Quadbike_01_F" createVehicle _position;
		clearWeaponCargoGlobal _vehicle;
		clearMagazineCargoGlobal _vehicle;
		clearBackpackCargoGlobal _vehicle;
		clearItemCargoGlobal _vehicle;
		
		_handle = [_group, _position, ([[2,0,0,0],[1,1,0,0],[0,2,0,0],[1,0,1,0],[1,0,1,0],[0,0,0,2]]call BIS_fnc_selectRandom)]execVM "framework\equipment\jungle\rebels_random_resistance.sqf";
		waitUntil{scriptDone _handle};
		{
			_x moveInAny _vehicle;
		}forEach (units _group);		
		_group addVehicle _vehicle;
	};
};


if(_dir != 0) then
{
	_vehicle setDir _dir;
};

{
	_x setSkill 0.6;
	_x setskill ["courage",1];
}forEach (units _group);

_vehicle addEventHandler["HandleDamage",{if((_this select 4) == "") then{0};}];