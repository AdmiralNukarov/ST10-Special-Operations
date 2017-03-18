private["_group","_ascParameter"];
_group = _this select 0;

_ascParameter = _group getVariable ["ascParams",[]];
if(count _ascParameter > 0) then
{
	switch(_group getVariable["ascControlType", ""]) do
	{
		case "RandomCircle":
		{
			[_group, 
			_ascParameter select 0,
			_ascParameter select 1,
			_ascParameter select 2]execVM "AiControlSystem\scripts\RandomCircle.sqf";
		};
		
		case "RandomRectangle":
		{
			[_group, 
			_ascParameter select 0,
			_ascParameter select 1,
			_ascParameter select 2]execVM "AiControlSystem\scripts\RandomRectangle.sqf";
		};
		
		case "Waypoints":
		{
			[_group, _ascParameter]execVM "AiControlSystem\scripts\Waypoints.sqf";
		};
		
		default
		{
			if(ACS_DEBUG) then
			{
				player globalChat format["ReInitializePatrol %1 no Control Type", _group];
			};
		};
	};
}
else
{
	if(ACS_DEBUG) then
	{
		player globalChat format["ReInitializePatrol %1 no Parameter", _group];
	};
};