Version: 0.1.1


#####################################################################################################################
Important Information for Mission Makers									  
														  
missionNamespace setVariable ["MISSION_ACTIVE", false, true]; => set at start (true) and end (false) of your mission
missionNamespace setVariable ["MISSION_CANCEL", false, true]; => use it to cancel your mission, set it after cancel back to false

For map specific mission parameter use the "island_name.sqf" in the port folder. The name of the variable must start with your nickname to avoid duplication! Upper and lower case is not important.
Examples: 
NUKA_KILL_ALL_SPAWN = [a,b,c,d,e,f];
HIGHFLY_KILL_GENERAL = [1,2,3,4,5,6];												  
#####################################################################################################################




#####################
##### ChangeLog #####
#####################

Version 0.1.1

Added:
- Parameter Teleporter
- Parameter Arsenal
- Parameter ViewDistance
- port folder
- port Nogova
- GUI Missions
- Mission Highfly kill General

Changed/Updated:
- Framework Task Management System (initTaskMS.sqf)
- Mission Variables changed to missionNamespace setVariable
- Mission NukaKillAllJungleRebels updated

