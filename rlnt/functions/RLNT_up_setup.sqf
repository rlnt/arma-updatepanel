/*
Filename:     RLNT_up_setup.sqf
Author:       Relentless
Description:  Creation function for Update Panel
Call:         _varArray spawn RLNT_up_setup;
*/
private ["_upStyle","_upHeader","_upLine1","_upLine2","_upImg","_upDuration","_upFontColor","_upBgColor","_layer","_display","_cHeader","_cLine1","_cLine2","_cImg","_cFontColor","_cBgColor"];
disableSerialization;


/*  Default RLNT Debug  */
if (rlnt_debug) then {
    diag_log "[RLNT][MAIN] The RLNT_up_setup.sqf was succesfully loaded!";
};


/*  Variables  */
_upStyle      = _this select 1;
_upHeader     = _this select 2;
_upLine1      = _this select 3;
_upLine2      = _this select 4;
_upImg        = _this select 5;
_upDuration   = _this select 6;
_upFontColor  = _this select 7;
_upBgColor    = _this select 8;
_layer        = 1302;


/*  Check for the style  */
switch (_upStyle) do {

    //Left upper corner without image
    case 1: {
        _layer cutRsc ["rlnt_updatepanel_style_1","PLAIN",1];
        sleep 0.01;

        if (rlnt_up_debug) then {
            diag_log "[RLNT][UP] The RLNT_up_setup.sqf decided style 1!";
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

    //Left upper corner without image (PLAIN)
    case 2: {
        _layer cutRsc ["rlnt_updatepanel_style_2","PLAIN",1];
        sleep 0.01;

        if (rlnt_up_debug) then {
            diag_log "[RLNT][UP] The RLNT_up_setup.sqf decided style 2!";
        };

        _display    = uiNamespace getVariable["rlnt_updatepanel_style_2", displayNull];
        _cFontColor = [_display displayCtrl 1028,_display displayCtrl 1029,_display displayCtrl 1030];
        _cHeader    = _display displayCtrl 1028;
        _cLine1     = _display displayCtrl 1029;
        _cLine2     = _display displayCtrl 1030;

        //Set Font Color
            {
                _x ctrlSetTextColor _upFontColor;
            } forEach _cFontColor;
        //Set Text for Header and Lines
            _cHeader ctrlSetText(_upHeader);
            _cLine1 ctrlSetText(_upLine1);
            _cLine2 ctrlSetText(_upLine2);
    };

    //Left upper corner with image
    case 3: {
        _layer cutRsc ["rlnt_updatepanel_style_3","PLAIN",1];
        sleep 0.01;

        if (rlnt_up_debug) then {
            diag_log "[RLNT][UP] The RLNT_up_setup.sqf decided style 3!";
        };

        _display    = uiNamespace getVariable["rlnt_updatepanel_style_3", displayNull];
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

    //Left upper corner with image (PLAIN)
    case 4: {
        _layer cutRsc ["rlnt_updatepanel_style_4","PLAIN",1];
        sleep 0.01;

        if (rlnt_up_debug) then {
            diag_log "[RLNT][UP] The RLNT_up_setup.sqf decided style 4!";
        };

        _display    = uiNamespace getVariable["rlnt_updatepanel_style_4", displayNull];
        _cFontColor = [_display displayCtrl 1028,_display displayCtrl 1029,_display displayCtrl 1030];
        _cHeader    = _display displayCtrl 1028;
        _cLine1     = _display displayCtrl 1029;
        _cLine2     = _display displayCtrl 1030;
        _cImg       = _display displayCtrl 1206;

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
