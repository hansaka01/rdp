@echo off
start .\ngrok\localtonet.exe AuthToken iGve3jXl1qpLsDHyRaABmEb8o9YTdCVN0
title Timer

:start
rem title Enter time to countdown from.

rem cls
rem  rem echo Enter time to countdown from.

rem rem set/p "time=>
set time= 0

:loop
cls

set /a time=%time%+1
if %time%== -1 goto timesup

title Counting down...

echo.
echo.

echo.

echo --------------------------------Rdp by hansaka-------------------------------
echo `                      ꓲ      ꓲ     /\     ꓲ\    ꓲ                             `
echo `                      ꓲ      ꓲ    /  \    ꓲ \   ꓲ                             `
echo `                      ꓲ—-—-—-ꓲ   /—-—-\   ꓲ  \  ꓲ                             `
echo `                      ꓲ      ꓲ  /      \  ꓲ   \ ꓲ                             `
echo `                      ꓲ      ꓲ /        \ ꓲ    \ꓲ                             `
echo `                    You had left [%time%] seconds.                          `
echo `----------------------------------------------------------------------------`


ping localhost -n 2 > nul
goto loop

:timesup
echo your time is over

pause
goto start
