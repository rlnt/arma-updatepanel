/*
Filename:     RLNT_up_config.sqf
Author:       Relentless
Description:  Config for RLNT-CustomUpdatePanel
*/


/*  Default RLNT Debug - DON'T TOUCH THIS  */
if (rlnt_debug) then {
  diag_log "[RLNT] The Costum Update Panel Config was succesfully loaded!";
};


////////////////////////////////////////////////////////////
////  Side-Option:                                      ////
////  Default string that defines how to display the    ////
////  Update Panel.                                     ////
////  Possible Options: "local" or "global"             ////
////  local - Update Panel only for the client          ////
////  global - Update Panel will be displayed globally  ////
////  THE OPTION HAS TO BE A STRING!                    ////
////////////////////////////////////////////////////////////
rlnt_up_Side          = "local";       /* default: "local" */

////////////////////////////////////////////////////////////
////  Style-Option:                                     ////
////  Default value that defines in what style the      ////
////  Update Panel is displayed.                        ////
////  Possible Options: 1 or 2                          ////
////  1 - Panel in the left upper corner                ////
////  Example image:                                    ////
////  2 - Panel with image in the left upper corner     ////
////  Example image:                                    ////
////  THE OPTION HAS TO BE AN INTEGER!                  ////
////  If you want more styles, suggest them in this     ////
////  topic:                                            ////
////////////////////////////////////////////////////////////
rlnt_up_Style         = 1;             /* default: 1 */

////////////////////////////////////////////////////////////
////  Background-Color-Option:                          ////
////  Default color-array that defines what color the   ////
////  background of the Update Panel has.               ////
////  THE OPTION HAS TO BE AN ARRAY!                    ////
////  The format is [r,g,b,alpha]                       ////
////  I would always suggest an alpha value of 0.7.     ////
////  You can use this site to find a fitting color:    ////
////                                                    ////
////////////////////////////////////////////////////////////
rlnt_up_BgColor       = [0,0.2,0,0.7]; /* default: [0,0.2,0,0.7] */

////////////////////////////////////////////////////////////
////  Text-Color-Option:                                ////
////  Default color-array that defines what color the   ////
////  text of the Update Panel has.                     ////
////  THE OPTION HAS TO BE AN ARRAY!                    ////
////  The format is [r,g,b,alpha]                       ////
////  I would always suggest an alpha value of 1.       ////
////  You can use this site to find a fitting color:    ////
////                                                    ////
////////////////////////////////////////////////////////////
rlnt_up_FontColor     = [1,1,1,1];     /* default: [1,1,1,1] */

////////////////////////////////////////////////////////////
////  Header-Text-Option:                               ////
////  Default string that defines the text that's used  ////
////  as the header of the Update Panel.                ////
////  THE OPTION HAS TO BE A STRING!                    ////
////  MAXIMUM CHAR AMOUNT IS 13!                        ////
////////////////////////////////////////////////////////////
rlnt_up_Header        = "RLNT Panel:";

////////////////////////////////////////////////////////////
////  Line 1-Text-Option:                               ////
////  Default string that defines the text that's used  ////
////  as the first line of the Update Panel.            ////
////  THE OPTION HAS TO BE A STRING!                    ////
////  MAXIMUM CHAR AMOUNT IS 40!                        ////
////////////////////////////////////////////////////////////
rlnt_up_Line1         = "Here could be your advertisement!";

////////////////////////////////////////////////////////////
////  Line 2-Text-Option:                               ////
////  Default string that defines the text that's used  ////
////  as the seccond line of the Update Panel.          ////
////  THE OPTION HAS TO BE A STRING!                    ////
////  MAXIMUM CHAR AMOUNT IS 40!                        ////
////////////////////////////////////////////////////////////
rlnt_up_Line2         = "Here could be your advertisement!";

////////////////////////////////////////////////////////////
////  Duration-Option:                                  ////
////  Default value that defines the duration on how    ////
////  long the Update Panel is visible.                 ////
////  Possible Options: 1 to 60                         ////
////  THE OPTION HAS TO BE AN INTEGER!                  ////
////  This option allow defines the seconds for 100%    ////
////  visibility, there will be 1 second before and     ////
////  after to fade in and out.                         ////
////////////////////////////////////////////////////////////
rlnt_up_Duration      = 5;             /*  default: 5  */

////////////////////////////////////////////////////////////
////  Image-Option:                                     ////
////  Default string that defines the path to the       ////
////  image that will be displayed in the Update Panel. ////
////  THE OPTION HAS TO BE A STRING WITH A VALID PATH!  ////
////  I would always suggest a resolution of 340x300.   ////
////  The image has to be in .paa format.               ////
////////////////////////////////////////////////////////////
rlnt_up_Img           = "rlnt\images\picture.paa";

////////////////////////////////////////////////////////////
////  Developer-Options:                                ////
////  Variables to toggle on and off advanced options   ////
////  to help devs finding bugs in this script.         ////
////  DON'T EDIT IF YOU DON'T KNOW WHAT YOU ARE DOING!  ////
////////////////////////////////////////////////////////////
rlnt_up_debug         = true;          /* default: false */
