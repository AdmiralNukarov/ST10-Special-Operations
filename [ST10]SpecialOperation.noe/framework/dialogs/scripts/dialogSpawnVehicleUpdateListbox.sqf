//////////////////////////////////////////////////////////////////
// Function file for Armed Assault
// Created by: Nuka [www.sealteam10.de]
//////////////////////////////////////////////////////////////////

private['_name','_faction','_index'];
_index = lbCurSel 1501;
lbClear 1500;

if(FRAMEWORK_SPAWN_ISCUSTOM) then
{
	{
		_name = getText(configfile >> "CfgVehicles" >> _x >> "displayName");
		_faction = getText(ConfigFile >> "CfgFactionClasses" >> getText(configFile >> "CfgVehicles" >> _x >> "faction") >> "displayName"); 
		lbAdd[1500, format["%1 %2", _name, _faction]];
	}forEach (FRAMEWORK_SPAWN_VEHICLE_CUSTOM select _index);
}
else
{
	{
		_name = getText(configfile >> "CfgVehicles" >> _x >> "displayName");
		_faction = getText(ConfigFile >> "CfgFactionClasses" >> getText(configFile >> "CfgVehicles" >> _x >> "faction") >> "displayName"); 
		lbAdd[1500, format["%1 %2", _name, _faction]];
	}forEach (FRAMEWORK_SPAWN_ACTIVETYPES select _index);
};

lbSetCurSel[1500,0];
