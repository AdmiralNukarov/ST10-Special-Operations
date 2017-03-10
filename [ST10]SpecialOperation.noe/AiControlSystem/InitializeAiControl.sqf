/*
	Control Types:
	- "SimpleRandomCicle"
	- "SimpleRandomRectangle"
	- "SimpleWaypoints"
	- "RandomCicle"
	- "RandomRectangle"
	- "Waypoints"
	
	Example:
	[]execVM "AiControlSystem\InitializeAiControl.sqf";
*/
private["_controlType","_parameter"];
_controlType = _this select 0;
_parameter = _this select 1;

_parameter execVM ("AiControlSystem\scripts\" + _controlType + ".sqf");
