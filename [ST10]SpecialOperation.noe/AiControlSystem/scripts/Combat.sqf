private["_group","_handle","_units"];
_group = _this select 0;

_handle = [_group]execVM "AiControlSystem\scripts\DeleteAllWaypoints.sqf";
waitUntil{scriptDone _handle};

if(ACS_DEBUG) then
{
	player globalChat format["%1 Combat", _group];
};

_units = units _group;
while{true} do
{
	if({alive _x}count _units < 1) exitWith{};
	if(_group getVariable["ascCancel", false]) exitWith{_group getVariable["ascCancel", false];};

	if({behaviour _x == "COMBAT"}count _units == 0) exitWith
	{	
		[_group]execVM "AiControlSystem\scripts\ReInitializePatrol.sqf";
	};
	
	sleep ACS_GROUP_STATE_CHECK_DELAY;
};