//////////////////////////////////////////////////////////////////
// Function file for Armed Assault
// Created by: Nuka [www.sealteam10.de]
//////////////////////////////////////////////////////////////////

private['_params','_group','_units','_side'];
_params = _this;
_group = _params select 0;

_side = side _group;
_units = units _group;

[_group, true, false, position (leader _group),["MOVE","AWARE","LINE","RED","NORMAL",[0,0,0],100]]execVM "framework\maps3\scripts\addWaypoint.sqf";
sleep 5;

while{true} do
{
	if({alive _x}count _units < 1 || {_x getVariable["maps3Cancel", false]}count units _group > 0) exitWith
	{
		{_x setVariable["maps3Cancel", false];}forEach units _group;
	};

	if({behaviour _x == "COMBAT"}count _units == 0) exitWith
	{	
		deleteGroup _group;
		_group = createGroup _side;
	
		{
			if(alive _x) then
			{
				[_x] joinSilent grpNull;
				[_x] joinSilent _group;
			};
		}forEach _units;
		
		_params set[0, _group];
		
		_params execVM "framework\maps3\scripts\airVehicle.sqf";
	};
	
	sleep 5;
};