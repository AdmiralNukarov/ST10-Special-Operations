private["_missionName","_missionMaker","_missionList"];
_missionMaker = lbCurSel 2100;
_missionList = MISSION_LIST select _missionMaker;
_missionName = _missionList select (lbCurSel 1500);

START_MISSION = _missionName;
publicVariableServer "START_MISSION";

if(local player && isServer) then
{
	[]execVM ("scripts\missions\" + START_MISSION + ".sqf");
};

closeDialog 0;