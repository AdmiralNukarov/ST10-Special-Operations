private['_center','_range','_pos','_roads','_min','_act_pos'];
_center = _this select 0;
_range = _this select 1;
_min = _this select 2;
_act_pos = _this select 3;
_pos = [0,0,0];

//hint format["%1, %2, %3, %4", _center, _range, _min, _act_pos];

_roads = _center nearRoads _range;

if(_min < _range) then
{
	private['_anz'];
	_anz = (count _roads) - 1;
	
	for "_i" from 0 to _anz do
	{
		if(position (_roads select _i) distance _act_pos < _min) then
		{
			_roads set[_i, "null"];
		};
	};
	_roads = _roads - ["null"];
};

if(count _roads > 0) then
{
	_pos = position (_roads select floor(Random count _roads));
};

_pos