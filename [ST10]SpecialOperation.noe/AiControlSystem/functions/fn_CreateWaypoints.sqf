private["_waypoints","_waypoint","_group","_position","_waypointProperties"];
_group = _this select 0;

_waypoints = [];
{
	_position = _x select 0;
	_waypointProperties = _x select 1;

	_waypoint = _group addWaypoint[_position,0];

	if(count _waypointProperties == 8) then
	{
		_waypoint setWaypointType (_waypointProperties select 0);
		_waypoint setWaypointFormation (_waypointProperties select 1);
		_waypoint setWaypointBehaviour (_waypointProperties select 2);
		_waypoint setWaypointSpeed (_waypointProperties select 3);
		_waypoint setWaypointCombatMode (_waypointProperties select 4);
		_waypoint setWaypointCompletionRadius (_waypointProperties select 5);
		_waypoint setWaypointStatements (_waypointProperties select 6);
		_waypoint setWaypointTimeout (_waypointProperties select 7);
	}
	else
	{
		_waypoint setWaypointType "MOVE";
		_waypoint setWaypointFormation "COLUMN";
		_waypoint setWaypointBehaviour "SAFE";
		_waypoint setWaypointSpeed "LIMITED";
		_waypoint setWaypointCombatMode "YELLOW";
		_waypoint setWaypointCompletionRadius 0;
		_waypoint setWaypointStatements ["true",""];
		_waypoint setWaypointTimeout [0,0,0];
	};

	_waypoints pushBack _waypoint;
}forEach (_this select 1);
	
_waypoints