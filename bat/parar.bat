set nome1=%1
set nome2=%2
taskkill /F /IM %nome1%.exe
taskkill /F /FI "WindowTitle eq  Administrator:  %nome2%" /T
