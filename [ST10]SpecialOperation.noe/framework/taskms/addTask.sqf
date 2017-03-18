//Parameter: [ID, action, short description, long description, HUD description, task destination, task type, show message]
//[action, short description, long description, HUD description, task destination, task type, show message]

private["_task","_id"];
_task = [];
_id = count FRAMEWORK_TASK_LIST;

_task pushBack _id;
_task pushBack (_this select 0);
_task pushBack (_this select 1);
_task pushBack (_this select 2);
_task pushBack (_this select 3);
_task pushBack (_this select 4);
_task pushBack (_this select 5);
_task pushBack (_this select 6);

FRAMEWORK_TASK_LIST pushBack _task;

publicVariable "FRAMEWORK_TASK_LIST";

if(local player) then
{
	FRAMEWORK_TASK_LIST execVM "framework\taskms\updatePlayer.sqf";
};

_id