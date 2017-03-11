class dialogFrameworkSpawnVehicle
{
	idd = 12000;
	movingenable = 0;
	onLoad = "[]execVM 'framework\dialogs\scripts\dialogSpawnVehicle.sqf';";
	
	class ControlsBackground
	{
		class background_military_pc: RscPicture
		{
			idc = 1200;
			text = "framework\dialogs\resources\bgpc.paa";
			x = 0.288594 * safezoneW + safezoneX;
			y = 0.181 * safezoneH + safezoneY;
			w = 0.422812 * safezoneW;
			h = 0.66 * safezoneH;
		};
	};
	
	class Controls
	{
		class RscListboxVehicles: RscListBoxSealTeam
		{
			idc = 1500;
			x = 0.345312 * safezoneW + safezoneX;
			y = 0.313 * safezoneH + safezoneY;
			w = 0.314531 * safezoneW;
			h = 0.374 * safezoneH;
		};

		class comboVehicleType : RscCombo
		{
			idc = 1501;
			x = 0.340156 * safezoneW + safezoneX;
			y = 0.269 * safezoneH + safezoneY;
			w = 0.319688 * safezoneW;
			h = 0.033 * safezoneH;
			onLBSelChanged = "[]execVM 'framework\dialogs\scripts\dialogSpawnVehicleUpdateListbox.sqf';";
		};
		
		class buClose: RscButtonSealTeam
		{
			idc = 1600;
			text = "Fenster schliessen"; //--- ToDo: Localize;
			x = 0.350469 * safezoneW + safezoneX;
			y = 0.709 * safezoneH + safezoneY;
			w = 0.108281 * safezoneW;
			h = 0.033 * safezoneH;
			tooltip = "Hier klicken um das Fenster ohne Spawn zu schließen."; //--- ToDo: Localize;
			action = "closeDialog 0;";
		};
		
		class buSpawn: RscButtonSealTeam
		{
			idc = 1601;
			text = "Spawn Vehicle"; //--- ToDo: Localize;
			x = 0.546406 * safezoneW + safezoneX;
			y = 0.709 * safezoneH + safezoneY;
			w = 0.108281 * safezoneW;
			h = 0.033 * safezoneH;
			tooltip = "Hier klicken um das ausgewählte Fahrzeug zu spawnen."; //--- ToDo: Localize;
			action = "[]execVM 'framework\dialogs\scripts\spawnVehicle.sqf';";
		};
	};	
};
