//////////////////////////////////////////////////////////////////
// Function file for Armed Assault
// Created by: Nuka [www.sealteam10.de]
//////////////////////////////////////////////////////////////////

//[]execVM "framework\maps3\scripts\initMAPS3.sqf";

MAPS3_addGroup = "framework\maps3\scripts\addGroupToMAPS3.sqf";

MAPS3_fnc_randomPosition = compile(preprocessFileLineNumbers "framework\maps3\functions\fnc_randomPosition.sqf");
MAPS3_fnc_addWaypoint = compile(preprocessFileLineNumbers "framework\maps3\functions\fnc_addWaypoint.sqf");
MAPS3_fnc_randomRoadPosition = compile(preprocessFileLineNumbers "framework\maps3\functions\fnc_randomRoadPosition.sqf");