//////////////////////////////////////////////////////////////////
// Function file for Armed Assault
// Created by: Nuka [www.sealteam10.de]
//////////////////////////////////////////////////////////////////

_bomb = _this select 0;
_laserSource = _this select 1;

_target = position laserTarget _laserSource; 
sleep 5;
_bomb_speed = 140;


while {alive _bomb} do
{
	if(!isNull (laserTarget _laserSource)) then
	{
		_target = position laserTarget _laserSource; 
	};
	
	_eta = (_target distance _bomb) / _bomb_speed;
	
	_tgt_dir = [_bomb, _target] call BIS_fnc_DirTo;
	_bomb setDir _tgt_dir;

	_tgt_pitch = asin ((((getPosASL _bomb) select 2) - ((_target) select 2)) / (_target distance _bomb));
	_tgt_pitch = (_tgt_pitch * -1);
	[_bomb, _tgt_pitch, 0] call BIS_fnc_setPitchBank;

	_bomb_velocityX = (((_target) select 0) - ((getPosASL _bomb) select 0)) / _eta;
	_bomb_velocityY = (((_target) select 1) - ((getPosASL _bomb) select 1)) / _eta;
	_bomb_velocityZ = (((_target) select 2) - ((getPosASL _bomb) select 2)) / _eta;
	
	_bomb setVelocity [_bomb_velocityX,_bomb_velocityY,_bomb_velocityZ];

	sleep 0.03;	
};