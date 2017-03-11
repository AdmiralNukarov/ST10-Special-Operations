//////////////////////////////////////////////////////////////////
// Function file for Armed Assault
// Created by: Nuka [www.sealteam10.de]
//////////////////////////////////////////////////////////////////

private['_logic','_groups','_state','_command','_params','_progress'];
_logic = _this select 0;

_groups = _logic getVariable "MAPS2_GROUPS";

{
	_state = _x getVariable "MAPS2_STATE";
	_command = _x getVariable "MAPS2_COMMAND";
	_params = _x getVariable "MAPS2_PARAMS";
	_progress = _x getVariable "MAPS2_PROGRESS";
	
	//player sideChat format["%5 ,%1, %2, %3, %4", _state, _command, _params, _progress, _x];
	
	if(_state != "COMBAT" && (leader _x) call BIS_fnc_enemyDetected && behaviour (leader _x) == "COMBAT") then // 
	{
		_x setVariable["MAPS2_STATE", "COMBAT"];
		

		//special combat mode
		switch(_command) do
		{
			default{};
			
			case "idle":
			{
				[_x]execVM "framework\maps2\scripts\combatStandardMode.sqf";
			};
			
			case "random":
			{
				[_x]execVM "framework\maps2\scripts\combatStandardMode.sqf";
			};
			
			case "random_road":
			{
				[_x]execVM "framework\maps2\scripts\combatStandardMode.sqf";
			};
				
			case "random_waypoints":
			{
				[_x]execVM "framework\maps2\scripts\combatStandardMode.sqf";
			};
			
			case "waypoints":
			{
				[_x]execVM "framework\maps2\scripts\combatStandardMode.sqf";
			};
			
			case "attack":
			{
				//empty
			};
		};
	}
	else
	{
		if(_state == "COMBAT" && !((leader _x) call BIS_fnc_enemyDetected) && behaviour (leader _x) != "COMBAT") then
		{
			_x setVariable["MAPS2_STATE", "RESETGROUP"];
		}
		else
		{
			switch(_command) do
			{
				default{};
				
				//##### idle #####//
				case "idle":
				{
					//empty
				};
				
				//##### random #####//
				case "random":
				{
					if(count _progress > 1) then
					{
						if([getPos (leader _x) select 0, getPos (leader _x) select 1] distance [(_progress select 0), (_progress select 1)] <= 4) then
						{
							_pos = [(_params select 0), (_params select 1), (_params select 2), (_params select 3)]call MAPS2_fnc_randomPosition;
							_x setVariable["MAPS2_STATE", "patrol"];
							_x setVariable["MAPS2_PROGRESS", _pos];
							[_x, true, _pos]execVM "framework\maps2\scripts\addWaypoint.sqf";
						}
						else
						{
							if(_state == "reseted") then
							{
								_x setVariable["MAPS2_STATE", "patrol"];
								[_x, true, _progress]execVM "framework\maps2\scripts\addWaypoint.sqf";
							};
						};
					}
					else
					{
						_pos = [(_params select 0), (_params select 1), (_params select 2), (_params select 3)]call MAPS2_fnc_randomPosition;
						_x setVariable["MAPS2_STATE", "patrol"];
						_x setVariable["MAPS2_PROGRESS", _pos];
						[_x, true, _pos]execVM "framework\maps2\scripts\addWaypoint.sqf";
					};
				};
				
				//##### random_road #####//
				case "random_road":
				{
					if(_state == "idle" || _state == "reseted") then
					{
						_positions = [];
						_pos = [(_params select 0), (_params select 1), (_params select 2), (position (vehicle leader _x))]call MAPS2_fnc_randomRoadPosition;
						_positions = _positions + [_pos];
						for "_i" from 1 to (_params select 3) do
						{
							_pos = [(_params select 0), (_params select 1), (_params select 2), _pos]call MAPS2_fnc_randomRoadPosition;
							_positions = _positions + [_pos];
						};
						_x setVariable["MAPS2_STATE", "patrol"];
						[_x, true, _positions]execVM "framework\maps2\scripts\addWaypoints.sqf";
					};
				};
				
				//##### random_waypoints #####//
				case "random_waypoints":
				{
					if(_state == "idle" || _state == "reseted") then
					{
						_positions = [];
						for "_i" from 1 to (_params select 4) do
						{
							_positions = _positions + [[(_params select 0), (_params select 1), (_params select 2), (_params select 3)]call MAPS2_fnc_randomPosition];
						};
						_x setVariable["MAPS2_STATE", "patrol"];
						[_x, true, _positions]execVM "framework\maps2\scripts\addWaypoints.sqf";
					};
				};
				
				//##### waypoints #####//
				case "waypoints":
				{
					if(_state == "idle") then
					{
						_x setVariable["MAPS2_STATE", "patrol"];
						[_x, true, (_params select 0)]execVM "framework\maps2\scripts\addWaypoints.sqf";
					}
					else
					{
						if(_state == "reseted") then
						{
							_id = 0;
							_grp = _x;
							{
								if(_x distance (vehicle leader _grp) < ((_params select 0) select _id) distance (vehicle leader _grp)) then
								{
									_id = _forEachIndex;
								};
							}forEach (_params select 0);
							
							_positions = [];
							for "_i" from _id to ((count (_params select 0)) - 1) do
							{
								_positions = _positions + [(_params select 0) select _i];
							};
							
							if(_id > 0) then
							{
								for "_i" from 0 to (_id - 1) do
								{
									_positions = _positions + [(_params select 0) select _i];
								};
							};
							
							_x setVariable["MAPS2_STATE", "patrol"];
							[_x, true, _positions]execVM "framework\maps2\scripts\addWaypoints.sqf";
						};
					};
				};
				
				//##### attack #####//
				case "attack":
				{
					if(_state == "idle") then
					{
						_x setVariable["MAPS2_STATE", "attack"];
						
						for "_i" from 0 to ((count _params) - 1) do
						{
							[_x, false, 
							(_params select _i) select 0, 
							(_params select _i) select 2, 
							(_params select _i) select 3, 
							(_params select _i) select 4, 
							(_params select _i) select 5, [0,0,0], 
							(_params select _i) select 1, 0]call MAPS2_fnc_addWaypoint;
						};
					};
				};
			};
		};
	};
}forEach _groups;

_logic setVariable["MAPS2_SYNC", true];
