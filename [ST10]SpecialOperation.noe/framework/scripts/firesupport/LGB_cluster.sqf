//////////////////////////////////////////////////////////////////
// Function file for Armed Assault
// Created by: Nuka [www.sealteam10.de]
//////////////////////////////////////////////////////////////////

_bomb = _this select 0;
_laserSource = _this select 1;

_cbu103 = _bomb;
_cbu103zpos = getpos _cbu103 select 2;

_target = position laserTarget _laserSource; 
sleep 5;
_bomb_speed = 140;


while {alive _bomb && _cbu103zpos > 100} do
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
	_cbu103zpos = getpos _cbu103 select 2;	
};


if (not alive _cbu103 and _cbu103zpos < 50) exitwith {};
sleep 0.03;

_cbu103speed = velocity _cbu103;
_cbu103pos = getpos _cbu103;
_cbu103dir = getdir _cbu103;

deletevehicle _cbu103;

_sub = "FIR_CBU103_Deploy" createvehicle _cbu103pos;
_subpos = getpos _sub;
_subdir = getdir _sub;
_subheight = _subpos select 2;
_range = 120;

_sub setdir _cbu103dir;
_sub setvelocity _cbu103speed;

for [{_i=0}, {_i < 60}, {_i=_i+1}] do
{
	_radius = random (_range)-(_range/2);
    _submunition = "FIR_CBU103_AP_Submunition" createvehicle [(_subpos select 0)+_radius , (_subpos select 1)+_radius , (_subpos select 2)]; 

	_dir = -10 + floor random 30;
	
	_submunition setvelocity [((_cbu103speed select 0) * cos(_dir)) + ((_cbu103speed select 1) * sin(_dir)) * 1, ((_cbu103speed select 0) * sin(_dir)) + ((_cbu103speed select 1) * cos(_dir)) * 1, (_cbu103speed select 2) * ((30 + random 100) / 100)];
	_submunition setdir _subdir;
};

_sub setVelocity 
[
	(_cbu103speed select 0) - (sin _cbu103dir * 20), 
	(_cbu103speed select 1) - (cos _cbu103dir * 20), 
	(_cbu103speed select 2)
];