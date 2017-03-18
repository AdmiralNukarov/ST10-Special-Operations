//////////////////////////////////////////////////////////////////
// Function file for Armed Assault
// Created by: Nuka [www.sealteam10.de]
//////////////////////////////////////////////////////////////////

private['_oldgroup','_newgroup','_params','_command','_progress','_patrolarray','_combatarray'];
_oldgroup = _this select 0;

_params = _oldgroup getVariable "MAPS2_PARAMS";
_command = _oldgroup getVariable "MAPS2_COMMAND";
_progress = _oldgroup getVariable "MAPS2_PROGRESS";

_patrolarray = _oldgroup getVariable ["MAPS2_PATROLARRAY", []];
_combatarray = _oldgroup getVariable ["MAPS2_COMBATARRAY", []];

if(!isNull _oldgroup) then
{
	switch(side _oldgroup) do
	{
		case WEST:
		{
			_newgroup = createGroup WEST;
		};
		
		case EAST:
		{
			_newgroup = createGroup EAST;
		};
		
		case RESISTANCE:
		{
			_newgroup = createGroup RESISTANCE;
		};
		
		case CIVILIAN:
		{
			_newgroup = createGroup CIVILIAN;
		};
	};
};

(units _oldgroup) joinSilent _newgroup;
_newgroup setVariable["MAPS2_STATE", "reseted"];
_newgroup setVariable["MAPS2_PARAMS", _params];
_newgroup setVariable["MAPS2_COMMAND", _command];
_newgroup setVariable["MAPS2_PROGRESS", _progress];

if(count _patrolarray > 0) then
{
	_newgroup setVariable["MAPS2_PATROLARRAY", _patrolarray];
};
if(count _combatarray > 0) then
{
	_newgroup setVariable["MAPS2_COMBATARRAY", _combatarray];
};

_newgroup