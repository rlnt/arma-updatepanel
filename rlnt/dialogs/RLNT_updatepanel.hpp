/*
Filename:     RLNT_updatepanel.hpp
Author:       Relentless
Description:  Displays for RLNT-CustomUpdatePanel
Calculation:  1 GUI_GRID = 0.0173 * SafezoneH
*/

class rlnt_updatepanel_style_1 {

	idd = 7207;
	movingenable = false;
	duration = 10e10;
	onLoad = "uiNamespace setVariable ['rlnt_updatepanel_style_1', _this select 0];";

	class Controls {
		class rlnt_text_border: RLNT_RscText
		{
			idc = 1026;
			x = 0.0122187 * safezoneW + safezoneX;
			y = 0.0226 * safezoneH + safezoneY;
			w = 0.183562 * safezoneW;
			h = 0.11 * safezoneH;
			colorBackground[] = {0,0,0,0.3};
		};
		class rlnt_text_background: RLNT_RscText
		{
			idc = 1027;
			x = 0.0154767 * safezoneW + safezoneX;
			y = 0.0271744 * safezoneH + safezoneY;
			w = 0.176284 * safezoneW;
			h = 0.0989648 * safezoneH;
			colorBackground[] = {0,0.2,0,0.7};
		};
		class rlnt_frame_panel: RLNT_RscFrame
		{
			idc = 1806;
			x = 0.0153125 * safezoneW + safezoneX;
			y = 0.027 * safezoneH + safezoneY;
			w = 0.177375 * safezoneW;
			h = 0.1012 * safezoneH;
		};
		class rlnt_text_header: RLNT_RscText
		{
			idc = 1028;
			colorText[] = {1,1,1,1};
			text = "RLNT Updatepanel:";
			x = 0.0196003 * safezoneW + safezoneX;
			y = 0.0359712 * safezoneH + safezoneY;
			w = 0.0670085 * safezoneW;
			h = 0.0329878 * safezoneH;
			sizeEx = 0.02076 * SafezoneH;
		};
		class rlnt_text_line_1: RLNT_RscText
		{
			idc = 1029;
			colorText[] = {1,1,1,1};
			text = "The player menu has been updated!";
			x = 0.0206312 * safezoneW + safezoneX;
			y = 0.0733574 * safezoneH + safezoneY;
			w = 0.165975 * safezoneW;
			h = 0.0175934 * safezoneH;
		};
		class rlnt_text_line_2: RLNT_RscText
		{
			idc = 1030;
			colorText[] = {1,1,1,1};
			text = "The player menu has been updated!";
			x = 0.0206312 * safezoneW + safezoneX;
			y = 0.0975486 * safezoneH + safezoneY;
			w = 0.165975 * safezoneW;
			h = 0.0175934 * safezoneH;
		};
	};
};

class rlnt_updatepanel_style_2 {

	idd = 7208;
	movingenable = false;
	duration = 10e10;
	onLoad = "uiNamespace setVariable ['rlnt_updatepanel_style_2', _this select 0];";

	class Controls {
		class rlnt_text_border: RLNT_RscText
		{
			idc = 1026;
			x = 0.0122187 * safezoneW + safezoneX;
			y = 0.0226 * safezoneH + safezoneY;
			w = 0.248515 * safezoneW;
			h = 0.11 * safezoneH;
			colorBackground[] = {0,0,0,0.3};
		};
		class rlnt_text_background: RLNT_RscText
		{
			idc = 1027;
			x = 0.0154767 * safezoneW + safezoneX;
			y = 0.0271744 * safezoneH + safezoneY;
			w = 0.241237 * safezoneW;
			h = 0.0989648 * safezoneH;
			colorBackground[] = {0,0.2,0,0.7};
		};
		class rlnt_frame_panel: RLNT_RscFrame
		{
			idc = 1806;
			x = 0.0153125 * safezoneW + safezoneX;
			y = 0.027 * safezoneH + safezoneY;
			w = 0.174282 * safezoneW;
			h = 0.1012 * safezoneH;
		};
		class rlnt_text_header: RLNT_RscText
		{
			idc = 1028;
			text = "RLNT Updatepanel:";
			x = 0.0196003 * safezoneW + safezoneX;
			y = 0.0359712 * safezoneH + safezoneY;
			w = 0.0670085 * safezoneW;
			h = 0.0329878 * safezoneH;
			sizeEx = 0.02076 * SafezoneH;
		};
		class rlnt_text_line_1: RLNT_RscText
		{
			idc = 1029;
			text = "The player menu has been updated!";
			x = 0.0206312 * safezoneW + safezoneX;
			y = 0.0733574 * safezoneH + safezoneY;
			w = 0.165975 * safezoneW;
			h = 0.0175934 * safezoneH;
		};
		class rlnt_text_line_2: RLNT_RscText
		{
			idc = 1030;
			text = "The player menu has been updated!";
			x = 0.0206312 * safezoneW + safezoneX;
			y = 0.0975486 * safezoneH + safezoneY;
			w = 0.165975 * safezoneW;
			h = 0.0175934 * safezoneH;
		};
		class rlnt_img_pic: RLNT_RscPicture
		{
			idc = 1206;
			text = "#(argb,8,8,3)color(1,1,1,1)";
			x = 0.190625 * safezoneW + safezoneX;
			y = 0.027 * safezoneH + safezoneY;
			w = 0.0659999 * safezoneW;
			h = 0.099 * safezoneH;
		};
		class rlnt_frame_image: RLNT_RscFrame
		{
			idc = 1807;
			x = 0.190625 * safezoneW + safezoneX;
			y = 0.027 * safezoneH + safezoneY;
			w = 0.0670498 * safezoneW;
			h = 0.1012 * safezoneH;
		};
	};
};
