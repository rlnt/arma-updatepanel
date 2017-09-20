/*
Filename:     RLNT_up_init.sqf
Author:       Relentless
Description:  Init for Update Panel
*/


/*  Default RLNT Debug  */
if (rlnt_debug) then {
  diag_log "[RLNT][MAIN] The Costum Update Panel Init was succesfully loaded!";
};


rlnt_up_configLoaded = false;
execVM "rlnt\scripts\Update Panel\RLNT_up_config.sqf";
waitUntil {rlnt_up_configLoaded};
rlnt_up_defaults = [rlnt_up_Side,rlnt_up_Style,rlnt_up_Header,rlnt_up_Line1,rlnt_up_Line2,rlnt_up_Img,rlnt_up_Duration,rlnt_up_FontColor,rlnt_up_BgColor];


/*  UP RLNT Debug  */
if (rlnt_up_debug) then {
  diag_log format ["[RLNT][UP] The default variable array is %1.", rlnt_up_defaults];
};
