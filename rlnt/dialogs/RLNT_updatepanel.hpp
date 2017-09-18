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
			x = 0.016344 * safezoneW + safezoneX;
			y = 0.0204 * safezoneH + safezoneY;
			w = 0.203151 * safezoneW;
			h = 0.0968 * safezoneH;
			colorBackground[] = {0,0,0,0.3};
		};
		class rlnt_text_background: RLNT_RscText
		{
			idc = 1027;
			x = 0.0194375 * safezoneW + safezoneX;
			y = 0.0248 * safezoneH + safezoneY;
			w = 0.196904 * safezoneW;
			h = 0.087965 * safezoneH;
			colorBackground[] = {0,0.2,0,0.7};
		};
		class rlnt_frame_panel: RLNT_RscFrame
		{
			idc = 1806;
			x = 0.0194375 * safezoneW + safezoneX;
			y = 0.0248 * safezoneH + safezoneY;
			w = 0.196964 * safezoneW;
			h = 0.088 * safezoneH;
		};
		class rlnt_text_header: RLNT_RscText
		{
			idc = 1028;
			text = "";
			x = 0.0204688 * safezoneW + safezoneX;
			y = 0.027 * safezoneH + safezoneY;
			w = 0.095884 * safezoneW;
			h = 0.0329878 * safezoneH;
			sizeEx = 0.02076 * SafezoneH;
		};
		class rlnt_text_line_1: RLNT_RscText
		{
			idc = 1029;
			text = "";
			x = 0.0204687 * safezoneW + safezoneX;
			y = 0.0644 * safezoneH + safezoneY;
			w = 0.192781 * safezoneW;
			h = 0.0175934 * safezoneH;
			sizeEx = 0.0173 * SafezoneH;
		};
		class rlnt_text_line_2: RLNT_RscText
		{
			idc = 1030;
			text = "";
			x = 0.0204687 * safezoneW + safezoneX;
			y = 0.0864 * safezoneH + safezoneY;
			w = 0.192781 * safezoneW;
			h = 0.0175934 * safezoneH;
			sizeEx = 0.0173 * SafezoneH;
		};
	};
};

class rlnt_updatepanel_style_2 {

	idd = 7208;
	movingenable = false;
	duration = 10e10;
	onLoad = "uiNamespace setVariable ['rlnt_updatepanel_style_2', _this select 0];";

	class Controls {
		class rlnt_text_header: RscText
		{
			idc = 1028;
			text = "";
			x = 0.0204688 * safezoneW + safezoneX;
			y = 0.027 * safezoneH + safezoneY;
			w = 0.095884 * safezoneW;
			h = 0.0329878 * safezoneH;
			sizeEx = 0.02076 * SafezoneH;
		};
		class rlnt_text_line_1: RscText
		{
			idc = 1029;
			text = "";
			x = 0.0204687 * safezoneW + safezoneX;
			y = 0.0644 * safezoneH + safezoneY;
			w = 0.192781 * safezoneW;
			h = 0.0175934 * safezoneH;
			sizeEx = 0.0173 * SafezoneH;
		};
		class rlnt_text_line_2: RscText
		{
			idc = 1030;
			text = "";
			x = 0.0204687 * safezoneW + safezoneX;
			y = 0.0864 * safezoneH + safezoneY;
			w = 0.192781 * safezoneW;
			h = 0.0175934 * safezoneH;
			sizeEx = 0.0173 * SafezoneH;
		};
	};
};

class rlnt_updatepanel_style_3 {

	idd = 7209;
	movingenable = false;
	duration = 10e10;
	onLoad = "uiNamespace setVariable ['rlnt_updatepanel_style_3', _this select 0];";

	class Controls {
		class rlnt_text_border: RLNT_RscText
		{
			idc = 1026;
			x = 0.016344 * safezoneW + safezoneX;
			y = 0.0204 * safezoneH + safezoneY;
			w = 0.262949 * safezoneW;
			h = 0.0968 * safezoneH;
			colorBackground[] = {0,0,0,0.3};
		};
		class rlnt_text_background: RLNT_RscText
		{
			idc = 1027;
			x = 0.0194375 * safezoneW + safezoneX;
			y = 0.0248 * safezoneH + safezoneY;
			w = 0.255671 * safezoneW;
			h = 0.087965 * safezoneH;
			colorBackground[] = {0,0.2,0,0.7};
		};
		class rlnt_frame_panel: RLNT_RscFrame
		{
			idc = 1806;
			x = 0.0792483 * safezoneW + safezoneX;
			y = 0.0248 * safezoneH + safezoneY;
			w = 0.196964 * safezoneW;
			h = 0.088 * safezoneH;
		};
		class rlnt_text_header: RLNT_RscText
		{
			idc = 1028;
			text = "";
			x = 0.0802796 * safezoneW + safezoneX;
			y = 0.027 * safezoneH + safezoneY;
			w = 0.095884 * safezoneW;
			h = 0.0329878 * safezoneH;
			sizeEx = 0.02076 * SafezoneH;
		};
		class rlnt_text_line_1: RLNT_RscText
		{
			idc = 1029;
			text = "";
			x = 0.0802796 * safezoneW + safezoneX;
			y = 0.0644 * safezoneH + safezoneY;
			w = 0.192781 * safezoneW;
			h = 0.0175934 * safezoneH;
			sizeEx = 0.0173 * SafezoneH;
		};
		class rlnt_text_line_2: RLNT_RscText
		{
			idc = 1030;
			text = "";
			x = 0.0802796 * safezoneW + safezoneX;
			y = 0.0864 * safezoneH + safezoneY;
			w = 0.192781 * safezoneW;
			h = 0.0175934 * safezoneH;
			sizeEx = 0.0173 * SafezoneH;
		};
		class rlnt_img_pic: RLNT_RscPicture
		{
			idc = 1206;
			text = "#(argb,8,8,3)color(1,1,1,1)";
			x = 0.0194676 * safezoneW + safezoneX;
			y = 0.0248 * safezoneH + safezoneY;
			w = 0.0577499 * safezoneW;
			h = 0.088 * safezoneH;
		};
		class rlnt_frame_image: RLNT_RscFrame
		{
			idc = 1807;
			x = 0.0194675 * safezoneW + safezoneX;
			y = 0.0248 * safezoneH + safezoneY;
			w = 0.0588 * safezoneW;
			h = 0.088 * safezoneH;
		};
	};
};

class rlnt_updatepanel_style_4 {

	idd = 7210;
	movingenable = false;
	duration = 10e10;
	onLoad = "uiNamespace setVariable ['rlnt_updatepanel_style_4', _this select 0];";

	class Controls {
		class rlnt_text_header: RLNT_RscText
		{
			idc = 1028;
			text = "";
			x = 0.0802796 * safezoneW + safezoneX;
			y = 0.027 * safezoneH + safezoneY;
			w = 0.095884 * safezoneW;
			h = 0.0329878 * safezoneH;
			sizeEx = 0.02076 * SafezoneH;
		};
		class rlnt_text_line_1: RLNT_RscText
		{
			idc = 1029;
			text = "";
			x = 0.0802796 * safezoneW + safezoneX;
			y = 0.0644 * safezoneH + safezoneY;
			w = 0.192781 * safezoneW;
			h = 0.0175934 * safezoneH;
			sizeEx = 0.0173 * SafezoneH;
		};
		class rlnt_text_line_2: RLNT_RscText
		{
			idc = 1030;
			text = "";
			x = 0.0802796 * safezoneW + safezoneX;
			y = 0.0864 * safezoneH + safezoneY;
			w = 0.192781 * safezoneW;
			h = 0.0175934 * safezoneH;
			sizeEx = 0.0173 * SafezoneH;
		};
		class rlnt_img_pic: RLNT_RscPicture
		{
			idc = 1206;
			text = "#(argb,8,8,3)color(1,1,1,1)";
			x = 0.0235923 * safezoneW + safezoneX;
			y = 0.038 * safezoneH + safezoneY;
			w = 0.0515625 * safezoneW;
			h = 0.0638 * safezoneH;
		};
	};
};
