@echo off
color 0a
::set caminho=%1
::set executavel=%2
::set nome=%3

set nome=Exile
set caminho=c:\Exile\Server
set executavel=arma3server

title %nome%

:Serverstart
cd %caminho%
echo Exile Server Rodando
start "%nome%" /min /wait %executavel%.exe -mod=@exile;Kart;Mark;Heli; -servermod=@exileserver; -config=%caminho%\@ExileServer\config.cfg -port=2302 -profiles=SC -cfg=%caminho%\@ExileServer\basic.cfg -name=%nome% -autoinit
ping 127.0.0.1 -n 15 >NUL
echo Exile Server Caiu... Reiniciando...
ping 127.0.0.1 -n 5 >NUL
cls
goto Serverstart
