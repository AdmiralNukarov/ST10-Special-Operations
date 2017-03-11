//////////////////////////////////////////////////////////////////
// Function file for Armed Assault
// Created by: Nuka [www.sealteam10.de]
//////////////////////////////////////////////////////////////////

if(!isServer) exitWith{};

private['_group','_patrolType','_params','_patrolSettings'];
_group = _this select 0;
_patrolType = _this select 1;
_params = _this select 2;
_patrolSettings = _this select 3;
_urban = _this select 4;

switch(_patrolType) do
{
	case "waypoints":
	{
		_handle = [_group, _params, _patrolSettings] execVM "framework\maps3\scripts\createWaypoints.sqf";
		waitUntil{scriptDone _handle};
	};
	
	case "waypointsRandom":
	{
		_handle = [_group ,_params, _patrolSettings] execVM "framework\maps3\scripts\createWaypointsRandom.sqf";
		waitUntil{scriptDone _handle};
	};
	
	case "waypointsUrban":
	{
		_handle = [_group, _params, _patrolSettings] execVM "framework\maps3\scripts\createWaypoints.sqf";
		waitUntil{scriptDone _handle};
		
		{
			if(waypointType _x != "CYCLE") then
			{
				_x setWaypointStatements["true", "_null = this execVM 'framework\maps3\scripts\landInfantryCheckBuildings.sqf';"];
			};
		}forEach (waypoints _group);
	};
	
	case "waypointsRandomUrban":
	{
		_handle = [_group ,_params, _patrolSettings] execVM "framework\maps3\scripts\createWaypointsRandom.sqf";
		waitUntil{scriptDone _handle};
		
		{
			if(waypointType _x != "CYCLE") then
			{
				_x setWaypointStatements["true", "_null = this execVM 'framework\maps3\scripts\landInfantryCheckBuildings.sqf';"]; 
			};
		}forEach (waypoints _group);
	};
};

while{true} do
{
	if({alive _x}count units _group < 1 || {_x getVariable["maps3Cancel", false]}count units _group > 0) exitWith
	{
		{_x setVariable["maps3Cancel", false];}forEach units _group;
	};
	
	if((leader _group) call BIS_fnc_enemyDetected && behaviour (leader _group) == "COMBAT") exitWith
	{
		if((_urban select 0) && random 100 <= (_urban select 2)) then
		{
			_this execVM "framework\maps3\scripts\landInfantryCombatUrban.sqf";
		}
		else
		{
			_this execVM "framework\maps3\scripts\landInfantryCombat.sqf";
		};
	};

	sleep 2;
};