class dialogMissions
{
	idd = 12000;
	movingenable = 0;
	onLoad = "[]execVM 'dialogs\scripts\dialogMissions.sqf';";

	class ControlsBackground
	{
		class background_military_pc : RscPicture
		{
			idc = 1200;
			text = "framework\dialogs\resources\bgpc.paa";
			x = 0.29375 * safezoneW + safezoneX;
			y = 0.062 * safezoneH + safezoneY;
			w = 0.4125 * safezoneW;
			h = 0.884 * safezoneH;
		};
	};

	class Controls
	{
		class RscListboxMissions : RscListBoxSealTeam
		{
			idc = 1500;
			x = 0.355625 * safezoneW + safezoneX;
			y = 0.19 * safezoneH + safezoneY;
			w = 0.28875 * safezoneW;
			h = 0.495 * safezoneH;
		};

		class comboMissionMaker : RscCombo
		{
			idc = 2100;
			x = 0.355625 * safezoneW + safezoneX;
			y = 0.709 * safezoneH + safezoneY;
			w = 0.28875 * safezoneW;
			h = 0.044 * safezoneH;
			onLBSelChanged = "[]execVM 'dialogs\scripts\dialogMissionsUpdate.sqf';";
		};

		class buClose : RscButtonSealTeam
		{
			idc = 1600;
			text = "Close";
			x = 0.355625 * safezoneW + safezoneX;
			y = 0.775 * safezoneH + safezoneY;
			w = 0.0825 * safezoneW;
			h = 0.033 * safezoneH;
			tooltip = "Hier klicken um das Fenster ohne Spawn zu schlieﬂen."; //--- ToDo: Localize;
			action = "closeDialog 0;";
		};

		class buCancel : RscButtonSealTeam
		{
			idc = 1601;
			text = "Cancel Mission";
			x = 0.45875 * safezoneW + safezoneX;
			y = 0.775 * safezoneH + safezoneY;
			w = 0.0825 * safezoneW;
			h = 0.033 * safezoneH;
			tooltip = "Hier klicken um die aktuelle Mission abzubrechen."; //--- ToDo: Localize;
			action = "missionNamespace setVariable ['MISSION_CANCEL', true, true]; missionNamespace setVariable ['MISSION_ACTIVE', false]; []execVM 'dialogs\scripts\dialogMissionsUpdate.sqf';";
		};

		class buStart : RscButtonSealTeam
		{
			idc = 1602;
			text = "Start Mission";
			x = 0.561875 * safezoneW + safezoneX;
			y = 0.775 * safezoneH + safezoneY;
			w = 0.0825 * safezoneW;
			h = 0.033 * safezoneH;
			tooltip = "Hier klicken um das ausgew‰hlte Mission zu starten."; //--- ToDo: Localize;
			action = "[]execVM 'dialogs\scripts\startMission.sqf';";
		};
	};
};
