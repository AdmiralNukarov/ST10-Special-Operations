//////////////////////////////////////////////////////////////////
// Function file for Armed Assault
// Created by: Nuka [www.sealteam10.de]
//////////////////////////////////////////////////////////////////

_logic = (_this select 0);
//_logic setVariable["MAPS2_DEBUG", false];
_logic setVariable["MAPS2_SYNC", false];

_logic setVariable["MAPS2_GROUPS", []];
_logic setVariable["MAPS2_ADDGROUPS", []];

MAPS2_fnc_resetGroup = compile(preprocessFileLineNumbers "framework\maps2\functions\fnc_resetGroup.sqf");
MAPS2_fnc_addGroup = compile(preprocessFileLineNumbers "framework\maps2\functions\fnc_addGroup.sqf");
MAPS2_fnc_groupsUpdate = compile(preprocessFileLineNumbers "framework\maps2\functions\fnc_groupsUpdate.sqf");
MAPS2_fnc_randomPosition = compile(preprocessFileLineNumbers "framework\maps2\functions\fnc_randomPosition.sqf");
MAPS2_fnc_randomRoadPosition = compile(preprocessFileLineNumbers "framework\maps2\functions\fnc_randomRoadPosition.sqf");
MAPS2_fnc_addWaypoint = compile(preprocessFileLineNumbers "framework\maps2\functions\fnc_addWaypoint.sqf");

[_logic]execFSM "framework\maps2\main.fsm";
_logic setVariable["MAPS2_INITIALIZED", true];