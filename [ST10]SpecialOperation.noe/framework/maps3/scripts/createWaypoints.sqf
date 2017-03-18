//////////////////////////////////////////////////////////////////
// Function file for Armed Assault
// Created by: Nuka [www.sealteam10.de]
//////////////////////////////////////////////////////////////////

private['_params'];
_params = _this select 1;

_handle = [(_this select 0), true, true,(_params select 0), (_this select 2)]execVM "framework\maps3\scripts\addWaypoints.sqf";
waitUntil{scriptDone _handle};