if(!local player) exitWith{};

if("Teleporter" call BIS_fnc_getParamValue == 1) then
{
	player addAction["<t color='#1f84e1'>= Teleporter =</t>", {createDialog "dialogFrameworkTeleporter";}];
};
if("Arsenal" call BIS_fnc_getParamValue == 1) then
{
	player addAction["<t color='#e50ed1'>= Arsenal =</t>", {["Open",true] spawn BIS_fnc_arsenal;}, [], 1, false, true, "", "(vehicle player) == player"];
};