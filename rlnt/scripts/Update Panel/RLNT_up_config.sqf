/*
Filename:     RLNT_up_config.sqf
Author:       Relentless
Description:  Config for RLNT-CustomUpdatePanel
*/


/*
Explanation of this function:
I never liked the vanilla notification functions that were
implemented by Bohemia by default, so I decided to create a
new function. With it, you are able to create a display
with different styles and other changable elements like the
colors, the image, the receiver, the duration and more.
People like Scripters and Devs can also make a use of it
by implementing it into their scripts to have a new way
of displaying notifications. No more ugly Hint boxes or
format texts. Read more on the Epoch-Forum-Thread:
http://bit.ly/2xstFdx
*/

/*
Explanation of the config:
In this config, you can set dafault variables. That means
whenever you replace an argument in the spawn command of the
function by nil, it will be replaced by the variable that's
set in this config. Also all the arguments are optional, means
if you leave them out, they also will be replaced by these
config variables. That's useful if you use this function
as default notification system on your server. Let's say
you always want a green background for all messages on your
server, then you can just set this here and when you spawn
the function, you just replace the argument for the BgColor
with nil.
*/


/*  Default RLNT Debug - DON'T TOUCH THIS  */
if (rlnt_debug) then {
  diag_log "[RLNT][MAIN] The Costum Update Panel Config was succesfully loaded!";
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
////  Possible Options: 1 to 4                          ////
////  1 - Left upper corner without image               ////
////  Example image: https://i.imgur.com/Woxzfe4.png    ////
////  2 - Left upper corner without image (PLAIN)       ////
////  Example image: https://i.imgur.com/1XWcirz.png    ////
////  3 - Left upper corner with image                  ////
////  Example image: https://i.imgur.com/PxxW6Lm.png    ////
////  4 - Left upper corner with image (PLAIN)          ////
////  Example image: https://i.imgur.com/yVrZRJR.png    ////
////  THE OPTION HAS TO BE AN INTEGER!                  ////
////  If you want more styles, suggest them in this     ////
////  topic: http://bit.ly/2xstFdx                      ////
////////////////////////////////////////////////////////////
rlnt_up_Style         = 1;             /* default: 1 */

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
////  Image-Option:                                     ////
////  Default string that defines the path to the       ////
////  image that will be displayed in the Update Panel. ////
////  THE OPTION HAS TO BE A STRING WITH A VALID PATH!  ////
////  I would always suggest a resolution of 340x300.   ////
////  The image has to be in .paa format.               ////
////////////////////////////////////////////////////////////
rlnt_up_Img           = "rlnt\images\picture.paa";

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
////  Text-Color-Option:                                ////
////  Default color-array that defines what color the   ////
////  text of the Update Panel has.                     ////
////  THE OPTION HAS TO BE AN ARRAY!                    ////
////  The format is [r,g,b,alpha]                       ////
////  I would always suggest an alpha value of 1.       ////
////  You can use this site to find a fitting color:    ////
////  http://bit.ly/2f543cr                             ////
////////////////////////////////////////////////////////////
rlnt_up_FontColor     = [1,1,1,1];     /* default: [1,1,1,1] */

////////////////////////////////////////////////////////////
////  Background-Color-Option:                          ////
////  Default color-array that defines what color the   ////
////  background of the Update Panel has.               ////
////  THE OPTION HAS TO BE AN ARRAY!                    ////
////  The format is [r,g,b,alpha]                       ////
////  I would always suggest an alpha value of 0.7.     ////
////  You can use this site to find a fitting color:    ////
////  http://bit.ly/2f543cr                             ////
////////////////////////////////////////////////////////////
rlnt_up_BgColor       = [0,0.2,0,0.7]; /* default: [0,0.2,0,0.7] */

////////////////////////////////////////////////////////////
////  Developer-Options:                                ////
////  Variables to toggle on and off advanced options   ////
////  to help devs finding bugs in this script.         ////
////  DON'T EDIT IF YOU DON'T KNOW WHAT YOU ARE DOING!  ////
////////////////////////////////////////////////////////////
rlnt_up_debug         = false;         /* default: false */
