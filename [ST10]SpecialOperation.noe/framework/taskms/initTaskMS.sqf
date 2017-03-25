if(isNil "FRAMEWORK_TASK_LIST") then
{
	FRAMEWORK_TASK_LIST = [];
};

if(isServer) then
{
	TASKMS_fnc_addTask = compile(preprocessFileLineNumbers "framework\taskms\addTask.sqf");
	FRAMEWORK_TASKMS_SERVER_INITIALIZED = true;
	publicVariable "FRAMEWORK_TASKMS_SERVER_INITIALIZED";
};

if(local player) then
{	
	waitUntil{!isNil "FRAMEWORK_TASKMS_SERVER_INITIALIZED"};
	if(isNil "FRAMEWORK_TASKS") then
	{
		FRAMEWORK_TASKS = [];
	};

	if(count FRAMEWORK_TASK_LIST > 0 && count FRAMEWORK_TASKS == 0) then
	{
		private["_taskList","_handle","_taskArray"];
		
		_taskList = FRAMEWORK_TASK_LIST;
		{
			_x set[1, "new"];
			_x set[7, false];
		}forEach _taskList;
		_handle = _taskList execVM "framework\taskms\updatePlayer.sqf";
		waitUntil{scriptDone _handle};
		
		_taskList = [];
		{
			switch(taskState _x) do
			{
				case "Canceled":
				{
					_taskArray = FRAMEWORK_TASK_LIST select _forEachIndex;
					_x set[1, "canceled"];
					_x set[7, false];
					_taskList pushBack _taskArray;
				};
				case "Failed":
				{
					_taskArray = FRAMEWORK_TASK_LIST select _forEachIndex;
					_x set[1, "failed"];
					_x set[7, false];
					_taskList pushBack _taskArray;
				};
				case "Succeeded":
				{
					_taskArray = FRAMEWORK_TASK_LIST select _forEachIndex;
					_x set[1, "succeeded"];
					_x set[7, false];
					_taskList pushBack _taskArray;
				};
			};
		}forEach FRAMEWORK_TASKS;
		_handle = _taskList execVM "framework\taskms\updatePlayer.sqf";
		waitUntil{scriptDone _handle};
	};
	
	"FRAMEWORK_TASK_LIST" addPublicVariableEventHandler
	{
		FRAMEWORK_TASK_LIST execVM "framework\taskms\updatePlayer.sqf";
	};
};