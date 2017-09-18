# Custom Update Panel
**For DayZ Epoch 1.0.6.1+**<br>_Last update: [18.09.2017]_<br>_v1.2_ ([Changelog](#changelog))

---

[Go to Epoch forum thread][rlnt_up_epochforum]
[Report issues/bugs][githubissues]
[Suggest new features][githubsuggestions]

---

## Credits

**This script was fully made by me with the help of some people.**

+ **@Sp4rky:** He teached me most in sqf. ([Visit him on github][sp4rkygithub])
+ **@Iben:** I got this wonderful github formatting from him. ([Visit him on github][ibengithub])
+ **@He-Man:** He made me familiar with eventHandlers and communication between client and server.
+ **@LordGolias:** He made an amazing sqf-linter for the Atom-Editor. ([Visit him on github][goliasgithub])
+ **@Epoch-Discord:** Especially to @salival, @bigegg, @dirtysanchez @scubasteve. These guys on there are always helpful and very patient. Sometimes I feel like I am the only one with questions. :D ([Join the Discord][epochdiscord])

---

## Structure

- [Features](#features)
- [How to install](#how-to-install)
- [Battleye](#battleye)
- [InfiStar](#infistar)
- [How to use it](#how-to-use-it)
- [Changelog](#changelog)

---

<a name="features"></a>
## Features

+ Function to spawn a display with different custom inputs/arguments.
+ Everything is configurable and can easily be changed by arguments.
+ You can send it either local or global by just changing an argument.
+ If you often use the same display, you can setup default variables in a config file.
+ Different styles (like with and without image), you can suggest more in the forum thread.
+ Can be used as general notification method on your server and potentially replace legacy notification methods like hint boxes or format texts.

---

<a name="how-to-install"></a>
## How to install

It's pretty easy. Make sure to follow the instructions carefully in case you have already edited files!

---

1. First Step:
+ Download all files from GitHub, either by cloning it or by downloading the zip.

2. Second Step:
+ If you downloaded it as zip, extract it and open the folder. If you cloned it, just open the folder.
+ **In that folder**, go to "\dayz_server\eventHandlers\".
+ Do the same on your Epoch-Server and move the file "RLNT_eventHandlers.sqf" **from the downloaded folder** into the corresponding folder **on the server**.

3. Third Step:
+ **On your Epoch server**, go to "dayz_server\init\" and open "server_functions.sqf".
+ **In the this file**, find this line:
```sqf
server_sendToClient = compile preprocessFileLineNumbers "\z\addons\dayz_server\eventHandlers\server_sendToClient.sqf";
```
+ Paste the following line **below** it:
```sqf
compile preprocessFileLineNumbers "\z\addons\dayz_server\eventHandlers\RLNT_eventHandlers.sqf";  /*  RLNT-Additions  */
```

---

Congratulations, you managed the server-sided installation part! Let's continue with the client-sided instructions.

---

4. Fourth Step:
+ Move the "dayz_code" folder **from the downloaded folder** into your mission root directory (where init.sqf is located).
+ Do the same with the "rlnt" folder **from the downloaded folder**.

5. Fifth Step:
+ **On your Epoch server**, open "mpmission\init.sqf" and search this line:
```sqf
call compile preprocessFileLineNumbers "\z\addons\dayz_code\init\compiles.sqf";
```
+ Paste the following line **below** it:
```sqf
call compile preprocessFileLineNumbers "rlnt\client\init\RLNT_compiles.sqf";  /*  RLNT-Additions  */
```
+ Now, search for the "!isDedicated"-codeblock, which looks like that:
```sqf
if (!isDedicated) then {
	//Enables Plant lib fixes
	execVM "\z\addons\dayz_code\system\antihack.sqf";

	if (toLower(worldName) == "chernarus") then {
		diag_log "WARNING: Clearing annoying benches from Chernarus";
		([4654,9595,0] nearestObject 145259) setDamage 1;
		([4654,9595,0] nearestObject 145260) setDamage 1;
	};

	if (dayz_townGenerator) then { execVM "\z\addons\dayz_code\compile\client_plantSpawner.sqf"; };
	execFSM "\z\addons\dayz_code\system\player_monitor.fsm";
	//[false,12] execVM "\z\addons\dayz_code\compile\local_lights_init.sqf";
	if (DZE_R3F_WEIGHT) then {execVM "\z\addons\dayz_code\external\R3F_Realism\R3F_Realism_Init.sqf";};
	waitUntil {scriptDone progress_monitor};
	cutText ["","BLACK IN", 3];
	3 fadeSound 1;
	3 fadeMusic 1;
	endLoadingScreen;
};
```
+ Paste the following line **after** it:
```sqf
execVM "rlnt\scripts\RLNT_init.sqf";  /*  RLNT-Additions  */
```

6. Sixth Step (read carefully):
+ **On your Epoch server**, open "mpmission\description.ext" and search for this line:
```sqf
#include "\z\addons\dayz_code\gui\description.hpp"
```
+ Now **replace** it with the following line:
```sqf
#include "dayz_code\gui\description.hpp"
```
+ Now search for the "class Header"-codeblock, which looks like that:
```sqf
class Header
{
	gameType = COOP;            //DM, Team, Coop, ...
	minPlayers = 1;             //min # of players the mission supports
	maxPlayers = 100;           //Max # of players the mission supports
};
```
+ Paste the following codeblock **after** it:
```sqf
class RscTitles {
  #include "rlnt\dialogs\RLNT_displays.hpp"  /*  RLNT-Additions  */
	class wm_disp {
		idd = -1;
		onLoad = "uiNamespace setVariable ['wm_disp', _this select 0]";
		fadein = 0;
		fadeout = 0;
		duration = 10e10;
		controlsBackground[] = {};
		objects[] = {};
		class controls {
			class wm_text2 {
				idc = 1;
				x = safeZoneX+0.027;//safeZoneW*0.01;
				y = safeZoneY+safeZoneH-0.16;
				w = 0.151*safeZoneH;
				h = 0.057*safeZoneH;
				shadow = 2;
				class Attributes
				{
					font = "EtelkaNarrowMediumPro";
					color = "#24FFFFFF";
					align = "left"; // put "center" here if you want some background
					valign = "middle";
					shadow = 2;
				};
				colorBackground[] = { 1, 0.3, 0, 0 };  // uncomment and increase 4th number to have a background
				font = "EtelkaNarrowMediumPro";
				size = 0.06*safeZoneH;
				type = 13;
				style = 0;
				text="";
			};
		};
	};
};
```
+ Now, paste the following line **at the very bottom** of the file:
```sqf
#include "rlnt\dialogs\RLNT_dialogs.hpp"  /*  RLNT-Additions  */
```

7. Seventh Step:
+ **On your Epoch server**, open "mpmission\rlnt\scripts\Update Panel\RLNT_up_config.sqf", read trough it and edit it to your liking.

**That's it, you're done!**

---

<a name="battleye"></a>
## Battleye

```sqf
//Add an exception to publicvariable.txt
!="RLNT_up_client"
```

---

<a name="infistar"></a>
## InfiStar

+ Add these exceptions to your allowed dialogs:
```sqf
7207,7208,7209,7210
```
+ Add these exceptions to your allowed cMenus:
```sqf
rlnt_updatepanel_style_1,rlnt_updatepanel_style_2,rlnt_updatepanel_style_3,rlnt_updatepanel_style_4
```

---

<a name="how-to-use-it"></a>
## How to use it

+ **This function will only do something when it's spawned by this line:**
```sqf
[Side,Style,BgColor,FontColor,Header,Line1,Line2,Duration,Img] spawn RLNT_updatePanel;

/* Here an explanation of all arguments:
  Side - has to be a String
    Can either be "local" or "global"
    "local" -> Display will only be shown to the client the display is running on
    "global" -> Display will be shown to ALL clients on the server (global message)

  Style - has to be an Integer
    Possible values: 1 or 2 (if you want more styles, suggest them on the Forum)
		For example images, check out the [Epoch-Forum-Topic][rlnt_up_epochforum]
    1 -> A display in the left upper corner with a header and 2 lines of text
    2 -> Same as 1 but it's plain text with no background
		3 -> A display in the left upper corner with a header, 2 lines of text and an image
		4 -> Same as 3 but it's plain text with no background

  BgColor - Background Color - has to be a color array
    Example: [1,1,1,1]
    Format: [r,g,b,alpha] [red,green,blue,alpha]

  FontColor - Text Color - has to be a color array
    Example: [1,1,1,1]
    Format: [r,g,b,alpha] [red,green,blue,alpha]

  Header - headline of the display - has to be a String
    Example: "Headline 1"

  Line 1 - first text line of the display - has to be a String
    Example: "This is my first line."

  Line 2 - second text line of the display - has to be a String
    Example: "This is my second line."

  Duration - time in seconds for the display - has to be an Integer
    Example: 5

  Img - image that will be displayed - has to be a path String
    Example: "images\display\image.paa"
*/
```
+ **Variables replaced with nil** will be taken from config

---

<a name="changelog"></a>
## Changelog

| Date         | Version | Description                                                                                       |
| :---         | :---    | :---                                                                                              |
| [16.09.2017] | v1.0    | Initial release																																									 |
| [17.09.2017] | v1.1		 | Minor adjustments to fix known problems and structure<br>_Changes:_ [[commit dbef01d][update1]]	 |
| [18.09.2017] | v1.2		 | Added two new styles, added links to config<br>_Changes:_ [[commit ][update2]]										 |

---

[rlnt_up_epochforum]: https://epochmod.com/forum/topic/44485-release-custom-update-panel-16092017-10/ "Go to source"
[githubissues]: https://github.com/DAmNRelentless/CustomUpdatePanel/issues/1 "Go to source"
[githubsuggestions]: https://github.com/DAmNRelentless/CustomUpdatePanel/issues/2 "Go to source"
[sp4rkygithub]: https://github.com/SPKcoding/ "Go to source"
[ibengithub]: https://github.com/infobeny/ "Go to source"
[goliasgithub]: https://github.com/LordGolias/ "Go to source"
[epochdiscord]: https://discord.gg/0k4ynDDCsnMzkxk7 "Go to source"
[update1]: https://github.com/DAmNRelentless/CustomUpdatePanel/commit/dbef01d0ec8ff592ee0bbeb4cd6db5bb7a01d613 "Go to source"
