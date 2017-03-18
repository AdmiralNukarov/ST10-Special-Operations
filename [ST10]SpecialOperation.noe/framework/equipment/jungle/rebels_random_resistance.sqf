//////////////////////////////////////////////////////////////////
// Function file for Armed Assault
// Created by: Nuka [www.sealteam10.de]
//////////////////////////////////////////////////////////////////

/*
	[group, position, [#0,#1,#2,#3]]execVM "framework\equipment\jungle\rebels_random_resistance.sqf";

	#0 - rifleman 
	#1 - ammo carrier 
	#2 - MG 
	#3 - AT 
*/
_CLASS_RIFLEMAN = ["rebel_coltcarbine","rebel_ak47","rebel_akm","rebel_sig510","rebel_M1903A1","rebel_M14"];
_CLASS_AMMOCARRIER = ["rebel_coltcarbine_ammocarrier","rebel_ak47_ammocarrier","rebel_akm_ammocarrier","rebel_sig510_ammocarrier","rebel_M1903A1_ammocarrier","rebel_M14_ammocarrier"];
_CLASS_MG = ["rebel_pkm"]; //"rebel_m60" >> sound bug
_CLASS_AT = ["rebel_coltcarbine_rgp7v","rebel_ak47_rgp7v","rebel_akm_rgp7v","rebel_sig510_rgp7v","rebel_M1903A1_rgp7v","rebel_M14_rgp7v",
"rebel_coltcarbine_m72a7","rebel_ak47_m72a7","rebel_akm_m72a7","rebel_sig510_m72a7","rebel_M1903A1_m72a7","rebel_M14_m72a7"];

private['_group','_position','_unit','_set','_unitarray','_spawnarray'];
_group = _this select 0;
_position = _this select 1;
_set = _this select 2;
_unitarray = [];

//rifleman
if(_set select 0 > 0) then
{
	for "_i" from 1 to (_set select 0) do
	{
		_unitarray = _unitarray + [(_CLASS_RIFLEMAN call BIS_fnc_selectRandom)];
	};
};
//ammo carrier
if(_set select 1 > 0) then
{
	for "_i" from 1 to (_set select 1) do
	{
		_unitarray = _unitarray + [(_CLASS_AMMOCARRIER call BIS_fnc_selectRandom)];
	};
};
//MG
if(_set select 2 > 0) then
{
	for "_i" from 1 to (_set select 2) do
	{
		_unitarray = _unitarray + [(_CLASS_MG call BIS_fnc_selectRandom)];
	};
};
//AT
if(_set select 3 > 0) then
{
	for "_i" from 1 to (_set select 3) do
	{
		_unitarray = _unitarray + [(_CLASS_AT call BIS_fnc_selectRandom)];
	};
};

_spawnarray = _unitarray call BIS_fnc_arrayShuffle;

{
	if(_x in _CLASS_RIFLEMAN) then
	{
		//rifleman
		_unit = _group createUnit["I_C_Soldier_Para_1_F", _position, [], 0, "NONE"];
	}
	else
	{
		if(_x in _CLASS_AMMOCARRIER) then
		{
			//grenadier
			_unit = _group createUnit["I_C_Soldier_base_unarmed_F", _position, [], 0, "NONE"];
		}
		else
		{
			if(_x in _CLASS_MG) then
			{
				//MG
				_unit = _group createUnit["I_C_Soldier_Para_4_F", _position, [], 0, "NONE"];
			}
			else
			{
				if(_x in _CLASS_AT) then
				{
					//AT
					_unit = _group createUnit["I_C_Soldier_Para_5_F", _position, [], 0, "NONE"];
				};
			};
		};
	};
	[_unit, _x, true]execVM "framework\equipment\jungle\equipment_jungle_rebels.sqf";
}forEach _spawnarray;


{
	_x setSkill 0.6;
	_x setskill ["courage",1];
}forEach (units _group);

