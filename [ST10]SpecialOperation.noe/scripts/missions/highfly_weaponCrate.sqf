private["_missionArea","_weaponCrate","_nest","_group","_group1","_group2","_group3"];
_missionArea = _this select 0;
_weaponCrate = _this select 1;
_nest = _this select 2;

//[4165.86,6813.66,7] = _weaponCrate
//[4174.42,6832.87,0] = _missionArea
//[4163.52,6861.03,0] = _nest

_weaponCrate = createVehicle ["caribou_abomb", _weaponCrate, [], 0, "NONE"];
_weaponCrate setPos [4165.86,6813.66,3.5];

[-1, {_this addAction ["Entschärfen", {}];}, _weaponCrate] call CBA_fnc_globalExecute; 

_group = createGroup EAST;
_unit = _group createUnit["rhs_msv_emr_rifleman",_missionArea, [], 0, "NONE"];
_unit = _group createUnit["rhs_msv_emr_grenadier",_missionArea, [], 0, "NONE"];

_group1 = createGroup EAST;
_unit = _group1 createUnit["rhs_msv_emr_marksman",_missionArea, [], 0, "NONE"];
_unit = _group1 createUnit["rhs_msv_emr_engineer",_missionArea, [], 0, "NONE"];

_group2 = createGroup EAST;
_unit = _group2 createUnit["rhs_msv_emr_sergeant",_missionArea, [], 0, "NONE"];
_unit = _group2 createUnit["rhs_msv_emr_machinegunner",_missionArea, [], 0, "NONE"];
_unit = _group2 createUnit["rhs_msv_emr_machinegunner_assistant",_missionArea, [], 0, "NONE"];
_unit = _group2 createUnit["rhs_msv_emr_aa",_missionArea, [], 0, "NONE"];
_unit = _group2 createUnit["rhs_msv_emr_arifleman",_missionArea, [], 0, "NONE"];
_unit = _group2 createUnit["rhs_msv_emr_medic",_missionArea, [], 0, "NONE"];

_group3 = createGroup EAST;
_unit = _group3 createUnit["rhs_msv_emr_officer_armored",_missionArea, [], 0, "NONE"];
_unit = _group3 createUnit["rhs_msv_emr_driver",_missionArea, [], 0, "NONE"];
_unit = _group3 createUnit["rhs_msv_emr_junior_sergeant",_missionArea, [], 0, "NONE"];
_unit = _group3 createUnit["rhs_msv_emr_sergeant",_missionArea, [], 0, "NONE"];

_veh = [[4163.52,6859.03,0],0,"rhs_Ob_681_2", EAST] call bis_fnc_spawnvehicle;

