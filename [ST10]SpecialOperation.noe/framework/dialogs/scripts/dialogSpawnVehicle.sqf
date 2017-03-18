﻿//////////////////////////////////////////////////////////////////
// Function file for Armed Assault
// Created by: Nuka [www.sealteam10.de]
//////////////////////////////////////////////////////////////////

/*
	FRAMEWORK_SPAWN_VEHICLE_CAR = [];
	FRAMEWORK_SPAWN_VEHICLE_TRUCK = [];
	FRAMEWORK_SPAWN_VEHICLE_SUPPORT = [];
	FRAMEWORK_SPAWN_VEHICLE_ARMORED = [];
	FRAMEWORK_SPAWN_VEHICLE_TANK = [];
	FRAMEWORK_SPAWN_VEHICLE_ANTIAIR = [];
	FRAMEWORK_SPAWN_VEHICLE_ARTILLERY = [];
	FRAMEWORK_SPAWN_VEHICLE_BOAT = [];
	FRAMEWORK_SPAWN_VEHICLE_HELITRANSPORT = [];
	FRAMEWORK_SPAWN_VEHICLE_HELIATTACK = [];
	FRAMEWORK_SPAWN_VEHICLE_PLANETRANSPORT = [];
	FRAMEWORK_SPAWN_VEHICLE_PLANEATTACK = [];
	
	FRAMEWORK_SPAWN_ISCUSTOM = false;
	FRAMEWORK_SPAWN_CUSTOMTYPES = ["","","","",...];
	FRAMEWORK_SPAWN_VEHICLE_CUSTOM = [[],[],[],[],...];
	
	FRAMEWORK_SPAWN_ACTIVETYPES = [];
	FRAMEWORK_SPAWN_POSITION = [0,0,0];
	FRAMEWORK_SPAWN_DIRECTION = 0;
*/

private['_added'];
_added = false;

lbClear 1501;

//############################################################################//
if(FRAMEWORK_SPAWN_ISCUSTOM) exitWith
{
	{
		lbAdd[1501, _x];
	}forEach FRAMEWORK_SPAWN_CUSTOMTYPES;
	lbSetCurSel[1501,0];
};
//#############################################################################//

FRAMEWORK_SPAWN_ACTIVETYPES = [];

//CAR
if(!isNil "FRAMEWORK_SPAWN_VEHICLE_CAR") then
{
	if(count FRAMEWORK_SPAWN_VEHICLE_CAR > 0) then
	{
		_added = true;
		lbAdd[1501, "Auto"];
		FRAMEWORK_SPAWN_ACTIVETYPES = FRAMEWORK_SPAWN_ACTIVETYPES + [FRAMEWORK_SPAWN_VEHICLE_CAR];
	};
};

//TRUCK
if(!isNil "FRAMEWORK_SPAWN_VEHICLE_TRUCK") then
{
	if(count FRAMEWORK_SPAWN_VEHICLE_TRUCK > 0) then
	{
		_added = true;
		lbAdd[1501, "LKW"];
		FRAMEWORK_SPAWN_ACTIVETYPES = FRAMEWORK_SPAWN_ACTIVETYPES + [FRAMEWORK_SPAWN_VEHICLE_TRUCK];
	};
};

//SUPPORT
if(!isNil "FRAMEWORK_SPAWN_VEHICLE_SUPPORT") then
{
	if(count FRAMEWORK_SPAWN_VEHICLE_SUPPORT > 0) then
	{
		_added = true;
		lbAdd[1501, "Unterstützung"];
		FRAMEWORK_SPAWN_ACTIVETYPES = FRAMEWORK_SPAWN_ACTIVETYPES + [FRAMEWORK_SPAWN_VEHICLE_SUPPORT];
	};
};

//ARMORED
if(!isNil "FRAMEWORK_SPAWN_VEHICLE_ARMORED") then
{
	if(count FRAMEWORK_SPAWN_VEHICLE_ARMORED > 0) then
	{
		_added = true;
		lbAdd[1501, "Gepanzert"];
		FRAMEWORK_SPAWN_ACTIVETYPES = FRAMEWORK_SPAWN_ACTIVETYPES + [FRAMEWORK_SPAWN_VEHICLE_ARMORED];
	};
};

//TANK
if(!isNil "FRAMEWORK_SPAWN_VEHICLE_TANK") then
{
	if(count FRAMEWORK_SPAWN_VEHICLE_TANK > 0) then
	{
		_added = true;
		lbAdd[1501, "Panzer"];
		FRAMEWORK_SPAWN_ACTIVETYPES = FRAMEWORK_SPAWN_ACTIVETYPES + [FRAMEWORK_SPAWN_VEHICLE_TANK];
	};
};

//ANTIAIR
if(!isNil "FRAMEWORK_SPAWN_VEHICLE_ANTIAIR") then
{
	if(count FRAMEWORK_SPAWN_VEHICLE_ANTIAIR > 0) then
	{
		_added = true;
		lbAdd[1501, "Luftabwehr"];
		FRAMEWORK_SPAWN_ACTIVETYPES = FRAMEWORK_SPAWN_ACTIVETYPES + [FRAMEWORK_SPAWN_VEHICLE_ANTIAIR];
	};
};

//ARTILLERY
if(!isNil "FRAMEWORK_SPAWN_VEHICLE_ARTILLERY") then
{
	if(count FRAMEWORK_SPAWN_VEHICLE_ARTILLERY > 0) then
	{
		_added = true;
		lbAdd[1501, "Artillerie"];
		FRAMEWORK_SPAWN_ACTIVETYPES = FRAMEWORK_SPAWN_ACTIVETYPES + [FRAMEWORK_SPAWN_VEHICLE_ARTILLERY];
	};
};

//BOAT
if(!isNil "FRAMEWORK_SPAWN_VEHICLE_BOAT") then
{
	if(count FRAMEWORK_SPAWN_VEHICLE_BOAT > 0) then
	{
		_added = true;
		lbAdd[1501, "Boot"];
		FRAMEWORK_SPAWN_ACTIVETYPES = FRAMEWORK_SPAWN_ACTIVETYPES + [FRAMEWORK_SPAWN_VEHICLE_BOAT];
	};
};

//HELITRANSPORT
if(!isNil "FRAMEWORK_SPAWN_VEHICLE_HELITRANSPORT") then
{
	if(count FRAMEWORK_SPAWN_VEHICLE_HELITRANSPORT > 0) then
	{
		_added = true;
		lbAdd[1501, "Transporthubschrauber"];
		FRAMEWORK_SPAWN_ACTIVETYPES = FRAMEWORK_SPAWN_ACTIVETYPES + [FRAMEWORK_SPAWN_VEHICLE_HELITRANSPORT];
	};
};

//HELIATTACK
if(!isNil "FRAMEWORK_SPAWN_VEHICLE_HELIATTACK") then
{
	if(count FRAMEWORK_SPAWN_VEHICLE_HELIATTACK > 0) then
	{
		_added = true;
		lbAdd[1501, "Kampfhubschrauber"];
		FRAMEWORK_SPAWN_ACTIVETYPES = FRAMEWORK_SPAWN_ACTIVETYPES + [FRAMEWORK_SPAWN_VEHICLE_HELIATTACK];
	};
};

//PLANETRANSPORT
if(!isNil "FRAMEWORK_SPAWN_VEHICLE_PLANETRANSPORT") then
{
	if(count FRAMEWORK_SPAWN_VEHICLE_PLANETRANSPORT > 0) then
	{
		_added = true;
		lbAdd[1501, "Transportflugzeuge"];
		FRAMEWORK_SPAWN_ACTIVETYPES = FRAMEWORK_SPAWN_ACTIVETYPES + [FRAMEWORK_SPAWN_VEHICLE_PLANETRANSPORT];
	};
};

//PLANEATTACK
if(!isNil "FRAMEWORK_SPAWN_VEHICLE_PLANEATTACK") then
{
	if(count FRAMEWORK_SPAWN_VEHICLE_PLANEATTACK > 0) then
	{
		_added = true;
		lbAdd[1501, "Kampfflugzeuge"];
		FRAMEWORK_SPAWN_ACTIVETYPES = FRAMEWORK_SPAWN_ACTIVETYPES + [FRAMEWORK_SPAWN_VEHICLE_PLANEATTACK];
	};
};




if(!_added) then
{
	closeDialog 0;
}
else
{
	lbSetCurSel[1501,0];
};
