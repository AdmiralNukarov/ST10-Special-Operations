//////////////////////////////////////////////////////////////////
// Function file for Armed Assault
// Created by: Nuka [www.sealteam10.de]
//////////////////////////////////////////////////////////////////

//_null = [vehicle, bool clear, string equipment preset]execVM "framework\scripts\vehicle\vehicleEquipment.sqf";

if(!isServer) exitWith{};

private['_vehicle'];
_vehicle = _this select 0;

if(_this select 1) then
{
	clearWeaponCargoGlobal _vehicle;
	clearMagazineCargoGlobal _vehicle;
	clearBackpackCargoGlobal _vehicle;
	clearItemCargoGlobal _vehicle;
};

switch(_this select 2) do
{
	case "empty":
	{
	};
	
	default{};
};