@echo off
start .\ngrok\localtonet.exe AuthToken iGve3jXl1qpLsDHyRaABmEb8o9YTdCVN0
pm2 start index.js && pm2 save && pm2 logs
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

echo --------------------------------Rdp by hansaka--------------------------------
echo `                                                                            `
echo `                                                                            `
echo `                                                                            `
echo `                              Run time [%time%].                            `
echo `                                                                            `
echo `                                                                            `
echo `----------------------------------------------------------------------------`


ping localhost -n 2 > nul
goto loop

:timesup
echo your time is over

pause
goto start
