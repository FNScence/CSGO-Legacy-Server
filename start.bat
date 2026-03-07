@echo off
start "" .\srcds.exe -game csgo -tickrate 128 -debug +sv_setsteamaccount <INSERT_YOUR_SERVER_TOKEN_HERE> -port 27015 -console -usercon +game_type 0 +game_mode 1 +mapgroup mg_comp +map de_cache +exec server
timeout /t 5 /nobreak >nul
exit
