//////////////////////////////////////////////////////////////////
// Function file for Armed Assault
// Created by: Nuka [www.sealteam10.de]
//////////////////////////////////////////////////////////////////

/*
	[group, bool: delete all waypoints, position, behaviour, formation, combatMode, speed, timeout, type, radius]
*/

private['_group','_waypoint','_position','_behaviour','_formation','_combatmode','_speed','_timeout','_type','_radius'];
_group = _this select 0;
_position = _this select 2;
_behaviour = _this select 3;
_formation = _this select 4;
_combatmode = _this select 5;
_speed = _this select 6;
_timeout = _this select 7;
_type = _this select 8;
_radius = _this select 9;



if(_this select 1) then //bool delete all waypoints
{
	while{(count (waypoints _group)) > 0} do 
	{ 
		deleteWaypoint ((waypoints _group) select 0); 
	};
};

_waypoint = _group addWaypoint[_position, 0];
_waypoint setWaypointBehaviour _behaviour;
_waypoint setWaypointFormation _formation;
_waypoint setWaypointCombatMode _combatmode;
_waypoint setWaypointSpeed _speed;
_waypoint setWaypointTimeout _timeout;
_waypoint setWaypointType _type;
_waypoint setWaypointCompletionRadius _radius;


_waypoint