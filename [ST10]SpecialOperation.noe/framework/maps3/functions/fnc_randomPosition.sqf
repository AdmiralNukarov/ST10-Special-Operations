//[oldPos, min, max, canBeOnWater]call MAPS3_fnc_randomPosition;

private['_oldPos','_minW','_maxW','_newPos','_width','_dir','_water','_clear'];
_oldPos = _this select 0;
_minW = _this select 1;
_maxW = _this select 2;
_water = if(count _this > 3) then{_this select 3} else{false}; 

_width = _minW + (Random (_maxW - _minW));
_dir = Random 360;

_newPos = [];
_newPos set[0, ((_oldPos select 0) + ((sin _dir) * _width))];
_newPos set[1, ((_oldPos select 1) + ((cos _dir) * _width))];
_newPos set[2, 0];

while{!_water && (surfaceIsWater _newPos)} do
{
	_width = _minW + (Random (_maxW - _minW));
	_dir = Random 360;

	_newPos set[0, ((_oldPos select 0) + ((sin _dir) * _width))];
	_newPos set[1, ((_oldPos select 1) + ((cos _dir) * _width))];
	_newPos set[2, 0];
};

_newPos 