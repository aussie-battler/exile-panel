@echo off
taskkill /F /IM %1.exe
taskkill /F /FI "WindowTitle eq  Administrator:  %2" /T
timeout /t 2
CALL %3/iniciar.bat
echo Exile Server Reiniciado...
