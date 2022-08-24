@echo off
:start
::Server name (This is just for the bat file)
set serverName=Beefy Local DayZ server
::Server files location
set serverLocation="C:\Program Files (x86)\Steam\steamapps\common\DayZServer"
::Server Port
set serverPort=2302
::Server config
set serverConfig=serverDZ.cfg
::Logical CPU cores to use (Equal or less than available)
set serverCPU=2
::Sets title for terminal (DONT edit)
title %serverName% batch
::DayZServer location (DONT edit)
cd "%serverLocation%"
echo (%time%) %serverName% started.
::Launch parameters (edit end: -config=|-port=|-profiles=|-doLogs|-adminLog|-netLog|-freezeCheck|-filePatching|-BEpath=|-cpuCount=)
start "DayZ Server" /min "DayZServer_x64.exe" -config=%serverConfig% -port=%serverPort% "-profiles=config" "-mod=@CF;@VPPAdminTools;@Namalsk Island;@Namalsk Survival;@Dabs Framework;@DayZ-Expansion-Bundle;@DayZ-Expansion-Licensed;@SNAFU Weapons;@CJ187-MoreMoney;@MMG - Mightys Military Gear;@BaseBuildingPlus;@Unlimited Stamina;@FlipTransport;@Morphine Fixes Broken Legs;@Saline Bag+;@MuchStuffPack;@Code Lock;@COCAs_NoVehicleDamageMOD;@Tactical Flava" -cpuCount=%serverCPU% -dologs -adminlog -netlog -freezecheck
::Time in seconds before kill server process (14400 = 4 hours)
timeout 14390
taskkill /im DayZServer_x64.exe /F
::Time in seconds to wait before..
timeout 10
::Go back to the top and repeat the whole cycle again
goto start