/*
Filename:     RLNT_compiles.sqf
Author:       Relentless
Description:  All functions for RLNT-Additions
*/


////////////////////////////////////////////////////////////
////  Developer-Option:                                 ////
////  Variable to toggle on and off an advanced option  ////
////  to help devs finding bugs in RLNT scripts.        ////
////  DON'T EDIT IF YOU DON'T KNOW WHAT YOU ARE DOING!  ////
////////////////////////////////////////////////////////////
rlnt_debug            = false;         /* default: false */
publicVariableServer "rlnt_debug";


/*  Default RLNT Debug  */
if (rlnt_debug) then {
  diag_log "[RLNT][MAIN] The RLNT_compiles.sqf was succesfully loaded!";
};


/*  Server Sided  */
if (isServer) then {
	if (rlnt_debug) then {
		diag_log "[RLNT][MAIN] Server-sided compiles are loading...";
	};
};


/*  Client Sided  */
if (!isDedicated) then {
	if (rlnt_debug) then {
		diag_log "[RLNT][MAIN] Client-sided compiles are loading...";
	};
};


/*  Both  */
if (rlnt_debug) then {
	diag_log "[RLNT][MAIN] Compiles are loading...";
};

	//Update Panel
		RLNT_updatePanel 			= compile preprocessFileLineNumbers "rlnt\functions\RLNT_up_main.sqf";
		RLNT_up_setup					= compile preprocessFileLineNumbers "rlnt\functions\RLNT_up_setup.sqf";
