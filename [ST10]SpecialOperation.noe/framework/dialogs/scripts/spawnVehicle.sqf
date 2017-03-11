//////////////////////////////////////////////////////////////////
// Function file for Armed Assault
// Created by: Nuka [www.sealteam10.de]
//////////////////////////////////////////////////////////////////

private['_index','_class','_vehicle'];
_index = lbCurSel 1500;

if(FRAMEWORK_SPAWN_ISCUSTOM) then
{
	_class = (FRAMEWORK_SPAWN_VEHICLE_CUSTOM select (lbCurSel 1501)) select _index;
}
else
{
	_class = (FRAMEWORK_SPAWN_ACTIVETYPES select (lbCurSel 1501)) select _index;
};

closeDialog 0; 

{
	deleteVehicle _x;
}forEach nearestObjects [FRAMEWORK_SPAWN_POSITION, ["Animal"], 20];

if(count (nearestObjects [FRAMEWORK_SPAWN_POSITION, ["Man","LandVehicle","Air"], 15]) < 1) then
{
	_vehicle = _class createVehicle FRAMEWORK_SPAWN_POSITION;
	_vehicle setDir FRAMEWORK_SPAWN_DIRECTION;
	_vehicle setPos [FRAMEWORK_SPAWN_POSITION select 0, FRAMEWORK_SPAWN_POSITION select 1, 0];
	
	clearWeaponCargoGlobal _vehicle;
	clearMagazineCargoGlobal _vehicle;
	clearBackpackCargoGlobal _vehicle;
	clearItemCargoGlobal _vehicle;
	
	player moveInAny _vehicle;
}
else
{
	hint "Der Spawn ist blockiert.";
};