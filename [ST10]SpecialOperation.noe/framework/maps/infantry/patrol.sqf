//////////////////////////////////////////////////////////////////
// Function file for Armed Assault
// Created by: Nuka [www.sealteam10.de]
//////////////////////////////////////////////////////////////////

private['_grp','_array'];
_grp = _this select 0;
_array = _this select 1;

while{(count (waypoints _grp)) > 0} do 
{ 
	deleteWaypoint ((waypoints _grp) select 0); 
};

/* ### Example ###
[GROUP,[[[[100,20,0],0],[2,4,6],["true","hint 'Waypoint Script';"],"COLUMN","LIMITED","MOVE","SAFE"],
[[[100,20,0],0],[2,4,6],["true","hint 'Waypoint Script';"],"COLUMN","LIMITED","CYCLE","SAFE"]]]execVM "framework\maps\infantry\patrol.sqf";
*/

{
	//hint format["%1", _x]; sleep 2;
	
	_addWP = _x select 0;
	_timeout = _x select 1;
	_statements = _x select 2;
	_formation = _x select 3;
	_speed = _x select 4;
	_type = _x select 5;
	_behaviour = _x select 6;
	
	_wp = _grp addWaypoint _addWP;
	_wp setWaypointTimeout _timeout;
	_wp setWaypointStatements _statements;
	_wp setWaypointFormation _formation;
	_wp setWaypointSpeed _speed;
	_wp setWaypointType _type;
	_wp setWaypointBehaviour _behaviour;
}forEach _array;

{
	(_array select 0) select 6;
}forEach units _grp;

_this execFSM "framework\maps\infantry\patrol.fsm";

