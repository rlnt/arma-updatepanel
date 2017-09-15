/*
Filename:     RLNT_init.sqf
Author:       Relentless
Description:  Init for all RLNT-Relentless Additions
*/

diag_log "Loading RLNT-Additions..."
execVM "rlnt\eventHandlers\RLNT_eventHandlers.sqf";                             //EventHandlers
execVM "rlnt\scripts\Update Panel\RLNT_up_init.sqf";                            //Custom Update Panel
