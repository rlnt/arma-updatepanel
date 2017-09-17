/*
Filename:     RLNT_up_init.sqf
Author:       Relentless
Description:  Init for RLNT-CustomUpdatePanel
*/


/*  Default RLNT Debug  */
if (rlnt_debug) then {
  diag_log "[RLNT][MAIN] The Costum Update Panel Init was succesfully loaded!";
};



execVM "rlnt\scripts\Update Panel\RLNT_up_config.sqf";
