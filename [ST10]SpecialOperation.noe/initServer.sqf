//////////////////////////////////////////////////////////////////
// Function file for Armed Assault
// Created by: Nuka [www.sealteam10.de]
//////////////////////////////////////////////////////////////////
#include "AiControlSystem\constants.sqf";

setViewDistance 10000;
[]execVM "framework\taskms\initTaskMS.sqf";
MISSION_CANCEL = false;
MISSION_ACTIVE = false;

CENTER_EAST = createCenter EAST;
CENTER_RESISTANCE = createCenter RESISTANCE;
CENTER_CIVILIAN = createCenter CIVILIAN;

{
  _x setFlagTexture "framework\flagtextures\st10_3.jpg";
}forEach [flag_base, flag_spawn_all, flag_spawn_water];