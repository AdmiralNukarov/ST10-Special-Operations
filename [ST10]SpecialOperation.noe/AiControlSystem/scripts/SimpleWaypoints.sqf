/*
	Parameter:
	0 -> Group
	1 -> [Waypoint Position, [Waypoint Type, Waypoint Formation, Waypoint Behaviour, Waypoint Speed, Waypoint Combat Mode, Waypoint Completion Radius, Waypoint Statements, Waypoint Timeout]]
	
	Example:
	[group1, [[[500,800,0],["MOVE", "COLUMN", "SAFE", "LIMITED", "RED", 0, ["true", ""], [0,0,0]]], [[600,900,0],["MOVE", "COLUMN", "SAFE", "LIMITED", "RED", 0, ["true", ""], [0,0,0]]]]]
*/
private["_group","_paramsWaypoints","_handle"];
_group = _this select 0;
_paramsWaypoints = _this select 1;

_handle = [_group]execVM "AiControlSystem\scripts\DeleteAllWaypoints.sqf";
waitUntil{scriptDone _handle};

[_group, _paramsWaypoints]call ACS_fnc_CreateWaypoints;
sleep 5;
[_group, ((_paramsWaypoints select 0) select 0), ["CYCLE", (((_paramsWaypoints select 0) select 1) select 1), (((_paramsWaypoints select 0) select 1) select 2), (((_paramsWaypoints select 0) select 1) select 3), (((_paramsWaypoints select 0) select 1) select 4), 100, (((_paramsWaypoints select 0) select 1) select 6), (((_paramsWaypoints select 0) select 1) select 7)]]call ACS_fnc_CreateWaypoint;
