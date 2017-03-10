private["_group"];
_group = _this select 0;

while {(count (waypoints _group)) > 0} do
{
	deleteWaypoint ((waypoints _group) select 0);
};