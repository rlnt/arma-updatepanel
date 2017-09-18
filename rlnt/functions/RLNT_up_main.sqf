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
_input = count _this;


/*  Variables, fill with config if optional  */
switch (_input) do {

  case 0: {
    _upSide         = rlnt_up_Side;
    _upStyle        = rlnt_up_Style;
    _upHeader       = rlnt_up_Header;
    _upLine1        = rlnt_up_Line1;
    _upLine2        = rlnt_up_Line2;
    _upImg          = rlnt_up_Img;
    _upDuration     = rlnt_up_Duration;
    _upFontColor    = rlnt_up_FontColor;
    _upBgColor      = rlnt_up_BgColor;
  };

  case 1: {
    _upSide         = _this select 0;
    _upStyle        = rlnt_up_Style;
    _upHeader       = rlnt_up_Header;
    _upLine1        = rlnt_up_Line1;
    _upLine2        = rlnt_up_Line2;
    _upImg          = rlnt_up_Img;
    _upDuration     = rlnt_up_Duration;
    _upFontColor    = rlnt_up_FontColor;
    _upBgColor      = rlnt_up_BgColor;
  };

  case 2: {
    _upSide         = _this select 0;
    _upStyle        = _this select 1;
    _upHeader       = rlnt_up_Header;
    _upLine1        = rlnt_up_Line1;
    _upLine2        = rlnt_up_Line2;
    _upImg          = rlnt_up_Img;
    _upDuration     = rlnt_up_Duration;
    _upFontColor    = rlnt_up_FontColor;
    _upBgColor      = rlnt_up_BgColor;
  };

  case 3: {
    _upSide         = _this select 0;
    _upStyle        = _this select 1;
    _upHeader       = _this select 2;
    _upLine1        = rlnt_up_Line1;
    _upLine2        = rlnt_up_Line2;
    _upImg          = rlnt_up_Img;
    _upDuration     = rlnt_up_Duration;
    _upFontColor    = rlnt_up_FontColor;
    _upBgColor      = rlnt_up_BgColor;
  };

  case 4: {
    _upSide         = _this select 0;
    _upStyle        = _this select 1;
    _upHeader       = _this select 2;
    _upLine1        = _this select 3;
    _upLine2        = rlnt_up_Line2;
    _upImg          = rlnt_up_Img;
    _upDuration     = rlnt_up_Duration;
    _upFontColor    = rlnt_up_FontColor;
    _upBgColor      = rlnt_up_BgColor;
  };

  case 5: {
    _upSide         = _this select 0;
    _upStyle        = _this select 1;
    _upHeader       = _this select 2;
    _upLine1        = _this select 3;
    _upLine2        = _this select 4;
    _upImg          = rlnt_up_Img;
    _upDuration     = rlnt_up_Duration;
    _upFontColor    = rlnt_up_FontColor;
    _upBgColor      = rlnt_up_BgColor;
  };

  case 6: {
    _upSide         = _this select 0;
    _upStyle        = _this select 1;
    _upHeader       = _this select 2;
    _upLine1        = _this select 3;
    _upLine2        = _this select 4;
    _upImg          = _this select 5;
    _upDuration     = rlnt_up_Duration;
    _upFontColor    = rlnt_up_FontColor;
    _upBgColor      = rlnt_up_BgColor;
  };

  case 7: {
    _upSide         = _this select 0;
    _upStyle        = _this select 1;
    _upHeader       = _this select 2;
    _upLine1        = _this select 3;
    _upLine2        = _this select 4;
    _upImg          = _this select 5;
    _upDuration     = _this select 6;
    _upFontColor    = rlnt_up_FontColor;
    _upBgColor      = rlnt_up_BgColor;
  };

  case 8: {
    _upSide         = _this select 0;
    _upStyle        = _this select 1;
    _upHeader       = _this select 2;
    _upLine1        = _this select 3;
    _upLine2        = _this select 4;
    _upImg          = _this select 5;
    _upDuration     = _this select 6;
    _upFontColor    = _this select 7;
    _upBgColor      = rlnt_up_BgColor;
  };

  case 9: {
    _upSide         = _this select 0;
    _upStyle        = _this select 1;
    _upHeader       = _this select 2;
    _upLine1        = _this select 3;
    _upLine2        = _this select 4;
    _upImg          = _this select 5;
    _upDuration     = _this select 6;
    _upFontColor    = _this select 7;
    _upBgColor      = _this select 8;
  };

};


/*  Use config if not defined  */
if (isNil "_upSide") then {
  _upSide = rlnt_up_Side;
};

if (isNil "_upStyle") then {
  _upStyle = rlnt_up_Style;
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

if (isNil "_upImg") then {
  _upImg = rlnt_up_Img;
};

if (isNil "_upDuration") then {
  _upDuration = rlnt_up_Duration;
};

if (isNil "_upFontColor") then {
  _upFontColor = rlnt_up_FontColor;
};

if (isNil "_upBgColor") then {
  _upBgColor = rlnt_up_BgColor;
};


/*  Check the receiver  */
if (_upSide == "local") then {
  if (rlnt_up_debug) then {
    diag_log "[RLNT][UP] The RLNT_up_main.sqf decided a local receiver!";
  };

  [_upStyle,_upHeader,_upLine1,_upLine2,_upImg,_upDuration,_upFontColor,_upBgColor] spawn RLNT_up_setup;
};

if (_upSide == "global") then {
  if (rlnt_up_debug) then {
    diag_log "[RLNT][UP] The RLNT_up_main.sqf decided a global receiver!";
  };

  RLNT_up_global = [_upStyle,_upHeader,_upLine1,_upLine2,_upImg,_upDuration,_upFontColor,_upBgColor];
  publicVariableServer "RLNT_up_global";
};
