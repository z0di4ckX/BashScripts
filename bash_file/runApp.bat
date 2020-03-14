@echo off
:start
cls
echo.
echo 1. Run Media Player
echo 2. Run Google Chrome
echo 3. Run Notepad
echo 4. Exit

set choice=
set /p choice=Type the number to execute as an administrator.

if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='1' goto player
if '%choice%'=='2' goto chrome
if '%choice%'=='3' goto notepad
if '%choice%'=='4' goto exit

echo "%choice%" is not valid, try agin
echo.
goto start

:player
"%ProgramFiles(x86)%\Windows Media Player\wmplayer.exe"
pause
goto start

:chrome
"C:\Program Files (x86)\Google\Chrome\Application\chrome.exe"
pause
goto start

:notepad
notepad.exe
pause
goto start

:exit
echo Exit!, see you later.
goto end
:end
