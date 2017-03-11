//////////////////////////////////////////////////////////////////
// Function file for Armed Assault
// Created by: Nuka [www.sealteam10.de]
//////////////////////////////////////////////////////////////////

private['_positions','_params'];
_params = _this select 1;

_positions = [];
for "_i" from 1 to (_params select 4) do
{
	_positions = _positions + [[(_params select 0), (_params select 1), (_params select 2), (_params select 3)]call MAPS3_fnc_randomPosition];
};

_handle = [(_this select 0), true, true, _positions, (_this select 2)]execVM "framework\maps3\scripts\addWaypoints.sqf";
waitUntil{scriptDone _handle};