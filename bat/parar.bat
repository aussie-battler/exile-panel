@echo off
set nome1=%1
set nome2=%2
taskkill /F /IM %nome1%.exe
::taskkill /F /FI "WindowTitle eq  Administrator:  %nome2%" /T
::taskkill /F /FI "WindowTitle eq  CMD:  %nome2%" /T
taskkill /F /FI "WindowTitle eq  %nome2%" /T
echo Exile Server Parado...
@exit
