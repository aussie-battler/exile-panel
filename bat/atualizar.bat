@echo off
SETLOCAL ENABLEDELAYEDEXPANSION
:: For stable use 233780 -beta , For Dev use 233780 -beta development
%4\steamcmd.exe +login %1 %2 +force_install_dir %3 +"app_update 233780 -beta" validate +quit
