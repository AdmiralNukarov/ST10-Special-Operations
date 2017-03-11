//////////////////////////////////////////////////////////////////
// Function file for Armed Assault
// Created by: Nuka [www.sealteam10.de]
//////////////////////////////////////////////////////////////////

//MAPS2 must be initialized
//[group vehicle, [group1,group2,...], position, positionreturn, code group vehicle, [code group1, code group 2,...]]execVM "framework\scripts\ai\syncTransportDrop.sqf";

private['_group1','_groups','_waypoint1','_waypoints','_waypoint2','_position','_positionreturn','_code1','_code2','_wp'];
_group1 = _this select 0;
_groups = _this select 1;
_position = _this select 2;
_positionreturn = _this select 3;
_code1 = _this select 4;
_code2 = _this select 5;
_waypoints = [];

_waypoint1 = [_group1, true, _position, "CARELESS", "COLUMN", "RED", "NORMAL", [0,0,0], "TR UNLOAD", 0]call MAPS2_fnc_addWaypoint;
for "_i" from 0 to ((count _groups) - 1) do
{
	_wp = [(_groups select _i), true, _position, "SAFE", "COLUMN", "RED", "NORMAL", [0,0,0], "GETOUT", 500]call MAPS2_fnc_addWaypoint;
	_wp setWaypointStatements ["true", (_code2 select _i)];
	_waypoints = _waypoints + [_wp];
};
_waypoint2 = [_group1, false, _positionreturn, "CARELESS", "COLUMN", "RED", "NORMAL", [0,0,0], "MOVE", 0]call MAPS2_fnc_addWaypoint; 

if(_code1 == "delete") then
{
	_waypoint2 setWaypointStatements ["true", "{deleteVehicle (vehicle _x);}forEach thislist; {deleteVehicle _x;}forEach thislist;"];
}
else
{
	_waypoint2 setWaypointStatements ["true", _code1];
};

_waypoint1 synchronizeWaypoint _waypoints;