private["_center","_radiusX","_radiusY","_radiusZ","_position","_onWater"];
_center = _this select 0;
_radiusX = _this select 1;
_radiusY = _this select 2;
_radiusZ = if(count _this > 3) then {_this select 3} else {0}; //-1 >> returns 2D Array 
_onWater = if(count _this > 4) then {_this select 4} else {false};

_position = [];
_position pushBack (((_center select 0) - _radiusX) + random(_radiusX * 2));
_position pushBack (((_center select 1) - _radiusY) + random(_radiusY * 2));

if(_radiusZ > 0) then
{
	if((_center select 2) >= _radiusZ) then
	{
		_position pushBack (((_center select 2) - _radiusZ) + random(_radiusZ * 2));
	}
	else
	{
		_position pushBack ((_center select 2) + random(_radiusZ * 2));
	};
}
else
{
	if(_radiusZ != -1) then
	{
		_position pushBack 0;
	};
};

if(!_onWater && surfaceIsWater _position) then
{
	_position = [_center, _radiusX, _radiusY, _radiusZ,_onWater]call ACS_fnc_GetRandomPositionRectangle;
};

_position
