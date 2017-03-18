if(isNil "FRAMEWORK_TASK_LIST") then
{
	FRAMEWORK_TASK_LIST = [];
};

if(local player) then
{	
	if(isNil "FRAMEWORK_TASKS") then
	{
		FRAMEWORK_TASKS = [];
	};

	"FRAMEWORK_TASK_LIST" addPublicVariableEventHandler
	{
		FRAMEWORK_TASK_LIST execVM "framework\taskms\updatePlayer.sqf";
	};
};

if(isServer) then
{
	TASKMS_fnc_addTask = compile(preprocessFileLineNumbers "framework\taskms\addTask.sqf");
};