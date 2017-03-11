//////////////////////////////////////////////////////////////////
// Function file for Armed Assault
// Created by: Nuka [www.sealteam10.de]
//////////////////////////////////////////////////////////////////

//[unit, type equipment, bool backpack]execVM "framework\equipment\cdf\equipment_security.sqf";

/*
	scopes:
*/

_primaryItems = if(count _this > 3) then{_this select 3} else{[]};
_secondaryItems = if(count _this > 4) then{_this select 4} else{[]};
_handgunItems = if(count _this > 5) then{_this select 5} else{[]};

(_this select 0) setVariable ["BIS_enableRandomization", false];

switch(_this select 1) do
{	
	case "cdf_rifleman_aks74":
	{
		[(_this select 0),"rhsgref_uniform_ttsko_mountain","rhsgref_6b23_ttsko_mountain_rifleman","rhs_sidor","rhsgref_6b27m_ttsko_mountain","",
		["hlc_rifle_aks74",(["hlc_30Rnd_545x39_B_AK"] + _primaryItems)],
		["","",_secondaryItems],
		["","",_handgunItems],
		["ItemMap","ItemCompass","ItemWatch","ItemRadio"],[],
		[["ACE_fieldDressing",2],["ACE_elasticBandage",2],["ACE_packingBandage",2],["ACE_EarPlugs",1],["rhs_mag_rgd5",2],["SmokeShell",2]],
		[["hlc_30Rnd_545x39_B_AK",6],["rhs_mag_rgd5",2]],
		[["hlc_30Rnd_545x39_B_AK",6],["rhs_mag_rgd5",2]],
		[]]execVM "framework\equipment\scripts\equipment_server.sqf";
	};

				
	//default empty
	default
	{
		[(_this select 0), "","","","","",["",[]],["",[]],["",[]],[],[],[],[],[],[]]execVM "framework\equipment\scripts\equipment_server.sqf";
	};
};