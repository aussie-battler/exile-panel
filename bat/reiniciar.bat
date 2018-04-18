set nome1=%1
set nome2=%2
set caminho=%3

taskkill /F /IM %nome1%.exe
taskkill /F /FI "WindowTitle eq  Administrator:  %nome2%" /T

timeout /t 2

CALL %caminho%/iniciar.bat
