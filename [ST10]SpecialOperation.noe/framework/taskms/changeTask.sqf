//Parameter: [ID, action, short description, long description, HUD description, task destination, task type, show message]
//[ID, action, short description, long description, HUD description, task destination, task type, show message]execVM "framework\taskms\changeTask.sqf";

private["_task","_id"];
_task = [];
_id = _this select 0;

_task pushBack _id;
_task pushBack (_this select 1);
_task pushBack (_this select 2);
_task pushBack (_this select 3);
_task pushBack (_this select 4);
_task pushBack (_this select 5);
_task pushBack (_this select 6);
_task pushBack (_this select 7);

FRAMEWORK_TASK_LIST set[_id, _task];

publicVariable "FRAMEWORK_TASK_LIST";

if(local player) then
{
	FRAMEWORK_TASK_LIST execVM "framework\taskms\updatePlayer.sqf";
};