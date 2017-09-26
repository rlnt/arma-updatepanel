/*
Filename:     RLNT_up_init.sqf
Author:       Relentless
Description:  Init for Update Panel
*/


/*  Error-Prevention  */
waitUntil {sleep 0.5; rlnt_initLoaded};


/*  Default RLNT Debug  */
if (rlnt_debug) then {
  diag_log "[RLNT][MAIN] The Update Panel Init was succesfully loaded!";
};


/*  Load config  */
execVM "rlnt\addons\Update Panel\RLNT_up_config.sqf";


/*  UP RLNT Debug  */
if (rlnt_up_debug) then {
  diag_log format ["[RLNT][UP] The default variable array is %1.", str(rlnt_up_defaults)];
};
