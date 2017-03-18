//////////////////////////////////////////////////////////////////
// Function file for Armed Assault
// Created by: Nuka [www.sealteam10.de]
//////////////////////////////////////////////////////////////////

//[player, 1, ["ACE_SelfActions", "ACE_Equipment"], ["framework_fatigue_action", "Fatigue", "", {[]execVM "framework\scripts\fatigue.sqf";}, {true}] call ace_interact_menu_fnc_createAction] call ace_interact_menu_fnc_addActionToObject;
//1 kg = 2.20462262185 lbs    "ACE_MainActions"

//[player, 1, ["ACE_SelfActions"], ["framework_fatigue_action", "Disable Fatigue", "", {[]execVM "framework\scripts\player\fatigue.sqf";}, {isNil "FRAMEWORK_FATIGUE_ACTIVE"}] call ace_interact_menu_fnc_createAction] call ace_interact_menu_fnc_addActionToObject;
//[player, 1, ["ACE_SelfActions"], ["framework_fatigue_action", "Enable Fatigue", "", {[]execVM "framework\scripts\player\fatigue.sqf";}, {!isNil "FRAMEWORK_FATIGUE_ACTIVE"}] call ace_interact_menu_fnc_createAction] call ace_interact_menu_fnc_addActionToObject;

if(!local player) exitWith{};

if(isNil "FRAMEWORK_FATIGUE_ACTIVE") then
{
	FRAMEWORK_FATIGUE_ACTIVE = true;
	hint "Fatigue deactivated.";
}
else
{
	FRAMEWORK_FATIGUE_ACTIVE = nil;
	hint "Fatigue activated.";
	if(true) exitWith{};
};

//###########################################################################
private['_unit'];
_unit = player;

while{!isNil "FRAMEWORK_FATIGUE_ACTIVE"} do
{
	if(!alive _unit) exitWith{FRAMEWORK_FATIGUE_ACTIVE = nil;};
	_unit setFatigue 0;
	sleep 2;
};

FRAMEWORK_FATIGUE_ACTIVE = nil;