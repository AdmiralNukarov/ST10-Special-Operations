//////////////////////////////////////////////////////////////////
// Function file for Armed Assault
// Created by: Nuka [www.sealteam10.de]
//////////////////////////////////////////////////////////////////

switch(_this select 0) do
{
	case "load":
	{
		_marker = createMarkerLocal ["personalTeleporter", position (vehicle player)];
		"personalTeleporter" setMarkerShapeLocal "ICON";
		"personalTeleporter" setMarkerTypeLocal "mil_dot"; 
		"personalTeleporter" setMarkerColorLocal "ColorBlue"; 
		"personalTeleporter" setMarkerTextLocal "Teleporterziel"; 
		onMapSingleClick """personalTeleporter"" setMarkerPosLocal _pos;";
	};
	
	case "unload":
	{
		deleteMarkerLocal "personalTeleporter";
		onMapSingleClick "";
	};
};