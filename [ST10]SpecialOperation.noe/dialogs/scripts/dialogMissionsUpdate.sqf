private["_missionList"];
_missionList = MISSION_LIST select (lbCurSel 2100);

lbClear 1500;
{
	lbAdd [1500, _x];
}forEach _missionList;
lbSetCurSel[1500,0];

if(missionNamespace getVariable ["MISSION_ACTIVE", false]) then
{
    ctrlEnable [1601, true]; //cancel
	ctrlEnable [1602, false]; //start
}
else
{
	ctrlEnable [1601, false]; //cancel
	ctrlEnable [1602, true]; //start
};