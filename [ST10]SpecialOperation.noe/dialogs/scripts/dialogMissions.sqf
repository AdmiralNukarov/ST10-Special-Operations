{
	lbAdd [2100, _x];
}forEach MISSION_MAKERS;
lbSetCurSel[2100,0];

[]execVM "dialogs\scripts\dialogMissionsUpdate.sqf";