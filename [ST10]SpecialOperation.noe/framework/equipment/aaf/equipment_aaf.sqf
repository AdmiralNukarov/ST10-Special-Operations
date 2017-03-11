//////////////////////////////////////////////////////////////////
// Function file for Armed Assault
// Created by: Nuka [www.sealteam10.de]
//////////////////////////////////////////////////////////////////

//[]execVM "framework\equipment\aaf\equipment_aaf.sqf";

/*
	scopes:
*/

_primaryItems = if(count _this > 3) then{_this select 3} else{[]};
_secondaryItems = if(count _this > 4) then{_this select 4} else{[]};
_handgunItems = if(count _this > 5) then{_this select 5} else{[]};

(_this select 0) setVariable ["BIS_enableRandomization", false];

switch(_this select 1) do
{	
	case "rifleman_g36a1":
	{
		if(_this select 2) then
		{
			[(_this select 0),"U_I_CombatUniform","V_PlateCarrierIA1_dgtl","B_AssaultPack_dgtl","H_HelmetIA","",
			["hlc_rifle_G36A1",(["hlc_30rnd_556x45_EPR_G36"] + _primaryItems)],
			["",_secondaryItems],
			["",_handgunItems],
			["ItemMap","ItemCompass","ItemWatch","ItemRadio"],["NVGoggles_INDEP"],
			[["ACE_fieldDressing",2],["ACE_elasticBandage",2],["ACE_packingBandage",2],["ACE_morphine",1],["ACE_EarPlugs",1]],
			[["hlc_30rnd_556x45_EPR_G36",8],["rhs_mag_m67",2],["SmokeShell",2]],
			[["hlc_30rnd_556x45_EPR_G36",8],["rhs_mag_m67",4],["SmokeShell",2],["SmokeShellRed",2],["SmokeShellGreen",2]],
			[]]execVM "framework\equipment\scripts\equipment_server.sqf";
		}
		else
		{
			[(_this select 0),"U_I_CombatUniform","V_PlateCarrierIA1_dgtl","","H_HelmetIA","",
			["hlc_rifle_G36A1",(["hlc_30rnd_556x45_EPR_G36"] + _primaryItems)],
			["",_secondaryItems],
			["",_handgunItems],
			["ItemMap","ItemCompass","ItemWatch","ItemRadio"],["NVGoggles_INDEP"],
			[["ACE_fieldDressing",2],["ACE_elasticBandage",2],["ACE_packingBandage",2],["ACE_morphine",1],["ACE_EarPlugs",1]],
			[["hlc_30rnd_556x45_EPR_G36",8],["rhs_mag_m67",2],["SmokeShell",2]],
			[],[]]execVM "framework\equipment\scripts\equipment_server.sqf";
		};
	};
	
	case "rifleman_g36c":
	{
		if(_this select 2) then
		{
			[(_this select 0),"U_I_CombatUniform","V_PlateCarrierIA1_dgtl","B_AssaultPack_dgtl","H_HelmetIA","",
			["hlc_rifle_G36C",(["hlc_30rnd_556x45_EPR_G36"] + _primaryItems)],
			["",_secondaryItems],
			["",_handgunItems],
			["ItemMap","ItemCompass","ItemWatch","ItemRadio"],["NVGoggles_INDEP"],
			[["ACE_fieldDressing",2],["ACE_elasticBandage",2],["ACE_packingBandage",2],["ACE_morphine",1],["ACE_EarPlugs",1]],
			[["hlc_30rnd_556x45_EPR_G36",8],["rhs_mag_m67",2],["SmokeShell",2]],
			[["hlc_30rnd_556x45_EPR_G36",8],["rhs_mag_m67",4],["SmokeShell",2],["SmokeShellRed",2],["SmokeShellGreen",2]],
			[]]execVM "framework\equipment\scripts\equipment_server.sqf";
		}
		else
		{
			[(_this select 0),"U_I_CombatUniform","V_PlateCarrierIA1_dgtl","","H_HelmetIA","",
			["hlc_rifle_G36C",(["hlc_30rnd_556x45_EPR_G36"] + _primaryItems)],
			["",_secondaryItems],
			["",_handgunItems],
			["ItemMap","ItemCompass","ItemWatch","ItemRadio"],["NVGoggles_INDEP"],
			[["ACE_fieldDressing",2],["ACE_elasticBandage",2],["ACE_packingBandage",2],["ACE_morphine",1],["ACE_EarPlugs",1]],
			[["hlc_30rnd_556x45_EPR_G36",8],["rhs_mag_m67",2],["SmokeShell",2]],
			[],[]]execVM "framework\equipment\scripts\equipment_server.sqf";
		};
	};
	
	case "grenadier_g36a1ag36":
	{
		if(_this select 2) then
		{
			[(_this select 0),"U_I_CombatUniform","V_PlateCarrierIA1_dgtl","B_AssaultPack_dgtl","H_HelmetIA","",
			["hlc_rifle_G36A1AG36",(["hlc_30rnd_556x45_EPR_G36"] + _primaryItems)],
			["",_secondaryItems],
			["",_handgunItems],
			["ItemMap","ItemCompass","ItemWatch","ItemRadio"],["NVGoggles_INDEP"],
			[["ACE_fieldDressing",2],["ACE_elasticBandage",2],["ACE_packingBandage",2],["ACE_morphine",1],["ACE_EarPlugs",1]],
			[["hlc_30rnd_556x45_EPR_G36",8],["rhs_mag_m67",2],["SmokeShell",2],["1Rnd_HE_Grenade_shell",8]],
			[["hlc_30rnd_556x45_EPR_G36",8],["rhs_mag_m67",4],["SmokeShell",2],["SmokeShellRed",2],["SmokeShellGreen",2],["1Rnd_HE_Grenade_shell",8],["1Rnd_Smoke_Grenade_shell",2],["1Rnd_SmokeRed_Grenade_shell",2],["1Rnd_SmokeGreen_Grenade_shell",2]],
			[]]execVM "framework\equipment\scripts\equipment_server.sqf";
		}
		else
		{
			[(_this select 0),"U_I_CombatUniform","V_PlateCarrierIA1_dgtl","","H_HelmetIA","",
			["hlc_rifle_G36A1AG36",(["hlc_30rnd_556x45_EPR_G36"] + _primaryItems)],
			["",_secondaryItems],
			["",_handgunItems],
			["ItemMap","ItemCompass","ItemWatch","ItemRadio"],["NVGoggles_INDEP"],
			[["ACE_fieldDressing",2],["ACE_elasticBandage",2],["ACE_packingBandage",2],["ACE_morphine",1],["ACE_EarPlugs",1]],
			[["hlc_30rnd_556x45_EPR_G36",8],["rhs_mag_m67",2],["SmokeShell",2],["1Rnd_HE_Grenade_shell",8]],
			[],[]]execVM "framework\equipment\scripts\equipment_server.sqf";
		};
	};
	
	case "leader_g36a1ag36":
	{
		if(_this select 2) then
		{
			[(_this select 0),"U_I_CombatUniform","V_PlateCarrierIA1_dgtl","B_AssaultPack_dgtl","H_HelmetIA","",
			["hlc_rifle_G36A1AG36",(["hlc_30rnd_556x45_EPR_G36"] + _primaryItems)],
			["",_secondaryItems],
			["",_handgunItems],
			["ItemMap","ItemCompass","ItemWatch","ItemRadio"],["NVGoggles_INDEP","Binocular"],
			[["ACE_fieldDressing",2],["ACE_elasticBandage",2],["ACE_packingBandage",2],["ACE_morphine",1],["ACE_EarPlugs",1],["ACE_HuntIR_M203",2],["ACE_HuntIR_monitor",1]],
			[["hlc_30rnd_556x45_EPR_G36",8],["rhs_mag_m67",2],["SmokeShell",2],["1Rnd_HE_Grenade_shell",8]],
			[["hlc_30rnd_556x45_EPR_G36",8],["rhs_mag_m67",4],["SmokeShell",2],["SmokeShellRed",2],["SmokeShellGreen",2],["1Rnd_HE_Grenade_shell",8],["1Rnd_Smoke_Grenade_shell",2],["1Rnd_SmokeRed_Grenade_shell",2],["1Rnd_SmokeGreen_Grenade_shell",2]],
			[]]execVM "framework\equipment\scripts\equipment_server.sqf";
		}
		else
		{
			[(_this select 0),"U_I_CombatUniform","V_PlateCarrierIA1_dgtl","","H_HelmetIA","",
			["hlc_rifle_G36A1AG36",(["hlc_30rnd_556x45_EPR_G36"] + _primaryItems)],
			["",_secondaryItems],
			["",_handgunItems],
			["ItemMap","ItemCompass","ItemWatch","ItemRadio"],["NVGoggles_INDEP","Binocular"],
			[["ACE_fieldDressing",2],["ACE_elasticBandage",2],["ACE_packingBandage",2],["ACE_morphine",1],["ACE_EarPlugs",1],["ACE_HuntIR_M203",2],["ACE_HuntIR_monitor",1]],
			[["hlc_30rnd_556x45_EPR_G36",8],["rhs_mag_m67",2],["SmokeShell",2],["1Rnd_HE_Grenade_shell",8]],
			[],[]]execVM "framework\equipment\scripts\equipment_server.sqf";
		};
	};
	
	case "antitank_g36a1_nlaw":
	{
		if(_this select 2) then
		{
			[(_this select 0),"U_I_CombatUniform","V_PlateCarrierIA1_dgtl","B_AssaultPack_dgtl","H_HelmetIA","",
			["hlc_rifle_G36A1",(["hlc_30rnd_556x45_EPR_G36"] + _primaryItems)],
			["launch_NLAW_F",(["ACE_PreloadedMissileDummy"] + _secondaryItems)],
			["",_handgunItems],
			["ItemMap","ItemCompass","ItemWatch","ItemRadio"],["NVGoggles_INDEP"],
			[["ACE_fieldDressing",2],["ACE_elasticBandage",2],["ACE_packingBandage",2],["ACE_morphine",1],["ACE_EarPlugs",1]],
			[["hlc_30rnd_556x45_EPR_G36",8],["rhs_mag_m67",2],["SmokeShell",2]],
			[["hlc_30rnd_556x45_EPR_G36",8],["rhs_mag_m67",4],["SmokeShell",2],["SmokeShellRed",2],["SmokeShellGreen",2]],
			[]]execVM "framework\equipment\scripts\equipment_server.sqf";
		}
		else
		{
			[(_this select 0),"U_I_CombatUniform","V_PlateCarrierIA1_dgtl","","H_HelmetIA","",
			["hlc_rifle_G36A1",(["hlc_30rnd_556x45_EPR_G36"] + _primaryItems)],
			["launch_NLAW_F",(["ACE_PreloadedMissileDummy"] + _secondaryItems)],
			["",_handgunItems],
			["ItemMap","ItemCompass","ItemWatch","ItemRadio"],["NVGoggles_INDEP"],
			[["ACE_fieldDressing",2],["ACE_elasticBandage",2],["ACE_packingBandage",2],["ACE_morphine",1],["ACE_EarPlugs",1]],
			[["hlc_30rnd_556x45_EPR_G36",8],["rhs_mag_m67",2],["SmokeShell",2]],
			[],[]]execVM "framework\equipment\scripts\equipment_server.sqf";
		};
	};
	
	case "antitank_g36c_nlaw":
	{
		if(_this select 2) then
		{
			[(_this select 0),"U_I_CombatUniform","V_PlateCarrierIA1_dgtl","B_AssaultPack_dgtl","H_HelmetIA","",
			["hlc_rifle_G36C",(["hlc_30rnd_556x45_EPR_G36"] + _primaryItems)],
			["launch_NLAW_F",(["ACE_PreloadedMissileDummy"] + _secondaryItems)],
			["",_handgunItems],
			["ItemMap","ItemCompass","ItemWatch","ItemRadio"],["NVGoggles_INDEP"],
			[["ACE_fieldDressing",2],["ACE_elasticBandage",2],["ACE_packingBandage",2],["ACE_morphine",1],["ACE_EarPlugs",1]],
			[["hlc_30rnd_556x45_EPR_G36",8],["rhs_mag_m67",2],["SmokeShell",2]],
			[["hlc_30rnd_556x45_EPR_G36",8],["rhs_mag_m67",4],["SmokeShell",2],["SmokeShellRed",2],["SmokeShellGreen",2]],
			[]]execVM "framework\equipment\scripts\equipment_server.sqf";
		}
		else
		{
			[(_this select 0),"U_I_CombatUniform","V_PlateCarrierIA1_dgtl","","H_HelmetIA","",
			["hlc_rifle_G36C",(["hlc_30rnd_556x45_EPR_G36"] + _primaryItems)],
			["launch_NLAW_F",(["ACE_PreloadedMissileDummy"] + _secondaryItems)],
			["",_handgunItems],
			["ItemMap","ItemCompass","ItemWatch","ItemRadio"],["NVGoggles_INDEP"],
			[["ACE_fieldDressing",2],["ACE_elasticBandage",2],["ACE_packingBandage",2],["ACE_morphine",1],["ACE_EarPlugs",1]],
			[["hlc_30rnd_556x45_EPR_G36",8],["rhs_mag_m67",2],["SmokeShell",2]],
			[],[]]execVM "framework\equipment\scripts\equipment_server.sqf";
		};
	};
	
	case "lmg_mg36a1":
	{
		if(_this select 2) then
		{
			[(_this select 0),"U_I_CombatUniform","V_PlateCarrierIA1_dgtl","B_AssaultPack_dgtl","H_HelmetIA","",
			["hlc_rifle_MG36",(["hlc_100rnd_556x45_EPR_G36"] + _primaryItems)],
			["",_secondaryItems],
			["",_handgunItems],
			["ItemMap","ItemCompass","ItemWatch","ItemRadio"],["NVGoggles_INDEP"],
			[["ACE_fieldDressing",2],["ACE_elasticBandage",2],["ACE_packingBandage",2],["ACE_morphine",1],["ACE_EarPlugs",1]],
			[["hlc_100rnd_556x45_EPR_G36",2],["rhs_mag_m67",2],["SmokeShell",2]],
			[["hlc_100rnd_556x45_EPR_G36",2],["ACE_SpareBarrel",1]],
			[]]execVM "framework\equipment\scripts\equipment_server.sqf";
		}
		else
		{
			[(_this select 0),"U_I_CombatUniform","V_PlateCarrierIA1_dgtl","","H_HelmetIA","",
			["hlc_rifle_MG36",(["hlc_100rnd_556x45_EPR_G36"] + _primaryItems)],
			["",_secondaryItems],
			["",_handgunItems],
			["ItemMap","ItemCompass","ItemWatch","ItemRadio"],["NVGoggles_INDEP"],
			[["ACE_fieldDressing",2],["ACE_elasticBandage",2],["ACE_packingBandage",2],["ACE_morphine",1],["ACE_EarPlugs",1]],
			[["hlc_100rnd_556x45_EPR_G36",2],["rhs_mag_m67",2],["SmokeShell",2]],
			[],[]]execVM "framework\equipment\scripts\equipment_server.sqf";
		};
	};
	
	case "mg_m60e4":
	{
		if(_this select 2) then
		{
			[(_this select 0),"U_I_CombatUniform","V_PlateCarrierIA1_dgtl","B_AssaultPack_dgtl","H_HelmetIA","",
			["hlc_lmg_M60E4",(["hlc_100Rnd_762x51_M_M60E4"] + _primaryItems)],
			["",_secondaryItems],
			["",_handgunItems],
			["ItemMap","ItemCompass","ItemWatch","ItemRadio"],["NVGoggles_INDEP"],
			[["ACE_fieldDressing",2],["ACE_elasticBandage",2],["ACE_packingBandage",2],["ACE_morphine",1],["ACE_EarPlugs",1]],
			[["hlc_100Rnd_762x51_M_M60E4",3],["rhs_mag_m67",2],["SmokeShell",2]],
			[["hlc_100Rnd_762x51_M_M60E4",4],["ACE_SpareBarrel",1]],
			[]]execVM "framework\equipment\scripts\equipment_server.sqf";
		}
		else
		{
			[(_this select 0),"U_I_CombatUniform","V_PlateCarrierIA1_dgtl","","H_HelmetIA","",
			["hlc_lmg_M60E4",(["hlc_100Rnd_762x51_M_M60E4"] + _primaryItems)],
			["",_secondaryItems],
			["",_handgunItems],
			["ItemMap","ItemCompass","ItemWatch","ItemRadio"],["NVGoggles_INDEP"],
			[["ACE_fieldDressing",2],["ACE_elasticBandage",2],["ACE_packingBandage",2],["ACE_morphine",1],["ACE_EarPlugs",1]],
			[["hlc_100Rnd_762x51_M_M60E4",3],["rhs_mag_m67",2],["SmokeShell",2]],
			[],[]]execVM "framework\equipment\scripts\equipment_server.sqf";
		};
	};
		
	case "marksman_psg1":
	{
		if(_this select 2) then
		{
			[(_this select 0),"U_I_CombatUniform","V_PlateCarrierIA1_dgtl","B_AssaultPack_dgtl","H_HelmetIA","",
			["hlc_rifle_psg1",(["hlc_20rnd_762x51_b_G3"] + _primaryItems)],
			["",_secondaryItems],
			["",_handgunItems],
			["ItemMap","ItemCompass","ItemWatch","ItemRadio"],["NVGoggles_INDEP","Binocular"],
			[["ACE_fieldDressing",2],["ACE_elasticBandage",2],["ACE_packingBandage",2],["ACE_morphine",1],["ACE_EarPlugs",1]],
			[["hlc_20rnd_762x51_b_G3",8],["rhs_mag_m67",2],["SmokeShell",2]],
			[["hlc_20rnd_762x51_b_G3",8],["rhs_mag_m67",4],["SmokeShell",2],["SmokeShellRed",2],["SmokeShellGreen",2]],
			[]]execVM "framework\equipment\scripts\equipment_server.sqf";
		}
		else
		{
			[(_this select 0),"U_I_CombatUniform","V_PlateCarrierIA1_dgtl","","H_HelmetIA","",
			["hlc_rifle_psg1",(["hlc_20rnd_762x51_b_G3"] + _primaryItems)],
			["",_secondaryItems],
			["",_handgunItems],
			["ItemMap","ItemCompass","ItemWatch","ItemRadio"],["NVGoggles_INDEP","Binocular"],
			[["ACE_fieldDressing",2],["ACE_elasticBandage",2],["ACE_packingBandage",2],["ACE_morphine",1],["ACE_EarPlugs",1]],
			[["hlc_20rnd_762x51_b_G3",8],["rhs_mag_m67",2],["SmokeShell",2]],
			[],[]]execVM "framework\equipment\scripts\equipment_server.sqf";
		};
	};
	
	case "pilot_mp5kpdw":
	{
		[(_this select 0),"U_I_pilotCoveralls","V_TacVest_oli","","H_CrewHelmetHeli_I","",
		["hlc_smg_mp5k_PDW",(["hlc_30Rnd_9x19_B_MP5"] + _primaryItems)],
		["",_secondaryItems],
		["",_handgunItems],
		["ItemMap","ItemCompass","ItemWatch","ItemRadio"],["NVGoggles_INDEP"],
		[["ACE_fieldDressing",5],["ACE_elasticBandage",5],["ACE_packingBandage",5],["ACE_morphine",2],["ACE_epinephrine",2],["ACE_adenosine",1],["ACE_atropine",1],["ACE_EarPlugs",1],["ACE_personalAidKit",1]],
		[["hlc_30Rnd_9x19_B_MP5",5],["SmokeShell",2],["SmokeShellPurple",2],["SmokeShellBlue",2],["SmokeShellOrange",2],["SmokeShellYellow",2],["SmokeShellGreen",2],["SmokeShellRed",2]],
		[],[]]execVM "framework\equipment\scripts\equipment_server.sqf";
	};
	
	case "crewman_g36c":
	{
		[(_this select 0),"U_I_CombatUniform","V_PlateCarrierIA1_dgtl","","H_HelmetCrew_I","",
		["hlc_rifle_G36C",(["hlc_30Rnd_9x19_B_MP5"] + _primaryItems)],
		["",_secondaryItems],
		["",_handgunItems],
		["ItemMap","ItemCompass","ItemWatch","ItemRadio"],["NVGoggles_INDEP"],
		[["ACE_fieldDressing",2],["ACE_elasticBandage",2],["ACE_packingBandage",2],["ACE_morphine",1],["ACE_EarPlugs",1]],
		[["hlc_30rnd_556x45_EPR_G36",8],["rhs_mag_m67",2],["SmokeShell",2]],
		[],[]]execVM "framework\equipment\scripts\equipment_server.sqf";
	};
	
	case "antitank_g36a1_titan":
	{
		if(_this select 2) then
		{
			[(_this select 0),"U_I_CombatUniform","V_PlateCarrierIA1_dgtl","B_AssaultPack_dgtl","H_HelmetIA","",
			["hlc_rifle_G36A1",(["hlc_30rnd_556x45_EPR_G36"] + _primaryItems)],
			["launch_I_Titan_short_F",(["Titan_AT"] + _secondaryItems)],
			["",_handgunItems],
			["ItemMap","ItemCompass","ItemWatch","ItemRadio"],["NVGoggles_INDEP"],
			[["ACE_fieldDressing",2],["ACE_elasticBandage",2],["ACE_packingBandage",2],["ACE_morphine",1],["ACE_EarPlugs",1]],
			[["hlc_30rnd_556x45_EPR_G36",8],["rhs_mag_m67",2],["SmokeShell",2]],
			[["Titan_AT",1],["Titan_AP",1]],
			[]]execVM "framework\equipment\scripts\equipment_server.sqf";
		}
		else
		{
			[(_this select 0),"U_I_CombatUniform","V_PlateCarrierIA1_dgtl","","H_HelmetIA","",
			["hlc_rifle_G36A1",(["hlc_30rnd_556x45_EPR_G36"] + _primaryItems)],
			["launch_I_Titan_short_F",(["Titan_AT"] + _secondaryItems)],
			["",_handgunItems],
			["ItemMap","ItemCompass","ItemWatch","ItemRadio"],["NVGoggles_INDEP"],
			[["ACE_fieldDressing",2],["ACE_elasticBandage",2],["ACE_packingBandage",2],["ACE_morphine",1],["ACE_EarPlugs",1]],
			[["hlc_30rnd_556x45_EPR_G36",8],["rhs_mag_m67",2],["SmokeShell",2]],
			[],[]]execVM "framework\equipment\scripts\equipment_server.sqf";
		};
	};
	
	case "antitank_g36c_titan":
	{
		if(_this select 2) then
		{
			[(_this select 0),"U_I_CombatUniform","V_PlateCarrierIA1_dgtl","B_AssaultPack_dgtl","H_HelmetIA","",
			["hlc_rifle_G36C",(["hlc_30rnd_556x45_EPR_G36"] + _primaryItems)],
			["launch_I_Titan_short_F",(["Titan_AT"] + _secondaryItems)],
			["",_handgunItems],
			["ItemMap","ItemCompass","ItemWatch","ItemRadio"],["NVGoggles_INDEP"],
			[["ACE_fieldDressing",2],["ACE_elasticBandage",2],["ACE_packingBandage",2],["ACE_morphine",1],["ACE_EarPlugs",1]],
			[["hlc_30rnd_556x45_EPR_G36",8],["rhs_mag_m67",2],["SmokeShell",2]],
			[["Titan_AT",1],["Titan_AP",1]],
			[]]execVM "framework\equipment\scripts\equipment_server.sqf";
		}
		else
		{
			[(_this select 0),"U_I_CombatUniform","V_PlateCarrierIA1_dgtl","","H_HelmetIA","",
			["hlc_rifle_G36C",(["hlc_30rnd_556x45_EPR_G36"] + _primaryItems)],
			["launch_I_Titan_short_F",(["Titan_AT"] + _secondaryItems)],
			["",_handgunItems],
			["ItemMap","ItemCompass","ItemWatch","ItemRadio"],["NVGoggles_INDEP"],
			[["ACE_fieldDressing",2],["ACE_elasticBandage",2],["ACE_packingBandage",2],["ACE_morphine",1],["ACE_EarPlugs",1]],
			[["hlc_30rnd_556x45_EPR_G36",8],["rhs_mag_m67",2],["SmokeShell",2]],
			[],[]]execVM "framework\equipment\scripts\equipment_server.sqf";
		};
	};
	
	case "antiair_g36a1_titan":
	{
		if(_this select 2) then
		{
			[(_this select 0),"U_I_CombatUniform","V_PlateCarrierIA1_dgtl","B_AssaultPack_dgtl","H_HelmetIA","",
			["hlc_rifle_G36A1",(["hlc_30rnd_556x45_EPR_G36"] + _primaryItems)],
			["launch_I_Titan_F",(["Titan_AA"] + _secondaryItems)],
			["",_handgunItems],
			["ItemMap","ItemCompass","ItemWatch","ItemRadio"],["NVGoggles_INDEP"],
			[["ACE_fieldDressing",2],["ACE_elasticBandage",2],["ACE_packingBandage",2],["ACE_morphine",1],["ACE_EarPlugs",1]],
			[["hlc_30rnd_556x45_EPR_G36",8],["rhs_mag_m67",2],["SmokeShell",2]],
			[["Titan_AA",1]],
			[]]execVM "framework\equipment\scripts\equipment_server.sqf";
		}
		else
		{
			[(_this select 0),"U_I_CombatUniform","V_PlateCarrierIA1_dgtl","","H_HelmetIA","",
			["hlc_rifle_G36A1",(["hlc_30rnd_556x45_EPR_G36"] + _primaryItems)],
			["launch_I_Titan_F",(["Titan_AA"] + _secondaryItems)],
			["",_handgunItems],
			["ItemMap","ItemCompass","ItemWatch","ItemRadio"],["NVGoggles_INDEP"],
			[["ACE_fieldDressing",2],["ACE_elasticBandage",2],["ACE_packingBandage",2],["ACE_morphine",1],["ACE_EarPlugs",1]],
			[["hlc_30rnd_556x45_EPR_G36",8],["rhs_mag_m67",2],["SmokeShell",2]],
			[],[]]execVM "framework\equipment\scripts\equipment_server.sqf";
		};
	};
	
	case "antiair_g36c_titan":
	{
		if(_this select 2) then
		{
			[(_this select 0),"U_I_CombatUniform","V_PlateCarrierIA1_dgtl","B_AssaultPack_dgtl","H_HelmetIA","",
			["hlc_rifle_G36C",(["hlc_30rnd_556x45_EPR_G36"] + _primaryItems)],
			["launch_I_Titan_F",(["Titan_AA"] + _secondaryItems)],
			["",_handgunItems],
			["ItemMap","ItemCompass","ItemWatch","ItemRadio"],["NVGoggles_INDEP"],
			[["ACE_fieldDressing",2],["ACE_elasticBandage",2],["ACE_packingBandage",2],["ACE_morphine",1],["ACE_EarPlugs",1]],
			[["hlc_30rnd_556x45_EPR_G36",8],["rhs_mag_m67",2],["SmokeShell",2]],
			[["Titan_AA",1]],
			[]]execVM "framework\equipment\scripts\equipment_server.sqf";
		}
		else
		{
			[(_this select 0),"U_I_CombatUniform","V_PlateCarrierIA1_dgtl","","H_HelmetIA","",
			["hlc_rifle_G36C",(["hlc_30rnd_556x45_EPR_G36"] + _primaryItems)],
			["launch_I_Titan_F",(["Titan_AA"] + _secondaryItems)],
			["",_handgunItems],
			["ItemMap","ItemCompass","ItemWatch","ItemRadio"],["NVGoggles_INDEP"],
			[["ACE_fieldDressing",2],["ACE_elasticBandage",2],["ACE_packingBandage",2],["ACE_morphine",1],["ACE_EarPlugs",1]],
			[["hlc_30rnd_556x45_EPR_G36",8],["rhs_mag_m67",2],["SmokeShell",2]],
			[],[]]execVM "framework\equipment\scripts\equipment_server.sqf";
		};
	};
	
	case "medic_g36a1":
	{
		if(_this select 2) then
		{
			[(_this select 0),"U_I_CombatUniform","V_PlateCarrierIA1_dgtl","B_AssaultPack_dgtl","H_HelmetIA","",
			["hlc_rifle_G36A1",(["hlc_30rnd_556x45_EPR_G36"] + _primaryItems)],
			["",_secondaryItems],
			["",_handgunItems],
			["ItemMap","ItemCompass","ItemWatch","ItemRadio"],["NVGoggles_INDEP"],
			[["ACE_fieldDressing",10],["ACE_elasticBandage",10],["ACE_packingBandage",10],["ACE_morphine",4],["ACE_epinephrine",4],["ACE_EarPlugs",1]],
			[["hlc_30rnd_556x45_EPR_G36",8],["rhs_mag_m67",2],["SmokeShell",2]],
			[["ACE_fieldDressing",20],["ACE_elasticBandage",20],["ACE_packingBandage",20],["ACE_morphine",10],["ACE_epinephrine",10],["ACE_atropine",5],["ACE_adenosine",5],["ACE_bloodIV",3],["ACE_tourniquet",2],["ACE_quikclot",5],["ACE_personalAidKit",1],["ACE_surgicalKit",1]],
			[]]execVM "framework\equipment\scripts\equipment_server.sqf";
		}
		else
		{
			[(_this select 0),"U_I_CombatUniform","V_PlateCarrierIA1_dgtl","","H_HelmetIA","",
			["hlc_rifle_G36A1",(["hlc_30rnd_556x45_EPR_G36"] + _primaryItems)],
			["",_secondaryItems],
			["",_handgunItems],
			["ItemMap","ItemCompass","ItemWatch","ItemRadio"],["NVGoggles_INDEP"],
			[["ACE_fieldDressing",10],["ACE_elasticBandage",10],["ACE_packingBandage",10],["ACE_morphine",4],["ACE_epinephrine",4],["ACE_EarPlugs",1]],
			[["hlc_30rnd_556x45_EPR_G36",8],["rhs_mag_m67",2],["SmokeShell",2]],
			[],[]]execVM "framework\equipment\scripts\equipment_server.sqf";
		};
	};
	
	case "medic_g36c":
	{
		if(_this select 2) then
		{
			[(_this select 0),"U_I_CombatUniform","V_PlateCarrierIA1_dgtl","B_AssaultPack_dgtl","H_HelmetIA","",
			["hlc_rifle_G36C",(["hlc_30rnd_556x45_EPR_G36"] + _primaryItems)],
			["",_secondaryItems],
			["",_handgunItems],
			["ItemMap","ItemCompass","ItemWatch","ItemRadio"],["NVGoggles_INDEP"],
			[["ACE_fieldDressing",10],["ACE_elasticBandage",10],["ACE_packingBandage",10],["ACE_morphine",4],["ACE_epinephrine",4],["ACE_EarPlugs",1]],
			[["hlc_30rnd_556x45_EPR_G36",8],["rhs_mag_m67",2],["SmokeShell",2]],
			[["ACE_fieldDressing",20],["ACE_elasticBandage",20],["ACE_packingBandage",20],["ACE_morphine",10],["ACE_epinephrine",10],["ACE_atropine",5],["ACE_adenosine",5],["ACE_bloodIV",3],["ACE_tourniquet",2],["ACE_quikclot",5],["ACE_personalAidKit",1],["ACE_surgicalKit",1]],
			[]]execVM "framework\equipment\scripts\equipment_server.sqf";
		}
		else
		{
			[(_this select 0),"U_I_CombatUniform","V_PlateCarrierIA1_dgtl","","H_HelmetIA","",
			["hlc_rifle_G36C",(["hlc_30rnd_556x45_EPR_G36"] + _primaryItems)],
			["",_secondaryItems],
			["",_handgunItems],
			["ItemMap","ItemCompass","ItemWatch","ItemRadio"],["NVGoggles_INDEP"],
			[["ACE_fieldDressing",10],["ACE_elasticBandage",10],["ACE_packingBandage",10],["ACE_morphine",4],["ACE_epinephrine",4],["ACE_EarPlugs",1]],
			[["hlc_30rnd_556x45_EPR_G36",8],["rhs_mag_m67",2],["SmokeShell",2]],
			[],[]]execVM "framework\equipment\scripts\equipment_server.sqf";
		};
	};
			
	//default empty
	default
	{
		[(_this select 0), "","","","","",["",[]],["",[]],["",[]],[],[],[],[],[],[]]execVM "framework\equipment\scripts\equipment_server.sqf";
	};
};

