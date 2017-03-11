//////////////////////////////////////////////////////////////////
// Function file for Armed Assault
// Created by: Nuka [www.sealteam10.de]
//////////////////////////////////////////////////////////////////

private["_list"];
_list = [];

{
	_veh = (_x  select 0) createVehicle [0,0,8000];
	_veh allowDamage false;
	_list pushBack _veh;
	_veh setDir (_x select 2);
	_veh setPosASL (_x select 1);
	
	clearWeaponCargoGlobal _veh;
	clearMagazineCargoGlobal _veh;
	clearBackpackCargoGlobal _veh;
	clearItemCargoGlobal _veh;
}forEach _this;

{
	_x allowDamage true;
	_x setDamage 0;
}forEach _list;