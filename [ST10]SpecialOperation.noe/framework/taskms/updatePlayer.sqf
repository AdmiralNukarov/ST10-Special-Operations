//[ID, action, short description, long description, HUD description, task destination, task type, show message]

private["_task","_action","_id","_short","_long","_hud","_destination","_type","_show"];

{
	_action = _x select 1;

	switch(_action) do
	{
		case "new":
		{
			_id = _x select 0;
			_short = _x select 2;
			_long = _x select 3;
			_hud = _x select 4;
			_destination = _x select 5;
			_type = _x select 6;
			_show = _x select 7;
			
			_task = player createSimpleTask [_short];
			_task setSimpleTaskDescription [_long, _short, _hud];
			if(count _destination > 1) then
			{
				_task setSimpleTaskDestination _destination;
			};
			if(_type != "") then
			{
				_task setSimpleTaskType _type;
			};
			
			_task setTaskState "Created";
			FRAMEWORK_TASKS pushBack _task;
			
			if(_show) then
			{
				["TaskAssigned",["", _short]] call bis_fnc_showNotification
			};
		};
		
		case "updated":
		{
			_id = _x select 0;
			_short = _x select 2;
			_long = _x select 3;
			_hud = _x select 4;
			_destination = _x select 5;
			_type = _x select 6;
			_show = _x select 7;
			
			_task = FRAMEWORK_TASKS select _id;
			_task setSimpleTaskDescription [_long, _short, _hud];
			if(count _destination > 1) then
			{
				_task setSimpleTaskDestination _destination;
			};
			if(_type != "") then
			{
				_task setSimpleTaskType _type;
			};
		
			if(_show) then
			{
				["TaskAssigned",["", _short]] call bis_fnc_showNotification
			};
		};
		
		case "canceled":
		{
			_id = _x select 0;
			_short = _x select 2;
			_show = _x select 7;
			_task = FRAMEWORK_TASKS select _id;
			_task setTaskState "Canceled";

			if(_show) then
			{
				["TaskCanceled",["", _short]] call bis_fnc_showNotification
			};
		};
		
		case "failed":
		{
			_id = _x select 0;
			_short = _x select 2;
			_show = _x select 7;
			_task = FRAMEWORK_TASKS select _id;
			_task setTaskState "Failed";
			
			if(_show) then
			{
				["TaskFailed",["", _short]] call bis_fnc_showNotification
			};
		};
		
		case "succeeded":
		{
			_id = _x select 0;
			_short = _x select 2;
			_show = _x select 7;
			_task = FRAMEWORK_TASKS select _id;
			_task setTaskState "Succeeded";
			
			if(_show) then
			{
				["TaskSucceeded",["", _short]] call bis_fnc_showNotification
			};
		};
		
		default {};
	};
	
	_x set[1, ""];
}forEach _this;