if(local player) then
{

	MISSION_MAKERS = ["All","Nuka","Highfly"];
	MISSIONS_NUKA = ["NukaKillAllJungleRebels"];
	MISSIONS_HIGHFLY = ["highfly_killGeneral"];
	MISSIONS_ALL = MISSIONS_NUKA + MISSIONS_HIGHFLY;
	MISSION_LIST = [MISSIONS_ALL, MISSIONS_NUKA, MISSIONS_HIGHFLY];
};
if(!isServer) exitWith{};

//########## Nuka ##########//
NUKA_MISSION_PARAM_KILL_ALL_JUNGLE_REBELS = [[11080.2,11523.5,0],[8876.1,7879.17,0],[9555.02,8282.14,0],[11126.4,7673.24,0],[9800.74,6959.33,0],[11161.4,5380.09,0],[8983.68,5470.22,0],[9176.48,4971.81,0],[10641.8,5029.91,0],[10452.1,4095.69,0],[10809.4,3125.86,0],[9401.33,2752.35,0],[11522.9,2235.21,0],[10649.8,1720.27,0],[8051.37,9429.24,0]];



//########## Highfly ##########//
highfly_mission_params_killGeneral = [[[2256.99,293.34,1.9],[[2255.55,307.584,0],358.701]]];