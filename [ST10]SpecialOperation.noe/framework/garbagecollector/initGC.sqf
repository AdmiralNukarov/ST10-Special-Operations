//Param 0: boolean start loop
//Param 1: integer/float delay for loop repeat
//Param 2: integer/float min player range to object before deletion
if(!isServer) exitWith{};

FRAMEWORK_GC_ADD =
{
	FRAMEWORK_GC_WAIT = true;

	{
		if(_x isKindOf "MAN") then
		{
			FRAMEWORK_GC_LIST pushBack _x;
		}
		else
		{
			FRAMEWORK_GC_LIST_VEH pushBack _x;
		};
	}forach _this;

	 FRAMEWORK_GC_WAIT = false;
};

FRAMEWORK_GC_STOP = false;
FRAMEWORK_GC_WAIT = false;
FRAMEWORK_GC_LIST = [];
FRAMEWORK_GC_LIST_VEH = [];
FRAMEWORK_GC_DELAY = _this select 1;
FRAMEWORK_GC_PLAYER_RANGE = _this select 2;


if(_this select 0) then
{
	[]execVM "framework\garbagecollector\loopGC.sqf";
};