/*
Filename:     RLNT_eventHandlers.sqf
Author:       Relentless
Description:  All client-sided Eventhandlers for RLNT-Additions
*/


/*  Default RLNT Debug  */
if (rlnt_debug) then {
  diag_log "[RLNT] The Client RLNT_eventHandlers.sqf was succesfully loaded!";
};


/*  Custom Update Panel */
  "RLNT_up_client" addPublicVariableEventHandler {

    if (rlnt_up_debug) then {
      diag_log "[RLNT] The RLNT_up_client EventHandler was succesfully triggered!";
    };

    (_this select 1) spawn RLNT_up_setup;
  };
