//////////////////////////////////////////////////////////////////
// Function file for Armed Assault
// Created by: Nuka [www.sealteam10.de]
//////////////////////////////////////////////////////////////////

//[unit, type equipment, bool backpack]execVM "framework\equipment\jungle\equipment_jungle_rebels.sqf";

/*
	scopes:
*/

_primaryItems = if(count _this > 3) then{_this select 3} else{[]};
_secondaryItems = if(count _this > 4) then{_this select 4} else{[]};
_handgunItems = if(count _this > 5) then{_this select 5} else{[]};

(_this select 0) setVariable ["BIS_enableRandomization", false];

switch(_this select 1) do
{	
	case "rebel_sf_coltcarbine":
	{
		[(_this select 0),"ibr_arl_army_uniform",
		["LOP_V_Chestrig_Kamysh","LOP_V_Chestrig_VSR"]call BIS_fnc_selectRandom,
		"",
		["H_Cap_oli","ibr_cec_helmet","H_Booniehat_oli","H_Beret_blk","H_Cap_blk"]call BIS_fnc_selectRandom,
		"G_Balaclava_blk",
		["hlc_rifle_Colt727",(["hlc_30rnd_556x45_EPR"] + _primaryItems)],
		["",_secondaryItems],
		["",_handgunItems],
		["ItemMap","ItemCompass","ItemWatch","ItemRadio"],[],
		[["ACE_EarPlugs",1],["ACE_fieldDressing",[0,1,2,3,4]call BIS_fnc_selectRandom],["ACE_elasticBandage",[0,1,2]call BIS_fnc_selectRandom],["rhs_mag_rgd5",[0,1,0,2,0]call BIS_fnc_selectRandom]],
		[["hlc_30rnd_556x45_EPR",8]],
		[],[]]execVM "framework\equipment\scripts\equipment_server.sqf";
	};
	
	case "rebel_sf_m14":
	{
		[(_this select 0),"ibr_arl_army_uniform",
		["LOP_V_Chestrig_Kamysh","LOP_V_Chestrig_VSR"]call BIS_fnc_selectRandom,
		"",
		["H_Cap_oli","ibr_cec_helmet","H_Booniehat_oli","H_Beret_blk","H_Cap_blk"]call BIS_fnc_selectRandom,
		"G_Balaclava_blk",
		["hlc_rifle_M14",(["hlc_20Rnd_762x51_B_M14"] + _primaryItems)],
		["",_secondaryItems],
		["",_handgunItems],
		["ItemMap","ItemCompass","ItemWatch","ItemRadio"],[],
		[["ACE_EarPlugs",1],["ACE_fieldDressing",[0,1,2,3,4]call BIS_fnc_selectRandom],["ACE_elasticBandage",[0,1,2]call BIS_fnc_selectRandom],["rhs_mag_rgd5",[0,1,0,2,0]call BIS_fnc_selectRandom]],
		[["hlc_20Rnd_762x51_B_M14",10]],
		[],[]]execVM "framework\equipment\scripts\equipment_server.sqf";
	};
	
	case "rebel_sf_ak74":
	{
		[(_this select 0),"ibr_arl_army_uniform",
		["LOP_V_Chestrig_Kamysh","LOP_V_Chestrig_VSR"]call BIS_fnc_selectRandom,
		"",
		["H_Cap_oli","ibr_cec_helmet","H_Booniehat_oli","H_Beret_blk","H_Cap_blk"]call BIS_fnc_selectRandom,
		"G_Balaclava_blk",
		["hlc_rifle_ak74",(["hlc_30Rnd_545x39_B_AK"] + _primaryItems)],
		["",_secondaryItems],
		["",_handgunItems],
		["ItemMap","ItemCompass","ItemWatch","ItemRadio"],[],
		[["ACE_EarPlugs",1],["ACE_fieldDressing",[0,1,2,3,4]call BIS_fnc_selectRandom],["ACE_elasticBandage",[0,1,2]call BIS_fnc_selectRandom],["rhs_mag_rgd5",[0,1,0,2,0]call BIS_fnc_selectRandom]],
		[["hlc_30Rnd_545x39_B_AK",6]],
		[],[]]execVM "framework\equipment\scripts\equipment_server.sqf";
	};
	
	case "rebel_sf_sig510":
	{
		[(_this select 0),"ibr_arl_army_uniform",
		["LOP_V_Chestrig_Kamysh","LOP_V_Chestrig_VSR"]call BIS_fnc_selectRandom,
		"",
		["H_Cap_oli","ibr_cec_helmet","H_Booniehat_oli","H_Beret_blk","H_Cap_blk"]call BIS_fnc_selectRandom,
		"G_Balaclava_blk",
		["hlc_rifle_sig5104",(["hlc_20Rnd_762x51_b_amt"] + _primaryItems)],
		["",_secondaryItems],
		["",_handgunItems],
		["ItemMap","ItemCompass","ItemWatch","ItemRadio"],[],
		[["ACE_EarPlugs",1],["ACE_fieldDressing",[0,1,2,3,4]call BIS_fnc_selectRandom],["ACE_elasticBandage",[0,1,2]call BIS_fnc_selectRandom],["rhs_mag_rgd5",[0,1,0,2,0]call BIS_fnc_selectRandom]],
		[["hlc_20Rnd_762x51_b_amt",6]],
		[],[]]execVM "framework\equipment\scripts\equipment_server.sqf";
	};
	
	case "rebel_sf_coltcarbine_m72a7":
	{
		[(_this select 0),"ibr_arl_army_uniform",
		["LOP_V_Chestrig_Kamysh","LOP_V_Chestrig_VSR"]call BIS_fnc_selectRandom,
		"",
		["H_Cap_oli","ibr_cec_helmet","H_Booniehat_oli","H_Beret_blk","H_Cap_blk"]call BIS_fnc_selectRandom,
		"G_Balaclava_blk",
		["hlc_rifle_Colt727",(["hlc_30rnd_556x45_EPR"] + _primaryItems)],
		["rhs_weap_m72a7",(["rhs_m72a7_mag"] + _secondaryItems)],
		["",_handgunItems],
		["ItemMap","ItemCompass","ItemWatch","ItemRadio"],[],
		[["ACE_EarPlugs",1],["ACE_fieldDressing",[0,1,2,3,4]call BIS_fnc_selectRandom],["ACE_elasticBandage",[0,1,2]call BIS_fnc_selectRandom],["rhs_mag_rgd5",[0,1,0,2,0]call BIS_fnc_selectRandom]],
		[["hlc_30rnd_556x45_EPR",8]],
		[],[]]execVM "framework\equipment\scripts\equipment_server.sqf";
	};
	
	case "rebel_sf_m14_m72a7":
	{
		[(_this select 0),"ibr_arl_army_uniform",
		["LOP_V_Chestrig_Kamysh","LOP_V_Chestrig_VSR"]call BIS_fnc_selectRandom,
		"",
		["H_Cap_oli","ibr_cec_helmet","H_Booniehat_oli","H_Beret_blk","H_Cap_blk"]call BIS_fnc_selectRandom,
		"G_Balaclava_blk",
		["hlc_rifle_M14",(["hlc_20Rnd_762x51_B_M14"] + _primaryItems)],
		["rhs_weap_m72a7",(["rhs_m72a7_mag"] + _secondaryItems)],
		["",_handgunItems],
		["ItemMap","ItemCompass","ItemWatch","ItemRadio"],[],
		[["ACE_EarPlugs",1],["ACE_fieldDressing",[0,1,2,3,4]call BIS_fnc_selectRandom],["ACE_elasticBandage",[0,1,2]call BIS_fnc_selectRandom],["rhs_mag_rgd5",[0,1,0,2,0]call BIS_fnc_selectRandom]],
		[["hlc_20Rnd_762x51_B_M14",10]],
		[],[]]execVM "framework\equipment\scripts\equipment_server.sqf";
	};
	
	case "rebel_sf_ak74_m72a7":
	{
		[(_this select 0),"ibr_arl_army_uniform",
		["LOP_V_Chestrig_Kamysh","LOP_V_Chestrig_VSR"]call BIS_fnc_selectRandom,
		"",
		["H_Cap_oli","ibr_cec_helmet","H_Booniehat_oli","H_Beret_blk","H_Cap_blk"]call BIS_fnc_selectRandom,
		"G_Balaclava_blk",
		["hlc_rifle_ak74",(["hlc_30Rnd_545x39_B_AK"] + _primaryItems)],
		["rhs_weap_m72a7",(["rhs_m72a7_mag"] + _secondaryItems)],
		["",_handgunItems],
		["ItemMap","ItemCompass","ItemWatch","ItemRadio"],[],
		[["ACE_EarPlugs",1],["ACE_fieldDressing",[0,1,2,3,4]call BIS_fnc_selectRandom],["ACE_elasticBandage",[0,1,2]call BIS_fnc_selectRandom],["rhs_mag_rgd5",[0,1,0,2,0]call BIS_fnc_selectRandom]],
		[["hlc_30Rnd_545x39_B_AK",6]],
		[],[]]execVM "framework\equipment\scripts\equipment_server.sqf";
	};
	
	case "rebel_sf_sig510_m72a7":
	{
		[(_this select 0),"ibr_arl_army_uniform",
		["LOP_V_Chestrig_Kamysh","LOP_V_Chestrig_VSR"]call BIS_fnc_selectRandom,
		"",
		["H_Cap_oli","ibr_cec_helmet","H_Booniehat_oli","H_Beret_blk","H_Cap_blk"]call BIS_fnc_selectRandom,
		"G_Balaclava_blk",
		["hlc_rifle_sig5104",(["hlc_20Rnd_762x51_b_amt"] + _primaryItems)],
		["rhs_weap_m72a7",(["rhs_m72a7_mag"] + _secondaryItems)],
		["",_handgunItems],
		["ItemMap","ItemCompass","ItemWatch","ItemRadio"],[],
		[["ACE_EarPlugs",1],["ACE_fieldDressing",[0,1,2,3,4]call BIS_fnc_selectRandom],["ACE_elasticBandage",[0,1,2]call BIS_fnc_selectRandom],["rhs_mag_rgd5",[0,1,0,2,0]call BIS_fnc_selectRandom]],
		[["hlc_20Rnd_762x51_b_amt",6]],
		[],[]]execVM "framework\equipment\scripts\equipment_server.sqf";
	};

	case "rebel_coltcarbine":
	{
		[(_this select 0),
		["U_I_C_Soldier_Bandit_4_F","U_I_C_Soldier_Bandit_5_F","U_I_C_Soldier_Bandit_1_F","U_I_C_Soldier_Bandit_3_F","U_I_C_Soldier_Bandit_2_F","LOP_U_UA_Fatigue_01","LOP_U_UA_Fatigue_02","LOP_U_UA_Fatigue_04","LOP_U_AFR_Fatigue_01","LOP_U_AFR_Fatigue_02","LOP_U_AFR_Fatigue_03","LOP_U_AFR_Fatigue_04","U_BG_Guerilla2_3","U_BG_Guerilla2_2","U_BG_Guerrilla_6_1","U_I_C_Soldier_Para_2_F","U_I_C_Soldier_Para_4_F","U_I_C_Soldier_Para_3_F","U_I_C_Soldier_Para_5_F","U_I_C_Soldier_Para_1_F"]call BIS_fnc_selectRandom,
		["V_BandollierB_oli","V_BandollierB_blk","V_TacChestrig_grn_F","V_TacChestrig_cbr_F","V_TacChestrig_oli_F","TRYK_V_harnes_blk_L","TRYK_V_harnes_od_L","TRYK_V_harnes_TAN_L","LOP_V_Chestrig_Kamysh","LOP_V_Chestrig_VSR"]call BIS_fnc_selectRandom,
		"",
		["","LOP_H_SSh68Helmet_BLK","rhs_ssh68","H_Bandanna_blu","LOP_V_Chestrig_Kamysh","H_Bandanna_gry","H_Bandanna_camo","H_Beret_blk","H_Booniehat_khk","H_Booniehat_oli","H_Booniehat_tan","H_Hat_camo","H_Bandanna_cbr","H_Bandanna_sgg","H_Bandanna_khk","H_Cap_grn","H_Cap_oli","H_Cap_blk","TRYK_H_Bandana_H","TRYK_H_Bandana_wig","TRYK_H_Booniehat_WOOD"]call BIS_fnc_selectRandom,
		["","PU_shemagh_OD","PU_shemagh_Tan","","G_Bandanna_khk","G_Bandanna_oli","","G_Bandanna_tan"]call BIS_fnc_selectRandom,
		["hlc_rifle_Colt727",(["hlc_30rnd_556x45_EPR"] + _primaryItems)],
		["",_secondaryItems],
		["",_handgunItems],
		["ItemWatch"],[],
		[],[],[],
		[["hlc_30rnd_556x45_EPR",8]]]execVM "framework\equipment\scripts\equipment_server.sqf";
	};
	
	case "rebel_ak47":
	{
		[(_this select 0),
		["U_I_C_Soldier_Bandit_4_F","U_I_C_Soldier_Bandit_5_F","U_I_C_Soldier_Bandit_1_F","U_I_C_Soldier_Bandit_3_F","U_I_C_Soldier_Bandit_2_F","LOP_U_UA_Fatigue_01","LOP_U_UA_Fatigue_02","LOP_U_UA_Fatigue_04","LOP_U_AFR_Fatigue_01","LOP_U_AFR_Fatigue_02","LOP_U_AFR_Fatigue_03","LOP_U_AFR_Fatigue_04","U_BG_Guerilla2_3","U_BG_Guerilla2_2","U_BG_Guerrilla_6_1","U_I_C_Soldier_Para_2_F","U_I_C_Soldier_Para_4_F","U_I_C_Soldier_Para_3_F","U_I_C_Soldier_Para_5_F","U_I_C_Soldier_Para_1_F"]call BIS_fnc_selectRandom,
		["V_BandollierB_oli","V_BandollierB_blk","V_TacChestrig_grn_F","V_TacChestrig_cbr_F","V_TacChestrig_oli_F","TRYK_V_harnes_blk_L","TRYK_V_harnes_od_L","TRYK_V_harnes_TAN_L","LOP_V_Chestrig_Kamysh","LOP_V_Chestrig_VSR"]call BIS_fnc_selectRandom,
		"",
		["","LOP_H_SSh68Helmet_BLK","rhs_ssh68","H_Bandanna_blu","LOP_V_Chestrig_Kamysh","H_Bandanna_gry","H_Bandanna_camo","H_Beret_blk","H_Booniehat_khk","H_Booniehat_oli","H_Booniehat_tan","H_Hat_camo","H_Bandanna_cbr","H_Bandanna_sgg","H_Bandanna_khk","H_Cap_grn","H_Cap_oli","H_Cap_blk","TRYK_H_Bandana_H","TRYK_H_Bandana_wig","TRYK_H_Booniehat_WOOD"]call BIS_fnc_selectRandom,
		["","PU_shemagh_OD","PU_shemagh_Tan","","G_Bandanna_khk","G_Bandanna_oli","","G_Bandanna_tan"]call BIS_fnc_selectRandom,
		["hlc_rifle_ak47",(["hlc_30Rnd_762x39_b_ak"] + _primaryItems)],
		["",_secondaryItems],
		["",_handgunItems],
		["ItemWatch"],[],
		[],[],[],
		[["hlc_30Rnd_762x39_b_ak",8]]]execVM "framework\equipment\scripts\equipment_server.sqf";
	};
	
	case "rebel_akm":
	{
		[(_this select 0),
		["U_I_C_Soldier_Bandit_4_F","U_I_C_Soldier_Bandit_5_F","U_I_C_Soldier_Bandit_1_F","U_I_C_Soldier_Bandit_3_F","U_I_C_Soldier_Bandit_2_F","LOP_U_UA_Fatigue_01","LOP_U_UA_Fatigue_02","LOP_U_UA_Fatigue_04","LOP_U_AFR_Fatigue_01","LOP_U_AFR_Fatigue_02","LOP_U_AFR_Fatigue_03","LOP_U_AFR_Fatigue_04","U_BG_Guerilla2_3","U_BG_Guerilla2_2","U_BG_Guerrilla_6_1","U_I_C_Soldier_Para_2_F","U_I_C_Soldier_Para_4_F","U_I_C_Soldier_Para_3_F","U_I_C_Soldier_Para_5_F","U_I_C_Soldier_Para_1_F"]call BIS_fnc_selectRandom,
		["V_BandollierB_oli","V_BandollierB_blk","V_TacChestrig_grn_F","V_TacChestrig_cbr_F","V_TacChestrig_oli_F","TRYK_V_harnes_blk_L","TRYK_V_harnes_od_L","TRYK_V_harnes_TAN_L","LOP_V_Chestrig_Kamysh","LOP_V_Chestrig_VSR"]call BIS_fnc_selectRandom,
		"",
		["","LOP_H_SSh68Helmet_BLK","rhs_ssh68","H_Bandanna_blu","LOP_V_Chestrig_Kamysh","H_Bandanna_gry","H_Bandanna_camo","H_Beret_blk","H_Booniehat_khk","H_Booniehat_oli","H_Booniehat_tan","H_Hat_camo","H_Bandanna_cbr","H_Bandanna_sgg","H_Bandanna_khk","H_Cap_grn","H_Cap_oli","H_Cap_blk","TRYK_H_Bandana_H","TRYK_H_Bandana_wig","TRYK_H_Booniehat_WOOD"]call BIS_fnc_selectRandom,
		["","PU_shemagh_OD","PU_shemagh_Tan","","G_Bandanna_khk","G_Bandanna_oli","","G_Bandanna_tan"]call BIS_fnc_selectRandom,
		["hlc_rifle_akm",(["hlc_30Rnd_762x39_b_ak"] + _primaryItems)],
		["",_secondaryItems],
		["",_handgunItems],
		["ItemWatch"],[],
		[],[],[],
		[["hlc_30Rnd_762x39_b_ak",8]]]execVM "framework\equipment\scripts\equipment_server.sqf";
	};
	
	case "rebel_sig510":
	{
		[(_this select 0),
		["U_I_C_Soldier_Bandit_4_F","U_I_C_Soldier_Bandit_5_F","U_I_C_Soldier_Bandit_1_F","U_I_C_Soldier_Bandit_3_F","U_I_C_Soldier_Bandit_2_F","LOP_U_UA_Fatigue_01","LOP_U_UA_Fatigue_02","LOP_U_UA_Fatigue_04","LOP_U_AFR_Fatigue_01","LOP_U_AFR_Fatigue_02","LOP_U_AFR_Fatigue_03","LOP_U_AFR_Fatigue_04","U_BG_Guerilla2_3","U_BG_Guerilla2_2","U_BG_Guerrilla_6_1","U_I_C_Soldier_Para_2_F","U_I_C_Soldier_Para_4_F","U_I_C_Soldier_Para_3_F","U_I_C_Soldier_Para_5_F","U_I_C_Soldier_Para_1_F"]call BIS_fnc_selectRandom,
		["V_BandollierB_oli","V_BandollierB_blk","V_TacChestrig_grn_F","V_TacChestrig_cbr_F","V_TacChestrig_oli_F","TRYK_V_harnes_blk_L","TRYK_V_harnes_od_L","TRYK_V_harnes_TAN_L","LOP_V_Chestrig_Kamysh","LOP_V_Chestrig_VSR"]call BIS_fnc_selectRandom,
		"",
		["","LOP_H_SSh68Helmet_BLK","rhs_ssh68","H_Bandanna_blu","LOP_V_Chestrig_Kamysh","H_Bandanna_gry","H_Bandanna_camo","H_Beret_blk","H_Booniehat_khk","H_Booniehat_oli","H_Booniehat_tan","H_Hat_camo","H_Bandanna_cbr","H_Bandanna_sgg","H_Bandanna_khk","H_Cap_grn","H_Cap_oli","H_Cap_blk","TRYK_H_Bandana_H","TRYK_H_Bandana_wig","TRYK_H_Booniehat_WOOD"]call BIS_fnc_selectRandom,
		["","PU_shemagh_OD","PU_shemagh_Tan","","G_Bandanna_khk","G_Bandanna_oli","","G_Bandanna_tan"]call BIS_fnc_selectRandom,
		["hlc_rifle_sig5104",(["hlc_20Rnd_762x51_b_amt"] + _primaryItems)],
		["",_secondaryItems],
		["",_handgunItems],
		["ItemWatch"],[],
		[],[],[],
		[["hlc_20Rnd_762x51_b_amt",10]]]execVM "framework\equipment\scripts\equipment_server.sqf";
	};
	
	case "rebel_M1903A1":
	{
		[(_this select 0),
		["U_I_C_Soldier_Bandit_4_F","U_I_C_Soldier_Bandit_5_F","U_I_C_Soldier_Bandit_1_F","U_I_C_Soldier_Bandit_3_F","U_I_C_Soldier_Bandit_2_F","LOP_U_UA_Fatigue_01","LOP_U_UA_Fatigue_02","LOP_U_UA_Fatigue_04","LOP_U_AFR_Fatigue_01","LOP_U_AFR_Fatigue_02","LOP_U_AFR_Fatigue_03","LOP_U_AFR_Fatigue_04","U_BG_Guerilla2_3","U_BG_Guerilla2_2","U_BG_Guerrilla_6_1","U_I_C_Soldier_Para_2_F","U_I_C_Soldier_Para_4_F","U_I_C_Soldier_Para_3_F","U_I_C_Soldier_Para_5_F","U_I_C_Soldier_Para_1_F"]call BIS_fnc_selectRandom,
		["V_BandollierB_oli","V_BandollierB_blk","V_TacChestrig_grn_F","V_TacChestrig_cbr_F","V_TacChestrig_oli_F","TRYK_V_harnes_blk_L","TRYK_V_harnes_od_L","TRYK_V_harnes_TAN_L","LOP_V_Chestrig_Kamysh","LOP_V_Chestrig_VSR"]call BIS_fnc_selectRandom,
		"",
		["","LOP_H_SSh68Helmet_BLK","rhs_ssh68","H_Bandanna_blu","LOP_V_Chestrig_Kamysh","H_Bandanna_gry","H_Bandanna_camo","H_Beret_blk","H_Booniehat_khk","H_Booniehat_oli","H_Booniehat_tan","H_Hat_camo","H_Bandanna_cbr","H_Bandanna_sgg","H_Bandanna_khk","H_Cap_grn","H_Cap_oli","H_Cap_blk","TRYK_H_Bandana_H","TRYK_H_Bandana_wig","TRYK_H_Booniehat_WOOD"]call BIS_fnc_selectRandom,
		["","PU_shemagh_OD","PU_shemagh_Tan","","G_Bandanna_khk","G_Bandanna_oli","","G_Bandanna_tan"]call BIS_fnc_selectRandom,
		["hlc_rifle_M1903A1",(["hlc_5rnd_3006_1903"] + _primaryItems)],
		["",_secondaryItems],
		["",_handgunItems],
		["ItemWatch"],[],
		[],[],[],
		[["hlc_5rnd_3006_1903",15]]]execVM "framework\equipment\scripts\equipment_server.sqf";
	};
	
	case "rebel_M14":
	{
		[(_this select 0),
		["U_I_C_Soldier_Bandit_4_F","U_I_C_Soldier_Bandit_5_F","U_I_C_Soldier_Bandit_1_F","U_I_C_Soldier_Bandit_3_F","U_I_C_Soldier_Bandit_2_F","LOP_U_UA_Fatigue_01","LOP_U_UA_Fatigue_02","LOP_U_UA_Fatigue_04","LOP_U_AFR_Fatigue_01","LOP_U_AFR_Fatigue_02","LOP_U_AFR_Fatigue_03","LOP_U_AFR_Fatigue_04","U_BG_Guerilla2_3","U_BG_Guerilla2_2","U_BG_Guerrilla_6_1","U_I_C_Soldier_Para_2_F","U_I_C_Soldier_Para_4_F","U_I_C_Soldier_Para_3_F","U_I_C_Soldier_Para_5_F","U_I_C_Soldier_Para_1_F"]call BIS_fnc_selectRandom,
		["V_BandollierB_oli","V_BandollierB_blk","V_TacChestrig_grn_F","V_TacChestrig_cbr_F","V_TacChestrig_oli_F","TRYK_V_harnes_blk_L","TRYK_V_harnes_od_L","TRYK_V_harnes_TAN_L","LOP_V_Chestrig_Kamysh","LOP_V_Chestrig_VSR"]call BIS_fnc_selectRandom,
		"",
		["","LOP_H_SSh68Helmet_BLK","rhs_ssh68","H_Bandanna_blu","LOP_V_Chestrig_Kamysh","H_Bandanna_gry","H_Bandanna_camo","H_Beret_blk","H_Booniehat_khk","H_Booniehat_oli","H_Booniehat_tan","H_Hat_camo","H_Bandanna_cbr","H_Bandanna_sgg","H_Bandanna_khk","H_Cap_grn","H_Cap_oli","H_Cap_blk","TRYK_H_Bandana_H","TRYK_H_Bandana_wig","TRYK_H_Booniehat_WOOD"]call BIS_fnc_selectRandom,
		["","PU_shemagh_OD","PU_shemagh_Tan","","G_Bandanna_khk","G_Bandanna_oli","","G_Bandanna_tan"]call BIS_fnc_selectRandom,
		["hlc_rifle_M14",(["hlc_20Rnd_762x51_B_M14"] + _primaryItems)],
		["",_secondaryItems],
		["",_handgunItems],
		["ItemWatch"],[],
		[],[],[],
		[["hlc_20Rnd_762x51_B_M14",10]]]execVM "framework\equipment\scripts\equipment_server.sqf";
	};
	
	case "rebel_m60":
	{
		[(_this select 0),
		["U_I_C_Soldier_Bandit_4_F","U_I_C_Soldier_Bandit_5_F","U_I_C_Soldier_Bandit_1_F","U_I_C_Soldier_Bandit_3_F","U_I_C_Soldier_Bandit_2_F","LOP_U_UA_Fatigue_01","LOP_U_UA_Fatigue_02","LOP_U_UA_Fatigue_04","LOP_U_AFR_Fatigue_01","LOP_U_AFR_Fatigue_02","LOP_U_AFR_Fatigue_03","LOP_U_AFR_Fatigue_04","U_BG_Guerilla2_3","U_BG_Guerilla2_2","U_BG_Guerrilla_6_1","U_I_C_Soldier_Para_2_F","U_I_C_Soldier_Para_4_F","U_I_C_Soldier_Para_3_F","U_I_C_Soldier_Para_5_F","U_I_C_Soldier_Para_1_F"]call BIS_fnc_selectRandom,
		["V_BandollierB_oli","V_BandollierB_blk","V_TacChestrig_grn_F","V_TacChestrig_cbr_F","V_TacChestrig_oli_F","TRYK_V_harnes_blk_L","TRYK_V_harnes_od_L","TRYK_V_harnes_TAN_L","LOP_V_Chestrig_Kamysh","LOP_V_Chestrig_VSR"]call BIS_fnc_selectRandom,
		"",
		["","LOP_H_SSh68Helmet_BLK","rhs_ssh68","H_Bandanna_blu","LOP_V_Chestrig_Kamysh","H_Bandanna_gry","H_Bandanna_camo","H_Beret_blk","H_Booniehat_khk","H_Booniehat_oli","H_Booniehat_tan","H_Hat_camo","H_Bandanna_cbr","H_Bandanna_sgg","H_Bandanna_khk","H_Cap_grn","H_Cap_oli","H_Cap_blk","TRYK_H_Bandana_H","TRYK_H_Bandana_wig","TRYK_H_Booniehat_WOOD"]call BIS_fnc_selectRandom,
		["","PU_shemagh_OD","PU_shemagh_Tan","","G_Bandanna_khk","G_Bandanna_oli","","G_Bandanna_tan"]call BIS_fnc_selectRandom,
		["hlc_lmg_m60",(["hlc_100Rnd_762x51_M_M60E4"] + _primaryItems)],
		["",_secondaryItems],
		["",_handgunItems],
		["ItemWatch"],[],
		[],[],[],
		[["hlc_100Rnd_762x51_M_M60E4",3]]]execVM "framework\equipment\scripts\equipment_server.sqf";
	};

	case "rebel_pkm":
	{
		[(_this select 0),
		["U_I_C_Soldier_Bandit_4_F","U_I_C_Soldier_Bandit_5_F","U_I_C_Soldier_Bandit_1_F","U_I_C_Soldier_Bandit_3_F","U_I_C_Soldier_Bandit_2_F","LOP_U_UA_Fatigue_01","LOP_U_UA_Fatigue_02","LOP_U_UA_Fatigue_04","LOP_U_AFR_Fatigue_01","LOP_U_AFR_Fatigue_02","LOP_U_AFR_Fatigue_03","LOP_U_AFR_Fatigue_04","U_BG_Guerilla2_3","U_BG_Guerilla2_2","U_BG_Guerrilla_6_1","U_I_C_Soldier_Para_2_F","U_I_C_Soldier_Para_4_F","U_I_C_Soldier_Para_3_F","U_I_C_Soldier_Para_5_F","U_I_C_Soldier_Para_1_F"]call BIS_fnc_selectRandom,
		["V_BandollierB_oli","V_BandollierB_blk","V_TacChestrig_grn_F","V_TacChestrig_cbr_F","V_TacChestrig_oli_F","TRYK_V_harnes_blk_L","TRYK_V_harnes_od_L","TRYK_V_harnes_TAN_L","LOP_V_Chestrig_Kamysh","LOP_V_Chestrig_VSR"]call BIS_fnc_selectRandom,
		"",
		["","LOP_H_SSh68Helmet_BLK","rhs_ssh68","H_Bandanna_blu","LOP_V_Chestrig_Kamysh","H_Bandanna_gry","H_Bandanna_camo","H_Beret_blk","H_Booniehat_khk","H_Booniehat_oli","H_Booniehat_tan","H_Hat_camo","H_Bandanna_cbr","H_Bandanna_sgg","H_Bandanna_khk","H_Cap_grn","H_Cap_oli","H_Cap_blk","TRYK_H_Bandana_H","TRYK_H_Bandana_wig","TRYK_H_Booniehat_WOOD"]call BIS_fnc_selectRandom,
		["","PU_shemagh_OD","PU_shemagh_Tan","","G_Bandanna_khk","G_Bandanna_oli","","G_Bandanna_tan"]call BIS_fnc_selectRandom,
		["rhs_weap_pkm",(["rhs_100Rnd_762x54mmR"] + _primaryItems)],
		["",_secondaryItems],
		["",_handgunItems],
		["ItemWatch"],[],
		[],[],[],
		[["rhs_100Rnd_762x54mmR",3]]]execVM "framework\equipment\scripts\equipment_server.sqf";
	};
	
	case "rebel_coltcarbine_ammocarrier":
	{
		[(_this select 0),
		["U_I_C_Soldier_Bandit_4_F","U_I_C_Soldier_Bandit_5_F","U_I_C_Soldier_Bandit_1_F","U_I_C_Soldier_Bandit_3_F","U_I_C_Soldier_Bandit_2_F","LOP_U_UA_Fatigue_01","LOP_U_UA_Fatigue_02","LOP_U_UA_Fatigue_04","LOP_U_AFR_Fatigue_01","LOP_U_AFR_Fatigue_02","LOP_U_AFR_Fatigue_03","LOP_U_AFR_Fatigue_04","U_BG_Guerilla2_3","U_BG_Guerilla2_2","U_BG_Guerrilla_6_1","U_I_C_Soldier_Para_2_F","U_I_C_Soldier_Para_4_F","U_I_C_Soldier_Para_3_F","U_I_C_Soldier_Para_5_F","U_I_C_Soldier_Para_1_F"]call BIS_fnc_selectRandom,
		["V_BandollierB_oli","V_BandollierB_blk","V_TacChestrig_grn_F","V_TacChestrig_cbr_F","V_TacChestrig_oli_F","TRYK_V_harnes_blk_L","TRYK_V_harnes_od_L","TRYK_V_harnes_TAN_L","LOP_V_Chestrig_Kamysh","LOP_V_Chestrig_VSR"]call BIS_fnc_selectRandom,
		["B_Carryall_cbr","B_Carryall_khk","B_Carryall_oli"]call BIS_fnc_selectRandom,
		["","LOP_H_SSh68Helmet_BLK","rhs_ssh68","H_Bandanna_blu","LOP_V_Chestrig_Kamysh","H_Bandanna_gry","H_Bandanna_camo","H_Beret_blk","H_Booniehat_khk","H_Booniehat_oli","H_Booniehat_tan","H_Hat_camo","H_Bandanna_cbr","H_Bandanna_sgg","H_Bandanna_khk","H_Cap_grn","H_Cap_oli","H_Cap_blk","TRYK_H_Bandana_H","TRYK_H_Bandana_wig","TRYK_H_Booniehat_WOOD"]call BIS_fnc_selectRandom,
		["","PU_shemagh_OD","PU_shemagh_Tan","","G_Bandanna_khk","G_Bandanna_oli","","G_Bandanna_tan"]call BIS_fnc_selectRandom,
		["hlc_rifle_Colt727",(["hlc_30rnd_556x45_EPR"] + _primaryItems)],
		["",_secondaryItems],
		["",_handgunItems],
		["ItemWatch"],[],
		[],[],
		[["hlc_30rnd_556x45_EPR",(round(random 5))],["hlc_30Rnd_762x39_b_ak",(round(random 5))],["hlc_20Rnd_762x51_b_amt",(round(random 5))],["hlc_20Rnd_762x51_B_M14",(round(random 5))],["hlc_5rnd_3006_1903",(round(random 5))],["rhs_100Rnd_762x54mmR",(round(random 3))],["hlc_100Rnd_762x51_M_M60E4",(round(random 3))]],
		[["hlc_30rnd_556x45_EPR",8]]]execVM "framework\equipment\scripts\equipment_server.sqf";
	};

	case "rebel_ak47_ammocarrier":
	{
		[(_this select 0),
		["U_I_C_Soldier_Bandit_4_F","U_I_C_Soldier_Bandit_5_F","U_I_C_Soldier_Bandit_1_F","U_I_C_Soldier_Bandit_3_F","U_I_C_Soldier_Bandit_2_F","LOP_U_UA_Fatigue_01","LOP_U_UA_Fatigue_02","LOP_U_UA_Fatigue_04","LOP_U_AFR_Fatigue_01","LOP_U_AFR_Fatigue_02","LOP_U_AFR_Fatigue_03","LOP_U_AFR_Fatigue_04","U_BG_Guerilla2_3","U_BG_Guerilla2_2","U_BG_Guerrilla_6_1","U_I_C_Soldier_Para_2_F","U_I_C_Soldier_Para_4_F","U_I_C_Soldier_Para_3_F","U_I_C_Soldier_Para_5_F","U_I_C_Soldier_Para_1_F"]call BIS_fnc_selectRandom,
		["V_BandollierB_oli","V_BandollierB_blk","V_TacChestrig_grn_F","V_TacChestrig_cbr_F","V_TacChestrig_oli_F","TRYK_V_harnes_blk_L","TRYK_V_harnes_od_L","TRYK_V_harnes_TAN_L","LOP_V_Chestrig_Kamysh","LOP_V_Chestrig_VSR"]call BIS_fnc_selectRandom,
		["B_Carryall_cbr","B_Carryall_khk","B_Carryall_oli"]call BIS_fnc_selectRandom,
		["","LOP_H_SSh68Helmet_BLK","rhs_ssh68","H_Bandanna_blu","LOP_V_Chestrig_Kamysh","H_Bandanna_gry","H_Bandanna_camo","H_Beret_blk","H_Booniehat_khk","H_Booniehat_oli","H_Booniehat_tan","H_Hat_camo","H_Bandanna_cbr","H_Bandanna_sgg","H_Bandanna_khk","H_Cap_grn","H_Cap_oli","H_Cap_blk","TRYK_H_Bandana_H","TRYK_H_Bandana_wig","TRYK_H_Booniehat_WOOD"]call BIS_fnc_selectRandom,
		["","PU_shemagh_OD","PU_shemagh_Tan","","G_Bandanna_khk","G_Bandanna_oli","","G_Bandanna_tan"]call BIS_fnc_selectRandom,
		["hlc_rifle_ak47",(["hlc_30Rnd_762x39_b_ak"] + _primaryItems)],
		["",_secondaryItems],
		["",_handgunItems],
		["ItemWatch"],[],
		[],[],
		[["hlc_30rnd_556x45_EPR",(round(random 5))],["hlc_30Rnd_762x39_b_ak",(round(random 5))],["hlc_20Rnd_762x51_b_amt",(round(random 5))],["hlc_20Rnd_762x51_B_M14",(round(random 5))],["hlc_5rnd_3006_1903",(round(random 5))],["rhs_100Rnd_762x54mmR",(round(random 3))],["hlc_100Rnd_762x51_M_M60E4",(round(random 3))]],
		[["hlc_30Rnd_762x39_b_ak",8]]]execVM "framework\equipment\scripts\equipment_server.sqf";
	};
	
	case "rebel_akm_ammocarrier":
	{
		[(_this select 0),
		["U_I_C_Soldier_Bandit_4_F","U_I_C_Soldier_Bandit_5_F","U_I_C_Soldier_Bandit_1_F","U_I_C_Soldier_Bandit_3_F","U_I_C_Soldier_Bandit_2_F","LOP_U_UA_Fatigue_01","LOP_U_UA_Fatigue_02","LOP_U_UA_Fatigue_04","LOP_U_AFR_Fatigue_01","LOP_U_AFR_Fatigue_02","LOP_U_AFR_Fatigue_03","LOP_U_AFR_Fatigue_04","U_BG_Guerilla2_3","U_BG_Guerilla2_2","U_BG_Guerrilla_6_1","U_I_C_Soldier_Para_2_F","U_I_C_Soldier_Para_4_F","U_I_C_Soldier_Para_3_F","U_I_C_Soldier_Para_5_F","U_I_C_Soldier_Para_1_F"]call BIS_fnc_selectRandom,
		["V_BandollierB_oli","V_BandollierB_blk","V_TacChestrig_grn_F","V_TacChestrig_cbr_F","V_TacChestrig_oli_F","TRYK_V_harnes_blk_L","TRYK_V_harnes_od_L","TRYK_V_harnes_TAN_L","LOP_V_Chestrig_Kamysh","LOP_V_Chestrig_VSR"]call BIS_fnc_selectRandom,
		["B_Carryall_cbr","B_Carryall_khk","B_Carryall_oli"]call BIS_fnc_selectRandom,
		["","LOP_H_SSh68Helmet_BLK","rhs_ssh68","H_Bandanna_blu","LOP_V_Chestrig_Kamysh","H_Bandanna_gry","H_Bandanna_camo","H_Beret_blk","H_Booniehat_khk","H_Booniehat_oli","H_Booniehat_tan","H_Hat_camo","H_Bandanna_cbr","H_Bandanna_sgg","H_Bandanna_khk","H_Cap_grn","H_Cap_oli","H_Cap_blk","TRYK_H_Bandana_H","TRYK_H_Bandana_wig","TRYK_H_Booniehat_WOOD"]call BIS_fnc_selectRandom,
		["","PU_shemagh_OD","PU_shemagh_Tan","","G_Bandanna_khk","G_Bandanna_oli","","G_Bandanna_tan"]call BIS_fnc_selectRandom,
		["hlc_rifle_akm",(["hlc_30Rnd_762x39_b_ak"] + _primaryItems)],
		["",_secondaryItems],
		["",_handgunItems],
		["ItemWatch"],[],
		[],[],
		[["hlc_30rnd_556x45_EPR",(round(random 5))],["hlc_30Rnd_762x39_b_ak",(round(random 5))],["hlc_20Rnd_762x51_b_amt",(round(random 5))],["hlc_20Rnd_762x51_B_M14",(round(random 5))],["hlc_5rnd_3006_1903",(round(random 5))],["rhs_100Rnd_762x54mmR",(round(random 3))],["hlc_100Rnd_762x51_M_M60E4",(round(random 3))]],
		[["hlc_30Rnd_762x39_b_ak",8]]]execVM "framework\equipment\scripts\equipment_server.sqf";
	};
	
	case "rebel_sig510_ammocarrier":
	{
		[(_this select 0),
		["U_I_C_Soldier_Bandit_4_F","U_I_C_Soldier_Bandit_5_F","U_I_C_Soldier_Bandit_1_F","U_I_C_Soldier_Bandit_3_F","U_I_C_Soldier_Bandit_2_F","LOP_U_UA_Fatigue_01","LOP_U_UA_Fatigue_02","LOP_U_UA_Fatigue_04","LOP_U_AFR_Fatigue_01","LOP_U_AFR_Fatigue_02","LOP_U_AFR_Fatigue_03","LOP_U_AFR_Fatigue_04","U_BG_Guerilla2_3","U_BG_Guerilla2_2","U_BG_Guerrilla_6_1","U_I_C_Soldier_Para_2_F","U_I_C_Soldier_Para_4_F","U_I_C_Soldier_Para_3_F","U_I_C_Soldier_Para_5_F","U_I_C_Soldier_Para_1_F"]call BIS_fnc_selectRandom,
		["V_BandollierB_oli","V_BandollierB_blk","V_TacChestrig_grn_F","V_TacChestrig_cbr_F","V_TacChestrig_oli_F","TRYK_V_harnes_blk_L","TRYK_V_harnes_od_L","TRYK_V_harnes_TAN_L","LOP_V_Chestrig_Kamysh","LOP_V_Chestrig_VSR"]call BIS_fnc_selectRandom,
		["B_Carryall_cbr","B_Carryall_khk","B_Carryall_oli"]call BIS_fnc_selectRandom,
		["","LOP_H_SSh68Helmet_BLK","rhs_ssh68","H_Bandanna_blu","LOP_V_Chestrig_Kamysh","H_Bandanna_gry","H_Bandanna_camo","H_Beret_blk","H_Booniehat_khk","H_Booniehat_oli","H_Booniehat_tan","H_Hat_camo","H_Bandanna_cbr","H_Bandanna_sgg","H_Bandanna_khk","H_Cap_grn","H_Cap_oli","H_Cap_blk","TRYK_H_Bandana_H","TRYK_H_Bandana_wig","TRYK_H_Booniehat_WOOD"]call BIS_fnc_selectRandom,
		["","PU_shemagh_OD","PU_shemagh_Tan","","G_Bandanna_khk","G_Bandanna_oli","","G_Bandanna_tan"]call BIS_fnc_selectRandom,
		["hlc_rifle_sig5104",(["hlc_20Rnd_762x51_b_amt"] + _primaryItems)],
		["",_secondaryItems],
		["",_handgunItems],
		["ItemWatch"],[],
		[],[],
		[["hlc_30rnd_556x45_EPR",(round(random 5))],["hlc_30Rnd_762x39_b_ak",(round(random 5))],["hlc_20Rnd_762x51_b_amt",(round(random 5))],["hlc_20Rnd_762x51_B_M14",(round(random 5))],["hlc_5rnd_3006_1903",(round(random 5))],["rhs_100Rnd_762x54mmR",(round(random 3))],["hlc_100Rnd_762x51_M_M60E4",(round(random 3))]],
		[["hlc_20Rnd_762x51_b_amt",10]]]execVM "framework\equipment\scripts\equipment_server.sqf";
	};
	
	case "rebel_M1903A1_ammocarrier":
	{
		[(_this select 0),
		["U_I_C_Soldier_Bandit_4_F","U_I_C_Soldier_Bandit_5_F","U_I_C_Soldier_Bandit_1_F","U_I_C_Soldier_Bandit_3_F","U_I_C_Soldier_Bandit_2_F","LOP_U_UA_Fatigue_01","LOP_U_UA_Fatigue_02","LOP_U_UA_Fatigue_04","LOP_U_AFR_Fatigue_01","LOP_U_AFR_Fatigue_02","LOP_U_AFR_Fatigue_03","LOP_U_AFR_Fatigue_04","U_BG_Guerilla2_3","U_BG_Guerilla2_2","U_BG_Guerrilla_6_1","U_I_C_Soldier_Para_2_F","U_I_C_Soldier_Para_4_F","U_I_C_Soldier_Para_3_F","U_I_C_Soldier_Para_5_F","U_I_C_Soldier_Para_1_F"]call BIS_fnc_selectRandom,
		["V_BandollierB_oli","V_BandollierB_blk","V_TacChestrig_grn_F","V_TacChestrig_cbr_F","V_TacChestrig_oli_F","TRYK_V_harnes_blk_L","TRYK_V_harnes_od_L","TRYK_V_harnes_TAN_L","LOP_V_Chestrig_Kamysh","LOP_V_Chestrig_VSR"]call BIS_fnc_selectRandom,
		["B_Carryall_cbr","B_Carryall_khk","B_Carryall_oli"]call BIS_fnc_selectRandom,
		["","LOP_H_SSh68Helmet_BLK","rhs_ssh68","H_Bandanna_blu","LOP_V_Chestrig_Kamysh","H_Bandanna_gry","H_Bandanna_camo","H_Beret_blk","H_Booniehat_khk","H_Booniehat_oli","H_Booniehat_tan","H_Hat_camo","H_Bandanna_cbr","H_Bandanna_sgg","H_Bandanna_khk","H_Cap_grn","H_Cap_oli","H_Cap_blk","TRYK_H_Bandana_H","TRYK_H_Bandana_wig","TRYK_H_Booniehat_WOOD"]call BIS_fnc_selectRandom,
		["","PU_shemagh_OD","PU_shemagh_Tan","","G_Bandanna_khk","G_Bandanna_oli","","G_Bandanna_tan"]call BIS_fnc_selectRandom,
		["hlc_rifle_M1903A1",(["hlc_5rnd_3006_1903"] + _primaryItems)],
		["",_secondaryItems],
		["",_handgunItems],
		["ItemWatch"],[],
		[],[],
		[["hlc_30rnd_556x45_EPR",(round(random 5))],["hlc_30Rnd_762x39_b_ak",(round(random 5))],["hlc_20Rnd_762x51_b_amt",(round(random 5))],["hlc_20Rnd_762x51_B_M14",(round(random 5))],["hlc_5rnd_3006_1903",(round(random 5))],["rhs_100Rnd_762x54mmR",(round(random 3))],["hlc_100Rnd_762x51_M_M60E4",(round(random 3))]],
		[["hlc_5rnd_3006_1903",15]]]execVM "framework\equipment\scripts\equipment_server.sqf";
	};
	
	case "rebel_M14_ammocarrier":
	{
		[(_this select 0),
		["U_I_C_Soldier_Bandit_4_F","U_I_C_Soldier_Bandit_5_F","U_I_C_Soldier_Bandit_1_F","U_I_C_Soldier_Bandit_3_F","U_I_C_Soldier_Bandit_2_F","LOP_U_UA_Fatigue_01","LOP_U_UA_Fatigue_02","LOP_U_UA_Fatigue_04","LOP_U_AFR_Fatigue_01","LOP_U_AFR_Fatigue_02","LOP_U_AFR_Fatigue_03","LOP_U_AFR_Fatigue_04","U_BG_Guerilla2_3","U_BG_Guerilla2_2","U_BG_Guerrilla_6_1","U_I_C_Soldier_Para_2_F","U_I_C_Soldier_Para_4_F","U_I_C_Soldier_Para_3_F","U_I_C_Soldier_Para_5_F","U_I_C_Soldier_Para_1_F"]call BIS_fnc_selectRandom,
		["V_BandollierB_oli","V_BandollierB_blk","V_TacChestrig_grn_F","V_TacChestrig_cbr_F","V_TacChestrig_oli_F","TRYK_V_harnes_blk_L","TRYK_V_harnes_od_L","TRYK_V_harnes_TAN_L","LOP_V_Chestrig_Kamysh","LOP_V_Chestrig_VSR"]call BIS_fnc_selectRandom,
		["B_Carryall_cbr","B_Carryall_khk","B_Carryall_oli"]call BIS_fnc_selectRandom,
		["","LOP_H_SSh68Helmet_BLK","rhs_ssh68","H_Bandanna_blu","LOP_V_Chestrig_Kamysh","H_Bandanna_gry","H_Bandanna_camo","H_Beret_blk","H_Booniehat_khk","H_Booniehat_oli","H_Booniehat_tan","H_Hat_camo","H_Bandanna_cbr","H_Bandanna_sgg","H_Bandanna_khk","H_Cap_grn","H_Cap_oli","H_Cap_blk","TRYK_H_Bandana_H","TRYK_H_Bandana_wig","TRYK_H_Booniehat_WOOD"]call BIS_fnc_selectRandom,
		["","PU_shemagh_OD","PU_shemagh_Tan","","G_Bandanna_khk","G_Bandanna_oli","","G_Bandanna_tan"]call BIS_fnc_selectRandom,
		["hlc_rifle_M14",(["hlc_20Rnd_762x51_B_M14"] + _primaryItems)],
		["",_secondaryItems],
		["",_handgunItems],
		["ItemWatch"],[],
		[],[],
		[["hlc_30rnd_556x45_EPR",(round(random 5))],["hlc_30Rnd_762x39_b_ak",(round(random 5))],["hlc_20Rnd_762x51_b_amt",(round(random 5))],["hlc_20Rnd_762x51_B_M14",(round(random 5))],["hlc_5rnd_3006_1903",(round(random 5))],["rhs_100Rnd_762x54mmR",(round(random 3))],["hlc_100Rnd_762x51_M_M60E4",(round(random 3))]],
		[["hlc_20Rnd_762x51_B_M14",10]]]execVM "framework\equipment\scripts\equipment_server.sqf";
	};
	
	case "rebel_coltcarbine_rgp7v":
	{
		[(_this select 0),
		["U_I_C_Soldier_Bandit_4_F","U_I_C_Soldier_Bandit_5_F","U_I_C_Soldier_Bandit_1_F","U_I_C_Soldier_Bandit_3_F","U_I_C_Soldier_Bandit_2_F","LOP_U_UA_Fatigue_01","LOP_U_UA_Fatigue_02","LOP_U_UA_Fatigue_04","LOP_U_AFR_Fatigue_01","LOP_U_AFR_Fatigue_02","LOP_U_AFR_Fatigue_03","LOP_U_AFR_Fatigue_04","U_BG_Guerilla2_3","U_BG_Guerilla2_2","U_BG_Guerrilla_6_1","U_I_C_Soldier_Para_2_F","U_I_C_Soldier_Para_4_F","U_I_C_Soldier_Para_3_F","U_I_C_Soldier_Para_5_F","U_I_C_Soldier_Para_1_F"]call BIS_fnc_selectRandom,
		["V_BandollierB_oli","V_BandollierB_blk","V_TacChestrig_grn_F","V_TacChestrig_cbr_F","V_TacChestrig_oli_F","TRYK_V_harnes_blk_L","TRYK_V_harnes_od_L","TRYK_V_harnes_TAN_L","LOP_V_Chestrig_Kamysh","LOP_V_Chestrig_VSR"]call BIS_fnc_selectRandom,
		"rhs_rpg_empty",
		["","LOP_H_SSh68Helmet_BLK","rhs_ssh68","H_Bandanna_blu","LOP_V_Chestrig_Kamysh","H_Bandanna_gry","H_Bandanna_camo","H_Beret_blk","H_Booniehat_khk","H_Booniehat_oli","H_Booniehat_tan","H_Hat_camo","H_Bandanna_cbr","H_Bandanna_sgg","H_Bandanna_khk","H_Cap_grn","H_Cap_oli","H_Cap_blk","TRYK_H_Bandana_H","TRYK_H_Bandana_wig","TRYK_H_Booniehat_WOOD"]call BIS_fnc_selectRandom,
		["","PU_shemagh_OD","PU_shemagh_Tan","","G_Bandanna_khk","G_Bandanna_oli","","G_Bandanna_tan"]call BIS_fnc_selectRandom,
		["hlc_rifle_Colt727",(["hlc_30rnd_556x45_EPR"] + _primaryItems)],
		["rhs_weap_rpg7",(["rhs_rpg7_PG7VL_mag"] + _secondaryItems)],
		["",_handgunItems],
		["ItemWatch"],[],
		[],[],
		[["rhs_rpg7_PG7VL_mag",2],["rhs_rpg7_OG7V_mag",2]],
		[["hlc_30rnd_556x45_EPR",8]]]execVM "framework\equipment\scripts\equipment_server.sqf";
	};
	
	case "rebel_ak47_rgp7v":
	{
		[(_this select 0),
		["U_I_C_Soldier_Bandit_4_F","U_I_C_Soldier_Bandit_5_F","U_I_C_Soldier_Bandit_1_F","U_I_C_Soldier_Bandit_3_F","U_I_C_Soldier_Bandit_2_F","LOP_U_UA_Fatigue_01","LOP_U_UA_Fatigue_02","LOP_U_UA_Fatigue_04","LOP_U_AFR_Fatigue_01","LOP_U_AFR_Fatigue_02","LOP_U_AFR_Fatigue_03","LOP_U_AFR_Fatigue_04","U_BG_Guerilla2_3","U_BG_Guerilla2_2","U_BG_Guerrilla_6_1","U_I_C_Soldier_Para_2_F","U_I_C_Soldier_Para_4_F","U_I_C_Soldier_Para_3_F","U_I_C_Soldier_Para_5_F","U_I_C_Soldier_Para_1_F"]call BIS_fnc_selectRandom,
		["V_BandollierB_oli","V_BandollierB_blk","V_TacChestrig_grn_F","V_TacChestrig_cbr_F","V_TacChestrig_oli_F","TRYK_V_harnes_blk_L","TRYK_V_harnes_od_L","TRYK_V_harnes_TAN_L","LOP_V_Chestrig_Kamysh","LOP_V_Chestrig_VSR"]call BIS_fnc_selectRandom,
		"rhs_rpg_empty",
		["","LOP_H_SSh68Helmet_BLK","rhs_ssh68","H_Bandanna_blu","LOP_V_Chestrig_Kamysh","H_Bandanna_gry","H_Bandanna_camo","H_Beret_blk","H_Booniehat_khk","H_Booniehat_oli","H_Booniehat_tan","H_Hat_camo","H_Bandanna_cbr","H_Bandanna_sgg","H_Bandanna_khk","H_Cap_grn","H_Cap_oli","H_Cap_blk","TRYK_H_Bandana_H","TRYK_H_Bandana_wig","TRYK_H_Booniehat_WOOD"]call BIS_fnc_selectRandom,
		["","PU_shemagh_OD","PU_shemagh_Tan","","G_Bandanna_khk","G_Bandanna_oli","","G_Bandanna_tan"]call BIS_fnc_selectRandom,
		["hlc_rifle_ak47",(["hlc_30Rnd_762x39_b_ak"] + _primaryItems)],
		["rhs_weap_rpg7",(["rhs_rpg7_PG7VL_mag"] + _secondaryItems)],
		["",_handgunItems],
		["ItemWatch"],[],
		[],[],
		[["rhs_rpg7_PG7VL_mag",2],["rhs_rpg7_OG7V_mag",2]],
		[["hlc_30Rnd_762x39_b_ak",8]]]execVM "framework\equipment\scripts\equipment_server.sqf";
	};
	
	case "rebel_akm_rgp7v":
	{
		[(_this select 0),
		["U_I_C_Soldier_Bandit_4_F","U_I_C_Soldier_Bandit_5_F","U_I_C_Soldier_Bandit_1_F","U_I_C_Soldier_Bandit_3_F","U_I_C_Soldier_Bandit_2_F","LOP_U_UA_Fatigue_01","LOP_U_UA_Fatigue_02","LOP_U_UA_Fatigue_04","LOP_U_AFR_Fatigue_01","LOP_U_AFR_Fatigue_02","LOP_U_AFR_Fatigue_03","LOP_U_AFR_Fatigue_04","U_BG_Guerilla2_3","U_BG_Guerilla2_2","U_BG_Guerrilla_6_1","U_I_C_Soldier_Para_2_F","U_I_C_Soldier_Para_4_F","U_I_C_Soldier_Para_3_F","U_I_C_Soldier_Para_5_F","U_I_C_Soldier_Para_1_F"]call BIS_fnc_selectRandom,
		["V_BandollierB_oli","V_BandollierB_blk","V_TacChestrig_grn_F","V_TacChestrig_cbr_F","V_TacChestrig_oli_F","TRYK_V_harnes_blk_L","TRYK_V_harnes_od_L","TRYK_V_harnes_TAN_L","LOP_V_Chestrig_Kamysh","LOP_V_Chestrig_VSR"]call BIS_fnc_selectRandom,
		"rhs_rpg_empty",
		["","LOP_H_SSh68Helmet_BLK","rhs_ssh68","H_Bandanna_blu","LOP_V_Chestrig_Kamysh","H_Bandanna_gry","H_Bandanna_camo","H_Beret_blk","H_Booniehat_khk","H_Booniehat_oli","H_Booniehat_tan","H_Hat_camo","H_Bandanna_cbr","H_Bandanna_sgg","H_Bandanna_khk","H_Cap_grn","H_Cap_oli","H_Cap_blk","TRYK_H_Bandana_H","TRYK_H_Bandana_wig","TRYK_H_Booniehat_WOOD"]call BIS_fnc_selectRandom,
		["","PU_shemagh_OD","PU_shemagh_Tan","","G_Bandanna_khk","G_Bandanna_oli","","G_Bandanna_tan"]call BIS_fnc_selectRandom,
		["hlc_rifle_akm",(["hlc_30Rnd_762x39_b_ak"] + _primaryItems)],
		["rhs_weap_rpg7",(["rhs_rpg7_PG7VL_mag"] + _secondaryItems)],
		["",_handgunItems],
		["ItemWatch"],[],
		[],[],
		[["rhs_rpg7_PG7VL_mag",2],["rhs_rpg7_OG7V_mag",2]],
		[["hlc_30Rnd_762x39_b_ak",8]]]execVM "framework\equipment\scripts\equipment_server.sqf";
	};
	
	case "rebel_sig510_rgp7v":
	{
		[(_this select 0),
		["U_I_C_Soldier_Bandit_4_F","U_I_C_Soldier_Bandit_5_F","U_I_C_Soldier_Bandit_1_F","U_I_C_Soldier_Bandit_3_F","U_I_C_Soldier_Bandit_2_F","LOP_U_UA_Fatigue_01","LOP_U_UA_Fatigue_02","LOP_U_UA_Fatigue_04","LOP_U_AFR_Fatigue_01","LOP_U_AFR_Fatigue_02","LOP_U_AFR_Fatigue_03","LOP_U_AFR_Fatigue_04","U_BG_Guerilla2_3","U_BG_Guerilla2_2","U_BG_Guerrilla_6_1","U_I_C_Soldier_Para_2_F","U_I_C_Soldier_Para_4_F","U_I_C_Soldier_Para_3_F","U_I_C_Soldier_Para_5_F","U_I_C_Soldier_Para_1_F"]call BIS_fnc_selectRandom,
		["V_BandollierB_oli","V_BandollierB_blk","V_TacChestrig_grn_F","V_TacChestrig_cbr_F","V_TacChestrig_oli_F","TRYK_V_harnes_blk_L","TRYK_V_harnes_od_L","TRYK_V_harnes_TAN_L","LOP_V_Chestrig_Kamysh","LOP_V_Chestrig_VSR"]call BIS_fnc_selectRandom,
		"rhs_rpg_empty",
		["","LOP_H_SSh68Helmet_BLK","rhs_ssh68","H_Bandanna_blu","LOP_V_Chestrig_Kamysh","H_Bandanna_gry","H_Bandanna_camo","H_Beret_blk","H_Booniehat_khk","H_Booniehat_oli","H_Booniehat_tan","H_Hat_camo","H_Bandanna_cbr","H_Bandanna_sgg","H_Bandanna_khk","H_Cap_grn","H_Cap_oli","H_Cap_blk","TRYK_H_Bandana_H","TRYK_H_Bandana_wig","TRYK_H_Booniehat_WOOD"]call BIS_fnc_selectRandom,
		["","PU_shemagh_OD","PU_shemagh_Tan","","G_Bandanna_khk","G_Bandanna_oli","","G_Bandanna_tan"]call BIS_fnc_selectRandom,
		["hlc_rifle_sig5104",(["hlc_20Rnd_762x51_b_amt"] + _primaryItems)],
		["rhs_weap_rpg7",(["rhs_rpg7_PG7VL_mag"] + _secondaryItems)],
		["",_handgunItems],
		["ItemWatch"],[],
		[],[],
		[["rhs_rpg7_PG7VL_mag",2],["rhs_rpg7_OG7V_mag",2]],
		[["hlc_20Rnd_762x51_b_amt",10]]]execVM "framework\equipment\scripts\equipment_server.sqf";
	};
	
	case "rebel_M1903A1_rgp7v":
	{
		[(_this select 0),
		["U_I_C_Soldier_Bandit_4_F","U_I_C_Soldier_Bandit_5_F","U_I_C_Soldier_Bandit_1_F","U_I_C_Soldier_Bandit_3_F","U_I_C_Soldier_Bandit_2_F","LOP_U_UA_Fatigue_01","LOP_U_UA_Fatigue_02","LOP_U_UA_Fatigue_04","LOP_U_AFR_Fatigue_01","LOP_U_AFR_Fatigue_02","LOP_U_AFR_Fatigue_03","LOP_U_AFR_Fatigue_04","U_BG_Guerilla2_3","U_BG_Guerilla2_2","U_BG_Guerrilla_6_1","U_I_C_Soldier_Para_2_F","U_I_C_Soldier_Para_4_F","U_I_C_Soldier_Para_3_F","U_I_C_Soldier_Para_5_F","U_I_C_Soldier_Para_1_F"]call BIS_fnc_selectRandom,
		["V_BandollierB_oli","V_BandollierB_blk","V_TacChestrig_grn_F","V_TacChestrig_cbr_F","V_TacChestrig_oli_F","TRYK_V_harnes_blk_L","TRYK_V_harnes_od_L","TRYK_V_harnes_TAN_L","LOP_V_Chestrig_Kamysh","LOP_V_Chestrig_VSR"]call BIS_fnc_selectRandom,
		"rhs_rpg_empty",
		["","LOP_H_SSh68Helmet_BLK","rhs_ssh68","H_Bandanna_blu","LOP_V_Chestrig_Kamysh","H_Bandanna_gry","H_Bandanna_camo","H_Beret_blk","H_Booniehat_khk","H_Booniehat_oli","H_Booniehat_tan","H_Hat_camo","H_Bandanna_cbr","H_Bandanna_sgg","H_Bandanna_khk","H_Cap_grn","H_Cap_oli","H_Cap_blk","TRYK_H_Bandana_H","TRYK_H_Bandana_wig","TRYK_H_Booniehat_WOOD"]call BIS_fnc_selectRandom,
		["","PU_shemagh_OD","PU_shemagh_Tan","","G_Bandanna_khk","G_Bandanna_oli","","G_Bandanna_tan"]call BIS_fnc_selectRandom,
		["hlc_rifle_M1903A1",(["hlc_5rnd_3006_1903"] + _primaryItems)],
		["rhs_weap_rpg7",(["rhs_rpg7_PG7VL_mag"] + _secondaryItems)],
		["",_handgunItems],
		["ItemWatch"],[],
		[],[],
		[["rhs_rpg7_PG7VL_mag",2],["rhs_rpg7_OG7V_mag",2]],
		[["hlc_5rnd_3006_1903",15]]]execVM "framework\equipment\scripts\equipment_server.sqf";
	};
	
	case "rebel_M14_rgp7v":
	{
		[(_this select 0),
		["U_I_C_Soldier_Bandit_4_F","U_I_C_Soldier_Bandit_5_F","U_I_C_Soldier_Bandit_1_F","U_I_C_Soldier_Bandit_3_F","U_I_C_Soldier_Bandit_2_F","LOP_U_UA_Fatigue_01","LOP_U_UA_Fatigue_02","LOP_U_UA_Fatigue_04","LOP_U_AFR_Fatigue_01","LOP_U_AFR_Fatigue_02","LOP_U_AFR_Fatigue_03","LOP_U_AFR_Fatigue_04","U_BG_Guerilla2_3","U_BG_Guerilla2_2","U_BG_Guerrilla_6_1","U_I_C_Soldier_Para_2_F","U_I_C_Soldier_Para_4_F","U_I_C_Soldier_Para_3_F","U_I_C_Soldier_Para_5_F","U_I_C_Soldier_Para_1_F"]call BIS_fnc_selectRandom,
		["V_BandollierB_oli","V_BandollierB_blk","V_TacChestrig_grn_F","V_TacChestrig_cbr_F","V_TacChestrig_oli_F","TRYK_V_harnes_blk_L","TRYK_V_harnes_od_L","TRYK_V_harnes_TAN_L","LOP_V_Chestrig_Kamysh","LOP_V_Chestrig_VSR"]call BIS_fnc_selectRandom,
		"rhs_rpg_empty",
		["","LOP_H_SSh68Helmet_BLK","rhs_ssh68","H_Bandanna_blu","LOP_V_Chestrig_Kamysh","H_Bandanna_gry","H_Bandanna_camo","H_Beret_blk","H_Booniehat_khk","H_Booniehat_oli","H_Booniehat_tan","H_Hat_camo","H_Bandanna_cbr","H_Bandanna_sgg","H_Bandanna_khk","H_Cap_grn","H_Cap_oli","H_Cap_blk","TRYK_H_Bandana_H","TRYK_H_Bandana_wig","TRYK_H_Booniehat_WOOD"]call BIS_fnc_selectRandom,
		["","PU_shemagh_OD","PU_shemagh_Tan","","G_Bandanna_khk","G_Bandanna_oli","","G_Bandanna_tan"]call BIS_fnc_selectRandom,
		["hlc_rifle_M14",(["hlc_20Rnd_762x51_B_M14"] + _primaryItems)],
		["rhs_weap_rpg7",(["rhs_rpg7_PG7VL_mag"] + _secondaryItems)],
		["",_handgunItems],
		["ItemWatch"],[],
		[],[],
		[["rhs_rpg7_PG7VL_mag",2],["rhs_rpg7_OG7V_mag",2]],
		[["hlc_20Rnd_762x51_B_M14",10]]]execVM "framework\equipment\scripts\equipment_server.sqf";
	};
	
	case "rebel_coltcarbine_m72a7":
	{
		[(_this select 0),
		["U_I_C_Soldier_Bandit_4_F","U_I_C_Soldier_Bandit_5_F","U_I_C_Soldier_Bandit_1_F","U_I_C_Soldier_Bandit_3_F","U_I_C_Soldier_Bandit_2_F","LOP_U_UA_Fatigue_01","LOP_U_UA_Fatigue_02","LOP_U_UA_Fatigue_04","LOP_U_AFR_Fatigue_01","LOP_U_AFR_Fatigue_02","LOP_U_AFR_Fatigue_03","LOP_U_AFR_Fatigue_04","U_BG_Guerilla2_3","U_BG_Guerilla2_2","U_BG_Guerrilla_6_1","U_I_C_Soldier_Para_2_F","U_I_C_Soldier_Para_4_F","U_I_C_Soldier_Para_3_F","U_I_C_Soldier_Para_5_F","U_I_C_Soldier_Para_1_F"]call BIS_fnc_selectRandom,
		["V_BandollierB_oli","V_BandollierB_blk","V_TacChestrig_grn_F","V_TacChestrig_cbr_F","V_TacChestrig_oli_F","TRYK_V_harnes_blk_L","TRYK_V_harnes_od_L","TRYK_V_harnes_TAN_L","LOP_V_Chestrig_Kamysh","LOP_V_Chestrig_VSR"]call BIS_fnc_selectRandom,
		"",
		["","LOP_H_SSh68Helmet_BLK","rhs_ssh68","H_Bandanna_blu","LOP_V_Chestrig_Kamysh","H_Bandanna_gry","H_Bandanna_camo","H_Beret_blk","H_Booniehat_khk","H_Booniehat_oli","H_Booniehat_tan","H_Hat_camo","H_Bandanna_cbr","H_Bandanna_sgg","H_Bandanna_khk","H_Cap_grn","H_Cap_oli","H_Cap_blk","TRYK_H_Bandana_H","TRYK_H_Bandana_wig","TRYK_H_Booniehat_WOOD"]call BIS_fnc_selectRandom,
		["","PU_shemagh_OD","PU_shemagh_Tan","","G_Bandanna_khk","G_Bandanna_oli","","G_Bandanna_tan"]call BIS_fnc_selectRandom,
		["hlc_rifle_Colt727",(["hlc_30rnd_556x45_EPR"] + _primaryItems)],
		["rhs_weap_m72a7",(["rhs_m72a7_mag"] + _secondaryItems)],
		["",_handgunItems],
		["ItemWatch"],[],
		[],[],[],
		[["hlc_30rnd_556x45_EPR",8]]]execVM "framework\equipment\scripts\equipment_server.sqf";
	};

	case "rebel_ak47_m72a7":
	{
		[(_this select 0),
		["U_I_C_Soldier_Bandit_4_F","U_I_C_Soldier_Bandit_5_F","U_I_C_Soldier_Bandit_1_F","U_I_C_Soldier_Bandit_3_F","U_I_C_Soldier_Bandit_2_F","LOP_U_UA_Fatigue_01","LOP_U_UA_Fatigue_02","LOP_U_UA_Fatigue_04","LOP_U_AFR_Fatigue_01","LOP_U_AFR_Fatigue_02","LOP_U_AFR_Fatigue_03","LOP_U_AFR_Fatigue_04","U_BG_Guerilla2_3","U_BG_Guerilla2_2","U_BG_Guerrilla_6_1","U_I_C_Soldier_Para_2_F","U_I_C_Soldier_Para_4_F","U_I_C_Soldier_Para_3_F","U_I_C_Soldier_Para_5_F","U_I_C_Soldier_Para_1_F"]call BIS_fnc_selectRandom,
		["V_BandollierB_oli","V_BandollierB_blk","V_TacChestrig_grn_F","V_TacChestrig_cbr_F","V_TacChestrig_oli_F","TRYK_V_harnes_blk_L","TRYK_V_harnes_od_L","TRYK_V_harnes_TAN_L","LOP_V_Chestrig_Kamysh","LOP_V_Chestrig_VSR"]call BIS_fnc_selectRandom,
		"",
		["","LOP_H_SSh68Helmet_BLK","rhs_ssh68","H_Bandanna_blu","LOP_V_Chestrig_Kamysh","H_Bandanna_gry","H_Bandanna_camo","H_Beret_blk","H_Booniehat_khk","H_Booniehat_oli","H_Booniehat_tan","H_Hat_camo","H_Bandanna_cbr","H_Bandanna_sgg","H_Bandanna_khk","H_Cap_grn","H_Cap_oli","H_Cap_blk","TRYK_H_Bandana_H","TRYK_H_Bandana_wig","TRYK_H_Booniehat_WOOD"]call BIS_fnc_selectRandom,
		["","PU_shemagh_OD","PU_shemagh_Tan","","G_Bandanna_khk","G_Bandanna_oli","","G_Bandanna_tan"]call BIS_fnc_selectRandom,
		["hlc_rifle_ak47",(["hlc_30Rnd_762x39_b_ak"] + _primaryItems)],
		["rhs_weap_m72a7",(["rhs_m72a7_mag"] + _secondaryItems)],
		["",_handgunItems],
		["ItemWatch"],[],
		[],[],[],
		[["hlc_30Rnd_762x39_b_ak",8]]]execVM "framework\equipment\scripts\equipment_server.sqf";
	};
	
	case "rebel_akm_m72a7":
	{
		[(_this select 0),
		["U_I_C_Soldier_Bandit_4_F","U_I_C_Soldier_Bandit_5_F","U_I_C_Soldier_Bandit_1_F","U_I_C_Soldier_Bandit_3_F","U_I_C_Soldier_Bandit_2_F","LOP_U_UA_Fatigue_01","LOP_U_UA_Fatigue_02","LOP_U_UA_Fatigue_04","LOP_U_AFR_Fatigue_01","LOP_U_AFR_Fatigue_02","LOP_U_AFR_Fatigue_03","LOP_U_AFR_Fatigue_04","U_BG_Guerilla2_3","U_BG_Guerilla2_2","U_BG_Guerrilla_6_1","U_I_C_Soldier_Para_2_F","U_I_C_Soldier_Para_4_F","U_I_C_Soldier_Para_3_F","U_I_C_Soldier_Para_5_F","U_I_C_Soldier_Para_1_F"]call BIS_fnc_selectRandom,
		["V_BandollierB_oli","V_BandollierB_blk","V_TacChestrig_grn_F","V_TacChestrig_cbr_F","V_TacChestrig_oli_F","TRYK_V_harnes_blk_L","TRYK_V_harnes_od_L","TRYK_V_harnes_TAN_L","LOP_V_Chestrig_Kamysh","LOP_V_Chestrig_VSR"]call BIS_fnc_selectRandom,
		"",
		["","LOP_H_SSh68Helmet_BLK","rhs_ssh68","H_Bandanna_blu","LOP_V_Chestrig_Kamysh","H_Bandanna_gry","H_Bandanna_camo","H_Beret_blk","H_Booniehat_khk","H_Booniehat_oli","H_Booniehat_tan","H_Hat_camo","H_Bandanna_cbr","H_Bandanna_sgg","H_Bandanna_khk","H_Cap_grn","H_Cap_oli","H_Cap_blk","TRYK_H_Bandana_H","TRYK_H_Bandana_wig","TRYK_H_Booniehat_WOOD"]call BIS_fnc_selectRandom,
		["","PU_shemagh_OD","PU_shemagh_Tan","","G_Bandanna_khk","G_Bandanna_oli","","G_Bandanna_tan"]call BIS_fnc_selectRandom,
		["hlc_rifle_akm",(["hlc_30Rnd_762x39_b_ak"] + _primaryItems)],
		["rhs_weap_m72a7",(["rhs_m72a7_mag"] + _secondaryItems)],
		["",_handgunItems],
		["ItemWatch"],[],
		[],[],[],
		[["hlc_30Rnd_762x39_b_ak",8]]]execVM "framework\equipment\scripts\equipment_server.sqf";
	};
	
	case "rebel_sig510_m72a7":
	{
		[(_this select 0),
		["U_I_C_Soldier_Bandit_4_F","U_I_C_Soldier_Bandit_5_F","U_I_C_Soldier_Bandit_1_F","U_I_C_Soldier_Bandit_3_F","U_I_C_Soldier_Bandit_2_F","LOP_U_UA_Fatigue_01","LOP_U_UA_Fatigue_02","LOP_U_UA_Fatigue_04","LOP_U_AFR_Fatigue_01","LOP_U_AFR_Fatigue_02","LOP_U_AFR_Fatigue_03","LOP_U_AFR_Fatigue_04","U_BG_Guerilla2_3","U_BG_Guerilla2_2","U_BG_Guerrilla_6_1","U_I_C_Soldier_Para_2_F","U_I_C_Soldier_Para_4_F","U_I_C_Soldier_Para_3_F","U_I_C_Soldier_Para_5_F","U_I_C_Soldier_Para_1_F"]call BIS_fnc_selectRandom,
		["V_BandollierB_oli","V_BandollierB_blk","V_TacChestrig_grn_F","V_TacChestrig_cbr_F","V_TacChestrig_oli_F","TRYK_V_harnes_blk_L","TRYK_V_harnes_od_L","TRYK_V_harnes_TAN_L","LOP_V_Chestrig_Kamysh","LOP_V_Chestrig_VSR"]call BIS_fnc_selectRandom,
		"",
		["","LOP_H_SSh68Helmet_BLK","rhs_ssh68","H_Bandanna_blu","LOP_V_Chestrig_Kamysh","H_Bandanna_gry","H_Bandanna_camo","H_Beret_blk","H_Booniehat_khk","H_Booniehat_oli","H_Booniehat_tan","H_Hat_camo","H_Bandanna_cbr","H_Bandanna_sgg","H_Bandanna_khk","H_Cap_grn","H_Cap_oli","H_Cap_blk","TRYK_H_Bandana_H","TRYK_H_Bandana_wig","TRYK_H_Booniehat_WOOD"]call BIS_fnc_selectRandom,
		["","PU_shemagh_OD","PU_shemagh_Tan","","G_Bandanna_khk","G_Bandanna_oli","","G_Bandanna_tan"]call BIS_fnc_selectRandom,
		["hlc_rifle_sig5104",(["hlc_20Rnd_762x51_b_amt"] + _primaryItems)],
		["rhs_weap_m72a7",(["rhs_m72a7_mag"] + _secondaryItems)],
		["",_handgunItems],
		["ItemWatch"],[],
		[],[],[],
		[["hlc_20Rnd_762x51_b_amt",10]]]execVM "framework\equipment\scripts\equipment_server.sqf";
	};
	
	case "rebel_M1903A1_m72a7":
	{
		[(_this select 0),
		["U_I_C_Soldier_Bandit_4_F","U_I_C_Soldier_Bandit_5_F","U_I_C_Soldier_Bandit_1_F","U_I_C_Soldier_Bandit_3_F","U_I_C_Soldier_Bandit_2_F","LOP_U_UA_Fatigue_01","LOP_U_UA_Fatigue_02","LOP_U_UA_Fatigue_04","LOP_U_AFR_Fatigue_01","LOP_U_AFR_Fatigue_02","LOP_U_AFR_Fatigue_03","LOP_U_AFR_Fatigue_04","U_BG_Guerilla2_3","U_BG_Guerilla2_2","U_BG_Guerrilla_6_1","U_I_C_Soldier_Para_2_F","U_I_C_Soldier_Para_4_F","U_I_C_Soldier_Para_3_F","U_I_C_Soldier_Para_5_F","U_I_C_Soldier_Para_1_F"]call BIS_fnc_selectRandom,
		["V_BandollierB_oli","V_BandollierB_blk","V_TacChestrig_grn_F","V_TacChestrig_cbr_F","V_TacChestrig_oli_F","TRYK_V_harnes_blk_L","TRYK_V_harnes_od_L","TRYK_V_harnes_TAN_L","LOP_V_Chestrig_Kamysh","LOP_V_Chestrig_VSR"]call BIS_fnc_selectRandom,
		"",
		["","LOP_H_SSh68Helmet_BLK","rhs_ssh68","H_Bandanna_blu","LOP_V_Chestrig_Kamysh","H_Bandanna_gry","H_Bandanna_camo","H_Beret_blk","H_Booniehat_khk","H_Booniehat_oli","H_Booniehat_tan","H_Hat_camo","H_Bandanna_cbr","H_Bandanna_sgg","H_Bandanna_khk","H_Cap_grn","H_Cap_oli","H_Cap_blk","TRYK_H_Bandana_H","TRYK_H_Bandana_wig","TRYK_H_Booniehat_WOOD"]call BIS_fnc_selectRandom,
		["","PU_shemagh_OD","PU_shemagh_Tan","","G_Bandanna_khk","G_Bandanna_oli","","G_Bandanna_tan"]call BIS_fnc_selectRandom,
		["hlc_rifle_M1903A1",(["hlc_5rnd_3006_1903"] + _primaryItems)],
		["rhs_weap_m72a7",(["rhs_m72a7_mag"] + _secondaryItems)],
		["",_handgunItems],
		["ItemWatch"],[],
		[],[],[],
		[["hlc_5rnd_3006_1903",15]]]execVM "framework\equipment\scripts\equipment_server.sqf";
	};
	
	case "rebel_M14_m72a7":
	{
		[(_this select 0),
		["U_I_C_Soldier_Bandit_4_F","U_I_C_Soldier_Bandit_5_F","U_I_C_Soldier_Bandit_1_F","U_I_C_Soldier_Bandit_3_F","U_I_C_Soldier_Bandit_2_F","LOP_U_UA_Fatigue_01","LOP_U_UA_Fatigue_02","LOP_U_UA_Fatigue_04","LOP_U_AFR_Fatigue_01","LOP_U_AFR_Fatigue_02","LOP_U_AFR_Fatigue_03","LOP_U_AFR_Fatigue_04","U_BG_Guerilla2_3","U_BG_Guerilla2_2","U_BG_Guerrilla_6_1","U_I_C_Soldier_Para_2_F","U_I_C_Soldier_Para_4_F","U_I_C_Soldier_Para_3_F","U_I_C_Soldier_Para_5_F","U_I_C_Soldier_Para_1_F"]call BIS_fnc_selectRandom,
		["V_BandollierB_oli","V_BandollierB_blk","V_TacChestrig_grn_F","V_TacChestrig_cbr_F","V_TacChestrig_oli_F","TRYK_V_harnes_blk_L","TRYK_V_harnes_od_L","TRYK_V_harnes_TAN_L","LOP_V_Chestrig_Kamysh","LOP_V_Chestrig_VSR"]call BIS_fnc_selectRandom,
		"",
		["","LOP_H_SSh68Helmet_BLK","rhs_ssh68","H_Bandanna_blu","LOP_V_Chestrig_Kamysh","H_Bandanna_gry","H_Bandanna_camo","H_Beret_blk","H_Booniehat_khk","H_Booniehat_oli","H_Booniehat_tan","H_Hat_camo","H_Bandanna_cbr","H_Bandanna_sgg","H_Bandanna_khk","H_Cap_grn","H_Cap_oli","H_Cap_blk","TRYK_H_Bandana_H","TRYK_H_Bandana_wig","TRYK_H_Booniehat_WOOD"]call BIS_fnc_selectRandom,
		["","PU_shemagh_OD","PU_shemagh_Tan","","G_Bandanna_khk","G_Bandanna_oli","","G_Bandanna_tan"]call BIS_fnc_selectRandom,
		["hlc_rifle_M14",(["hlc_20Rnd_762x51_B_M14"] + _primaryItems)],
		["rhs_weap_m72a7",(["rhs_m72a7_mag"] + _secondaryItems)],
		["",_handgunItems],
		["ItemWatch"],[],
		[],[],[],
		[["hlc_20Rnd_762x51_B_M14",10]]]execVM "framework\equipment\scripts\equipment_server.sqf";
	};
	
	//default empty
	default
	{
		[(_this select 0), "","","","","",["",[]],["",[]],["",[]],[],[],[],[],[],[]]execVM "framework\equipment\scripts\equipment_server.sqf";
	};
};