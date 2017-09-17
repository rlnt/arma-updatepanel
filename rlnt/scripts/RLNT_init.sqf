/*
Filename:     RLNT_init.sqf
Author:       Relentless
Description:  Init for all RLNT-Relentless Additions
*/


/*  Default RLNT Debug  */
if (rlnt_debug) then {
  diag_log "[RLNT][MAIN] The RLNT_init.sqf was succesfully loaded!";
};


execVM "rlnt\eventHandlers\RLNT_eventHandlers.sqf";                             //EventHandlers
execVM "rlnt\scripts\Update Panel\RLNT_up_init.sqf";                            //Custom Update Panel
