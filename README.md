# CSGO Legacy Server Setup
Following this guide allows you to locally host a private CS:GO Legacy server on Windows. <br />
Players will be able to join from either the new [standalone CS:GO Legacy](https://store.steampowered.com/app/4465480/CounterStrikeGlobal_Offensive) or CS2's CS:GO Legacy beta branch.
Gathering all the requirements, dependencies and dealing with compatibility issues is very time consuming, so I collected a base set-up of mods (skins, graffiti, map votes, pug setup with captain roles, etc.) as well as many older maps (e.g. de_cbble_legacy, de_train_2013, de_nuke_2016) as well as operation and wingman maps that have been part of the game once.

## ReadMe Chapters
- [Screenshots]()
- [Mods & Maps]()
- [Installation]()
- [Administration]()
- [Known Issues]()


## Screenshots


## Mods & Maps


## Installation


## Administration
#### Using Server Console Commands
  Using server commands while connected to the server requires you to use the following command first:
	`rcon_password 12345`.
	You can change this here: `../csgo/cfg/server.cfg`.<br />
	Every subsequent command needs to be placed after `rcon` like so: `rcon mp_restartgame 1`
	
#### Maps and Map groups
  I created three map rotations (5v5, 2v2, 1v1), which determine which maps will be shown for voting at the end of the match.<br />
	By default the server starts with `+mapgroup mg_comp`. You can change this in the `start.bat` file, or by using command `mapgroup mg_wingman` or `mapgroup mg_aim`.
	Map groups can be adjusted in `../csgo/GameModes_Server.txt`.
	You can manually change the map to any of the listed ones in `../csgo/maplist.txt` using for example `rcon changelevel de_cbble_legacy`.
	Tip: By starting to type "changemap de_", you can use the autofill to check which maps you have installed locally.
	
#### Starting a match
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


## Known Issues
- On some maps, specifically the ones with multiple versions installed (e.g. cbble, train, nuke, ...), the radar will have a black background.
- If you get more than 1000 FPS, use `fps_max 999` in order to avoid heavy movement glitches.
- For some users the game might crash when loading into the map `awp_india`. If you experience this, start the server on that map (by changing the `start.bat` file)
