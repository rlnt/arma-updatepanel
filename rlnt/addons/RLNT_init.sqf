/*
Filename:     RLNT_init.sqf
Author:       Relentless
Description:  Init for all RLNT-Additions
*/


/*  Default RLNT Debug  */
if (rlnt_debug) then {
  diag_log "[RLNT][MAIN] The RLNT_init.sqf was succesfully loaded!";
};


execVM "rlnt\eventHandlers\RLNT_eventHandlers.sqf";                             //EventHandlers
execVM "rlnt\addons\Update Panel\RLNT_up_init.sqf";                            //RLNT Update Panel
