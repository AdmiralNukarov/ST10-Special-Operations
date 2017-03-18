//////////////////////////////////////////////////////////////////
// Function file for Armed Assault
// Created by: Nuka [www.sealteam10.de]
//////////////////////////////////////////////////////////////////

//_null = [unit, type equipment, bool backpack]execVM "framework\equipment\jungle\equipment_jungle_police.sqf";

/*
	scopes:
*/

_primaryItems = if(count _this > 3) then{_this select 3} else{[]};
_secondaryItems = if(count _this > 4) then{_this select 4} else{[]};
_handgunItems = if(count _this > 5) then{_this select 5} else{[]};

(_this select 0) setVariable ["BIS_enableRandomization", false];

switch(_this select 1) do
{	
	case "jungle_police_heavy":
	{
		[(_this select 0),"U_B_GEN_Soldier_F","TAC_PBDFG2P_B","","H_Cap_police","",
		["hlc_rifle_Colt727",(["hlc_30rnd_556x45_EPR"] + _primaryItems)],
		["",_secondaryItems],
		["RH_m9",(["RH_15Rnd_9x19_M9"] + _handgunItems)],
		["ItemMap","ItemCompass","ItemWatch"],[],
		[["ACE_EarPlugs",1],["ACE_fieldDressing",2],["RH_15Rnd_9x19_M9",4]],
		[["hlc_30rnd_556x45_EPR",6],["rhs_mag_m7a3_cs",2]],
		[],[]]execVM "framework\equipment\scripts\equipment_server.sqf";
	};
	
	case "jungle_police_heavy_shotgun":
	{

		[(_this select 0),"U_B_GEN_Soldier_F","TAC_PBDFG2P_B","","H_Cap_police","",
		["prpl_benelli",(["prpl_8Rnd_12Gauge_Pellets"] + _primaryItems)],
		["",_secondaryItems],
		["RH_m9",(["RH_15Rnd_9x19_M9"] + _handgunItems)],
		["ItemMap","ItemCompass","ItemWatch"],[],
		[["ACE_EarPlugs",1],["ACE_fieldDressing",2],["RH_15Rnd_9x19_M9",4]],
		[["prpl_8Rnd_12Gauge_Pellets",8],["prpl_8Rnd_12Gauge_Slug",8],["rhs_mag_m7a3_cs",2]],
		[],[]]execVM "framework\equipment\scripts\equipment_server.sqf";
	};
	
	case "jungle_police":
	{

		[(_this select 0),"U_B_GEN_Soldier_F","","","H_Beret_gen_F","",
		["",_primaryItems],
		["",_secondaryItems],
		["RH_m9",(["RH_15Rnd_9x19_M9"] + _handgunItems)],
		["ItemMap","ItemCompass","ItemWatch"],[],
		[["ACE_EarPlugs",1],["ACE_fieldDressing",2],["RH_15Rnd_9x19_M9",4]],
		[],[],[]]execVM "framework\equipment\scripts\equipment_server.sqf";
	};
	
	//default empty
	default
	{
		[(_this select 0), "","","","","",["",[]],["",[]],["",[]],[],[],[],[],[],[]]execVM "framework\equipment\scripts\equipment_server.sqf";
	};
};

(_this select 0) setSpeaker (["Male01GRE","Male02GRE","Male03GRE","Male04GRE","Male05GRE","Male06GRE"]call BIS_fnc_selectRandom);
(_this select 0) setSkill 0.8;
(_this select 0) setskill ["courage",1];