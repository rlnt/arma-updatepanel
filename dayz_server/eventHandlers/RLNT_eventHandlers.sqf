/*
Filename:     RLNT_eventHandlers.sqf
Author:       Relentless
Description:  All server-sided Eventhandlers for RLNT-Additions
*/

/*  Update Panel */
  "RLNT_up_global" addPublicVariableEventHandler {
    RLNT_up_client = _this select 1;
    publicVariable "RLNT_up_client";
  };
