/*
Filename:     RLNT_up_main.sqf
Author:       Relentless
Description:  Base function for RLNT-CustomUpdatePanel
Call:         [Side,Style,BgColor,FontColor,Header,Line1,Line2,Duration,Img] spawn RLNT_updatePanel;
*/
private ["_upSide","_upStyle","_upBgColor","_upFontColor","_upHeader","_upLine1","_upLine2","_upDuration","_upImg"];
disableSerialization;


/*  Default RLNT Debug  */
if (rlnt_debug) then {
  diag_log "[RLNT] The RLNT_up_main.sqf was succesfully loaded!";
};


/*  Variables  */
_upSide       = _this select 0;
_upStyle      = _this select 1;
_upBgColor    = _this select 2;
_upFontColor  = _this select 3;
_upHeader     = _this select 4;
_upLine1      = _this select 5;
_upLine2      = _this select 6;
_upDuration   = _this select 7;
_upImg        = _this select 8;


/*  Use config if not defined  */
if (isNil "_upSide") then {
  _upSide = rlnt_up_Side;
};

if (isNil "_upStyle") then {
  _upStyle = rlnt_up_Style;
};

if (isNil "_upBgColor") then {
  _upBgColor = rlnt_up_BgColor;
};

if (isNil "_upFontColor") then {
  _upFontColor = rlnt_up_FontColor;
};

if (isNil "_upHeader") then {
  _upHeader = rlnt_up_Header;
};

if (isNil "_upLine1") then {
  _upLine1 = rlnt_up_Line1;
};

if (isNil "_upLine2") then {
  _upLine2 = rlnt_up_Line2;
};

if (isNil "_upDuration") then {
  _upDuration = rlnt_up_Duration;
};

if (isNil "_upImg") then {
  _upImg = rlnt_up_Img;
};


/*  Check the receiver  */
if (_upSide == "local") then {
  if (rlnt_up_debug) then {
    diag_log "[RLNT] The RLNT_up_main.sqf decided a local receiver!";
  };

  [_upStyle,_upBgColor,_upFontColor,_upHeader,_upLine1,_upLine2,_upDuration,_upImg] spawn RLNT_up_setup;
};

if (_upSide == "global") then {
  if (rlnt_up_debug) then {
    diag_log "[RLNT] The RLNT_up_main.sqf decided a global receiver!";
  };

  RLNT_up_global = [_upStyle,_upBgColor,_upFontColor,_upHeader,_upLine1,_upLine2,_upDuration,_upImg];
  publicVariableServer "RLNT_up_global";
};
