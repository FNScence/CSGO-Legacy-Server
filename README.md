# CSGO Legacy Server Setup
Following this guide allows you to locally host a private CS:GO Legacy server on Windows. <br />
Players will be able to join from either the new [standalone CS:GO Legacy](https://store.steampowered.com/app/4465480/CounterStrikeGlobal_Offensive) or CS2's CS:GO Legacy beta branch.
Gathering all the requirements, dependencies and dealing with compatibility issues is very time consuming, so I collected a base set-up of mods (skins, graffiti, map votes, pug setup with captain roles, etc.) as well as many older maps (e.g. de_cbble_legacy, de_train_2013, de_nuke_2016) as well as operation and wingman maps that have been part of the game once.

If any questions remain, join my discord and feel free to ask in the `#help`-channel:
> Join the **CS AFAP DISCORD SERVER** [HERE](https://discord.gg/FdRTp3XaCG).

## ReadMe Chapters
- [Screenshots](https://github.com/FNScence/CSGO-Legacy-Server/tree/main?tab=readme-ov-file#screenshots)
- [Mods & Maps](https://github.com/FNScence/CSGO-Legacy-Server?tab=readme-ov-file#mods--maps)
- [Installation](https://github.com/FNScence/CSGO-Legacy-Server?tab=readme-ov-file#installation)
- [Administration](https://github.com/FNScence/CSGO-Legacy-Server?tab=readme-ov-file#administration)
- [Known Issues](https://github.com/FNScence/CSGO-Legacy-Server?tab=readme-ov-file#known-issues)


## Screenshots


## Mods & Maps
#### Mods and Plugins
- **NoLobbyReservation** (requirement for players to be able to join)
- **CSGOEngineFix** (requirement for players to be able to join from the [new CS:GO Legacy](https://store.steampowered.com/app/4465480/CounterStrikeGlobal_Offensive) appID 4465480)
- **Skin changer** (custom knifes, gloves, skins and graffiti via in-game chat commmands `!ws !knife !glove !spray`)
- **PugSetup** (assign 2 captains to pick teammates or shuffle teams via in-game chat commmand `!start`)
- **Native Votes** (post-match map votes)
- **SourceMod** (dependency)
- **MetaMod** (dependency)
- **PTaH** (dependency)

#### Maps
**Competitive maps (5v5):**<br />
- de_ancient
- de_anubis
- de_inferno
- de_mirage
- de_nuke
- de_overpass
- de_vertigo
- de_tuscan
- de_dust2
- de_train
- de_cache
- cs_agency
- cs_office
- de_train_old
- de_nuke_2016
- de_dust2_old
- de_cache_legacy
- de_inferno_legacy
- de_cbble_legacy
- de_abbey
- de_austria
- de_royal
- de_log
- de_vertigo_old
- de_nuke_legacy
- de_castle
- de_ruby
- de_zoo
- de_subzero
- de_blackgold
- de_tulip
- de_santorini
- de_mikla
- de_resort
- de_season
- de_bazaar
- cs_backalley
- cs_insertion2
- cs_workout

**Wingman maps (2v2):**<br />
- de_elysion
- de_guard
- de_pitstop
- de_calavera
- de_ravine
- de_extraction_r1
- de_hive
- de_crete
- de_blagai
- de_prime

**Aim maps (1v1, 2v2, etc.):**<br />
- aim_map
- aim_redline
- awp_india
- aim_usp_a



## Installation
#### 0) Port Forwarding Availability
Check if your internet provider allows you to port forward. If you cannot find a "port forwarding" section in your router's settings, give your internet provider a call and ask.
I let them change from IPv6 to a static IPv4 in order to do it.
	
	
#### 1) Download steamcmd & base server
a) Download: https://steamcdn-a.akamaihd.net/client/installer/steamcmd.zip
b) Create a folder for SteamCMD. Example: C:\steamcmd
c) Extract the contents of the zip to the folder.
source: https://developer.valvesoftware.com/wiki/SteamCMD
d) Run windows cmd as admin (Win+R: `cmd` CTRL+SHIFT+ENTER)
> `cd C:\steamcmd`
> `steamcmd`
> `login anonymous`
> `app_update 740` (this is the CS:GO legacy beta branch for CS:GO legacy)

#### 2) Download pre-configured settings, mods and other requirements
All of the files (with their working versions and parameters) are collected for you to download all at once here.
Download . Copy/place them into your server directory.
github - https://github.com/FNScence/CSGO-Legacy-Server


#### 3) Create a Server Login Token and edit a Launch Script
a) Log into steam in your browser, then go to https://steamcommunity.com/dev/managegameservers
		Towards the bottom under "Create a new game server account", at App ID enter "730" and copy that generated login token
b) Go to your server directory "C:\steamcmd\steamapps\common\Counter-Strike Global Offensive Beta - Dedicated Server"
		Edit start.bat via an editor of your choice (e.g. notepad++ or VSC)
		INSERT YOUR SERVER LOGIN TOKEN which you created above
		Save the bat file and close. You can create a shortcut to this file, if you want.


####4) Download Maps & Graffiti
To play non-default maps, you'd have to go through a tedious process of downloading workshop maps and checking their compatibility (nav-file, radar issues and crashes)<br />

a) You can download all the maps I use (competitive and wingman) via this link: 
https://drive.google.com/file/d/1TXzR00NMCwuJ4kJH5mxI8e7Kj9C-em46/view?usp=sharing
	
b) You need to copy/place the content of this downloaded csgo-folder inside BOTH your server and game directory
Server directory
	`C:\steamcmd\steamapps\common\Counter-Strike Global Offensive Beta - Dedicated Server\csgo\`
		
Game directory (If you're using the new standalone CS:GO Legacy)
	`C:\Program Files (x86)\Steam\steamapps\common\csgo legacy\csgo\`
		
Game directory (If you're using CS2's Beta branch for CS:GO Legacy)
	`C:\Program Files (x86)\Steam\steamapps\common\Counter-Strike Global Offensive\csgo\`
		
c) Every player joining has to download and install these maps & graffiti locally before joining

#### 5) 	Port Forwarding
a) Check your router settings in your browser: http://192.168.0.1/ (URL might differ depending on your provider, check the sticker on your router)
b) Find "Port Forwarding" setting and set up multiple lines like this:
		Port : 27015 (UDP & TCP)
			   27020 (UDP)
			   27005 (UDP)
			   26900 (UDP)
c) Windows Defender Firewall with Advanced Security
		Create new Inbound Rules:
		New Rule > Port > TCP + Specific Port "20715" > Allow Connection > Domain + Private + Public
		New Rule > Port > UCP + Specific Port "27015, 27020, 27005, 26900" > Allow Connection > Domain + Private + Public
d) Testing
	WHILE THE SERVER IS RUNNING, go to one of these sites to test if the port forwarding worked.
	Your IP should be fetched automatically, enter Port Number "27015" and check.
	https://www.yougetsignal.com/tools/open-ports/
	https://portchecker.co/

#### 6) Running the Server
a) Start the server via the `start.bat` script we created (you can create a shortcut).
b) The console will print your IP, through which you and other players can connect using `connect <your_IP>` in the in-game console.


## Administration
#### ► Using Server Console Commands
  Using server commands while connected to the server requires you to use the following command first:
	`rcon_password 12345`.
	You can change this here: `../csgo/cfg/server.cfg`.<br />
	Every subsequent command needs to be placed after `rcon` like so: `rcon mp_restartgame 1`
	
#### ► Maps and Map groups
  I created three map rotations (5v5, 2v2, 1v1), which determine which maps will be shown for voting at the end of the match.<br />
	By default the server starts with `+mapgroup mg_comp`. You can change this in the `start.bat` file, or by using command `mapgroup mg_wingman` or `mapgroup mg_aim`.
	Map groups can be adjusted in `../csgo/GameModes_Server.txt`.
	You can manually change the map to any of the listed ones in `../csgo/maplist.txt` using for example `rcon changelevel de_cbble_legacy`.
	Tip: By starting to type "changemap de_", you can use the autofill to check which maps you have installed locally.
	
#### ► Starting a match
Starting a match can be done by execing the respective configs using one of these:<br />
- Warm-up/Testing:<br />
		`rcon exec solo`<br />
- 5v5 competitive:<br />
		`rcon exec esl5on5`<br />
- Wingman 2v2:<br />
		`rcon exec esl2on2`<br />
- Aim map:<br />
		`rcon exec esl1on1aml`<br />
		`rcon exec esl2on2aml`<br />
		`rcon exec esl1on1awp`<br />
		`rcon exec esl2on2awp`<br />

Alternatively, there is a plugin to start a competitive match via in-game chat "!start".
Here, you can assign captains to pick teammates or shuffle teams.
The first player to type this command will be match leader and can decide who will be captain.

Tip: By starting to type `exec `, you can use the autofill to check which configs you have installed locally. Copy those listed above into your local game cfg folder to use this.

## Useful configs and commands
A) Recommended launch options
	In Steam > (right-click CS:GO) > Properties > General:
	`-novid -console -tickrate 128 +exec autoexec`

B) Config with recommended binds
At this path `C:\Program Files (x86)\Steam\steamapps\common\Counter-Strike Global Offensive\csgo\cfg`, copy any `.cfg`-file and rename it to `autoexec.cfg`. Then edit:
`autoexec.cfg`:
```
// ========== CSGO Jumpthrow - Binds ==========
alias "+jumpthrow" "+jump;-attack; -attack2"
alias "-jumpthrow" "-jump"
bind "space" "+jumpthrow"			// ◄ KEY customizable

alias "+jumpthrow2" "+forward; +jump; -attack; -attack2"
alias "-jumpthrow2" "-jump; -forward"
bind "n" "+jumpthrow2"				// ◄ KEY customizable

// ========== Network settings ==========
rate 128000
cl_updaterate 128
cl_cmdrate 128
cl_interp 0
cl_interp_ratio 1

// ========== Skins & Graffiti - Binds ==========
bind mouse4 +spray
bind 6 "say /sprays"
bind 7 "say !ws"

cl_color 0						// ◄ Set prefered player color: 0 = yellow, 1 = purple, 2 = green, 3 = blue, 4 = orange

// ========== QoL ==========
cl_use_opens_buy_menu 0
cl_autowepswitch "0"
cl_disablefreezecam 1

// ========== Sound - Settings ==========
snd_mixahead "0.05"
snd_headphone_pan_exponent "2"
snd_tensecondwarning_volume "0.1"

// ========== Radar zoom-out & cleardecals (hold) ==========
alias "+mz" "cl_radar_scale 0.3; cl_crosshair_sniper_width 1; cl_radar_always_centered 0; cl_crosshaircolor_r 255; cl_crosshaircolor_g 255; cl_crosshaircolor_b 255; +cl_show_team_equipment"
alias "-mz" "cl_radar_scale 0.5; cl_crosshair_sniper_width 2; cl_radar_always_centered 1; cl_crosshaircolor_r 255; cl_crosshaircolor_g 255; cl_crosshaircolor_b 0; -cl_show_team_equipment"
bind "alt" "+mz; r_cleardecals"		// ◄ KEY customizable

// ========== Show netgraph when checking scoreboard ==========
net_graph "1"
net_graphheight "9999"
net_graphproportionalfont "0"
alias "+scorenet" "+showscores; net_graphheight 0"
alias "-scorenet" "-showscores; net_graphheight 9999"
bind "tab" "+scorenet"

// ========== HUD & FPS settings ==========
cl_showloadout 1
cl_hud_background_alpha 0.5
cl_hud_bomb_under_radar 1
cl_hud_healthammo_style 0
cl_hud_playercount_pos 0
cl_hud_playercount_showcount 0
cl_teamid_overhead_mode 1
cl_show_observer_crosshair 2
cl_obs_interp_enable 0
cl_showhelp "0"

cl_lagcompensation "1"
cl_predictweapons "1"
cl_resend "6"
cl_timeout "9999999"
r_eyegloss "0"
r_eyemove "0"
r_eyeshift_x "0"
r_eyeshift_y "0"
r_eyeshift_z "0"
r_eyesize "0"
r_dynamic 1
muzzleflash_light "1"
mat_queue_mode "2"
cl_threaded_bone_setup 1

fps_max_menu 400
fps_max 999
```

## Known Issues
- On some maps, specifically the ones with multiple versions installed (e.g. cbble, train, nuke, ...), the radar will have a black background.
- If you get more than 1000 FPS, use `fps_max 999` in order to avoid heavy movement glitches.
- For some users the game might crash when loading into the map `awp_india`. If you experience this, start the server on that map (by changing the `start.bat` file)
