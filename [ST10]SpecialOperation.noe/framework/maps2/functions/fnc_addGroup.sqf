/*
	[logic, group, params, command, progress]call MAPS2_fnc_addGroup;

	###################################################################################
	command: idle
	params: [] //chill at actual pos
	progress: []
	###################################################################################
	command: random
	params: [center, min, max, canOnWater]
	progress: []
	###################################################################################
	command: random_road
	params: [center, range, min, number of waypoints]
	progress: []
	###################################################################################
	command: random_waypoints
	params: [center, min, max, canOnWater, number of waypoints]
	progress: []
	###################################################################################
	command: waypoints
	params: [[waypoints]]
	progress: []
	###################################################################################
	command: attack
	params: [[position, type, behaviour, formation, combatmode, speed]]
	progress: []
	###################################################################################
*/


if(!isServer) exitWith{};
private['_logic','_group','_array','_params','_command','_progress'];
_logic = _this select 0;
_group = _this select 1;
_params = _this select 2;
_command = _this select 3;
_progress = _this select 4;

_group setVariable["MAPS2_STATE", "idle"];
_group setVariable["MAPS2_PARAMS", _params];
_group setVariable["MAPS2_COMMAND", _command];
_group setVariable["MAPS2_PROGRESS", _progress];

_array = _logic getVariable "MAPS2_ADDGROUPS";
_array = _array + [_group];
_logic setVariable["MAPS2_ADDGROUPS", _array];