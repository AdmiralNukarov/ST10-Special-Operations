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

_handle = _this execVM "AiControlSystem\scripts\SimpleWaypoints.sqf";
waitUntil{scriptDone _handle};

if(ACS_DEBUG) then
{
	player globalChat format["%1 Patrol Waypoints", _group];
};

_group setVariable["ascParams", _paramsWaypoints];
_group setVariable["ascControlType", "Waypoints"];

while{true} do
{
	if({alive _x}count units _group < 1) exitWith{};
	if(_group getVariable["ascCancel", false]) exitWith{_group getVariable["ascCancel", false];};
	
	if((leader _group) call BIS_fnc_enemyDetected && behaviour (leader _group) == "COMBAT") exitWith
	{
		[_group]execVM ("AiControlSystem\scripts\" + (_group getVariable["ascCombat","Combat"]) +".sqf");
	};

	sleep ACS_GROUP_STATE_CHECK_DELAY;
};

