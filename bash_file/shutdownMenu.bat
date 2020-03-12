@echo off
:start
cls
echo.
echo 1. Shutdown
echo 2. Restart
echo 3. Logoff
echo 4. Abort
echo 5. Exit

set choice=
set /p choice=Type the number to execute as an administrator.

if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='1' goto shutdown
if '%choice%'=='2' goto restart
if '%choice%'=='3' goto logoff
if '%choice%'=='4' goto abort
if '%choice%'=='5' goto exit

echo "%choice%" is not valid, try agin
echo.
goto start

:shutdown
shutdown.exe /s /t 60
goto start

:restart
shutdown.exe /r /t 60
goto start

:logoff
shutdown.exe /l 
goto start

:abort
shutdown.exe /a
goto start

:exit
echo Exit!, see you later.
goto end
:end
