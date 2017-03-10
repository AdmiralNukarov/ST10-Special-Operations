//////////////////////////////////////////////////////////////////
// Function file for Armed Assault
// Created by: Nuka [www.sealteam10.de]
//////////////////////////////////////////////////////////////////

/*
	Combat Array
	[type, formation, combatmode, speed]
	
	group setVariable["MAPS2_COMBATARRAY",[type, formation, combatmode, speed]];
*/

private['_group','_combatarray','_waypoint'];
_group = _this select 0;
_array = _this select 1;


while{(count (waypoints _group)) > 0} do 
{ 
	deleteWaypoint ((waypoints _group) select 0); 
};

_combatarray = _group getVariable["MAPS2_COMBATARRAY", []];
if(count _combatarray == 4) then
{
	_waypoint = _group addWaypoint[position (leader _group), 0];
	//_waypoint setWaypointBehaviour "COMBAT";
	_waypoint setWaypointType (_combatarray select 0);
	_waypoint setWaypointFormation (_combatarray select 1);
	_waypoint setWaypointCombatMode (_combatarray select 2);
	_waypoint setWaypointSpeed (_combatarray select 3);
}
else
{
	_waypoint = _group addWaypoint[position (leader _group), 0];
	//_waypoint setWaypointBehaviour "COMBAT";
	_waypoint setWaypointType "GUARD";
	_waypoint setWaypointFormation "LINE";
	_waypoint setWaypointCombatMode "RED";
	_waypoint setWaypointSpeed "NORMAL";
};
