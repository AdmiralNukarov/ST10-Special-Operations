function_openParachute =
{
	private["_jumper","_backpack"];
	_jumper = _this select 0;
	
	waitUntil{isTouchingGround _jumper || (getPos _jumper select 2) < 1};
	sleep 2;
	if(alive _jumper) then
	{
		_backpack = _jumper getVariable["framework_parachute_backpack", nil];
		if(!(isNil "_backpack")) then
		{
			removeBackpack _jumper;
			_jumper addBackpack (_backpack select 0);
			{
				_jumper addItemToBackpack _x;
			}forEach (_backpack select 1);
		};
	};
};

function_openParachuteHalo =
{
	private["_jumper","_openheight","_backpack"];
	_jumper = _this select 0;
	_openheight = _this select 1;
	
	waitUntil{(getPos _jumper select 2) <= _openheight};
	_jumper enableAI "ANIM";
	_jumper action["OpenParachute", _jumper];
	_jumper allowDamage true;
	
	waitUntil{isTouchingGround _jumper || (getPos _jumper select 2) < 1};
	sleep 2;
	if(alive _jumper) then
	{
		_backpack = _jumper getVariable["framework_parachute_backpack", nil];
		if(!(isNil "_backpack")) then
		{
			removeBackpack _jumper;
			_jumper addBackpack (_backpack select 0);
			{
				_jumper addItemToBackpack _x;
			}forEach (_backpack select 1);
		};
	};
};


//[units, delay, halo, open height]execVM "framework\scripts\ai\ejectAI.sqf";

private ["_units","_openheight","_halo","_backpack","_delay"];
_units = _this select 0;
_delay = if(count _this > 1) then{_this select 1} else{0.5};
_halo = if(count _this > 2) then{_this select 2} else{false};
_openheight = if(count _this > 3) then{_this select 3} else{100};
  
{
	_backpack = backpack _x;
	if(!(toLower(_backpack) in ["b_parachute"])) then
	{
		if(_backpack != "") then
		{
			_x setVariable["framework_parachute_backpack", [_backpack, backpackItems _x]];
			removeBackpack _x;
		};
		_x addBackpack "B_Parachute";
	};
	
	_x disableCollisionWith (vehicle _x);
	unassignVehicle _x;
	if(_halo) then
	{
		moveOut _x;
		_x allowDamage false;
		_x switchMove "HaloFreeFall_non";
		_x disableAI "ANIM";
		[_x, _openheight]spawn function_openParachuteHalo;
	}
	else
	{
		_x action["Eject", (vehicle _x)];
		[_x]spawn function_openParachute;
	};
	
	sleep _delay;
}forEach _units;