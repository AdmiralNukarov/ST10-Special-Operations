//#############################//
//##### Map (port folder) #####//
//#############################//
[]execVM "port\Nogova.sqf";
//#############################//

#include "AiControlSystem\constants.sqf";

setViewDistance 10000;
[]execVM "framework\taskms\initTaskMS.sqf";
missionNamespace setVariable ["MISSION_CANCEL", false, true];
missionNamespace setVariable ["MISSION_ACTIVE", false, true];

CENTER_EAST = createCenter EAST;
CENTER_RESISTANCE = createCenter RESISTANCE;
CENTER_CIVILIAN = createCenter CIVILIAN;

{
  _x setFlagTexture "framework\flagtextures\st10_3.jpg";
}forEach [flag_base, flag_spawn_all, flag_spawn_water];

"START_MISSION" addPublicVariableEventHandler
{
	[]execVM ("scripts\missions\" + START_MISSION + ".sqf");
};