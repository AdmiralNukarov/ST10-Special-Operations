//////////////////////////////////////////////////////////////////
// Function file for Armed Assault
// Created by: Nuka [www.sealteam10.de]
//////////////////////////////////////////////////////////////////

/*
	0 - Unit
	1 - Uniform
	2 - Vest
	3 - Backpack
	4 - Headgear
	5 - Goggles
	6 - [primaryWeapon, primaryWeaponMagazine, primaryWeaponMagazine2, [attachments]]
	7 - [secondaryWeapon, secondaryWeaponMagazine, [attachments]]
	8 - [handGun, handGunMagazine, [attachments]]
	9 - [items]
	10 - [special items (Binocular etc.)]
	11 - [items to uniform [classname, number]]
	12 - [items to vest [classname, number]]
	13 - [items to backpack [classname, number]]
	14 - [items to all [classname, number]]
	
 	[unit, "","","","","",["",[]],["",[]],["",[]],[],[],[],[],[],[]]execVM "framework\equipment\scripts\equipment_server.sqf";
*/

if(!isServer) exitWith{};

private['_unit','_uniform','_vest','_backpack','_headgear','_goggles','_priWep','_secWep','_handWep'];
_unit = _this select 0;
_uniform = _this select 1;
_vest = _this select 2;
_backpack = _this select 3;
_headgear = _this select 4;
_goggles = _this select 5;
_priWep = _this select 6;
_secWep = _this select 7;
_handWep = _this select 8;


removeallWeapons _unit;
removeAllItems _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeAllAssignedItems _unit;
removeHeadgear _unit;

if(_uniform != "") then{_unit forceAddUniform _uniform;};
if(_vest != "") then{_unit addVest _vest;};
if(_backpack != "") then{_unit addBackpack _backpack;};
if(_headgear != "") then{_unit addHeadgear _headgear;};
switch(_goggles) do
{
	case "":
	{
		_unit setVariable["BIS_enableRandomization", false];
		removeGoggles _unit;
	};
	
	case "-1":
	{
		_unit setVariable["BIS_enableRandomization", false];
		//don't remove
	};
	
	default
	{
		_unit setVariable["BIS_enableRandomization", false];
		removeGoggles _unit;
		_unit addGoggles _goggles;
	};
};

if((_priWep select 0) != "") then
{
	_unit addWeapon (_priWep select 0);
	if(count (_priWep select 1) > 0) then
	{
		{
			_unit addPrimaryWeaponItem _x;
		}forEach (_priWep select 1);
	};
};

if((_secWep select 0) != "") then
{
	_unit addWeapon (_secWep select 0);
	if(count (_secWep select 1) > 0) then
	{
		{
			_unit addSecondaryWeaponItem _x;
		}forEach (_secWep select 1);
	};
};

if((_handWep select 0) != "") then
{
	_unit addWeapon (_handWep select 0);
	if(count (_handWep select 1) > 0) then
	{
		{
			_unit addHandgunItem _x;
		}forEach (_handWep select 1);
	};
};

{
	_unit addItem _x;
	_unit assignItem _x;
}forEach (_this select 9);

{
	_unit addWeapon _x;
}forEach (_this select 10);

{
	_array = _x;
	for "_i" from 1 to (_array select 1) do
	{
		if(_unit canAddItemToUniform (_array select 0)) then{_unit addItemToUniform (_array select 0);};
	};
}forEach (_this select 11);

{
	_array = _x;
	for "_i" from 1 to (_array select 1) do
	{
		if(_unit canAddItemToVest (_array select 0)) then{_unit addItemToVest (_array select 0);};
	};
}forEach (_this select 12);

{
	_array = _x;
	for "_i" from 1 to (_array select 1) do
	{
		if(_unit canAddItemToBackpack (_array select 0)) then{_unit addItemToBackpack(_array select 0);};
	};
}forEach (_this select 13);

{
	_array = _x;
	for "_i" from 1 to (_array select 1) do
	{
		if(_unit canAdd (_array select 0)) then{_unit addItem (_array select 0);};
	};
}forEach (_this select 14);