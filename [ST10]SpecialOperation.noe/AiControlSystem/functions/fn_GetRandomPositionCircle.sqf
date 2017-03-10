private["_center","_position","_angle","_min","_max","_onWater","_xDistance","_yDistance"];
_center = _this select 0;
_min = _this select 1;
_max = _this select 2;
_onWater = _this select 3;

_xDistance = _min + random(_max - _min);
_yDistance = _min + random(_max - _min); 
_angle = random 360;

_position = [];

_position pushBack (_center select 0) + ((cos _angle) * _xDistance);
_position pushBack (_center select 1) + ((sin _angle) * _yDistance);
_position pushBack (_center select 0);

if(!_onWater && surfaceIsWater _position) then
{
	_position = [_center, _min, _max, _onWater]call ACS_fnc_GetRandomPositionCircle;
};

_position