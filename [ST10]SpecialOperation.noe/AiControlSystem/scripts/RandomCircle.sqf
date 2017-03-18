/*
	Parameter:
	0 -> Group
	1 -> [3D Array Center, Min Radius, Max Radius, On Water]
	2 -> Number of Waypoints 
	3 -> [Waypoint Type, Waypoint Formation, Waypoint Behaviour, Waypoint Speed, Waypoint Combat Mode, Waypoint Completion Radius, Waypoint Statements, Waypoint Timeout]
	
	Example:
	[group1, [[1200,1180,0], 100, 300, false], 50, ["MOVE", "COLUMN", "SAFE", "LIMITED", "RED", 0, ["true", ""], [0,0,0]]]
*/
private["_group","_waypointPosition","_paramsCircle","_handle"];
_group = _this select 0;
_paramsCircle = [_this select 1, _this select 2, _this select 3];

_handle = _this execVM "AiControlSystem\scripts\SimpleRandomCircle.sqf";
waitUntil{scriptDone _handle};

if(ACS_DEBUG) then
{
	player globalChat format["%1 Patrol RandomCircle", _group];
};

_group setVariable["ascParams", _paramsCircle];
_group setVariable["ascControlType", "RandomCircle"];

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