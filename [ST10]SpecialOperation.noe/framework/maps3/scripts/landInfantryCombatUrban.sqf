//////////////////////////////////////////////////////////////////
// Function file for Armed Assault
// Created by: Nuka [www.sealteam10.de]
//////////////////////////////////////////////////////////////////

private['_params','_group','_buildingPositions','_units','_side'];
_params = _this;
_group = _params select 0;

_side = side _group;
_units = units _group;

_handle = [_group, true, false, position (leader _group),["MOVE","AWARE","LINE","RED","NORMAL",[0,0,0],20]]execVM "framework\maps3\scripts\addWaypoint.sqf";
waitUntil{scriptDone _handle};

while{true} do
{
	if({alive _x}count _units < 1 || {_x getVariable["maps3Cancel", false] == true}count units _group > 0) exitWith
	{
		{_x setVariable["maps3Cancel", false];}forEach units _group;
	};
	
	if({(_x call BIS_fnc_enemyDetected)}count _units == 0 && {behaviour _x != "COMBAT"}count _units == {alive _X}count _units) exitWith
	{	
		_params execVM "framework\maps3\scripts\landInfantry.sqf";
	};
	
	_buildingPositions = [];
	{
		_buildingPositions = _buildingPositions + (_x buildingPos -1);
	}forEach nearestObjects[(leader _group),["house"],((_params select 4) select 1)];
	
	if(count _buildingPositions > 0) then
	{
		private['_wait','_timeStart','_min'];
		
		_min = ({alive _x}count _units) min (count _buildingPositions);
		_min = _min - 1;
		
		if(_min > 0) then
		{
			_temp = _buildingPositions;
			_buildingPositions = _temp call BIS_fnc_arrayShuffle;

			for "_i" from 0 to _min do
			{
				_unit = (_units select _i);
				[_unit] joinSilent grpNull;
				_unit move (_buildingPositions select _i)
			};
		}; 
		
		_startTime = time;
		_wait = 180 + round(random 120);
		waitUntil{time - _startTime > _wait};
		
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
	}
	else
	{	
		_params execVM "framework\maps3\scripts\landInfantryCombat.sqf";
	};
	
	sleep 5;
};