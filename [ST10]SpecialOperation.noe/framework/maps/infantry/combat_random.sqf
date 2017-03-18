private['_grp','_array','_wp'];
_grp = _this select 0;
_array = _this select 1;

while{(count (waypoints _grp)) > 0} do 
{ 
	deleteWaypoint ((waypoints _grp) select 0); 
};

/*
_wp = _grp addWaypoint[(position leader _grp),0];
_wp setWaypointFormation "LINE";
_wp setWaypointCombatMode "RED";
_wp setWaypointSpeed "NORMAL";
_grp setCurrentWaypoint _wp;
_grp setFormation "LINE";
*/


_wp = _grp addWaypoint[position (leader _grp), 0];
//_wp setWaypointBehaviour "SAFE";
_wp setWaypointFormation "LINE";
_wp setWaypointCombatMode "RED";
_wp setWaypointSpeed "NORMAL";
_wp setWaypointType "GUARD";


[_grp, _array]execFSM "framework\maps\infantry\combat_random.fsm";