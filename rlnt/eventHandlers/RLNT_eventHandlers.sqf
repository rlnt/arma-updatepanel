/*
Filename:     RLNT_eventHandlers.sqf
Author:       Relentless
Description:  All client-sided Eventhandlers for RLNT-Additions
*/

/*  RLNT Update Panel */
  "RLNT_up_client" addPublicVariableEventHandler {
    diag_log "client received array";
    (_this select 1) spawn RLNT_up_setup;
  };
