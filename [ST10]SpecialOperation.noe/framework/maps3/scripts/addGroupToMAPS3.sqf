//////////////////////////////////////////////////////////////////
// Function file for Armed Assault
// Created by: Nuka [www.sealteam10.de]
//////////////////////////////////////////////////////////////////


/*
	Patrol Settings:
	[Type, Behaviour, Formation, CombatMode, Speed, Timeout, CompletionRadius]

	####################
	### landInfantry ###
	[unit patrol type ,[group,patrol type,[patrol parameter],[patrol settings],[bool urban combat, house search range, chance 0 - 100]]]execVM MAPS3_addGroup;

	#waypoints / waypointsUrban
	0 - waypoints array
	
	#waypointsRandom / waypointsRandomUrban
	0 - center 
	1 - min 
	2 - max
	3 - canOnWater
	4 - number of waypoints
	
	####################
	### landVehicle ###
	[unit patrol type ,[group,patrol type,[patrol parameter],[patrol settings]]]execVM MAPS3_addGroup;

	#waypoints
	0 - waypoints array
	
	#waypointsRandom
	0 - center 
	1 - min 
	2 - max
	3 - canOnWater
	4 - number of waypoints
	
	#waypointsRandomRoad
	0 - center 
	1 - range 
	2 - min
	4 - number of waypoints
	
	####################
	### waterVehicle ###
	[unit patrol type ,[group,patrol type,[patrol parameter],[patrol settings]]]execVM MAPS3_addGroup;

	#waypoints
	0 - waypoints array
	
	#waypointsRandom
	0 - center 
	1 - min 
	2 - max
	3 - canOnWater
	4 - number of waypoints
	
	####################
	### airVehicle ###
	[unit patrol type ,[group,patrol type,[patrol parameter],[patrol settings]]]execVM MAPS3_addGroup;

	#waypoints
	0 - waypoints array
	
	#waypointsRandom
	0 - center 
	1 - min 
	2 - max
	3 - canOnWater
	4 - number of waypoints
*/


if(!isServer) exitWith{};
private['_type','_params'];
_type = _this select 0;
_params = _this select 1;

_params execVM ("framework\maps3\scripts\" + _type + ".sqf");