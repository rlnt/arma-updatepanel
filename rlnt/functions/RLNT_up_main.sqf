/*
Filename:     RLNT_up_main.sqf
Author:       Relentless
Description:  Base function for RLNT-CustomUpdatePanel
Call:         [Side,Style,Header,Line1,Line2,Img,Duration,FontColor,BgColor] spawn RLNT_updatePanel;
*/
private ["_input","_upSide","_upStyle","_upHeader","_upLine1","_upLine2","_upImg","_upDuration","_upFontColor","_upBgColor"];
disableSerialization;


/*  Default RLNT Debug  */
if (rlnt_debug) then {
  diag_log "[RLNT][MAIN] The RLNT_up_main.sqf was succesfully loaded!";
};


/*  Count the input for optional arguments  */
_input = _this;
_count = count _input;

_array = RLNT_DefaultsArray;

for "_i" from 0 to (_count-1) do
{ 
 _array set[_i,_input select _i];
};

/*  Check the receiver  */
if (_upSide == "local") then {
  if (rlnt_up_debug) then {
    diag_log "[RLNT][UP] The RLNT_up_main.sqf decided a local receiver!";
  };

  _array spawn RLNT_up_setup;
};

if (_upSide == "global") then {
  if (rlnt_up_debug) then {
    diag_log "[RLNT][UP] The RLNT_up_main.sqf decided a global receiver!";
  };

  RLNT_up_global = _array;
  publicVariableServer "RLNT_up_global";
};
