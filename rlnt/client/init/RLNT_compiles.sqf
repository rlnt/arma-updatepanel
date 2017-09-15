/*
Filename:     RLNT_compiles.sqf
Author:       Relentless
Description:  All functions for RLNT-Additions
*/

/*    Client Sided    */
if (isServer) then {
	diag_log "Loading RLNT server compiles...";
};

/*    Server Sided    */
if (!isDedicated) then {
	diag_log "Loading RLNT client compiles...";
};

/*    Both    */
	/* Custom Update Panel */
		RLNT_updatePanel 			= compile preprocessFileLineNumbers "rlnt\functions\RLNT_up_main.sqf";
		RLNT_up_setup					= compile preprocessFileLineNumbers "rlnt\functions\RLNT_up_setup.sqf";
