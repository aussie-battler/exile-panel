@echo off
color 0a
set caminho=%1
set executavel=%2
set nome=%3
set steampath=%4

::set nome=Exile
::set caminho=C:\Exile\Server
::set executavel=arma3server
::set steampath=c:\Exile\Steamcmd

title %nome%

:Serverstart
echo Launching Server
cd %caminho%
echo Exile Server Monitor... Active !
start "%nome%" /min /wait %executavel%.exe -mod=@exile;Kart;Mark;Heli; -servermod=@exileserver; -config=%caminho%\@ExileServer\config.cfg -port=2302 -profiles=SC -cfg=%caminho%\@ExileServer\basic.cfg -name=%nome% -autoinit
ping 127.0.0.1 -n 15 >NUL
echo Exile Server Shutdown ... Restarting!
ping 127.0.0.1 -n 5 >NUL
cls
goto Serverstart
