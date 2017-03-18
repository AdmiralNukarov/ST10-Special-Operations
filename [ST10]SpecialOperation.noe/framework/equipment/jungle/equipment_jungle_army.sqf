//////////////////////////////////////////////////////////////////
// Function file for Armed Assault
// Created by: Nuka [www.sealteam10.de]
//////////////////////////////////////////////////////////////////

//_null = [unit, type equipment, bool backpack]execVM "framework\equipment\jungle\equipment_jungle_army.sqf";

/*
	scopes:
*/

_primaryItems = if(count _this > 3) then{_this select 3} else{[]};
_secondaryItems = if(count _this > 4) then{_this select 4} else{[]};
_handgunItems = if(count _this > 5) then{_this select 5} else{[]};

(_this select 0) setVariable ["BIS_enableRandomization", false];

switch(_this select 1) do
{	
	case "jungle_crewman_m4a1":
	{
		[(_this select 0),"rhsgref_uniform_woodland","","","rhsusf_cvc_green_helmet","",
		["rhs_weap_m4a1_carryhandle",(["hlc_30rnd_556x45_EPR"] + _primaryItems)],
		["",_secondaryItems],
		["",_handgunItems],
		["ItemCompass","ItemWatch","ItemRadio"],[],
		[["hlc_30rnd_556x45_EPR",4],["ACE_fieldDressing",2],["SmokeShellRed",1],["SmokeShellGreen",1]],
		[],[],[]]execVM "framework\equipment\scripts\equipment_server.sqf";
	};

	case "jungle_pilot_heli_m4a1":
	{
		[(_this select 0),"U_B_HeliPilotCoveralls","","","rhs_gssh18","",
		["rhs_weap_m4a1_carryhandle",(["hlc_30rnd_556x45_EPR"] + _primaryItems)],
		["",_secondaryItems],
		["",_handgunItems],
		["ItemCompass","ItemWatch","ItemRadio"],[],
		[["hlc_30rnd_556x45_EPR",2],["SmokeShellRed",1],["SmokeShellGreen",1]],
		[],[],[]]execVM "framework\equipment\scripts\equipment_server.sqf";
	};

	case "jungle_pilot_jet_m9":
	{
		[(_this select 0),"U_B_PilotCoveralls","","","RHS_jetpilot_usaf","",
		["",_primaryItems],
		["",_secondaryItems],
		["RH_m9",(["RH_15Rnd_9x19_M9"] + _handgunItems)],
		["ItemCompass","ItemWatch","ItemRadio"],[],
		[["RH_15Rnd_9x19_M9",3],["SmokeShellRed",1],["SmokeShellGreen",1]],
		[],[],[]]execVM "framework\equipment\scripts\equipment_server.sqf";
	};
	
	case "jungle_grenadier_m4a1_m203":
	{
		if(_this select 2) then
		{
			[(_this select 0),"rhsgref_uniform_woodland","LOP_V_Chestrig_Kamysh",(selectRandom ["rhssaf_kitbag_md2camo","rhssaf_kitbag_smb"]),(selectRandom ["rhssaf_helmet_m97_md2camo","rhssaf_helmet_m97_olive_nocamo"]),"",
			["rhs_weap_m4a1_carryhandle_m203",(["hlc_30rnd_556x45_EPR","rhs_mag_M441_HE"] + _primaryItems)],
			["",_secondaryItems],
			["",_handgunItems],
			["ItemMap","ItemCompass","ItemWatch"],[],
			[["ACE_fieldDressing",2],["ACE_EarPlugs",1]],
			[["hlc_30rnd_556x45_EPR",8],["rhs_mag_m67",2],["rhs_mag_M441_HE",6],["rhs_mag_m714_White",2],["rhs_mag_m713_Red",2],["rhs_mag_m715_Green",2]],
			[["hlc_30rnd_556x45_EPR",10],["rhs_mag_m67",2],["SmokeShellGreen",2],["SmokeShellRed",2],["SmokeShell",2],["rhs_mag_M441_HE",6],["rhs_mag_m714_White",2],["rhs_mag_m713_Red",2],["rhs_mag_m715_Green",2],["rhs_mag_m716_yellow",2]],
			[]]execVM "framework\equipment\scripts\equipment_server.sqf";
		}
		else
		{
			[(_this select 0),"rhsgref_uniform_woodland","LOP_V_Chestrig_Kamysh","",(selectRandom ["rhssaf_helmet_m97_md2camo","rhssaf_helmet_m97_olive_nocamo"]),"",
			["rhs_weap_m4a1_carryhandle_m203",(["hlc_30rnd_556x45_EPR","rhs_mag_M441_HE"] + _primaryItems)],
			["",_secondaryItems],
			["",_handgunItems],
			["ItemMap","ItemCompass","ItemWatch"],[],
			[["ACE_fieldDressing",2],["ACE_EarPlugs",1]],
			[["hlc_30rnd_556x45_EPR",8],["rhs_mag_m67",2],["rhs_mag_M441_HE",6],["rhs_mag_m714_White",2],["rhs_mag_m713_Red",2],["rhs_mag_m715_Green",2]],
			[],[]]execVM "framework\equipment\scripts\equipment_server.sqf";
		};
	};

	case "jungle_rifleman_m4a1":
	{
		if(_this select 2) then
		{
			[(_this select 0),"rhsgref_uniform_woodland","LOP_V_Chestrig_Kamysh",(selectRandom ["rhssaf_kitbag_md2camo","rhssaf_kitbag_smb"]),(selectRandom ["rhssaf_helmet_m97_md2camo","rhssaf_helmet_m97_olive_nocamo"]),"",
			["rhs_weap_m4a1_carryhandle",(["hlc_30rnd_556x45_EPR"] + _primaryItems)],
			["",_secondaryItems],
			["",_handgunItems],
			["ItemMap","ItemCompass","ItemWatch"],[],
			[["ACE_fieldDressing",2],["ACE_EarPlugs",1]],
			[["hlc_30rnd_556x45_EPR",8],["rhs_mag_m67",2]],
			[["hlc_30rnd_556x45_EPR",10],["rhs_mag_m67",2],["SmokeShellGreen",2],["SmokeShellRed",2],["SmokeShell",2]],
			[]]execVM "framework\equipment\scripts\equipment_server.sqf";
		}
		else
		{
			[(_this select 0),"rhsgref_uniform_woodland","LOP_V_Chestrig_Kamysh","",(selectRandom ["rhssaf_helmet_m97_md2camo","rhssaf_helmet_m97_olive_nocamo"]),"",
			["rhs_weap_m4a1_carryhandle",(["hlc_30rnd_556x45_EPR"] + _primaryItems)],
			["",_secondaryItems],
			["",_handgunItems],
			["ItemMap","ItemCompass","ItemWatch"],[],
			[["ACE_fieldDressing",2],["ACE_EarPlugs",1]],
			[["hlc_30rnd_556x45_EPR",8],["rhs_mag_m67",2]],
			[],[]]execVM "framework\equipment\scripts\equipment_server.sqf";
		};
	};

	case "jungle_maschinegunner_m60a4":
	{
		if(_this select 2) then
		{
			[(_this select 0),"rhsgref_uniform_woodland","LOP_V_Chestrig_Kamysh",(selectRandom ["rhssaf_kitbag_md2camo","rhssaf_kitbag_smb"]),(selectRandom ["rhssaf_helmet_m97_md2camo","rhssaf_helmet_m97_olive_nocamo"]),"",
			["hlc_lmg_M60E4",(["hlc_100Rnd_762x51_M_M60E4"] + _primaryItems)],
			["",_secondaryItems],
			["",_handgunItems],
			["ItemMap","ItemCompass","ItemWatch"],[],
			[["ACE_fieldDressing",2],["ACE_EarPlugs",1]],
			[["hlc_100Rnd_762x51_M_M60E4",2],["rhs_mag_m67",2]],
			[["hlc_100Rnd_762x51_M_M60E4",4],["rhs_mag_m67",2],["SmokeShellGreen",2],["SmokeShellRed",2],["SmokeShell",2]],
			[]]execVM "framework\equipment\scripts\equipment_server.sqf";
		}
		else
		{
			[(_this select 0),"rhsgref_uniform_woodland","LOP_V_Chestrig_Kamysh","",(selectRandom ["rhssaf_helmet_m97_md2camo","rhssaf_helmet_m97_olive_nocamo"]),"",
			["hlc_lmg_M60E4",(["hlc_100Rnd_762x51_M_M60E4"] + _primaryItems)],
			["",_secondaryItems],
			["",_handgunItems],
			["ItemMap","ItemCompass","ItemWatch"],[],
			[["ACE_fieldDressing",2],["ACE_EarPlugs",1]],
			[["hlc_100Rnd_762x51_M_M60E4",2],["rhs_mag_m67",2]],
			[],[]]execVM "framework\equipment\scripts\equipment_server.sqf";
		};
	};
	
	case "jungle_maschinegunner_minimi_long":
	{
		if(_this select 2) then
		{
			[(_this select 0),"rhsgref_uniform_woodland","LOP_V_Chestrig_Kamysh",(selectRandom ["rhssaf_kitbag_md2camo","rhssaf_kitbag_smb"]),(selectRandom ["rhssaf_helmet_m97_md2camo","rhssaf_helmet_m97_olive_nocamo"]),"",
			["hlc_lmg_minimi",(["hlc_200rnd_556x45_M_SAW"] + _primaryItems)],
			["",_secondaryItems],
			["",_handgunItems],
			["ItemMap","ItemCompass","ItemWatch"],[],
			[["ACE_fieldDressing",2],["ACE_EarPlugs",1]],
			[["hlc_200rnd_556x45_M_SAW",1],["rhs_mag_m67",2]],
			[["hlc_200rnd_556x45_M_SAW",3],["rhs_mag_m67",2],["SmokeShellGreen",2],["SmokeShellRed",2],["SmokeShell",2]],
			[]]execVM "framework\equipment\scripts\equipment_server.sqf";
		}
		else
		{
			[(_this select 0),"rhsgref_uniform_woodland","LOP_V_Chestrig_Kamysh","",(selectRandom ["rhssaf_helmet_m97_md2camo","rhssaf_helmet_m97_olive_nocamo"]),"",
			["hlc_lmg_minimi",(["hlc_200rnd_556x45_M_SAW"] + _primaryItems)],
			["",_secondaryItems],
			["",_handgunItems],
			["ItemMap","ItemCompass","ItemWatch"],[],
			[["ACE_fieldDressing",2],["ACE_EarPlugs",1]],
			[["hlc_200rnd_556x45_M_SAW",1],["rhs_mag_m67",2]],
			[],[]]execVM "framework\equipment\scripts\equipment_server.sqf";
		};
	};

	case "jungle_automaticrifleman_m249_pip_long":
	{
		if(_this select 2) then
		{
			[(_this select 0),"rhsgref_uniform_woodland","LOP_V_Chestrig_Kamysh",(selectRandom ["rhssaf_kitbag_md2camo","rhssaf_kitbag_smb"]),(selectRandom ["rhssaf_helmet_m97_md2camo","rhssaf_helmet_m97_olive_nocamo"]),"",
			["rhs_weap_m249_pip_L",(["rhs_200rnd_556x45_M_SAW"] + _primaryItems)],
			["",_secondaryItems],
			["",_handgunItems],
			["ItemMap","ItemCompass","ItemWatch"],[],
			[["ACE_fieldDressing",2],["ACE_EarPlugs",1]],
			[["rhs_200rnd_556x45_M_SAW",1],["rhs_mag_m67",2]],
			[["rhs_200rnd_556x45_M_SAW",3],["rhs_mag_m67",2],["SmokeShellGreen",2],["SmokeShellRed",2],["SmokeShell",2]],
			[]]execVM "framework\equipment\scripts\equipment_server.sqf";
		}
		else
		{
			[(_this select 0),"rhsgref_uniform_woodland","LOP_V_Chestrig_Kamysh","",(selectRandom ["rhssaf_helmet_m97_md2camo","rhssaf_helmet_m97_olive_nocamo"]),"",
			["rhs_weap_m249_pip_L",(["rhs_200rnd_556x45_M_SAW"] + _primaryItems)],
			["",_secondaryItems],
			["",_handgunItems],
			["ItemMap","ItemCompass","ItemWatch"],[],
			[["ACE_fieldDressing",2],["ACE_EarPlugs",1]],
			[["rhs_200rnd_556x45_M_SAW",1],["rhs_mag_m67",2]],
			[],[]]execVM "framework\equipment\scripts\equipment_server.sqf";
		};
	};
	
	case "jungle_antitank_m4a1_at4_heat":
	{
		[(_this select 0),"rhsgref_uniform_woodland","LOP_V_Chestrig_Kamysh","",(selectRandom ["rhssaf_helmet_m97_md2camo","rhssaf_helmet_m97_olive_nocamo"]),"",
			["rhs_weap_m4a1_carryhandle",(["hlc_30rnd_556x45_EPR"] + _primaryItems)],
			["tf47_at4_heat",(["tf47_at4_m_HEAT"] + _secondaryItems)],
			["",_handgunItems],
			["ItemMap","ItemCompass","ItemWatch"],[],
			[["ACE_fieldDressing",2],["ACE_EarPlugs",1]],
			[["hlc_30rnd_556x45_EPR",8],["rhs_mag_m67",2]],
			[],[]]execVM "framework\equipment\scripts\equipment_server.sqf";
	};
	
	case "jungle_antitank_m4a1_at4_hedp":
	{
		[(_this select 0),"rhsgref_uniform_woodland","LOP_V_Chestrig_Kamysh","",(selectRandom ["rhssaf_helmet_m97_md2camo","rhssaf_helmet_m97_olive_nocamo"]),"",
			["rhs_weap_m4a1_carryhandle",(["hlc_30rnd_556x45_EPR"] + _primaryItems)],
			["tf47_at4_HEDP",(["tf47_at4_m_HEDP"] + _secondaryItems)],
			["",_handgunItems],
			["ItemMap","ItemCompass","ItemWatch"],[],
			[["ACE_fieldDressing",2],["ACE_EarPlugs",1]],
			[["hlc_30rnd_556x45_EPR",8],["rhs_mag_m67",2]],
			[],[]]execVM "framework\equipment\scripts\equipment_server.sqf";
	};
	
	case "jungle_antitank_m4a1_at4_hp":
	{
		[(_this select 0),"rhsgref_uniform_woodland","LOP_V_Chestrig_Kamysh","",(selectRandom ["rhssaf_helmet_m97_md2camo","rhssaf_helmet_m97_olive_nocamo"]),"",
			["rhs_weap_m4a1_carryhandle",(["hlc_30rnd_556x45_EPR"] + _primaryItems)],
			["tf47_at4_HP",(["tf47_at4_m_HP"] + _secondaryItems)],
			["",_handgunItems],
			["ItemMap","ItemCompass","ItemWatch"],[],
			[["ACE_fieldDressing",2],["ACE_EarPlugs",1]],
			[["hlc_30rnd_556x45_EPR",8],["rhs_mag_m67",2]],
			[],[]]execVM "framework\equipment\scripts\equipment_server.sqf";
	};
	
	case "jungle_antitank_m4a1_nlaw":
	{
		[(_this select 0),"rhsgref_uniform_woodland","LOP_V_Chestrig_Kamysh","",(selectRandom ["rhssaf_helmet_m97_md2camo","rhssaf_helmet_m97_olive_nocamo"]),"",
			["rhs_weap_m4a1_carryhandle",(["hlc_30rnd_556x45_EPR"] + _primaryItems)],
			["launch_NLAW_F",(["ACE_PreloadedMissileDummy"] + _secondaryItems)],
			["",_handgunItems],
			["ItemMap","ItemCompass","ItemWatch"],[],
			[["ACE_fieldDressing",2],["ACE_EarPlugs",1]],
			[["hlc_30rnd_556x45_EPR",8],["rhs_mag_m67",2]],
			[],[]]execVM "framework\equipment\scripts\equipment_server.sqf";
	};
	
	case "jungle_medic_m4a1":
	{
		if(_this select 2) then
		{
			[(_this select 0),"rhsgref_uniform_woodland","LOP_V_Chestrig_Kamysh",(selectRandom ["rhssaf_kitbag_md2camo","rhssaf_kitbag_smb"]),(selectRandom ["rhssaf_helmet_m97_md2camo","rhssaf_helmet_m97_olive_nocamo"]),"",
			["rhs_weap_m4a1_carryhandle",(["hlc_30rnd_556x45_EPR"] + _primaryItems)],
			["",_secondaryItems],
			["",_handgunItems],
			["ItemMap","ItemCompass","ItemWatch"],[],
			[["ACE_fieldDressing",10],["ACE_EarPlugs",1],["ACE_elasticBandage",10],["ACE_packingBandage",10],["ACE_epinephrine",2],["ACE_morphine",5],["ACE_personalAidKit",1]],
			[["hlc_30rnd_556x45_EPR",8],["rhs_mag_m67",2]],
			[["hlc_30rnd_556x45_EPR",4],["rhs_mag_m67",2],["SmokeShellGreen",2],["SmokeShellRed",2],["SmokeShell",2],["ACE_fieldDressing",30],["ACE_elasticBandage",30],["ACE_packingBandage",30],["ACE_epinephrine",5],["ACE_morphine",10],["ACE_personalAidKit",1],["ACE_surgicalKit",1],["ACE_quikclot",10],["ACE_tourniquet",2]],
			[]]execVM "framework\equipment\scripts\equipment_server.sqf";
		}
		else
		{
			[(_this select 0),"rhsgref_uniform_woodland","LOP_V_Chestrig_Kamysh","",(selectRandom ["rhssaf_helmet_m97_md2camo","rhssaf_helmet_m97_olive_nocamo"]),"",
			["rhs_weap_m4a1_carryhandle",(["hlc_30rnd_556x45_EPR"] + _primaryItems)],
			["",_secondaryItems],
			["",_handgunItems],
			["ItemMap","ItemCompass","ItemWatch"],[],
			[["ACE_fieldDressing",10],["ACE_EarPlugs",1],["ACE_elasticBandage",10],["ACE_packingBandage",10],["ACE_epinephrine",2],["ACE_morphine",5],["ACE_personalAidKit",1]],
			[["hlc_30rnd_556x45_EPR",8],["rhs_mag_m67",2]],
			[],[]]execVM "framework\equipment\scripts\equipment_server.sqf";
		};
	};

	case "jungle_marksman_m21":
	{
		if(_this select 2) then
		{
			[(_this select 0),"rhsgref_uniform_woodland","LOP_V_Chestrig_Kamysh",(selectRandom ["rhssaf_kitbag_md2camo","rhssaf_kitbag_smb"]),(selectRandom ["rhssaf_helmet_m97_md2camo","rhssaf_helmet_m97_olive_nocamo"]),"",
			["hlc_rifle_M21",(["hlc_20Rnd_762x51_B_M14","hlc_optic_artel_m14"] + _primaryItems)],
			["",_secondaryItems],
			["",_handgunItems],
			["ItemMap","ItemCompass","ItemWatch"],[],
			[["ACE_fieldDressing",2],["ACE_EarPlugs",1],["hlc_20Rnd_762x51_B_M14",1]],
			[["hlc_20Rnd_762x51_B_M14",3],["rhs_mag_m67",2]],
			[["hlc_20Rnd_762x51_B_M14",10],["rhs_mag_m67",2],["SmokeShellGreen",2],["SmokeShellRed",2],["SmokeShell",2]],
			[]]execVM "framework\equipment\scripts\equipment_server.sqf";
		}
		else
		{
			[(_this select 0),"rhsgref_uniform_woodland","LOP_V_Chestrig_Kamysh","",(selectRandom ["rhssaf_helmet_m97_md2camo","rhssaf_helmet_m97_olive_nocamo"]),"",
			["hlc_rifle_M21",(["hlc_20Rnd_762x51_B_M14","hlc_optic_artel_m14"] + _primaryItems)],
			["",_secondaryItems],
			["",_handgunItems],
			["ItemMap","ItemCompass","ItemWatch"],[],
			[["ACE_fieldDressing",2],["ACE_EarPlugs",1],["hlc_20Rnd_762x51_B_M14",1]],
			[["hlc_20Rnd_762x51_B_M14",3],["rhs_mag_m67",2]],
			[],[]]execVM "framework\equipment\scripts\equipment_server.sqf";
		};
	};
	
	//default empty
	default
	{
		[(_this select 0), "","","","","",["",[]],["",[]],["",[]],[],[],[],[],[],[]]execVM "framework\equipment\scripts\equipment_server.sqf";
	};
};

(_this select 0) setSpeaker (["Male01GRE","Male02GRE","Male03GRE","Male04GRE","Male05GRE","Male06GRE"]call BIS_fnc_selectRandom);
(_this select 0) setSkill 0.9;
(_this select 0) setskill ["courage",1];