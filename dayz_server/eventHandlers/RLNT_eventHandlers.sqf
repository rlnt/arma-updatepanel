/*
Filename:     RLNT_eventHandlers.sqf
Author:       Relentless
Description:  All server-sided EventHandlers for RLNT-Additions
*/


/*  Default RLNT Debug  */
if (rlnt_debug) then {
  diag_log "[RLNT] The Server RLNT_eventHandlers.sqf was succesfully loaded!";
};


/*  Update Panel  */
  "RLNT_up_global" addPublicVariableEventHandler {

    if (rlnt_up_debug) then {
      diag_log "[RLNT] The RLNT_up_global EventHandler was succesfully triggered!";
    };

    RLNT_up_client = _this select 1;
    publicVariable "RLNT_up_client";
  };
