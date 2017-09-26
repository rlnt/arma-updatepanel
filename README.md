# RLNT Update Panel
**For DayZ Epoch 1.0.6.1+**<br>_Last update: [26.09.2017]_<br>_v1.4_ ([Changelog](#changelog))

---

[Go to Epoch forum thread][rlnt_up_epochforum]<br>
[Report issues/bugs/problems][githubissues]<br>
[Suggest features/ideas][githubsuggestions]<br><br>

[All Releases][githubreleases]

---

## Credits

**This script was fully made by me with the help of some people.**

+ **@Sp4rky:** He teached me most in sqf. ([Visit him on github][sp4rkygithub])
+ **@Iben:** I got this wonderful github formatting from him. ([Visit him on github][ibengithub])
+ **@He-Man:** He made me familiar with eventHandlers and communication between client and server.
+ **@LordGolias:** He made an amazing sqf-linter for the Atom-Editor. ([Visit him on github][goliasgithub])
+ **@DirtySanchez:** Helps me to improve my scripts. ([Visit him on github][sanchezgithub])
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
+ All arguments are optional now, means if you leave them out, it will take them from config.

---

<a name="how-to-install"></a>
## How to install

It's pretty easy. Make sure to follow the instructions carefully in case you have already edited files!

---

1. First Step:
+ Download all files from GitHub, either by cloning it or by downloading the zip.

2. Second Step:
+ If you downloaded it as zip, extract it and open the folder. If you cloned it, just open the folder.
+ **In that folder**, open the "dayz_server" folder and copy and "rlnt" folder into your dayz_server.pbo.

3. Third Step:
+ **On your Epoch server**, go to "dayz_server\init\" and open "server_functions.sqf".
+ **In the this file**, find this line:
```sqf
server_sendToClient = compile preprocessFileLineNumbers "\z\addons\dayz_server\eventHandlers\server_sendToClient.sqf";
```
+ Paste the following line **below** it:
```sqf
call compile preprocessFileLineNumbers "\z\addons\dayz_server\rlnt\eventHandlers\RLNT_eventHandlers.sqf";  /*  RLNT-Additions  */
```

---

Congratulations, you managed the server-sided installation part! Let's continue with the client-sided instructions.

---

4. Fourth Step:
+ Move the "dayz_code" folder **from the downloaded folder** into your mission root directory (where init.sqf is located).
+ Do the same with the "rlnt" folder **from the downloaded folder**.

5. Fifth Step:
+ **On your Epoch server**, open "mpmission\init.sqf" and search this codeblock:
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
+ Paste the following line **below** it:
```sqf
execVM "rlnt\addons\RLNT_init.sqf";  /*  RLNT-Additions  */
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
  #include "rlnt\graphics\RLNT_displays.hpp"  /*  RLNT-Additions  */
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
#include "rlnt\graphics\RLNT_dialogs.hpp"  /*  RLNT-Additions  */
```

7. Seventh Step:
+ **On your Epoch server**, open "mpmission\rlnt\addons\Update Panel\RLNT_up_config.sqf", read trough it and edit it to your liking.

**That's it, you're done!**

---

<a name="battleye"></a>
## Battleye

+ Add an execption to publicvariable.txt
```sqf
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

**This is a function, that means it needs to be executed to do anything!**
+ To execute this function, you need this command:
```sqf
[Side,Style,Header,Line1,Line2,Img,Duration,FontColor,BgColor] spawn RLNT_updatePanel;
```
**Here an explanation of all the arguments:**
1. Argument: Side aka Receiver
+ Has to be a **String**!
+ Is optional - can be empty - will be replaced by config
+ Can be auto-replaced by config with input nil
+ Two possibilities: "local" or "global"
+ local -> Panel will only be displayed to the client it's running on
+ global -> Panel will be displayed to **ALL** clients on the server (global message)

2. Argument: Style aka Design
+ Has to be an **Integer**!
+ Is optional - can be empty - will be replaced by config
+ Can be auto-replaced by config with input nil
+ Possibilities: 1-4 (if you want more suggest them here: [Epoch Forum][rlnt_up_epochforum])
+ 1 -> A panel with header and two lines of text in the left upper corner ([example image][imagestyle1])
+ 2 -> Just a header with two lines of text floating in the left upper corner ([example image][imagestyle2])
+ 3 -> A panel with image, header and two lines of text in the left upper corner ([example image][imagestyle3])
+ 4 -> Just an image, header and two lines of text floating in the left upper corner ([example image][imagestyle4])

3. Argument: Header aka Headline of the Panel
+ Has to be a **String**!
+ Is optional - can be empty - will be replaced by config
+ Can be auto-replaced by config with input nil
+ Has larger text size than the both text lines
+ Maximum characters: 16

4. Argument: Line1 aka First textline of the panel
+ Has to be a **String**!
+ Is optional - can be empty - will be replaced by config
+ Can be auto-replaced by config with input nil
+ Maximum characters: 40

5. Argument: Line2 aka Second textline of the panel
+ Has to be a **String**!
+ Is optional - can be empty - will be replaced by config
+ Can be auto-replaced by config with input nil
+ Maximum characters: 40

6. Argument: Img aka Image or Picture
+ Has to be a **Path-String**!
+ Is optional - can be empty - will be replaced by config
+ Can be auto-replaced by config with input nil
+ Has to be a .paa - file
+ Suggested resolution: 340x300

7. Argument: Duration aka time how long the panel is displayed
+ Has to be an **Integer**!
+ Is optional - can be empty - will be replaced by config
+ Can be auto-replaced by config with input nil
+ Has to be between 3 and 60
+ Always lasts 1 second longer because it fades in
+ Doesn't matter when another update panel pops up

8. Argument: FontColor aka Color of the text
+ Has to be a **Color-Array**!
+ Is optional - can be empty - will be replaced by config
+ Can be auto-replaced by config with input nil
+ Color can be chosen here as HTML: [Color Picker][htmlcolor]
+ HTML color can be converted here: [Color Converter][colorconverter]
+ Format is [red,green,blue,alpha] aka [r,g,b,a]
+ I always suggest alpha = 1

9. Argument: BgColor aka Color of the background
+ Has to be a **Color-Array**!
+ Is optional - can be empty - will be replaced by config
+ Can be auto-replaced by config with input nil
+ Color can be chosen here as HTML: [Color Picker][htmlcolor]
+ HTML color can be converted here: [Color Converter][colorconverter]
+ Format is [red,green,blue,alpha] aka [r,g,b,a]
+ I always suggest alpha = 0.7

**Due to the fact that all arguments are optional you can also execute like this:**<br>
Keep in mind if you do that, it will take all the arguments from your config!
```sqf
[] spawn RLNT_updatePanel;
```

---

<a name="changelog"></a>
## Changelog

| Date         | Version | Description                                                                                       												 															|
| :---         | :---    | :---                                                                                              												 															|
| [16.09.2017] | v1.0    | Initial release																																									 												 															|
| [17.09.2017] | v1.1		 | Minor adjustments to fix known problems and structure<br>_Changes:_ [[commit dbef01d][update1]]	 												 															|
| [18.09.2017] | v1.2		 | Added two new styles, added links to config<br>_Changes:_ [[commit 0248494][update2]]						 												 															|
| [19.09.2017] | v1.3		 | Made all arguments optional, added new pubVar-finding alghorithm, adjusted Readme<br>_Changes:_ [[commit acaff6a][update3]] [[commit 			  d724d34][update4]]																																																																																|
| [26.09.2017] | v1.4		 | Fixed receiver, fixed debug, adjusted config, fixed optional and nil-arguments  _Thanks to:_ @SmokeyBR<br>_Changes:_ [[commit ][update5]]							|
---

[rlnt_up_epochforum]: https://epochmod.com/forum/topic/44485-release-rlnt-update-panel-19092017-v13/ "Go to source"
[githubissues]: https://github.com/DAmNRelentless/RLNTUpdatePanel/issues/1 "Go to source"
[githubsuggestions]: https://github.com/DAmNRelentless/RLNTUpdatePanel/issues/2 "Go to source"
[githubreleases]: https://github.com/DAmNRelentless/RLNTUpdatePanel/releases "Go to source"
[sp4rkygithub]: https://github.com/SPKcoding/ "Go to source"
[ibengithub]: https://github.com/infobeny/ "Go to source"
[goliasgithub]: https://github.com/LordGolias/ "Go to source"
[sanchezgithub]: https://github.com/ravmustang/ "Go to source"
[epochdiscord]: https://discord.gg/0k4ynDDCsnMzkxk7 "Go to source"
[htmlcolor]: https://www.w3schools.com/colors/colors_picker.asp "Go to source"
[colorconverter]: http://killzonekid.com/hex-2-arma-gui-colour-converter/ "Go to source"
[imagestyle1]: https://i.imgur.com/Woxzfe4.png "Go to source"
[imagestyle2]: https://i.imgur.com/1XWcirz.png "Go to source"
[imagestyle3]: https://i.imgur.com/PxxW6Lm.png "Go to source"
[imagestyle4]: https://i.imgur.com/yVrZRJR.png "Go to source"
[update1]: https://github.com/DAmNRelentless/RLNTUpdatePanel/commit/dbef01d0ec8ff592ee0bbeb4cd6db5bb7a01d613 "Go to source"
[update2]: https://github.com/DAmNRelentless/RLNTUpdatePanel/commit/024849451658bb906a625a9ae7ade9109076b071 "Go to source"
[update3]: https://github.com/DAmNRelentless/RLNTUpdatePanel/commit/acaff6a224581c34e64fcae004f0991b07fc1d95 "Go to source"
[update4]: https://github.com/DAmNRelentless/RLNTUpdatePanel/commit/d724d34c3173ccf95dd6dddfdae0ec9e48a28f6b "Go to source"
[update5]: "Go to source"
