//////////////////////////////////////////////////////////////////
// Function file for Armed Assault
// Created by: Nuka [www.sealteam10.de]
//////////////////////////////////////////////////////////////////

//[unit, type equipment, bool backpack]execVM "framework\equipment\jungle\equipment_jungle.sqf";

/*
	scopes:
*/

_primaryItems = if(count _this > 3) then{_this select 3} else{[]};
_secondaryItems = if(count _this > 4) then{_this select 4} else{[]};
_handgunItems = if(count _this > 5) then{_this select 5} else{[]};

(_this select 0) setVariable ["BIS_enableRandomization", false];
////////////////////////////////////////////////////////////////////// HK 416 über izhmash
switch(_this select 1) do
{	
	//##### Rifles #####//
	case "badguy_acr":
	{
		[(_this select 0), "rhsgref_uniform_tigerstripe","V_BandollierB_rgr","","rhs_beanie_green","G_Bandanna_oli",
		["SMA_ACRREMMOECQBblk_N",["FHQ_optic_AC11704","SMA_30Rnd_556x45_M855A1"]],
		["",[]],
		["RH_p226",["RH_15Rnd_9x19_SIG"]],
		["ItemMap","ItemWatch","ItemCompass","ItemRadio"],[],
		[["RH_15Rnd_9x19_SIG",3],["ACE_EarPlugs",1],["ACE_fieldDressing",5],["ACE_elasticBandage",5],["ACE_packingBandage",5]],
		[["SMA_30Rnd_556x45_M855A1",8],["rhs_mag_m67",2],["SmokeShell",2]],
		[],[]]execVM "framework\equipment\scripts\equipment_server.sqf";
	};
	
	case "badguy_heavy_acr":
	{
		[(_this select 0), "My_retexture8","TAC_V_Sheriff_BA_T","","rhs_6b28_green_bala","",
		["SMA_ACRREMMOECQBblk_N",["FHQ_optic_AC11704","SMA_30Rnd_556x45_M855A1"]],
		["",[]],
		["RH_p226",["RH_15Rnd_9x19_SIG"]],
		["ItemMap","ItemWatch","ItemCompass","ItemRadio"],[],
		[["RH_15Rnd_9x19_SIG",4],["ACE_EarPlugs",1],["ACE_fieldDressing",5],["ACE_elasticBandage",5],["ACE_packingBandage",5]],
		[["SMA_30Rnd_556x45_M855A1",8],["rhs_mag_m67",2],["SmokeShell",2]],
		[],[]]execVM "framework\equipment\scripts\equipment_server.sqf";
	};
	
	case "badguy_asval":
	{
		[(_this select 0), "rhsgref_uniform_tigerstripe","V_BandollierB_rgr","","rhs_beanie_green","G_Bandanna_oli",
		["rhs_weap_asval",["rhs_20rnd_9x39mm_SP5"]],
		["",[]],
		["RH_p226",["RH_15Rnd_9x19_SIG"]],
		["ItemMap","ItemWatch","ItemCompass","ItemRadio"],[],
		[["RH_15Rnd_9x19_SIG",3],["ACE_EarPlugs",1],["ACE_fieldDressing",5],["ACE_elasticBandage",5],["ACE_packingBandage",5]],
		[["rhs_20rnd_9x39mm_SP5",5],["rhs_mag_m67",1],["SmokeShell",1]],
		[],[]]execVM "framework\equipment\scripts\equipment_server.sqf";
	};
	
	case "badguy_heavy_asval":
	{
		[(_this select 0), "My_retexture8","TAC_V_Sheriff_BA_T","","rhs_6b28_green_bala","",
		["rhs_weap_asval",["rhs_20rnd_9x39mm_SP5"]],
		["",[]],
		["RH_p226",["RH_15Rnd_9x19_SIG"]],
		["ItemMap","ItemWatch","ItemCompass","ItemRadio"],[],
		[["RH_15Rnd_9x19_SIG",4],["ACE_EarPlugs",1],["ACE_fieldDressing",5],["ACE_elasticBandage",5],["ACE_packingBandage",5]],
		[["rhs_20rnd_9x39mm_SP5",5],["rhs_mag_m67",1],["SmokeShell",1]],
		[],[]]execVM "framework\equipment\scripts\equipment_server.sqf";
	};
	
	case "badguy_fnfal":
	{
		[(_this select 0), "rhsgref_uniform_tigerstripe","V_BandollierB_rgr","","rhs_beanie_green","G_Bandanna_oli",
		["hlc_rifle_FAL5061",["hlc_20Rnd_762x51_B_fal"]],
		["",[]],
		["RH_p226",["RH_15Rnd_9x19_SIG"]],
		["ItemMap","ItemWatch","ItemCompass","ItemRadio"],[],
		[["RH_15Rnd_9x19_SIG",3],["ACE_EarPlugs",1],["ACE_fieldDressing",5],["ACE_elasticBandage",5],["ACE_packingBandage",5]],
		[["rhs_20rnd_9x39mm_SP5",5],["rhs_mag_m67",1],["SmokeShell",1]],
		[],[]]execVM "framework\equipment\scripts\equipment_server.sqf";
	};
	
	case "badguy_heavy_fnfal":
	{
		[(_this select 0), "My_retexture8","TAC_V_Sheriff_BA_T","","rhs_6b28_green_bala","",
		["hlc_rifle_FAL5061",["hlc_20Rnd_762x51_B_fal"]],
		["",[]],
		["RH_p226",["RH_15Rnd_9x19_SIG"]],
		["ItemMap","ItemWatch","ItemCompass","ItemRadio"],[],
		[["RH_15Rnd_9x19_SIG",4],["ACE_EarPlugs",1],["ACE_fieldDressing",5],["ACE_elasticBandage",5],["ACE_packingBandage",5]],
		[["rhs_20rnd_9x39mm_SP5",5],["rhs_mag_m67",1],["SmokeShell",1]],
		[],[]]execVM "framework\equipment\scripts\equipment_server.sqf";
	};
	
	case "badguy_g3a3":
	{
		[(_this select 0), "rhsgref_uniform_tigerstripe","V_BandollierB_rgr","","rhs_beanie_green","G_Bandanna_oli",
		["hlc_rifle_g3a3",["hlc_20rnd_762x51_b_G3"]],
		["",[]],
		["RH_p226",["RH_15Rnd_9x19_SIG"]],
		["ItemMap","ItemWatch","ItemCompass","ItemRadio"],[],
		[["RH_15Rnd_9x19_SIG",3],["ACE_EarPlugs",1],["ACE_fieldDressing",5],["ACE_elasticBandage",5],["ACE_packingBandage",5]],
		[["hlc_20rnd_762x51_b_G3",5],["rhs_mag_m67",1],["SmokeShell",1]],
		[],[]]execVM "framework\equipment\scripts\equipment_server.sqf";
	};
	
	case "badguy_heavy_g3a3":
	{
		[(_this select 0), "My_retexture8","TAC_V_Sheriff_BA_T","","rhs_6b28_green_bala","",
		["hlc_rifle_g3a3",["hlc_20rnd_762x51_b_G3"]],
		["",[]],
		["RH_p226",["RH_15Rnd_9x19_SIG"]],
		["ItemMap","ItemWatch","ItemCompass","ItemRadio"],[],
		[["RH_15Rnd_9x19_SIG",4],["ACE_EarPlugs",1],["ACE_fieldDressing",5],["ACE_elasticBandage",5],["ACE_packingBandage",5]],
		[["hlc_20rnd_762x51_b_G3",5],["rhs_mag_m67",1],["SmokeShell",1]],
		[],[]]execVM "framework\equipment\scripts\equipment_server.sqf";
	};	
	
	case "badguy_mp5a4":
	{
		[(_this select 0), "rhsgref_uniform_tigerstripe","V_BandollierB_rgr","","rhs_beanie_green","G_Bandanna_oli",
		["hlc_smg_mp5a4",["hlc_30Rnd_9x19_B_MP5"]],
		["",[]],
		["RH_p226",["RH_15Rnd_9x19_SIG"]],
		["ItemMap","ItemWatch","ItemCompass","ItemRadio"],[],
		[["RH_15Rnd_9x19_SIG",3],["ACE_EarPlugs",1],["ACE_fieldDressing",5],["ACE_elasticBandage",5],["ACE_packingBandage",5]],
		[["hlc_30Rnd_9x19_B_MP5",7],["rhs_mag_m67",1],["SmokeShell",1]],
		[],[]]execVM "framework\equipment\scripts\equipment_server.sqf";
	};
	
	case "badguy_heavy_mp5a4":
	{
		[(_this select 0), "My_retexture8","TAC_V_Sheriff_BA_T","","rhs_6b28_green_bala","",
		["hlc_smg_mp5a4",["hlc_30Rnd_9x19_B_MP5"]],
		["",[]],
		["RH_p226",["RH_15Rnd_9x19_SIG"]],
		["ItemMap","ItemWatch","ItemCompass","ItemRadio"],[],
		[["RH_15Rnd_9x19_SIG",4],["ACE_EarPlugs",1],["ACE_fieldDressing",5],["ACE_elasticBandage",5],["ACE_packingBandage",5]],
		[["hlc_30Rnd_9x19_B_MP5",7],["rhs_mag_m67",1],["SmokeShell",1]],
		[],[]]execVM "framework\equipment\scripts\equipment_server.sqf";
	};
	
	case "badguy_g36a1":
	{
		[(_this select 0), "rhsgref_uniform_tigerstripe","V_BandollierB_rgr","","rhs_beanie_green","G_Bandanna_oli",
		["hlc_rifle_G36A1",["hlc_30rnd_556x45_EPR_G36"]],
		["",[]],
		["RH_p226",["RH_15Rnd_9x19_SIG"]],
		["ItemMap","ItemWatch","ItemCompass","ItemRadio"],[],
		[["RH_15Rnd_9x19_SIG",3],["ACE_EarPlugs",1],["ACE_fieldDressing",5],["ACE_elasticBandage",5],["ACE_packingBandage",5]],
		[["hlc_30rnd_556x45_EPR_G36",8],["rhs_mag_m67",2],["SmokeShell",2]],
		[],[]]execVM "framework\equipment\scripts\equipment_server.sqf";
	};
	
	case "badguy_heavy_g36a1":
	{
		[(_this select 0), "My_retexture8","TAC_V_Sheriff_BA_T","TAC_BP_HSG_GLP3_OD","rhs_6b28_green_bala","",
		["hlc_rifle_G36A1AG36",["hlc_30rnd_556x45_EPR_G36","rhs_mag_M441_HE"]],
		["",[]],
		["RH_p226",["RH_15Rnd_9x19_SIG"]],
		["ItemMap","ItemWatch","ItemCompass","ItemRadio"],[],
		[["RH_15Rnd_9x19_SIG",4],["ACE_EarPlugs",1],["ACE_fieldDressing",5],["ACE_elasticBandage",5],["ACE_packingBandage",5]],
		[["hlc_30rnd_556x45_EPR_G36",8],["rhs_mag_m67",2],["SmokeShell",2]],
		[["rhs_mag_M441_HE",8],["rhs_mag_M433_HEDP",4]],[]]execVM "framework\equipment\scripts\equipment_server.sqf";
	};
	
	case "badguy_k98k":
	{
		[(_this select 0), "rhsgref_uniform_tigerstripe","V_BandollierB_rgr","","rhs_beanie_green","G_Bandanna_oli",
		["rhs_weap_kar98k",["rhsgref_5Rnd_792x57_kar98k"]],
		["",[]],
		["RH_p226",["RH_15Rnd_9x19_SIG"]],
		["ItemMap","ItemWatch","ItemCompass","ItemRadio"],[],
		[["RH_15Rnd_9x19_SIG",3],["ACE_EarPlugs",1],["ACE_fieldDressing",5],["ACE_elasticBandage",5],["ACE_packingBandage",5]],
		[["rhsgref_5Rnd_792x57_kar98k",6]],
		[],[]]execVM "framework\equipment\scripts\equipment_server.sqf";
	};
	
	case "badguy_heavy_k98k":
	{
		[(_this select 0), "My_retexture8","TAC_V_Sheriff_BA_T","","rhs_6b28_green_bala","",
		["rhs_weap_kar98k",["rhsgref_5Rnd_792x57_kar98k"]],
		["",[]],
		["RH_p226",["RH_15Rnd_9x19_SIG"]],
		["ItemMap","ItemWatch","ItemCompass","ItemRadio"],[],
		[["RH_15Rnd_9x19_SIG",4],["ACE_EarPlugs",1],["ACE_fieldDressing",5],["ACE_elasticBandage",5],["ACE_packingBandage",5]],
		[["rhsgref_5Rnd_792x57_kar98k",6]],
		[],[]]execVM "framework\equipment\scripts\equipment_server.sqf";
	};
	
	//##### Maschineguns #####//
	case "badguy_minimi":
	{
		[(_this select 0), "rhsgref_uniform_tigerstripe","V_BandollierB_rgr","","rhs_beanie_green","G_Bandanna_oli",
		["hlc_lmg_minimipara",["hlc_200rnd_556x45_M_SAW"]],
		["",[]],
		["RH_p226",["RH_15Rnd_9x19_SIG"]],
		["ItemMap","ItemWatch","ItemCompass","ItemRadio"],[],
		[["RH_15Rnd_9x19_SIG",3],["ACE_EarPlugs",1],["ACE_fieldDressing",5],["ACE_elasticBandage",5],["ACE_packingBandage",5]],
		[["hlc_200rnd_556x45_M_SAW",1],["rhs_mag_m67",3],["SmokeShell",2]],
		[],[]]execVM "framework\equipment\scripts\equipment_server.sqf";
	};
	
	case "badguy_heavy_minimi":
	{
		[(_this select 0), "My_retexture8","TAC_V_Sheriff_BA_T","","rhs_6b28_green_bala","",
		["hlc_lmg_minimipara",["hlc_200rnd_556x45_M_SAW"]],
		["",[]],
		["RH_p226",["RH_15Rnd_9x19_SIG"]],
		["ItemMap","ItemWatch","ItemCompass","ItemRadio"],[],
		[["RH_15Rnd_9x19_SIG",4],["ACE_EarPlugs",1],["ACE_fieldDressing",5],["ACE_elasticBandage",5],["ACE_packingBandage",5]],
		[["hlc_200rnd_556x45_M_SAW",1],["rhs_mag_m67",3],["SmokeShell",2]],
		[],[]]execVM "framework\equipment\scripts\equipment_server.sqf";
	};
				
	//default empty
	default
	{
		[(_this select 0), "","","","","",["",[]],["",[]],["",[]],[],[],[],[],[],[]]execVM "framework\equipment\scripts\equipment_server.sqf";
	};
};