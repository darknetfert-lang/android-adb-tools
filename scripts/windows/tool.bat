@echo off
cls
echo =========================
echo   ANDROID ADB TOOLS
echo =========================
echo.
echo 1. Debloat Facebook
echo 2. Boost Performance
echo 3. Privacy Mode
echo.

set /p choice=Choose option:

if %choice%==1 adb shell pm uninstall -k --user 0 com.facebook.katana
if %choice%==2 adb shell settings put global window_animation_scale 0.5
if %choice%==3 adb shell appops set com.facebook.katana RUN_IN_BACKGROUND ignore

pause
