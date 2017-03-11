private["_buildings","_center","_radius","_allBuildingPositions"];
_center = _this select 0;
_radius = _this select 1;

_buildings = nearestObjects[_center, ["house"], _radius];
_allBuildingPositions = [];
{
	_allBuildingPositions append (_x call ACS_fnc_GetBuildingPositions);
}forEach _buildings;

_allBuildingPositions
