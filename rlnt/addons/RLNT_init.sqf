/*
Filename:     RLNT_init.sqf
Author:       Relentless
Description:  Client Init for all RLNT-Additions
*/


/*  Variables  */
rlnt_initLoaded       = false;
rlnt_up_initLoaded    = false;
rlnt_up_configLoaded  = false;
publicVariableServer "rlnt_initLoaded";
publicVariableServer "rlnt_up_initLoaded";
publicVariableServer "rlnt_up_configLoaded";


////////////////////////////////////////////////////////////
////  Developer-Option:                                 ////
////  Variable to toggle on and off advanced options    ////
////  to help devs finding bugs in this script.         ////
////  DON'T EDIT IF YOU DON'T KNOW WHAT YOU ARE DOING!  ////
////////////////////////////////////////////////////////////
rlnt_debug            = false;         /* default: false */
publicVariableServer "rlnt_debug";


/*  Default RLNT Debug  */
if (rlnt_debug) then {
  diag_log "[RLNT][MAIN] The Client RLNT_init.sqf was succesfully loaded!";
};


execVM "rlnt\client\init\RLNT_compiles.sqf";                                    //Compiles
execVM "rlnt\eventHandlers\RLNT_eventHandlers.sqf";                             //EventHandlers
execVM "rlnt\addons\Update Panel\RLNT_up_init.sqf";                             //RLNT Update Panel


/*  Error-Prevention  */
rlnt_initLoaded = true;
publicVariableServer "rlnt_initLoaded";
