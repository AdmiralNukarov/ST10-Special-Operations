if(!isServer) exitWith{};
private["_object"];

while{true} do
{
	waitUntil{FRAMEWORK_GC_WAIT};
	
	if(FRAMEWORK_GC_STOP) exitWith
	{
		FRAMEWORK_GC_STOP = false;
	};
	
	{
		_object = _x;
		if({_x distance _object > FRAMEWORK_GC_PLAYER_RANGE}count (vehicle playableUnits) == 0) then
		{
			deleteVehicle _object;
			FRAMEWORK_GC_LIST set[_forEachIndex, "null"];
		};
	}forEach FRAMEWORK_GC_LIST;
	FRAMEWORK_GC_LIST = FRAMEWORK_GC_LIST - ["null"];
	
	{
		_object = _x;
		if({_x distance _object > FRAMEWORK_GC_PLAYER_RANGE}count (vehicle playableUnits) == 0 && {alive _x}count (_object getVariable["framework_gc_crew", []]) == 0) then
		{
			deleteVehicle _object;
			FRAMEWORK_GC_LIST_VEH set[_forEachIndex, "null"];
		};
	}forEach FRAMEWORK_GC_LIST_VEH;
	FRAMEWORK_GC_LIST_VEH = FRAMEWORK_GC_LIST_VEH - ["null"];
	
	sleep FRAMEWORK_GC_DELAY;
};