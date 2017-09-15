/*
Filename:     RLNT_up_setup.sqf
Author:       Relentless
Description:  Creation function for RLNT-CustomUpdatePanel
Call:         [_upStyle,_upBgColor,_upFontColor,_upHeader,_upLine1,_upLine2,_upDuration,_upImg] spawn RLNT_up_setup;
*/
private ["_upStyle","_upBgColor","_upFontColor","_upHeader","_upLine1","_upLine2","_upDuration","_upImg","_layer","_display","_cBgColor","_cFontColor","_cHeader","_cLine1","_cLine2","_cImg"];
disableSerialization;


/*  Default RLNT Debug  */
if (rlnt_debug) then {
  diag_log "[RLNT] The RLNT_up_setup.sqf was succesfully loaded!";
};


/*  Variables  */
_upStyle      = _this select 0;
_upBgColor    = _this select 1;
_upFontColor  = _this select 2;
_upHeader     = _this select 3;
_upLine1      = _this select 4;
_upLine2      = _this select 5;
_upDuration   = _this select 6;
_upImg        = _this select 7;
_layer        = 1302;


/*  Check for the style  */
switch (_upStyle) do {

  case 1: {
    _layer cutRsc ["rlnt_updatepanel_style_1","PLAIN",1];
    sleep 0.01;

    if (rlnt_up_debug) then {
      diag_log "[RLNT] The RLNT_up_setup.sqf decided style 1!";
    };

    _display    = uiNamespace getVariable["rlnt_updatepanel_style_1", displayNull];
    _cBgColor   = _display displayCtrl 1027;
    _cFontColor = [_display displayCtrl 1028,_display displayCtrl 1029,_display displayCtrl 1030];
    _cHeader    = _display displayCtrl 1028;
    _cLine1     = _display displayCtrl 1029;
    _cLine2     = _display displayCtrl 1030;

    //Set Background Color
      _cBgColor ctrlSetBackgroundColor _upBgColor;
    //Set Font Color
      {
        _x ctrlSetTextColor _upFontColor;
      } forEach _cFontColor;
    //Set Text Header and Lines
      _cHeader ctrlSetText(_upHeader);
      _cLine1 ctrlSetText(_upLine1);
      _cLine2 ctrlSetText(_upLine2);
  };

  case 2: {
    _layer cutRsc ["rlnt_updatepanel_style_2","PLAIN",1];
    sleep 0.01;

    if (rlnt_up_debug) then {
      diag_log "[RLNT] The RLNT_up_setup.sqf decided style 2!";
    };

    _display    = uiNamespace getVariable["rlnt_updatepanel_style_2", displayNull];
    _cBgColor   = _display displayCtrl 1027;
    _cFontColor = [_display displayCtrl 1028,_display displayCtrl 1029,_display displayCtrl 1030];
    _cHeader    = _display displayCtrl 1028;
    _cLine1     = _display displayCtrl 1029;
    _cLine2     = _display displayCtrl 1030;
    _cImg       = _display displayCtrl 1206;

    //Set Background Color
      _cBgColor ctrlSetBackgroundColor _upBgColor;
    //Set Font Color
      {
        _x ctrlSetTextColor _upFontColor;
      } forEach _cFontColor;
    //Set Text Header and Lines
      _cHeader ctrlSetText(_upHeader);
      _cLine1 ctrlSetText(_upLine1);
      _cLine2 ctrlSetText(_upLine2);
    //Set Image
      _cImg ctrlSetText(_upImg);
  };

};

/*  Close Update Panel after set Duration  */
sleep _upDuration;
_layer cutRsc ["Default","PLAIN"];
