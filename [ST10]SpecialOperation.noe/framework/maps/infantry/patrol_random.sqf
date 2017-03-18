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
[GROUP,[center([1,2,3]),min range,max range, number of waypoints, waypoint end radius,[2,4,6],["true","hint 'Waypoint Script';"],"COLUMN","LIMITED","MOVE","SAFE"]]execVM "framework\maps\infantry\patrol_random.sqf";
*/

_center = _array select 0;
_min = _array select 1;
_max = _array select 2;
_numWP = _array select 3;
_endradiusWP = _array select 4;
_timeout = _array select 5;
_statements = _array select 6;
_formation = _array select 7;
_speed = _array select 8;
_type = _array select 9;
_behaviour = _array select 10;


for "_i" from 1 to _numWP do
{
	_pos = [_center, _min, _max, false]call FNC_AI_MAPS_randomPosition;

	_wp = _grp addWaypoint [_pos, _endradiusWP];
	_wp setWaypointTimeout _timeout;
	_wp setWaypointStatements _statements;
	_wp setWaypointFormation _formation;
	_wp setWaypointSpeed _speed;
	_wp setWaypointType _type;
	_wp setWaypointBehaviour _behaviour;
}; 

{
	_x setBehaviour _behaviour;
}forEach units _grp;

_this execFSM "framework\maps\infantry\patrol_random.fsm";

