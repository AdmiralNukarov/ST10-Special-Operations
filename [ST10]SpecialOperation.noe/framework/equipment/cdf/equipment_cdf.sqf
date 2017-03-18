//////////////////////////////////////////////////////////////////
// Function file for Armed Assault
// Created by: Nuka [www.sealteam10.de]
//////////////////////////////////////////////////////////////////

//_null = [unit, type equipment, bool backpack]execVM "framework\equipment\cdf\equipment_cdf.sqf";

/*
	scopes:
*/

_primaryItems = if(count _this > 3) then{_this select 3} else{[]};
_secondaryItems = if(count _this > 4) then{_this select 4} else{[]};
_handgunItems = if(count _this > 5) then{_this select 5} else{[]};

(_this select 0) setVariable ["BIS_enableRandomization", false];

switch(_this select 1) do
{	
	case "cdf_rifleman_ak74m":
	{
		if(_this select 2) then
		{
			[(_this select 0),"rhsgref_uniform_ttsko_mountain","rhsgref_6b23_ttsko_mountain_rifleman","rhs_sidor","rhsgref_6b27m_ttsko_mountain","",
			["rhs_weap_ak74m_plummag",(["rhs_30Rnd_545x39_AK"] + _primaryItems)],
			["",_secondaryItems],
			["",_handgunItems],
			["ItemMap","ItemCompass","ItemWatch","ItemRadio"],[],
			[["ACE_fieldDressing",2],["ACE_elasticBandage",2],["ACE_packingBandage",2],["ACE_EarPlugs",1],["rhs_mag_rgd5",2],["SmokeShell",2]],
			[["rhs_30Rnd_545x39_AK",6],["rhs_mag_rgd5",2]],
			[["rhs_30Rnd_545x39_AK",6],["rhs_mag_rgd5",2]],
			[]]execVM "framework\equipment\scripts\equipment_server.sqf";
		}
		else
		{
			[(_this select 0),"rhsgref_uniform_ttsko_mountain","rhsgref_6b23_ttsko_mountain_rifleman","","rhsgref_6b27m_ttsko_mountain","",
			["rhs_weap_ak74m_plummag",(["rhs_30Rnd_545x39_AK"] + _primaryItems)],
			["",_secondaryItems],
			["",_handgunItems],
			["ItemMap","ItemCompass","ItemWatch","ItemRadio"],[],
			[["ACE_fieldDressing",2],["ACE_elasticBandage",2],["ACE_packingBandage",2],["ACE_EarPlugs",1],["rhs_mag_rgd5",2],["SmokeShell",2]],
			[["rhs_30Rnd_545x39_AK",6],["rhs_mag_rgd5",2]],
			[],[]]execVM "framework\equipment\scripts\equipment_server.sqf";
		};
	};

	case "cdf_grenadier_ak74mgl":
	{
		if(_this select 2) then
		{
			[(_this select 0),"rhsgref_uniform_ttsko_mountain","rhsgref_6b23_ttsko_mountain_rifleman","rhs_sidor","rhsgref_6b27m_ttsko_mountain","",
			["rhs_weap_ak74m_fullplum_gp25",(["rhs_30Rnd_545x39_AK","hlc_VOG25_AK"] + _primaryItems)],
			["",_secondaryItems],
			["",_handgunItems],
			["ItemMap","ItemCompass","ItemWatch","ItemRadio"],[],
			[["ACE_fieldDressing",2],["ACE_elasticBandage",2],["ACE_packingBandage",2],["ACE_EarPlugs",1],["rhs_mag_rgd5",2],["SmokeShell",2]],
			[["rhs_30Rnd_545x39_AK",5],["rhs_mag_rgd5",2],["rhs_VOG25",6]],
			[["rhs_30Rnd_545x39_AK",6],["rhs_mag_rgd5",2],["rhs_VOG25",4]],
			[]]execVM "framework\equipment\scripts\equipment_server.sqf";
		}
		else
		{
			[(_this select 0),"rhsgref_uniform_ttsko_mountain","rhsgref_6b23_ttsko_mountain_rifleman","","rhsgref_6b27m_ttsko_mountain","",
			["rhs_weap_ak74m_fullplum_gp25",(["rhs_30Rnd_545x39_AK","hlc_VOG25_AK"] + _primaryItems)],
			["",_secondaryItems],
			["",_handgunItems],
			["ItemMap","ItemCompass","ItemWatch","ItemRadio"],[],
			[["ACE_fieldDressing",2],["ACE_elasticBandage",2],["ACE_packingBandage",2],["ACE_EarPlugs",1],["rhs_mag_rgd5",2],["SmokeShell",2]],
			[["rhs_30Rnd_545x39_AK",5],["rhs_mag_rgd5",2],["rhs_VOG25",6]],
			[],[]]execVM "framework\equipment\scripts\equipment_server.sqf";
		};
	};

	case "cdf_antitank_ak74m_rpg7v":
	{

		[(_this select 0),"rhsgref_uniform_ttsko_mountain","rhsgref_6b23_ttsko_mountain_rifleman","rhs_rpg_empty","rhsgref_6b27m_ttsko_mountain","",
		["rhs_weap_ak74m_plummag",(["rhs_30Rnd_545x39_AK"] + _primaryItems)],
		["rhs_weap_rpg7",(["rhs_acc_pgo7v","rhs_rpg7_PG7VL_mag"] + _secondaryItems)],
		["",_handgunItems],
		["ItemMap","ItemCompass","ItemWatch","ItemRadio"],[],
		[["ACE_fieldDressing",2],["ACE_elasticBandage",2],["ACE_packingBandage",2],["ACE_EarPlugs",1],["rhs_mag_rgd5",2],["SmokeShell",2]],
		[["rhs_30Rnd_545x39_AK",6],["rhs_mag_rgd5",2]],
		[["rhs_rpg7_PG7VL_mag",2],["rhs_rpg7_OG7V_mag",2]],
		[]]execVM "framework\equipment\scripts\equipment_server.sqf";
	};

	case "cdf_maschinegunner_pkm":
	{
		if(_this select 2) then
		{
			[(_this select 0),"rhsgref_uniform_ttsko_mountain","rhsgref_6b23_ttsko_mountain","rhs_sidor","rhsgref_6b27m_ttsko_mountain","",
			["rhs_weap_pkm",(["rhs_100Rnd_762x54mmR"] + _primaryItems)],
			["",_secondaryItems],
			["",_handgunItems],
			["ItemMap","ItemCompass","ItemWatch","ItemRadio"],[],
			[["ACE_fieldDressing",2],["ACE_elasticBandage",2],["ACE_packingBandage",2],["ACE_EarPlugs",1],["rhs_mag_rgd5",2],["SmokeShell",2]],
			[["rhs_100Rnd_762x54mmR",1],["rhs_mag_rgd5",2]],
			[["rhs_100Rnd_762x54mmR",3]],
			[]]execVM "framework\equipment\scripts\equipment_server.sqf";
		}
		else
		{
			[(_this select 0),"rhsgref_uniform_ttsko_mountain","rhsgref_6b23_ttsko_mountain","","rhsgref_6b27m_ttsko_mountain","",
			["rhs_weap_pkm",(["rhs_100Rnd_762x54mmR"] + _primaryItems)],
			["",_secondaryItems],
			["",_handgunItems],
			["ItemMap","ItemCompass","ItemWatch","ItemRadio"],[],
			[["ACE_fieldDressing",2],["ACE_elasticBandage",2],["ACE_packingBandage",2],["ACE_EarPlugs",1],["rhs_mag_rgd5",2],["SmokeShell",2]],
			[["rhs_100Rnd_762x54mmR",1],["rhs_mag_rgd5",2]],
			[],[]]execVM "framework\equipment\scripts\equipment_server.sqf";
		};
	};

	case "cdf_auromaticrifleman_rpk74":
	{
		if(_this select 2) then
		{
			[(_this select 0),"rhsgref_uniform_ttsko_mountain","rhsgref_6b23_ttsko_mountain","rhs_sidor","rhsgref_6b27m_ttsko_mountain","",
			["hlc_rifle_rpk74n",(["hlc_45Rnd_545x39_t_rpk"] + _primaryItems)],
			["",_secondaryItems],
			["",_handgunItems],
			["ItemMap","ItemCompass","ItemWatch","ItemRadio"],[],
			[["ACE_fieldDressing",2],["ACE_elasticBandage",2],["ACE_packingBandage",2],["ACE_EarPlugs",1],["rhs_mag_rgd5",2],["SmokeShell",2]],
			[["hlc_45Rnd_545x39_t_rpk",4],["rhs_mag_rgd5",2]],
			[["hlc_45Rnd_545x39_t_rpk",10],["rhs_mag_rgd5",2]],
			[]]execVM "framework\equipment\scripts\equipment_server.sqf";
		}
		else
		{
			[(_this select 0),"rhsgref_uniform_ttsko_mountain","rhsgref_6b23_ttsko_mountain","","rhsgref_6b27m_ttsko_mountain","",
			["hlc_rifle_rpk74n",(["hlc_45Rnd_545x39_t_rpk"] + _primaryItems)],
			["",_secondaryItems],
			["",_handgunItems],
			["ItemMap","ItemCompass","ItemWatch","ItemRadio"],[],
			[["ACE_fieldDressing",2],["ACE_elasticBandage",2],["ACE_packingBandage",2],["ACE_EarPlugs",1],["rhs_mag_rgd5",2],["SmokeShell",2]],
			[["hlc_45Rnd_545x39_t_rpk",4],["rhs_mag_rgd5",2]],
			[],[]]execVM "framework\equipment\scripts\equipment_server.sqf";
		};
	};

	case "cdf_nco_ak74m":
	{
		if(_this select 2) then
		{
			[(_this select 0),"rhsgref_uniform_ttsko_mountain","rhsgref_6b23_ttsko_mountain_nco","rhs_sidor","rhsgref_6b27m_ttsko_mountain","",
			["rhs_weap_ak74m_plummag",(["rhs_30Rnd_545x39_AK"] + _primaryItems)],
			["",_secondaryItems],
			["",_handgunItems],
			["ItemMap","ItemCompass","ItemWatch","ItemRadio"],["Binocular"],
			[["ACE_fieldDressing",2],["ACE_elasticBandage",2],["ACE_packingBandage",2],["ACE_EarPlugs",1],["rhs_mag_rgd5",2],["SmokeShell",2]],
			[["rhs_30Rnd_545x39_AK",4],["rhs_mag_rgd5",2]],
			[["rhs_30Rnd_545x39_AK",6],["rhs_mag_rgd5",2]],
			[]]execVM "framework\equipment\scripts\equipment_server.sqf";
		}
		else
		{
			[(_this select 0),"rhsgref_uniform_ttsko_mountain","rhsgref_6b23_ttsko_mountain_nco","","rhsgref_6b27m_ttsko_mountain","",
			["rhs_weap_ak74m_plummag",(["rhs_30Rnd_545x39_AK"] + _primaryItems)],
			["",_secondaryItems],
			["",_handgunItems],
			["ItemMap","ItemCompass","ItemWatch","ItemRadio"],["Binocular"],
			[["ACE_fieldDressing",2],["ACE_elasticBandage",2],["ACE_packingBandage",2],["ACE_EarPlugs",1],["rhs_mag_rgd5",2],["SmokeShell",2]],
			[["rhs_30Rnd_545x39_AK",6],["rhs_mag_rgd5",2]],
			[],[]]execVM "framework\equipment\scripts\equipment_server.sqf";
		};
	};

	case "cdf_antiair_ak74m_igla":
	{
		[(_this select 0),"rhsgref_uniform_ttsko_mountain","rhsgref_6b23_ttsko_mountain_rifleman","","rhsgref_6b27m_ttsko_mountain","",
		["rhs_weap_ak74m_plummag",(["rhs_30Rnd_545x39_AK"] + _primaryItems)],
		["rhs_weap_igla",(["rhs_mag_9k38_rocket"] + _secondaryItems)],
		["",_handgunItems],
		["ItemMap","ItemCompass","ItemWatch","ItemRadio"],[],
		[["ACE_fieldDressing",2],["ACE_elasticBandage",2],["ACE_packingBandage",2],["ACE_EarPlugs",1],["rhs_mag_rgd5",2],["SmokeShell",2]],
		[["rhs_30Rnd_545x39_AK",6],["rhs_mag_rgd5",2]],
		[],[]]execVM "framework\equipment\scripts\equipment_server.sqf";
	};

	case "cdf_marksman_svd":
	{
		if(_this select 2) then
		{
			[(_this select 0),"rhsgref_uniform_ttsko_mountain","rhsgref_6b23_ttsko_mountain_sniper","rhs_sidor","rhsgref_6b27m_ttsko_mountain","",
			["rhs_weap_svdp",(["rhs_10Rnd_762x54mmR_7N1","rhs_acc_pso1m2"] + _primaryItems)],
			["",_secondaryItems],
			["",_handgunItems],
			["ItemMap","ItemCompass","ItemWatch","ItemRadio"],[],
			[["ACE_fieldDressing",2],["ACE_elasticBandage",2],["ACE_packingBandage",2],["ACE_EarPlugs",1],["rhs_mag_rgd5",2],["SmokeShell",2]],
			[["rhs_10Rnd_762x54mmR_7N1",10],["rhs_mag_rgd5",2]],
			[["rhs_10Rnd_762x54mmR_7N1",10],["rhs_mag_rgd5",4],["SmokeShell",4]],
			[]]execVM "framework\equipment\scripts\equipment_server.sqf";
		}
		else
		{
			[(_this select 0),"rhsgref_uniform_ttsko_mountain","rhsgref_6b23_ttsko_mountain_sniper","","rhsgref_6b27m_ttsko_mountain","",
			["rhs_weap_svdp",(["rhs_10Rnd_762x54mmR_7N1","rhs_acc_pso1m2"] + _primaryItems)],
			["",_secondaryItems],
			["",_handgunItems],
			["ItemMap","ItemCompass","ItemWatch","ItemRadio"],[],
			[["ACE_fieldDressing",2],["ACE_elasticBandage",2],["ACE_packingBandage",2],["ACE_EarPlugs",1],["rhs_mag_rgd5",2],["SmokeShell",2]],
			[["rhs_10Rnd_762x54mmR_7N1",10],["rhs_mag_rgd5",2]],
			[],[]]execVM "framework\equipment\scripts\equipment_server.sqf";
		};
	};

	case "cdf_medic_ak74m":
	{
		if(_this select 2) then
		{
			[(_this select 0),"rhsgref_uniform_ttsko_mountain","rhsgref_6b23_ttsko_mountain_medic","rhs_sidor","rhsgref_6b27m_ttsko_mountain","",
			["rhs_weap_ak74m_plummag",(["rhs_30Rnd_545x39_AK"] + _primaryItems)],
			["",_secondaryItems],
			["",_handgunItems],
			["ItemMap","ItemCompass","ItemWatch","ItemRadio"],[],
			[["ACE_fieldDressing",2],["ACE_elasticBandage",2],["ACE_packingBandage",2],["ACE_EarPlugs",1],["rhs_mag_rgd5",2],["SmokeShell",2]],
			[["rhs_30Rnd_545x39_AK",8],["rhs_mag_rgd5",2]],
			[["ACE_fieldDressing",30],["ACE_elasticBandage",30],["ACE_packingBandage",30],["ACE_epinephrine",5],["ACE_morphine",10],["ACE_quikclot",5],["ACE_bloodIV_500",2],["ACE_personalAidKit",2]],
			[]]execVM "framework\equipment\scripts\equipment_server.sqf";
		}
		else
		{
			[(_this select 0),"rhsgref_uniform_ttsko_mountain","rhsgref_6b23_ttsko_mountain_medic","","rhsgref_6b27m_ttsko_mountain","",
			["rhs_weap_ak74m_plummag",(["rhs_30Rnd_545x39_AK"] + _primaryItems)],
			["",_secondaryItems],
			["",_handgunItems],
			["ItemMap","ItemCompass","ItemWatch","ItemRadio"],[],
			[["ACE_fieldDressing",2],["ACE_elasticBandage",2],["ACE_packingBandage",2],["ACE_EarPlugs",1],["rhs_mag_rgd5",2],["SmokeShell",2]],
			[["rhs_30Rnd_545x39_AK",8],["rhs_mag_rgd5",2]],
			[],[]]execVM "framework\equipment\scripts\equipment_server.sqf";
		};
	};
	
	case "cdf_rifleman_light_aks74u":
	{

		[(_this select 0),"rhsgref_uniform_ttsko_mountain","rhs_vydra_3m","","rhsgref_fieldcap_ttsko_mountain","",
		["rhs_weap_aks74u",(["rhs_30Rnd_545x39_AK"] + _primaryItems)],
		["",_secondaryItems],
		["",_handgunItems],
		["ItemMap","ItemCompass","ItemWatch","ItemRadio"],[],
		[["ACE_fieldDressing",2],["ACE_elasticBandage",2],["ACE_packingBandage",2],["ACE_EarPlugs",1],["rhs_mag_rgd5",2],["SmokeShell",2]],
		[["rhs_30Rnd_545x39_AK",6]],
		[],[]]execVM "framework\equipment\scripts\equipment_server.sqf";
	};
	
	case "cdf_crewman_aks74u":
	{

		[(_this select 0),"rhsgref_uniform_ttsko_mountain","rhs_vydra_3m","","rhs_tsh4","",
		["rhs_weap_aks74u",(["rhs_30Rnd_545x39_AK"] + _primaryItems)],
		["",_secondaryItems],
		["",_handgunItems],
		["ItemMap","ItemCompass","ItemWatch","ItemRadio"],[],
		[["ACE_fieldDressing",2],["ACE_elasticBandage",2],["ACE_packingBandage",2],["ACE_EarPlugs",1],["rhs_mag_rgd5",2],["SmokeShell",2]],
		[["rhs_30Rnd_545x39_AK",6]],
		[],[]]execVM "framework\equipment\scripts\equipment_server.sqf";
	};
	
	case "cdf_pilot_makarov":
	{
		[(_this select 0),"rhsgref_uniform_ttsko_mountain","","","rhs_zsh7a_mike","",
		["",_primaryItems],
		["",_secondaryItems],
		["RH_mak",(["RH_8Rnd_9x18_Mak"] + _handgunItems)],
		["ItemMap","ItemCompass","ItemWatch"],[],
		[["RH_8Rnd_9x18_Mak",2],["SmokeShellRed",2],["SmokeShellGreen",2],["SmokeShell",2]],
		[],[],[]]execVM "framework\equipment\scripts\equipment_server.sqf";
	};

	case "cdf_para_rifleman_ak74m":
	{
		if(_this select 2) then
		{
			[(_this select 0),"rhsgref_uniform_para_ttsko_oxblood","rhsgref_6b23_ttsko_digi_rifleman","rhs_sidor","rhsgref_6b27m_ttsko_digi","",
			["rhs_weap_ak74m_plummag",(["rhs_30Rnd_545x39_AK"] + _primaryItems)],
			["",_secondaryItems],
			["",_handgunItems],
			["ItemMap","ItemCompass","ItemWatch","ItemRadio"],[],
			[["ACE_fieldDressing",2],["ACE_elasticBandage",2],["ACE_packingBandage",2],["ACE_EarPlugs",1],["rhs_mag_rgd5",2],["SmokeShell",2]],
			[["rhs_30Rnd_545x39_AK",6],["rhs_mag_rgd5",2]],
			[["rhs_30Rnd_545x39_AK",6],["rhs_mag_rgd5",2]],
			[]]execVM "framework\equipment\scripts\equipment_server.sqf";
		}
		else
		{
			[(_this select 0),"rhsgref_uniform_para_ttsko_oxblood","rhsgref_6b23_ttsko_digi_rifleman","","rhsgref_6b27m_ttsko_digi","",
			["rhs_weap_ak74m_plummag",(["rhs_30Rnd_545x39_AK"] + _primaryItems)],
			["",_secondaryItems],
			["",_handgunItems],
			["ItemMap","ItemCompass","ItemWatch","ItemRadio"],[],
			[["ACE_fieldDressing",2],["ACE_elasticBandage",2],["ACE_packingBandage",2],["ACE_EarPlugs",1],["rhs_mag_rgd5",2],["SmokeShell",2]],
			[["rhs_30Rnd_545x39_AK",6],["rhs_mag_rgd5",2]],
			[],[]]execVM "framework\equipment\scripts\equipment_server.sqf";
		};
	};
	
	case "cdf_para_grenadier_ak74mgl":
	{
		if(_this select 2) then
		{
			[(_this select 0),"rhsgref_uniform_para_ttsko_oxblood","rhsgref_6b23_ttsko_digi_rifleman","rhs_sidor","rhsgref_6b27m_ttsko_digi","",
			["rhs_weap_ak74m_fullplum_gp25",(["rhs_30Rnd_545x39_AK","hlc_VOG25_AK"] + _primaryItems)],
			["",_secondaryItems],
			["",_handgunItems],
			["ItemMap","ItemCompass","ItemWatch","ItemRadio"],[],
			[["ACE_fieldDressing",2],["ACE_elasticBandage",2],["ACE_packingBandage",2],["ACE_EarPlugs",1],["rhs_mag_rgd5",2],["SmokeShell",2]],
			[["rhs_30Rnd_545x39_AK",5],["rhs_mag_rgd5",2],["rhs_VOG25",6]],
			[["rhs_30Rnd_545x39_AK",6],["rhs_mag_rgd5",2],["rhs_VOG25",4]],
			[]]execVM "framework\equipment\scripts\equipment_server.sqf";
		}
		else
		{
			[(_this select 0),"rhsgref_uniform_para_ttsko_oxblood","rhsgref_6b23_ttsko_digi_rifleman","","rhsgref_6b27m_ttsko_digi","",
			["rhs_weap_ak74m_fullplum_gp25",(["rhs_30Rnd_545x39_AK","hlc_VOG25_AK"] + _primaryItems)],
			["",_secondaryItems],
			["",_handgunItems],
			["ItemMap","ItemCompass","ItemWatch","ItemRadio"],[],
			[["ACE_fieldDressing",2],["ACE_elasticBandage",2],["ACE_packingBandage",2],["ACE_EarPlugs",1],["rhs_mag_rgd5",2],["SmokeShell",2]],
			[["rhs_30Rnd_545x39_AK",5],["rhs_mag_rgd5",2],["rhs_VOG25",6]],
			[],[]]execVM "framework\equipment\scripts\equipment_server.sqf";
		};
	};

	case "cdf_para_antitank_ak74m_rpg7v":
	{

		[(_this select 0),"rhsgref_uniform_para_ttsko_oxblood","rhsgref_6b23_ttsko_digi_rifleman","rhs_rpg_empty","rhsgref_6b27m_ttsko_digi","",
		["rhs_weap_ak74m_plummag",(["rhs_30Rnd_545x39_AK"] + _primaryItems)],
		["rhs_weap_rpg7",(["rhs_acc_pgo7v","rhs_rpg7_PG7VL_mag"] + _secondaryItems)],
		["",_handgunItems],
		["ItemMap","ItemCompass","ItemWatch","ItemRadio"],[],
		[["ACE_fieldDressing",2],["ACE_elasticBandage",2],["ACE_packingBandage",2],["ACE_EarPlugs",1],["rhs_mag_rgd5",2],["SmokeShell",2]],
		[["rhs_30Rnd_545x39_AK",6],["rhs_mag_rgd5",2]],
		[["rhs_rpg7_PG7VL_mag",2],["rhs_rpg7_OG7V_mag",2]],
		[]]execVM "framework\equipment\scripts\equipment_server.sqf";
	};

	case "cdf_para_maschinegunner_pkm":
	{
		if(_this select 2) then
		{
			[(_this select 0),"rhsgref_uniform_para_ttsko_oxblood","rhsgref_6b23_ttsko_digi","rhs_sidor","rhsgref_6b27m_ttsko_digi","",
			["rhs_weap_pkm",(["rhs_100Rnd_762x54mmR"] + _primaryItems)],
			["",_secondaryItems],
			["",_handgunItems],
			["ItemMap","ItemCompass","ItemWatch","ItemRadio"],[],
			[["ACE_fieldDressing",2],["ACE_elasticBandage",2],["ACE_packingBandage",2],["ACE_EarPlugs",1],["rhs_mag_rgd5",2],["SmokeShell",2]],
			[["rhs_100Rnd_762x54mmR",1],["rhs_mag_rgd5",2]],
			[["rhs_100Rnd_762x54mmR",3]],
			[]]execVM "framework\equipment\scripts\equipment_server.sqf";
		}
		else
		{
			[(_this select 0),"rhsgref_uniform_para_ttsko_oxblood","rhsgref_6b23_ttsko_digi","","rhsgref_6b27m_ttsko_digi","",
			["rhs_weap_pkm",(["rhs_100Rnd_762x54mmR"] + _primaryItems)],
			["",_secondaryItems],
			["",_handgunItems],
			["ItemMap","ItemCompass","ItemWatch","ItemRadio"],[],
			[["ACE_fieldDressing",2],["ACE_elasticBandage",2],["ACE_packingBandage",2],["ACE_EarPlugs",1],["rhs_mag_rgd5",2],["SmokeShell",2]],
			[["rhs_100Rnd_762x54mmR",1],["rhs_mag_rgd5",2]],
			[],[]]execVM "framework\equipment\scripts\equipment_server.sqf";
		};
	};

	case "cdf_para_auromaticrifleman_rpk74":
	{
		if(_this select 2) then
		{
			[(_this select 0),"rhsgref_uniform_para_ttsko_oxblood","rhsgref_6b23_ttsko_digi","rhs_sidor","rhsgref_6b27m_ttsko_digi","",
			["hlc_rifle_rpk74n",(["hlc_45Rnd_545x39_t_rpk"] + _primaryItems)],
			["",_secondaryItems],
			["",_handgunItems],
			["ItemMap","ItemCompass","ItemWatch","ItemRadio"],[],
			[["ACE_fieldDressing",2],["ACE_elasticBandage",2],["ACE_packingBandage",2],["ACE_EarPlugs",1],["rhs_mag_rgd5",2],["SmokeShell",2]],
			[["hlc_45Rnd_545x39_t_rpk",4],["rhs_mag_rgd5",2]],
			[["hlc_45Rnd_545x39_t_rpk",10],["rhs_mag_rgd5",2]],
			[]]execVM "framework\equipment\scripts\equipment_server.sqf";
		}
		else
		{
			[(_this select 0),"rhsgref_uniform_para_ttsko_oxblood","rhsgref_6b23_ttsko_digi","","rhsgref_6b27m_ttsko_digi","",
			["hlc_rifle_rpk74n",(["rhs_30Rnd_545x39_AK"] + _primaryItems)],
			["",_secondaryItems],
			["",_handgunItems],
			["ItemMap","ItemCompass","ItemWatch","ItemRadio"],[],
			[["ACE_fieldDressing",2],["ACE_elasticBandage",2],["ACE_packingBandage",2],["ACE_EarPlugs",1],["rhs_mag_rgd5",2],["SmokeShell",2]],
			[["hlc_45Rnd_545x39_t_rpk",4],["rhs_mag_rgd5",2]],
			[],[]]execVM "framework\equipment\scripts\equipment_server.sqf";
		};
	};

	case "cdf_para_nco_ak74m":
	{
		if(_this select 2) then
		{
			[(_this select 0),"rhsgref_uniform_para_ttsko_oxblood","rhsgref_6b23_ttsko_digi_nco","rhs_sidor","rhsgref_6b27m_ttsko_digi","",
			["rhs_weap_ak74m_plummag",(["rhs_30Rnd_545x39_AK"] + _primaryItems)],
			["",_secondaryItems],
			["",_handgunItems],
			["ItemMap","ItemCompass","ItemWatch","ItemRadio"],["Binocular"],
			[["ACE_fieldDressing",2],["ACE_elasticBandage",2],["ACE_packingBandage",2],["ACE_EarPlugs",1],["rhs_mag_rgd5",2],["SmokeShell",2]],
			[["rhs_30Rnd_545x39_AK",4],["rhs_mag_rgd5",2]],
			[["rhs_30Rnd_545x39_AK",6],["rhs_mag_rgd5",2]],
			[]]execVM "framework\equipment\scripts\equipment_server.sqf";
		}
		else
		{
			[(_this select 0),"rhsgref_uniform_para_ttsko_oxblood","rhsgref_6b23_ttsko_digi_nco","","rhsgref_6b27m_ttsko_digi","",
			["rhs_weap_ak74m_plummag",(["rhs_30Rnd_545x39_AK"] + _primaryItems)],
			["",_secondaryItems],
			["",_handgunItems],
			["ItemMap","ItemCompass","ItemWatch","ItemRadio"],["Binocular"],
			[["ACE_fieldDressing",2],["ACE_elasticBandage",2],["ACE_packingBandage",2],["ACE_EarPlugs",1],["rhs_mag_rgd5",2],["SmokeShell",2]],
			[["rhs_30Rnd_545x39_AK",6],["rhs_mag_rgd5",2]],
			[],[]]execVM "framework\equipment\scripts\equipment_server.sqf";
		};
	};

	case "cdf_para_antiair_ak74m_igla":
	{
		[(_this select 0),"rhsgref_uniform_para_ttsko_oxblood","rhsgref_6b23_ttsko_digi_rifleman","","rhsgref_6b27m_ttsko_digi","",
		["rhs_weap_ak74m_plummag",(["rhs_30Rnd_545x39_AK"] + _primaryItems)],
		["rhs_weap_igla",(["rhs_mag_9k38_rocket"] + _secondaryItems)],
		["",_handgunItems],
		["ItemMap","ItemCompass","ItemWatch","ItemRadio"],[],
		[["ACE_fieldDressing",2],["ACE_elasticBandage",2],["ACE_packingBandage",2],["ACE_EarPlugs",1],["rhs_mag_rgd5",2],["SmokeShell",2]],
		[["rhs_30Rnd_545x39_AK",6],["rhs_mag_rgd5",2]],
		[],[]]execVM "framework\equipment\scripts\equipment_server.sqf";
	};

	case "cdf_para_marksman_svd":
	{
		if(_this select 2) then
		{
			[(_this select 0),"rhsgref_uniform_para_ttsko_oxblood","rhsgref_6b23_ttsko_digi_sniper","rhs_sidor","rhsgref_6b27m_ttsko_digi","",
			["rhs_weap_svdp",(["rhs_10Rnd_762x54mmR_7N1","rhs_acc_pso1m2"] + _primaryItems)],
			["",_secondaryItems],
			["",_handgunItems],
			["ItemMap","ItemCompass","ItemWatch","ItemRadio"],[],
			[["ACE_fieldDressing",2],["ACE_elasticBandage",2],["ACE_packingBandage",2],["ACE_EarPlugs",1],["rhs_mag_rgd5",2],["SmokeShell",2]],
			[["rhs_10Rnd_762x54mmR_7N1",10],["rhs_mag_rgd5",2]],
			[["rhs_10Rnd_762x54mmR_7N1",10],["rhs_mag_rgd5",4],["SmokeShell",4]],
			[]]execVM "framework\equipment\scripts\equipment_server.sqf";
		}
		else
		{
			[(_this select 0),"rhsgref_uniform_para_ttsko_oxblood","rhsgref_6b23_ttsko_digi_sniper","","rhsgref_6b27m_ttsko_digi","",
			["rhs_weap_svdp",(["rhs_10Rnd_762x54mmR_7N1","rhs_acc_pso1m2"] + _primaryItems)],
			["",_secondaryItems],
			["",_handgunItems],
			["ItemMap","ItemCompass","ItemWatch","ItemRadio"],[],
			[["ACE_fieldDressing",2],["ACE_elasticBandage",2],["ACE_packingBandage",2],["ACE_EarPlugs",1],["rhs_mag_rgd5",2],["SmokeShell",2]],
			[["rhs_10Rnd_762x54mmR_7N1",10],["rhs_mag_rgd5",2]],
			[],[]]execVM "framework\equipment\scripts\equipment_server.sqf";
		};
	};

	case "cdf_para_medic_ak74m":
	{
		if(_this select 2) then
		{
			[(_this select 0),"rhsgref_uniform_para_ttsko_oxblood","rhsgref_6b23_ttsko_digi_medic","rhs_sidor","rhsgref_6b27m_ttsko_digi","",
			["rhs_weap_ak74m_plummag",(["rhs_30Rnd_545x39_AK"] + _primaryItems)],
			["",_secondaryItems],
			["",_handgunItems],
			["ItemMap","ItemCompass","ItemWatch","ItemRadio"],[],
			[["ACE_fieldDressing",2],["ACE_elasticBandage",2],["ACE_packingBandage",2],["ACE_EarPlugs",1],["rhs_mag_rgd5",2],["SmokeShell",2]],
			[["rhs_30Rnd_545x39_AK",8],["rhs_mag_rgd5",2]],
			[["ACE_fieldDressing",30],["ACE_elasticBandage",30],["ACE_packingBandage",30],["ACE_epinephrine",5],["ACE_morphine",10],["ACE_quikclot",5],["ACE_bloodIV_500",2],["ACE_personalAidKit",2]],
			[]]execVM "framework\equipment\scripts\equipment_server.sqf";
		}
		else
		{
			[(_this select 0),"rhsgref_uniform_para_ttsko_oxblood","rhsgref_6b23_ttsko_digi_medic","","rhsgref_6b27m_ttsko_digi","",
			["rhs_weap_ak74m_plummag",(["rhs_30Rnd_545x39_AK"] + _primaryItems)],
			["",_secondaryItems],
			["",_handgunItems],
			["ItemMap","ItemCompass","ItemWatch","ItemRadio"],[],
			[["ACE_fieldDressing",2],["ACE_elasticBandage",2],["ACE_packingBandage",2],["ACE_EarPlugs",1],["rhs_mag_rgd5",2],["SmokeShell",2]],
			[["rhs_30Rnd_545x39_AK",8],["rhs_mag_rgd5",2]],
			[],[]]execVM "framework\equipment\scripts\equipment_server.sqf";
		};
	};
	
	//default empty
	default
	{
		[(_this select 0), "","","","","",["",[]],["",[]],["",[]],[],[],[],[],[],[]]execVM "framework\equipment\scripts\equipment_server.sqf";
	};
};