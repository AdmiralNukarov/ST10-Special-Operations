private["_unit","_paramsHeight"];
_unit = _this select 0;
_paramsHeight = _this select 1;

if(count _paramsHeight == 3) then
{
	_unit flyInHeightASL _paramsHeight;
}
else
{
	if(count _paramsHeight == 1) then
	{
		_unit flyInHeight (_paramsHeight select 0);
	};
};