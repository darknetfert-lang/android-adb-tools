@echo off
title Android ADB Tools
color 0A

:check
adb get-state 1>nul 2>nul
if errorlevel 1 (
    echo.
    echo [!] No device detected
    echo Connect your phone and enable USB debugging
    pause
    exit
)

:menu
cls
echo ============================
echo    ANDROID ADB TOOLS
echo ============================
echo.
echo 1. Remove Facebook Bloat
echo 2. Boost Performance
echo 3. Privacy Mode
echo 4. Exit
echo.

set /p choice=Select option:

if %choice%==1 (
 adb shell pm uninstall -k --user 0 com.facebook.katana
 echo Done!
 pause
 goto menu
)

if %choice%==2 (
 adb shell settings put global window_animation_scale 0.5
 adb shell settings put global transition_animation_scale 0.5
 adb shell settings put global animator_duration_scale 0.5
 echo Done!
 pause
 goto menu
)

if %choice%==3 (
 adb shell appops set com.facebook.katana RUN_IN_BACKGROUND ignore
 echo Done!
 pause
 goto menu
)

if %choice%==4 exit

goto menu
