//////////////////////////////////////////////////////////////////
// Function file for Armed Assault
// Created by: Nuka [www.sealteam10.de]
//////////////////////////////////////////////////////////////////

private['_buildingPositions','_group','_units'];
_group = group _this;
_units = units _group;

_buildingPositions = [];
{
	_buildingPositions = _buildingPositions + (_x buildingPos -1);
}forEach nearestObjects[(leader _group),["house"],50];

if(count _buildingPositions > 0) then
{
	private['_min'];
		
	_min = ({alive _x}count _units) min (count _buildingPositions);
	_min = _min - 1;

	if(_min > 0) then
	{
		_temp = _buildingPositions;
		_buildingPositions = _temp call BIS_fnc_arrayShuffle;

		for "_i" from 0 to _min do
		{
			(_units select _i) commandMove (_buildingPositions select _i)
		};
	};
};