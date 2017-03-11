/*
	Parameter:
	0 -> Group
	1 -> [3D Array Center, Radius X, Radius Y, Radius Z, On Water]
	2 -> Number of Waypoints 
	3 -> [Waypoint Type, Waypoint Formation, Waypoint Behaviour, Waypoint Speed, Waypoint Combat Mode, Waypoint Completion Radius, Waypoint Statements, Waypoint Timeout]
	
	Example:
	[group1, [[1200,1180,0], 5000, 100, false], 50, ["MOVE", "COLUMN", "SAFE", "LIMITED", "RED", 0, ["true", ""], [0,0,0]]]
*/
private["_group","_waypointPosition","_numberOfWaypoints","_paramsRectangle","_waypointProperties","_handle"];
_group = _this select 0;
_paramsRectangle = _this select 1;
_numberOfWaypoints = _this select 2;
_waypointProperties = _this select 3;

if(_numberOfWaypoints > 1) then
{
	_handle = [_group]execVM "AiControlSystem\scripts\DeleteAllWaypoints.sqf";
	waitUntil{scriptDone _handle};
	
	for "_i" from 1 to _numberOfWaypoints do
	{
		_waypointPosition = _paramsRectangle call ACS_fnc_GetRandomPositionRectangle;
		[_group, _waypointPosition, _waypointProperties]call ACS_fnc_CreateWaypoint;
	};
	sleep 2;
	[_group, _waypointPosition, ["CYCLE", (_waypointProperties select 1), (_waypointProperties select 2), (_waypointProperties select 3), (_waypointProperties select 4), 100, (_waypointProperties select 6), (_waypointProperties select 7)]]call ACS_fnc_CreateWaypoint;
};