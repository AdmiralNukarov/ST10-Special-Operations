_bomb = _this select 0;
_plane = _this select 1;
_pilot = driver _plane;

_target = "Land_HelipadEmpty_F" createVehicleLocal _tgt_pos;	

sleep 5;
_bomb_speed = 140;


while {alive _bomb} do
{
	_eta = (target distance _bomb) / _bomb_speed;
	
	_tgt_dir = [_bomb, _target] call BIS_fnc_DirTo;
	_bomb setDir _tgt_dir;

	_tgt_pitch = asin ((((getPosASL _bomb) select 2) - ((getPosASL _faketarget) select 2)) / (_faketarget distance _bomb));
	_tgt_pitch = (_tgt_pitch * -1);
	[_bomb, _tgt_pitch, 0] call BIS_fnc_setPitchBank;

	_bomb_velocityX = (((getPosASL _faketarget) select 0) - ((getPosASL _bomb) select 0)) / _eta;
	_bomb_velocityY = (((getPosASL _faketarget) select 1) - ((getPosASL _bomb) select 1)) / _eta;
	_bomb_velocityZ = (((getPosASL _faketarget) select 2) - ((getPosASL _bomb) select 2)) / _eta;
	
	_bomb setVelocity [_bomb_velocityX,_bomb_velocityY,_bomb_velocityZ];

	sleep 0.03;	
};

deletevehicle _faketarget;
