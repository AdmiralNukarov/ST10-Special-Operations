//////////////////////////////////////////////////////////////////
// Function file for Armed Assault
// Created by: Nuka [www.sealteam10.de]
//////////////////////////////////////////////////////////////////

private['_group','_waypoint','_patrolSettings','_positions','_cycle'];
_group = _this select 0;
_cycle = _this select 2;
_positions = _this select 3;
_patrolSettings = _this select 4;

if(_this select 1) then
{
	while{(count (waypoints _group)) > 0} do 
	{ 
		deleteWaypoint ((waypoints _group) select 0); 
	};
};

if(count _patrolSettings  == 7) then
{
	{
		_waypoint = _group addWaypoint[_x, 0];
		_waypoint setWaypointBehaviour (_patrolSettings select 1);
		_waypoint setWaypointFormation (_patrolSettings select 2);
		_waypoint setWaypointCombatMode (_patrolSettings select 3);
		_waypoint setWaypointSpeed (_patrolSettings select 4);
		_waypoint setWaypointTimeout (_patrolSettings select 5);
		_waypoint setWaypointCompletionRadius (_patrolSettings select 6);
		_waypoint setWaypointType (_patrolSettings select 0);
	}forEach _positions;
	
	if(_cycle) then
	{
		_waypoint = _group addWaypoint[(_positions select 0), 0];
		_waypoint setWaypointBehaviour (_patrolSettings select 1);
		_waypoint setWaypointFormation (_patrolSettings select 2);
		_waypoint setWaypointCombatMode (_patrolSettings select 3);
		_waypoint setWaypointSpeed (_patrolSettings select 4);
		_waypoint setWaypointTimeout (_patrolSettings select 5);
		_waypoint setWaypointCompletionRadius (_patrolSettings select 6);
		_waypoint setWaypointType "CYCLE";
	};
	
	{
		_x setBehaviour (_patrolSettings select 1);
	}forEach (units _group);
}
else
{
	{
		_waypoint = _group addWaypoint[_x, 0];
		_waypoint setWaypointBehaviour "SAFE";
		_waypoint setWaypointFormation "STAG COLUMN";
		_waypoint setWaypointCombatMode "RED";
		_waypoint setWaypointSpeed "LIMITED";
		_waypoint setWaypointType "MOVE";
	}forEach _positions;
	
	if(_cycle) then
	{
		_waypoint = _group addWaypoint[(_positions select 0), 0];
		_waypoint setWaypointBehaviour "SAFE";
		_waypoint setWaypointFormation "STAG COLUMN";
		_waypoint setWaypointCombatMode "RED";
		_waypoint setWaypointSpeed "LIMITED";
		_waypoint setWaypointType "CYCLE";
	};
	
	{
		_x setBehaviour "SAFE";
	}forEach (units _group);
};

