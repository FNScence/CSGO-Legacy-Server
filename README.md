# CS:GO Legacy Server Setup

Following this guide allows you to locally host a private CS:GO Legacy server on Windows. 

Players will be able to join from either the new [standalone CS:GO Legacy branch](https://store.steampowered.com/app/4465480/CounterStrikeGlobal_Offensive) or CS2's CS:GO Legacy beta branch. Gathering all the requirements, dependencies, and dealing with compatibility issues is very time-consuming, so I collected a base set-up of mods (skins, graffiti, map votes, PUG setup with captain roles, etc.) as well as many older maps (e.g., `de_cbble_legacy`, `de_train_2013`, `de_nuke_2016`) and operation/wingman maps that were once part of the game.

> **Need help?** > Join the **CS AFAP DISCORD SERVER** [HERE](https://discord.gg/FdRTp3XaCG) and feel free to ask in the `#help` channel.

## Table of Contents
* [Mods & Plugins]()
* [Screenshots](https://github.com/FNScence/CSGO-Legacy-Server/tree/main?tab=readme-ov-file#screenshots)
* [Maps](#maps)
* [Installation](https://github.com/FNScence/CSGO-Legacy-Server?tab=readme-ov-file#installation)
* [Administration](https://github.com/FNScence/CSGO-Legacy-Server?tab=readme-ov-file#administration)
* [Useful configs and commands](https://github.com/FNScence/CSGO-Legacy-Server/blob/main/README.md#useful-configs-and-commands)
* [Known Issues](https://github.com/FNScence/CSGO-Legacy-Server?tab=readme-ov-file#known-issues)

## Mods & Plugins
* **NoLobbyReservation:** Requirement for players to be able to join.
* **CSGOEngineFix:** Requirement for players to join from the [new CS:GO Legacy](https://store.steampowered.com/app/4465480/CounterStrikeGlobal_Offensive) (AppID 4465480).
* **Skin Changer:** Custom knives, gloves, skins, and graffiti via in-game chat commands (`!ws`, `!knife`, `!glove`, `!spray`).
* **PugSetup:** Assign 2 captains to pick teammates or shuffle teams via in-game chat command (`!start`).
* **Native Votes:** Post-match map votes.
* **SourceMod:** Dependency.
* **MetaMod:** Dependency.
* **PTaH:** Dependency.

## Screenshots
![Dust2](https://github.com/user-attachments/assets/79094c78-4bd5-4868-b747-043c5c076995)
↑ AWP like you are prime fnatic JW ...

![Inferno](https://github.com/user-attachments/assets/2cdea592-4128-4000-a8b2-358a7db4ad97)
... or hold banana like NiP Friberg himself.

![Skins, graffiti and old maps](https://github.com/user-attachments/assets/42360be1-e400-42a6-97f9-4661497eb484)
↑ Use any skin, unlimited graffiti and play your favorite maps of the CS:GO era. Silenced weapons are supported even without inventory.

![PugSetup and zoo](https://github.com/user-attachments/assets/e1361c0d-c29b-4d7a-bc86-6b9fad79ec69)
↑ Use the PugSetup Plugin to build teams via captain role, create map vetos and play on long lost operation maps like de_zoo.

![aim_redline](https://github.com/user-attachments/assets/3ef7730f-5a7e-4bc1-be78-004e18339e31)
↑ Challenge your friend on aim_redline like it's 2015 again

![Wingman](https://github.com/user-attachments/assets/9d61ba19-fd6c-4de4-856f-c0863e9ee207)
↑ Play the best 2v2 wingman maps of CS:GO

![Wingman](https://github.com/user-attachments/assets/40a85c8e-baea-46c8-b54a-ab0ba7e91aba)
↑ Post match map vote to keep the pugs rolling

## Maps
<details>
<summary><strong>Competitive Maps (5v5)</strong> <em>(Click to expand)</em></summary>
- de_ancient<br />
- de_anubis<br />
- de_inferno<br />
- de_mirage<br />
- de_nuke<br />
- de_overpass<br />
- de_vertigo<br />
- de_tuscan<br />
- de_dust2<br />
- de_train<br />
- de_cache<br />
- cs_agency<br />
- cs_office<br />
- de_train_old<br />
- de_nuke_2016<br />
- de_dust2_old<br />
- de_cache_legacy<br />
- de_inferno_legacy<br />
- de_cbble_legacy<br />
- de_abbey<br />
- de_austria<br />
- de_royal<br />
- de_log<br />
- de_vertigo_old<br />
- de_nuke_legacy<br />
- de_castle<br />
- de_ruby<br />
- de_zoo<br />
- de_subzero<br />
- de_blackgold<br />
- de_tulip<br />
- de_santorini<br />
- de_mikla<br />
- de_resort<br />
- de_season<br />
- de_bazaar<br />
- cs_backalley<br />
- cs_insertion2<br />
- cs_workout<br />
</details>

<details>
<summary><strong>Wingman Maps (2v2)</strong> <em>(Click to expand)</em></summary>
- de_elysion<br />
- de_guard<br />
- de_pitstop<br />
- de_calavera<br />
- de_ravine<br />
- de_extraction_r1<br />
- de_hive<br />
- de_crete<br />
- de_blagai<br />
- de_prime<br />
</details>

<details>
<summary><strong>Aim Maps (1v1, 2v2, etc.)</strong> <em>(Click to expand)</em></summary>
- aim_map<br />
- aim_redline<br />
- awp_india<br />
- aim_usp_a<br />
</details>


## Installation

### 0. Port Forwarding Availability
Check if your internet provider allows you to port forward. If you cannot find a "port forwarding" section in your router's settings, give your internet provider a call and ask. 
*Note: I had them change my connection from IPv6 to a static IPv4 in order to do it.*

### 1. Download SteamCMD & Base Server
a. **Download:** Get SteamCMD from [this link](https://steamcdn-a.akamaihd.net/client/installer/steamcmd.zip).
b. **Extract:** Create a folder for SteamCMD (e.g., `C:\steamcmd`) and extract the contents of the zip into this folder. *(Source: [Valve Developer Wiki](https://developer.valvesoftware.com/wiki/SteamCMD))*
c. **Run:** Open the Windows Command Prompt as Administrator (`Win+R`, type `cmd`, then press `Ctrl+Shift+Enter`).
d. **Execute:** Run the following commands one by one:
    ```cmd
    cd C:\steamcmd
    steamcmd
    login anonymous
    app_update 740
    ```
    *(Note: App 740 is the CS:GO Legacy beta branch for dedicated servers).*

### 2. Download Pre-Configured Settings & Mods
All of the files (with their working versions and parameters) are collected for you to download all at once.
1. Download the files from this GitHub repository ([Download Link](https://github.com/FNScence/CSGO-Legacy-Server/archive/refs/heads/main.zip)).
2. Copy and place them into your new server directory (`C:\steamcmd\steamapps\common\Counter-Strike Global Offensive Beta - Dedicated Server`).

### 3. Create a Server Login Token & Edit Launch Script
1. Log into Steam in your browser, then go to the [Game Server Account Management page](https://steamcommunity.com/dev/managegameservers).
2. Towards the bottom under **"Create a new game server account"**, enter App ID `730` and copy the generated login token.
3. Go to your server directory: `C:\steamcmd\steamapps\common\Counter-Strike Global Offensive Beta - Dedicated Server`
4. Edit the `start.bat` file using a text editor of your choice (e.g., Notepad++ or VS Code).
5. **Insert your Server Login Token** where indicated.
6. Save the `.bat` file and close it. *(Tip: You can create a desktop shortcut to this file for easy access).*

### 4. Download Maps & Graffiti
To play non-default maps, you would normally have to go through a tedious process of downloading workshop maps and checking their compatibility (nav-file, radar issues, and crashes). Instead, use this pre-packaged folder:

a. Download all the maps (competitive and wingman) via [this Google Drive link](https://drive.google.com/file/d/1TXzR00NMCwuJ4kJH5mxI8e7Kj9C-em46/view?usp=sharing).<br />
b. Copy/place the contents of this downloaded `csgo` folder inside **BOTH** your server and game directories:
   * **Server Directory:** `C:\steamcmd\steamapps\common\Counter-Strike Global Offensive Beta - Dedicated Server\csgo\`
   * **Game Directory (New Standalone CS:GO Legacy):** `C:\Program Files (x86)\Steam\steamapps\common\csgo legacy\csgo\`
   * **Game Directory (CS2 Beta Branch):** `C:\Program Files (x86)\Steam\steamapps\common\Counter-Strike Global Offensive\csgo\`
c. **Important:** Every player joining has to download and install these maps & graffiti locally before joining.

### 5. Port Forwarding Setup
a. **Router Settings:** <br />Check your router settings in your browser at `http://192.168.0.1/` <br />
(URL might differ depending on your provider, check the sticker on your router).
b. **Forward Ports:** <br />Find the "Port Forwarding" section and set up multiple rules pointing to your PC's local IP:
   * `27015` (UDP & TCP)
   * `27020` (UDP)
   * `27005` (UDP)
   * `26900` (UDP)
c. **Windows Defender Firewall:** <br />Open *Windows Defender Firewall with Advanced Security* and create new **Inbound Rules**:
   * *New Rule > Port > TCP > Specific Port `27015` > Allow Connection > Domain + Private + Public*
   * *New Rule > Port > UDP > Specific Ports `27015, 27020, 27005, 26900` > Allow Connection > Domain + Private + Public*
d. **Testing:** <br />WHILE THE SERVER IS RUNNING, go to one of these sites to test if the port forwarding worked. Your IP should be fetched automatically; enter Port Number `27015` and check.
   * [YouGetSignal](https://www.yougetsignal.com/tools/open-ports/)
   * [PortChecker](https://portchecker.co/)

### 6. Running the Server
a. Start the server via the `start.bat` script we created.
b. The console will print your public IP address.
c. You and other players can connect using `connect <your_IP>` in the in-game console.


## Administration

#### ► Using Server Console Commands
Using server commands while connected to the server requires you to authenticate first.
1. Open your in-game console and type: `rcon_password 12345`
   *(You can change this password here: `../csgo/cfg/server.cfg`)*
2. Every subsequent command needs to be prefixed with `rcon`, like so: `rcon mp_restartgame 1`

#### ► Maps and Map Groups
I created three map rotations (5v5, 2v2, 1v1), which determine which maps will be shown for voting at the end of the match.
* By default, the server starts with `+mapgroup mg_comp`. You can change this in the `start.bat` file, or by using the command `rcon mapgroup mg_wingman` or `rcon mapgroup mg_aim`.
* Map groups can be adjusted in `../csgo/GameModes_Server.txt`.
* You can manually change the map to any of the listed ones in `../csgo/maplist.txt` using, for example, `rcon changelevel de_cbble_legacy`.
  *(Tip: By starting to type `changelevel de_` in the console, you can use autofill to check which maps you have installed locally.)*
* When changing between gamemodes, make sure to change the map group first (e.g. `rcon mapgroup mg_wingman`), then to change the map (e.g. `rcon changelevel de_elysion`), otherwise the post-game map voting won't load properly.

#### ► Starting a Match
Starting a match can be done by executing the respective configs. 
*(Tip: Type `exec ` and use autofill to check installed configs and insert prefix `rcon` last. Copy these to your local game cfg folder to use this.)*

* **Warm-up/Testing:** `rcon exec solo`
* **5v5 Competitive:** `rcon exec esl5on5`
* **Wingman 2v2:** `rcon exec esl2on2`
* **Aim Map (1v1/2v2):**
  `rcon exec esl1on1aml`
  `rcon exec esl1on1awp`
  `rcon exec esl2on2aml`
  `rcon exec esl2on2awp`

**Alternative via Plugin:** There is a plugin to start a competitive match via the in-game chat command `!start`. Here, you can assign captains to pick teammates or shuffle teams. The first player to type this command becomes the match leader and can decide who will be captain.


## Useful Configs and Commands

#### A) Recommended Launch Options
In Steam > Right-click CS:GO > Properties > General, add the following to your launch options:<br />
`-novid -console -tickrate 128 +exec autoexec`

#### B) Config with Recommended Settings & Binds
Navigate to `C:\Program Files (x86)\Steam\steamapps\common\Counter-Strike Global Offensive\csgo\cfg`. Copy any existing `.cfg` file, rename it to `autoexec.cfg`, open it in a text editor, and replace its contents with:

```cfg
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

cl_color 0						// ◄ Set prefered player color: 0=yellow, 1=purple, 2=green, 3=blue, 4=orange

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
* **Radar Backgrounds:** On some maps, specifically those with multiple versions installed (e.g., `cbble`, `train`, `nuke`), the radar will display a black background.
* **Movement Glitches:** If you get more than 1000 FPS, set `fps_max 999` in your console to avoid heavy movement glitches.
* **Map Crashes (`awp_india`):** For some users, the game might crash when loading into the map `awp_india`. If you experience this, try starting the server directly on that map by changing it in your `start.bat` file.
