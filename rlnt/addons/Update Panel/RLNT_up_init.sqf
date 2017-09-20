/*
Filename:     RLNT_up_init.sqf
Author:       Relentless
Description:  Init for Update Panel
*/


/*  Default RLNT Debug  */
if (rlnt_debug) then {
  diag_log "[RLNT][MAIN] The Update Panel Init was succesfully loaded!";
};


/*  Load config  */
rlnt_up_configLoaded = false;
execVM "rlnt\addons\Update Panel\RLNT_up_config.sqf";


/*  UP RLNT Debug  */
if (rlnt_up_debug) then {
  diag_log format ["[RLNT][UP] The default variable array is %1.", rlnt_up_defaults];
};
