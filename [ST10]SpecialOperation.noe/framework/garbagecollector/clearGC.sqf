if(!isServer) exitWith{};

{deleteVehicle _object;}forEach FRAMEWORK_GC_LIST;
{deleteVehicle _object;}forEach FRAMEWORK_GC_LIST_VEH;

FRAMEWORK_GC_LIST = [];
FRAMEWORK_GC_LIST_VEH = [];