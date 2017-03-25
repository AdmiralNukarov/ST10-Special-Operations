if(!isServer) exitWith{};
missionNamespace setVariable ["MISSION_ACTIVE", true, true];

private["_center","_group1","_group2","_group3","_units","_handle","_taskID","_marker"];
_center = selectRandom NUKA_MISSION_PARAM_KILL_ALL_JUNGLE_REBELS;

_group1 = createGroup RESISTANCE;
_handle = [_group1, _center, [(3 + round(random 2)),(1 + round(random 1)),(1 + round(random 1)),(1 + round(random 1))]]execVM "framework\equipment\jungle\rebels_random_resistance.sqf";
waitUntil{scriptDone _handle};

_group2 = createGroup RESISTANCE;
_handle = [_group2, _center, [(3 + round(random 2)),(1 + round(random 1)),(1 + round(random 1)),(1 + round(random 1))]]execVM "framework\equipment\jungle\rebels_random_resistance.sqf";
waitUntil{scriptDone _handle};

_group3 = createGroup RESISTANCE;
_handle = [_group3, _center, [(3 + round(random 2)),(1 + round(random 1)),(1 + round(random 1)),(1 + round(random 1))]]execVM "framework\equipment\jungle\rebels_random_resistance.sqf";
waitUntil{scriptDone _handle};

["RandomCircle", [_group1, [_center, 50, 150, false], 50, ["MOVE", "COLUMN", "SAFE", "LIMITED", "RED", 0, ["true", ""], [0,0,0]]]]execVM "AiControlSystem\InitializeAiControl.sqf";
["RandomCircle", [_group2, [_center, 100, 200, false], 50, ["MOVE", "COLUMN", "SAFE", "LIMITED", "RED", 0, ["true", ""], [0,0,0]]]]execVM "AiControlSystem\InitializeAiControl.sqf";
["RandomCircle", [_group3, [_center, 150, 250, false], 50, ["MOVE", "COLUMN", "SAFE", "LIMITED", "YELLOW", 0, ["true", ""], [0,0,0]]]]execVM "AiControlSystem\InitializeAiControl.sqf";

_units = [];
{
	_units append (units _x);
}forEach [_group1, _group2, _group3];

_marker = createMarker ["nuka_kill_all_jungle_rebels", _center];
_marker setMarkerShape "ELLIPSE";
_marker setMarkerSize [300, 300];
_marker setMarkerBrush "Solid";
_marker setMarkerColor "ColorRed";

_taskID = ["new", "Kill all Rebels.", "A group of rebels was seen in this area. Kill 'em all!", "", [], "", true]call TASKMS_fnc_addTask;
sleep 2;

while{true} do
{
	if(missionNamespace getVariable ["MISSION_CANCEL", false]) exitWith
	{
		[_taskID, "canceled", "Kill all Rebels.", "A group of rebels was seen in this area. Kill 'em all!", "", [], "", true]execVM "framework\taskms\changeTask.sqf";
		missionNamespace setVariable ["MISSION_CANCEL", false, true];
	};

	if({alive _x}count _units == 0) exitWith
	{
		[_taskID, "succeeded", "Kill all Rebels.", "A group of rebels was seen in this area. Kill 'em all!", "", [], "", true]execVM "framework\taskms\changeTask.sqf";
	};
	sleep 5;
};
missionNamespace setVariable ["MISSION_ACTIVE", false, true];

deleteMarker _marker;
{
	deleteVehicle _x;
}forEach _units;

{
	deleteGroup _x;
}forEach [_group1, _group2, _group3];