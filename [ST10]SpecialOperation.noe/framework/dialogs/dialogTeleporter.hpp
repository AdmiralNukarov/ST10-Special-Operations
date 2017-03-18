class dialogFrameworkTeleporter
{
	idd = 12000;
	movingenable = 0;
	onLoad = "['load']execVM 'framework\dialogs\scripts\dialogTeleporter.sqf';";
	onUnload = "['unload']execVM 'framework\dialogs\scripts\dialogTeleporter.sqf';";
	
	class ControlsBackground
	{
		class teleporterBackground: RscPicture
		{
			idc = 1200;
			text = "framework\dialogs\resources\bgpc.paa";
			x = 0.242187 * safezoneW + safezoneX;
			y = 0.126 * safezoneH + safezoneY;
			w = 0.515625 * safezoneW;
			h = 0.759 * safezoneH;
		};
		
		class teleporterMap: RscMapControl3
		{
			idc = 1201;
			
			x = 0.29375 * safezoneW + safezoneX;
			y = 0.225 * safezoneH + safezoneY;
			w = 0.4125 * safezoneW;
			h = 0.484 * safezoneH;
		};
	};
	
	class Controls
	{
		class buClose: RscButtonSealTeam
		{
			idc = 1600;
			text = "Fenster schliessen"; //--- ToDo: Localize;
			x = 0.29375 * safezoneW + safezoneX;
			y = 0.731 * safezoneH + safezoneY;
			w = 0.159844 * safezoneW;
			h = 0.044 * safezoneH;
			tooltip = "Hier klicken um das Fenster ohne Teleport zu schließen."; //--- ToDo: Localize;
			action = "closeDialog 0;";
		};
		
		class buTeleport: RscButtonSealTeam
		{
			idc = 1601;
			text = "Teleport aktivieren"; //--- ToDo: Localize;
			x = 0.546406 * safezoneW + safezoneX;
			y = 0.731 * safezoneH + safezoneY;
			w = 0.159844 * safezoneW;
			h = 0.044 * safezoneH;
			tooltip = "Der Spieler wird zum Marker ""Teleporterziel"" teleportiert."; //--- ToDo: Localize;
			action = "(vehicle player) setPos (markerPos 'personalTeleporter'); closeDialog 0;";
		};
	};	
};
