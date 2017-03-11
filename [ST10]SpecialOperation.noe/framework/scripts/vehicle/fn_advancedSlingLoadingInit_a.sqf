/*
The MIT License (MIT)
Copyright (c) 2016 Seth Duda
Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

Installation/Usage: (added by Nuka)
Put fn_advancedSlingLoadingInit.sqf in your mission directory.
Add []execVM "framework\scripts\vehicle\fn_advancedSlingLoadingInit.sqf"; to your init.sqf or initLocalPlayer.sqf.

Add the following to your init.sqf file to disable heavy lifting:
missionNamespace setVariable ["SA_ASL_HEAVY_LIFTING_ENABLED",false,true];
Add the following to your init.sqf file to enable heavy lifting (enabled by default):
missionNamespace setVariable ["SA_ASL_HEAVY_LIFTING_ENABLED",true,true];
*/
{

if(!isNil "SA_ROPE_INIT" || !hasInterface) exitWith {};

//hint "Slingload Script activated!";

SA_ROPE_INIT = true;

SA_Rope_Get_Lift_Capability = 
{
	private ["_heli","_heliType"];
	_heli = [_this,0] call BIS_fnc_param;
	_heliType = typeOf _heli;
	_returnVal = [500,0];
	if(_heliType in ["rhs_ka60_c","rhs_ka60_grey","B_Heli_Light_01_F","B_Heli_Transport_01_F",
	"RHS_UH1Y_FFAR_d","RHS_UH1Y_FFAR","RHS_UH1Y_d","RHS_UH1Y","RHS_UH1Y_UNARMED_d","RHS_UH1Y_UNARMED",
	"Bell412",
    "UH1C","UH1C_HH","uh1h_Shark","uh1c_miniguns","UH1H_Gun","UH1C_XM16AS","UH1C_XM21AS",
	"UH1D_1","UH1H_Closed","UH1H_FFV","UH1H_Gunship","UH1H_LMG","UH1H_Medevac","UH1H_rockets","UH1H_Transport",
	"UH1N_Black","UH1N_Escort","UH1N_Gau_Gatling","UH1N_Bulletstorm","UH1N_Gunship","UH1N_Hydra","UH1N_Iroquois","UH1N_Slick","UH1N_TOW",
	"UH1Y_FFV","UH1Y_TOW","UH1Y_Venom_50Cal","UH1Y_Venom"]) then 
	{
		_returnVal = [4000,100000];
	};
	if(_heliType in ["RHS_Mi24P_AT_vdv","RHS_Mi24P_AT_vvsc","RHS_Mi24P_AT_vvs",
	"RHS_Mi24P_CAS_vdv","RHS_Mi24P_CAS_vvsc","RHS_Mi24P_CAS_vvs",
	"RHS_Mi24P_vdv","RHS_Mi24P_vvsc","RHS_Mi24P_vvs",
	"RHS_Mi24V_AT_vdv","RHS_Mi24V_AT_vvsc","RHS_Mi24V_AT_vvs",
	"RHS_Mi24V_vdv","RHS_Mi24V_vvsc","RHS_Mi24V_vvs",
	"RHS_Mi24V_FAB_vdv","RHS_Mi24V_FAB_vvsc","RHS_Mi24V_FAB_vvs",
	"RHS_Mi24V_UPK23_vdv","RHS_Mi24V_UPK23_vvsc","RHS_Mi24V_UPK23_vvs",
	"RHS_UH60M_d","RHS_UH60M","RHS_UH60M_MEV2_d","RHS_UH60M_MEV2","RHS_UH60M_MEV_d","RHS_UH60M_MEV"]) then 
	{
		_returnVal = [10000,100000];
	};
	if(_heliType in ["RHS_Mi8AMT_vdv","RHS_Mi8AMT_vvsc","RHS_Mi8AMT_vvs",
	"RHS_Mi8AMTSh_vvsc","RHS_Mi8AMTSh_vvs","RHS_Mi8AMTSh_FAB_vvsc","RHS_Mi8AMTSh_FAB_vvs","RHS_Mi8AMTSh_UPK23_vvsc","RHS_Mi8AMTSh_UPK23_vvs",
	"RHS_Mi8mt_vdv","RHS_Mi8mt_vv","RHS_Mi8mt_vvsc","RHS_Mi8mt_vvs",
	"RHS_Mi8mt_Cargo_vdv","RHS_Mi8mt_Cargo_vv","RHS_Mi8mt_Cargo_vvsc","RHS_Mi8mt_Cargo_vvs",
	"RHS_Mi8MTV3_vdv","RHS_Mi8MTV3_vvsc","RHS_Mi8MTV3_vvs",
	"RHS_Mi8MTV3_FAB_vdv","RHS_Mi8MTV3_FAB_vvsc","RHS_Mi8MTV3_FAB_vvs",
	"RHS_Mi8MTV3_UPK23_vdv","RHS_Mi8MTV3_UPK23_vvsc","RHS_Mi8MTV3_UPK23_vvs",
	"RHS_CH_47F_10","RHS_CH_47F","RHS_CH_47F_light",
	"kyo_MH47E_base","kyo_MH47E_Ramp","kyo_MH47E_HC",
	"rhsusf_CH53E_USMC_D","rhsusf_CH53E_USMC"]) then 
	{
		_returnVal = [12000,100000];
	};
	_returnVal; 
};

SA_Rope_Set_Mass = 
{
	private ["_obj","_mass"];
	_obj = [_this,0] call BIS_fnc_param;
	_mass = [_this,1] call BIS_fnc_param;
	_obj setMass _mass;
};

SA_Rope_Adjust_Mass = {
	private ["_obj","_mass","_lift","_heli","_originalMass","_ropes"];
	_obj = [_this,0] call BIS_fnc_param;
	_heli = [_this,1] call BIS_fnc_param;
	_ropes = [_this,2,[]] call BIS_fnc_param;
	_lift = [_heli] call SA_Rope_Get_Lift_Capability;
	_originalMass = _obj getVariable ["sa_rope_original_mass", getMass _obj];
	// Is mass adjustment needed?
	if( _originalMass >= ((_lift select 0)*0.8) && _originalMass <= _lift select 1 ) then {
		private ["_originalMassSet","_ends","_endDistance","_ropeLength"];
		_originalMassSet = (getMass _obj) == _originalMass;
		while { _obj in (ropeAttachedObjects _heli) && _originalMassSet } do {
			{
				_ends = ropeEndPosition _x;
				_endDistance = (_ends select 0) distance (_ends select 1);
				_ropeLength = ropeLength _x;
				if((_ropeLength - 2) <= _endDistance && ((position _heli) select 2) > 0 ) then {
					[[_obj, ((_lift select 0)*0.8)],"SA_Rope_Set_Mass",_obj,false,true] spawn BIS_fnc_MP;
					_originalMassSet = false;
				};
			} forEach _ropes;
			sleep 0.1;
		};
		while { _obj in (ropeAttachedObjects _heli) } do {
			sleep 0.5;
		};
		[[_obj, _originalMass],"SA_Rope_Set_Mass",_obj,false,true] spawn BIS_fnc_MP;
	};	
};

SA_Rope_Build_Action_Menu = {
	
	private ["_heli","_actionMenu","_length"];
	
	_heli = vehicle player;
	
	_actionMenu = [
		["Ropes",false]
	];
	
	if( _heli isKindOf "Helicopter" ) then {

		_cargoRopesDeployed = _heli getVariable ["sa_rope_cargo_ropes_deployed",false];
		if(!_cargoRopesDeployed) then {
			_actionMenu = _actionMenu + [["Deploy Cargo Ropes (5m)", [0], "", -5, [["expression", "[[vehicle player, 5],""SA_Rope_Deploy_Cargo_Ropes"",vehicle player,false,true] spawn BIS_fnc_MP"]], "1", "1"]];
			_actionMenu = _actionMenu + [["Deploy Cargo Ropes (10m)", [0], "", -5, [["expression", "[[vehicle player, 10],""SA_Rope_Deploy_Cargo_Ropes"",vehicle player,false,true] spawn BIS_fnc_MP"]], "1", "1"]];
			_actionMenu = _actionMenu + [["Deploy Cargo Ropes (15m)", [0], "", -5, [["expression", "[[vehicle player, 15],""SA_Rope_Deploy_Cargo_Ropes"",vehicle player,false,true] spawn BIS_fnc_MP"]], "1", "1"]];
		} else {
			if( count ropeAttachedObjects _heli == 0 ) then {
				_actionMenu = _actionMenu + [["Retract Cargo Ropes", [0], "", -5, [["expression", "[[vehicle player],""SA_Rope_Retract_Cargo_Ropes"",vehicle player,false,true] spawn BIS_fnc_MP"]], "1", "1"]];
			} else {
				_actionMenu = _actionMenu + [["Release Cargo", [0], "", -5, [["expression", "[[vehicle player],""SA_Rope_Release_Cargo"",vehicle player,false,true] spawn BIS_fnc_MP"]], "1", "1"]];
			};
			_length = ropeLength (ropes _heli select 0);
			_actionMenu = _actionMenu + [["Extend Cargo Ropes (+5m)", [0], "", -5, [["expression", "[[vehicle player, 5],""SA_Rope_Extend_Cargo_Ropes"",vehicle player,false,true] spawn BIS_fnc_MP"]], "1", "1"]];
			if(_length >= 10) then {
				_actionMenu = _actionMenu + [["Shorten Cargo Ropes (-5m)", [0], "", -5, [["expression", "[[vehicle player, -5],""SA_Rope_Shorten_Cargo_Ropes"",vehicle player,false,true] spawn BIS_fnc_MP"]], "1", "1"]];
			} else {
				if(_length > 2) then {
					_actionMenu = _actionMenu + [["Shorten Cargo Ropes (-1m)", [0], "", -5, [["expression", "[[vehicle player, -1],""SA_Rope_Shorten_Cargo_Ropes"",vehicle player,false,true] spawn BIS_fnc_MP"]], "1", "1"]];
				};
			};
				
		};

		/*
		_fastRopesDeployed = _heli getVariable ["sa_rope_fast_ropes_deployed",false];
		if(!_fastRopesDeployed) then {
			_actionMenu = _actionMenu + [["Deploy Fast Rope", [0], "", -5, [["expression", "[[vehicle player],""SA_Rope_Deploy_Fast_Ropes"",vehicle player,false,true] spawn BIS_fnc_MP"]], "1", "1"]];
		} else {
			_actionMenu = _actionMenu + [["Retract Fast Rope", [0], "", -5, [["expression", "[[vehicle player],""SA_Rope_Retract_Fast_Ropes"",vehicle player,false,true] spawn BIS_fnc_MP"]], "1", "1"]];
			if(vehicle player != player) then {
				_actionMenu = _actionMenu + [["Rappel to Ground", [0], "", -5, [["expression", "[[vehicle player, player],""SA_Rope_Rappel_To_Groud"", player,false,true] spawn BIS_fnc_MP"]], "1", "1"]];
			}
		};
		*/
		
	};
	
	_actionMenu
};

SA_Rope_Deploy_Cargo_Ropes = {
	private ["_heli","_cargoRopesDeployed","_cargoRopes","_length"];
	_heli = [_this,0] call BIS_fnc_param;
	_length = [_this,1] call BIS_fnc_param;
	if( _heli isKindOf "Helicopter" ) then {
		_cargoRopesDeployed = _heli getVariable ["sa_rope_cargo_ropes_deployed",false];
		if(!_cargoRopesDeployed) then {
			_heli setVariable ["sa_rope_cargo_ropes_deployed",true,true];
			_cargoRopes = _heli getVariable ["sa_rope_cargo_ropes",[]];
			{ ropeDestroy _x } forEach _cargoRopes;
			_cargoRopes = _cargoRopes + [ropeCreate [_heli, "slingload0", 0]]; 
			_cargoRopes = _cargoRopes + [ropeCreate [_heli, "slingload0", 0]]; 
			_cargoRopes = _cargoRopes + [ropeCreate [_heli, "slingload0", 0]]; 
			_cargoRopes = _cargoRopes + [ropeCreate [_heli, "slingload0", 0]]; 
			{
				ropeUnwind [_x, 5, _length];
			} forEach _cargoRopes;
			_heli setVariable ["sa_rope_cargo_ropes",_cargoRopes,true];
		};
	};
};

SA_Rope_Pickup_Rope_Action_Check = {
	isNull (player getVariable ["SA_Rope_Cargo_Ropes_Picked_Up", objNull]) && vehicle player == player;
};

SA_Rope_Drop_Rope_Action_Check = {
	!isNull (player getVariable ["SA_Rope_Cargo_Ropes_Picked_Up", objNull]);
};

SA_Rope_Attach_Rope_Action_Check = {
	(call SA_Rope_Drop_Rope_Action_Check) && !isNull cursorTarget && cursorTarget distance player < 5; 
};  

SA_Rope_Attach_Cargo_Ropes = {
	private ["_target","_bbr","_ropeLength","_objDistance"];
	private ["_heli","_ropes","_player"];
	_heli = [_this,0] call BIS_fnc_param;
	_player = [_this,1] call BIS_fnc_param;
	_target = [_this,2] call BIS_fnc_param;
	_ropes = _heli getVariable ["sa_rope_cargo_ropes",[objNull,objNull,objNull,objNull]];	
	if( !isNull _target && _target distance _player < 5 && _target != _heli ) then {
		_ropeLength = ropeLength (_ropes select 0);
		_objDistance = _target distance _heli;
		if( (_objDistance + 2) > _ropeLength ) then {
			[{ hint "The ropes are too short. Extend them." },"BIS_fnc_spawn",_player] call BIS_fnc_MP;
		} else {
			[_heli,_player] call SA_Rope_Drop_Cargo_Ropes;

			_centerOfMass = getCenterOfMass _target;
			_bbr = boundingBoxReal _target;
			_p1 = _bbr select 0;
			_p2 = _bbr select 1;
			_maxWidth = abs ((_p2 select 0) - (_p1 select 0));
			_widthOffset = ((_maxWidth / 2) - abs ( _centerOfMass select 0 )) / 2;
			_maxLength = abs ((_p2 select 1) - (_p1 select 1));
			_lengthOffset = ((_maxLength / 2) - abs (_centerOfMass select 1 )) / 2;
			_maxHeight = abs ((_p2 select 2) - (_p1 select 2));
			_heightOffset = _maxHeight/6;
			
			[_target, [(_centerOfMass select 0) + _widthOffset, (_centerOfMass select 1) + _lengthOffset, (_centerOfMass select 2) + _heightOffset], [0,0,-1]] ropeAttachTo (_ropes select 0);
			[_target, [(_centerOfMass select 0) + _widthOffset, (_centerOfMass select 1) - _lengthOffset, (_centerOfMass select 2) + _heightOffset], [0,0,-1]] ropeAttachTo (_ropes select 1);
			[_target, [(_centerOfMass select 0) - _widthOffset, (_centerOfMass select 1) - _lengthOffset, (_centerOfMass select 2) + _heightOffset], [0,0,-1]] ropeAttachTo (_ropes select 2);
			[_target, [(_centerOfMass select 0) - _widthOffset, (_centerOfMass select 1) + _lengthOffset, (_centerOfMass select 2) + _heightOffset], [0,0,-1]] ropeAttachTo (_ropes select 3);	
			
			if(missionNamespace getVariable ["SA_ASL_HEAVY_LIFTING_ENABLED",true]) then {
				[_target, _heli, _ropes] spawn SA_Rope_Adjust_Mass;		
			};	
		};
	};
};

SA_Rope_Pickup_Cargo_Ropes = {
	private ["_heli","_player","_originalMass"];
	_heli = [_this,0] call BIS_fnc_param;
	_player = [_this,1] call BIS_fnc_param;
	{
		_attachedObj = _x;
		{
			_attachedObj ropeDetach _x;
		} forEach (_heli getVariable ["sa_rope_cargo_ropes",[]]);
	} forEach ropeAttachedObjects _heli;
	_helper = "Land_Can_V2_F" createVehicle position _player;
	{
		[_helper, [0, 0, 0], [0,0,-1]] ropeAttachTo _x;
		_helper attachTo [_player, [-0.1, 0.1, 0.15], "Pelvis"];
		hideObject _helper;
	} forEach (_heli getVariable ["sa_rope_cargo_ropes",[]]);
	_player setVariable ["SA_Rope_Cargo_Ropes_Picked_Up", _heli,true];
	_player setVariable ["SA_Rope_Cargo_Ropes_Picked_Up_Helper", _helper,true];
};

SA_Rope_Drop_Cargo_Ropes = {
	private ["_heli","_player"];
	_heli = [_this,0] call BIS_fnc_param;
	_player = [_this,1] call BIS_fnc_param;
	_helper = (_player getVariable ["SA_Rope_Cargo_Ropes_Picked_Up_Helper", objNull]);
	if(!isNull _heli) then {
		{
			_helper ropeDetach _x;
		} forEach (_heli getVariable ["sa_rope_cargo_ropes",[]]);
		detach _helper;
		deleteVehicle _helper;
	};
	_player setVariable ["SA_Rope_Cargo_Ropes_Picked_Up", nil,true];
	_player setVariable ["SA_Rope_Cargo_Ropes_Picked_Up_Helper", nil,true];
};

SA_Rope_Find_Nearby_Cargo_Heli = {
	private ["_heli","_nearHelis","_nearCargoRopes","_ends","_end1","_end2"];
	_nearHelis = position player nearObjects ["Helicopter", 30];
	_nearCargoHelis = [];
	{
		_heli = _x;
		{
			_ends = ropeEndPosition _x;
			if(count _ends == 2) then {
				_end1 = _ends select 0;
				_end2 = _ends select 1;
				if(((position player) distance _end1) < 5 || ((position player) distance _end2) < 5 ) then {
					if!(_heli in _nearCargoHelis) then {
						_nearCargoHelis = _nearCargoHelis + [_heli];
					}
				}
			};
		} forEach (_heli getVariable ["sa_rope_cargo_ropes",[]]);
	} forEach _nearHelis;
	_nearCargoHelis;
};

SA_Rope_Rappel_To_Groud = {
	private ["_heli","_player"];
	_heli = [_this,0] call BIS_fnc_param;
	_player = [_this,1] call BIS_fnc_param;
	if( _heli isKindOf "Helicopter" ) then {
		_fastRope = _heli getVariable ["sa_rope_fast_ropes",[objNull]] select 0;
		if(!isNull _fastRope) then {
			_ends = ropeEndPosition _fastRope;
			if(count _ends == 2) then {
				unassignVehicle _player;
				(_player) action ["getOut", _heli];
				_end1 = _ends select 0;
				_end2 = _ends select 1;
				if((_end1 select 2) < (_end2 select 2)) then {
					_player setPos _end1;
				} else {
					_player setPos _end2;
				};
			};
		};
	};
};

SA_Rope_Deploy_Fast_Ropes = {
	private ["_heli","_fastRopesDeployed","_fastRopes"];
	_heli = [_this,0] call BIS_fnc_param;
	if( _heli isKindOf "Helicopter" ) then {
		_fastRopesDeployed = _heli getVariable ["sa_rope_fast_ropes_deployed",false];
		if(!_fastRopesDeployed) then {
			_heli setVariable ["sa_rope_fast_ropes_deployed",true,true];
			_fastRopes = _heli getVariable ["sa_rope_fast_ropes",[]];
			{ ropeDestroy _x } forEach _fastRopes;
			_fastRopes = _fastRopes + [ropeCreate [_heli, "fastrope0", 0]];
			{
				ropeUnwind [_x, 5, 25];
			} forEach _fastRopes;
			_heli setVariable ["sa_rope_fast_ropes",_fastRopes,true];
		};
	};
};

SA_Rope_Retract_Cargo_Ropes = {
	private ["_heli","_cargoRopesDeployed"];
	_heli = [_this,0] call BIS_fnc_param;
	if( _heli isKindOf "Helicopter" ) then {
		_cargoRopesDeployed = _heli getVariable ["sa_rope_cargo_ropes_deployed",false];
		if(_cargoRopesDeployed) then {
			{
				[_x,_heli] spawn {
					private ["_rope","_count","_heli"];
					_rope = [_this,0] call BIS_fnc_param;
					_heli = [_this,1] call BIS_fnc_param;
					_count = 0;
					ropeUnwind [_rope, 3, 0];
					while {(!ropeUnwound _rope) && _count < 20} do {
						sleep 1;
						_count = _count + 1;
					};
					ropeDestroy _rope;
					_heli setVariable ["sa_rope_cargo_ropes_deployed",false,true];
					_heli setVariable ["sa_rope_cargo_ropes",[],true];
				};
			} forEach (_heli getVariable ["sa_rope_cargo_ropes",[]]);
		};
	};
};

SA_Rope_Extend_Cargo_Ropes = {
	private ["_heli","_cargoRopesDeployed","_lengthOffset"];
	_heli = [_this,0] call BIS_fnc_param;
	_lengthOffset = [_this,1] call BIS_fnc_param;
	if( _heli isKindOf "Helicopter" ) then {
		_cargoRopesDeployed = _heli getVariable ["sa_rope_cargo_ropes_deployed",false];
		if(_cargoRopesDeployed) then {
			{
				ropeUnwind [_x, 3, _lengthOffset, true];
			} forEach (_heli getVariable ["sa_rope_cargo_ropes",[]]);
		};
	};
};

SA_Rope_Shorten_Cargo_Ropes = {
	private ["_heli","_cargoRopesDeployed","_lengthOffset"];
	_heli = [_this,0] call BIS_fnc_param;
	_lengthOffset = [_this,1] call BIS_fnc_param;
	if( _heli isKindOf "Helicopter" ) then {
		_cargoRopesDeployed = _heli getVariable ["sa_rope_cargo_ropes_deployed",false];
		if(_cargoRopesDeployed) then {
			{
				scopeName "ropeloop";
				if(ropeLength _x <= 2) then {
					[_heli] call SA_Rope_Release_Cargo;
					breakOut  "ropeloop";
				} else {
					ropeUnwind [_x, 3, _lengthOffset, true];
				};
			} forEach (_heli getVariable ["sa_rope_cargo_ropes",[]]);
		};
	};
};

SA_Rope_Release_Cargo = {
	private ["_heli","_cargoRopesDeployed","_originalMass"];
	_heli = [_this,0] call BIS_fnc_param;
	if( _heli isKindOf "Helicopter" ) then {
		{
			_attachedObj = _x;
			{
				_attachedObj ropeDetach _x;
			} forEach (_heli getVariable ["sa_rope_cargo_ropes",[]]);
		} forEach ropeAttachedObjects _heli;
		[_heli] call SA_Rope_Retract_Cargo_Ropes;
	};
};

SA_Rope_Retract_Fast_Ropes = {
	private ["_heli","_fastRopesDeployed"];
	_heli = [_this,0] call BIS_fnc_param;
	if( _heli isKindOf "Helicopter" ) then {
		_fastRopesDeployed = _heli getVariable ["sa_rope_fast_ropes_deployed",false];
		if(_fastRopesDeployed) then {
			_heli setVariable ["sa_rope_fast_ropes_retracted",true,true];
			{
				[_x,_heli] spawn {
					private ["_rope","_count","_heli"];
					_rope = [_this,0] call BIS_fnc_param;
					_heli = [_this,1] call BIS_fnc_param;
					_count = 0;
					ropeUnwind [_rope, 3, 0];
					while {(!ropeUnwound _rope) && _count < 20} do {
						sleep 1;
						_count = _count + 1;
					};
					ropeDestroy _rope;
					_heli setVariable ["sa_rope_fast_ropes_deployed",false,true];
					_heli setVariable ["sa_rope_fast_ropes",[],true];
				};
			} forEach (_heli getVariable ["sa_rope_fast_ropes",[]]);
		};
	};
};

SA_Rope_Action_Check = {
	vehicle player isKindOf "Helicopter";
};

if(!isDedicated) then {
	player addAction ["Ropes", { 
		SA_Rope_Action_Menu = call SA_Rope_Build_Action_Menu;
		showCommandingMenu "#USER:SA_Rope_Action_Menu";
	}, nil, 0, false, true, "", "call SA_Rope_Action_Check"];

	player addEventHandler ["Respawn", {
		player addAction ["Ropes", { 
			SA_Rope_Action_Menu = call SA_Rope_Build_Action_Menu;
			showCommandingMenu "#USER:SA_Rope_Action_Menu";
		}, nil, 0, false, true, "", "call SA_Rope_Action_Check"];
	}];
};

if(!isDedicated) then {
	[] spawn {
		private ["_cargoHelisWithActions","_nearCargoHelis","_action","_cargoHelisNotNearbyWithActions"];
		_cargoHelisWithActions = [];
		while {true} do {
			_nearCargoHelis = call SA_Rope_Find_Nearby_Cargo_Heli;
			{
				if!( _x in _cargoHelisWithActions ) then {
					_action = player addAction ["Pick Up Cargo Ropes", { 
						[[_this select 3, player],"SA_Rope_Pickup_Cargo_Ropes",_this select 3,false,true] spawn BIS_fnc_MP
						//[_this select 3] call SA_Rope_Pickup_Cargo_Ropes;
					}, _x, 0, false, true, "", "call SA_Rope_Pickup_Rope_Action_Check"];
					_x setVariable ["SA_Rope_Pickup_Action", _action];
					_action = player addAction ["Drop Cargo Ropes", { 
						[[_this select 3, player],"SA_Rope_Drop_Cargo_Ropes",_this select 3,false,true] spawn BIS_fnc_MP
						//[_this select 3] call SA_Rope_Drop_Cargo_Ropes;
					}, _x, 0, false, true, "", "call SA_Rope_Drop_Rope_Action_Check"];
					_x setVariable ["SA_Rope_Drop_Action", _action];
					_action = player addAction ["Attach Cargo Ropes", {
						[[_this select 3, player, cursorTarget],"SA_Rope_Attach_Cargo_Ropes",_this select 3,false,true] spawn BIS_fnc_MP
						//[_this select 3] call SA_Rope_Attach_Cargo_Ropes;
					}, _x, 0, false, true, "", "call SA_Rope_Attach_Rope_Action_Check"];
					_x setVariable ["SA_Rope_Attach_Action", _action];
				};
			} forEach _nearCargoHelis;
			_cargoHelisNotNearbyWithActions = _cargoHelisWithActions - _nearCargoHelis;
			{
				player removeAction (_x getVariable "SA_Rope_Pickup_Action");
				player removeAction (_x getVariable "SA_Rope_Drop_Action");
				player removeAction (_x getVariable "SA_Rope_Attach_Action");
			} forEach _cargoHelisNotNearbyWithActions;
			_cargoHelisWithActions = _nearCargoHelis;
			sleep 2;
		};
	};
};

} remoteExecCall ["bis_fnc_call", 0,true]; 