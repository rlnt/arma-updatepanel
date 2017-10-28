/*
Filename:		RLNT_up_main.sqf
Author:			Relentless
Description:	Base function for Update Panel
Call:			[Side,Style,Header,Line1,Line2,Img,Duration,FontColor,BgColor] spawn RLNT_updatePanel;
*/
private ["_input","_varArray","_recent"];
disableSerialization;


/*  Default RLNT Debug  */
if (rlnt_debug) then {
	diag_log "[RLNT][MAIN] The RLNT_up_main.sqf was succesfully loaded!";
};


/*  Variables  */
_input		= (count _this) - 1;
_varArray	= rlnt_up_defaults;


/*  Define arguments for setup  */
for "_i" from 0 to _input do {
	if (isNil {_this select _i}) then {
		if (rlnt_up_debug) then {
			diag_log format ["[RLNT][UP] The variable '%1' was not overwritten.", str(_varArray select _i)];
		};
	} else {
		_recent = rlnt_up_defaults select _i;
		_varArray set [_i, (_this select _i)];
		if (rlnt_up_debug) then {
			diag_log format ["[RLNT][UP] The variable '%1' was overwritten with '%2'.", str(_recent), str(_varArray select _i)];
		};
	};
};


/*  Check the receiver  */
if ((_varArray select 0) == "local") then {
	if (rlnt_up_debug) then {
		diag_log "[RLNT][UP] The RLNT_up_main.sqf decided a local receiver!";
	};

	_varArray spawn RLNT_up_setup;
};

if ((_varArray select 0) == "global") then {
	if (rlnt_up_debug) then {
		diag_log "[RLNT][UP] The RLNT_up_main.sqf decided a global receiver!";
	};

	RLNT_up_global = _varArray;
	publicVariableServer "RLNT_up_global";
};
