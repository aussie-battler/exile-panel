@echo off
color 0a

set nome=Exile
set caminho=C:\Exile\Server
set executavel=arma3server

title %nome%

:Serverstart
cd %caminho%
echo Exile Server Ativo
start "%nome%" /min /wait %executavel%.exe -mod=@exile;Kart;Mark;Heli; -servermod=@exileserver; -config=%caminho%\@ExileServer\config.cfg -port=2302 -profiles=%nome% -cfg=%caminho%\@ExileServer\basic.cfg -name=%nome% -autoinit
ping 127.0.0.1 -n 15 >NUL
echo Exile Server Caiu... Reiniciando!
ping 127.0.0.1 -n 5 >NUL
cls
goto Serverstart
