if(!isServer) exitWith{};

//load functions
FNC_AI_MAPS_randomPosition = compile(preprocessFileLineNumbers "framework\maps\functions\randomPosition.sqf");
FNC_AI_MAPS_randomRoadPosition = compile(preprocessFileLineNumbers "framework\maps\functions\randomRoadPosition.sqf");
FNC_BUGFIX_changeGroup = compile(preprocessFileLineNumbers "framework\maps\functions\BUGFIX_changeGroup.sqf");

AIMAPS_INITIALIZED = true;