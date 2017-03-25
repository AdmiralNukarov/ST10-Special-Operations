if(!isServer) exitWith{};
missionNamespace setVariable ["MISSION_ACTIVE", true, true];

/*
	Parameter: [3d array mission area, [3d array ural pos, direction ural]]
*/

private["_missionArea","_uralPos","_uralDir","_group","_group1","_group2","_group3","_general","_unit","_units","_missionParams","_marker"];
_missionParams = selectRandom highfly_mission_params_killGeneral;
_missionArea = _missionParams select 0;
_uralPos = (_missionParams select 1) select 0;
_uralDir = (_missionParams select 1) select 1;

_units = [];

_group = createGroup EAST;
_general = _group createUnit["rhsgref_ins_commander",_missionArea, [], 0, "NONE"];
_units pushBack _general;

_group1 = createGroup EAST;
_unit = _group1 createUnit["rhsgref_ins_rifleman",_missionArea, [], 10, "NONE"];
_unit = _group1 createUnit["rhsgref_ins_rifleman_aks74",_missionArea, [], 10, "NONE"];
_units append (units _group1);

_group2 = createGroup EAST;
_unit = _group2 createUnit["rhsgref_ins_grenadier_rpg",_missionArea, [], 10, "NONE"];
_unit = _group2 createUnit["rhsgref_ins_grenadier",_missionArea, [], 10, "NONE"];
_units append (units _group2);

_group3 = createGroup EAST;
_unit = _group3 createUnit["rhsgref_ins_squadleader",_missionArea, [], 10, "NONE"];
_unit = _group3 createUnit["rhsgref_ins_rifleman",_missionArea, [], 10, "NONE"];
_unit = _group3 createUnit["rhsgref_ins_maschinegunner",_missionArea, [], 10, "NONE"];
_unit = _group3 createUnit["rhsgref_ins_medic",_missionArea, [], 10, "NONE"];
_unit = _group3 createUnit["rhsgref_ins_militiaman_mosin",_missionArea, [], 10, "NONE"];
_unit = _group3 createUnit["rhsgref_ins_specialist_aa",_missionArea, [], 10, "NONE"];
_units append (units _group3);


_veh = createVehicle ["rhsgref_ins_ural_open", _uralPos, [], 0, "FORM"];
_veh setDir _uralDir; 
_veh setPos _uralPos;

["RandomCircle", [_group1, [_missionArea, 50, 100, false], 50, ["MOVE", "COLUMN", "SAFE", "LIMITED", "RED", 0, ["true", ""], [0,0,0]]]]execVM "AiControlSystem\InitializeAiControl.sqf";
["RandomCircle", [_group2, [_missionArea, 50, 150, false], 50, ["MOVE", "COLUMN", "SAFE", "LIMITED", "RED", 0, ["true", ""], [0,0,0]]]]execVM "AiControlSystem\InitializeAiControl.sqf";
["RandomCircle", [_group3, [_missionArea, 100, 150, false], 50, ["MOVE", "COLUMN", "SAFE", "LIMITED", "YELLOW", 0, ["true", ""], [0,0,0]]]]execVM "AiControlSystem\InitializeAiControl.sqf";

_marker = createMarker ["highfly_marker_kill_general", _missionArea];
_marker setMarkerShape "ELLIPSE";
_marker setMarkerSize [100, 100];
_marker setMarkerBrush "Solid";
_marker setMarkerColor "ColorRed";

_taskID = ["new", "General eliminieren.", "Eliminieren Sie den General im markierten Einsatzgebiet.", "", [], "", true]call TASKMS_fnc_addTask;
sleep 2;

while{true} do
{
	if(missionNamespace getVariable ["MISSION_CANCEL", false]) exitWith
	{
		[_taskID, "canceled", "General eliminieren.", "Eliminieren Sie den General im markierten Einsatzgebiet.", "", [], "", true]execVM "framework\taskms\changeTask.sqf";
		missionNamespace setVariable ["MISSION_CANCEL", false, true];
	};

	if(!alive _general) exitWith
	{
		[_taskID, "succeeded", "General eliminieren.", "Eliminieren Sie den General im markierten Einsatzgebiet.", "", [], "", true]execVM "framework\taskms\changeTask.sqf";
	};
	sleep 5;
};
missionNamespace setVariable ["MISSION_ACTIVE", false, true];

deleteMarker _marker;
{
	deleteVehicle _x;
}forEach _units;

{
	deleteGroup _x;
}forEach [_group, _group1, _group2, _group3];