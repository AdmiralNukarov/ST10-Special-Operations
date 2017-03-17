private["_missionArea","_uralPos","_group","_group1","_group2","_group3","_general","_unit"];
_missionArea = _this select 0;
_uralPos = _this select 1;

//[2256.99,293.34,1.9] = _missionArea
CENTER_EAST = createCenter EAST;
_group = createGroup EAST;
_general = _group createUnit["rhsgref_ins_commander",_missionArea, [], 0, "NONE"];

_group1 = createGroup EAST;
_unit = _group1 createUnit["rhsgref_ins_rifleman",_missionArea, [], 10, "NONE"];
_unit = _group1 createUnit["rhsgref_ins_rifleman_aks74",_missionArea, [], 10, "NONE"];

_group2 = createGroup EAST;
_unit = _group2 createUnit["rhsgref_ins_grenadier_rpg",_missionArea, [], 10, "NONE"];
_unit = _group2 createUnit["rhsgref_ins_grenadier",_missionArea, [], 10, "NONE"];

_group3 = createGroup EAST;
_unit = _group3 createUnit["rhsgref_ins_squadleader",_missionArea, [], 10, "NONE"];
_unit = _group3 createUnit["rhsgref_ins_rifleman",_missionArea, [], 10, "NONE"];
_unit = _group3 createUnit["rhsgref_ins_maschinegunner",_missionArea, [], 10, "NONE"];
_unit = _group3 createUnit["rhsgref_ins_medic",_missionArea, [], 10, "NONE"];
_unit = _group3 createUnit["rhsgref_ins_militiaman_mosin",_missionArea, [], 10, "NONE"];
_unit = _group3 createUnit["rhsgref_ins_specialist_aa",_missionArea, [], 10, "NONE"];


_veh = createVehicle ["rhsgref_ins_ural_open", _uralPos, [], 0, "FORM"];
_veh setPos [2252.57,305.602,0];

waitUntil {!alive _general};