@echo off
title Install Claude bridge autostart
cd /d "%~dp0"
where node >nul 2>nul
if errorlevel 1 (
  echo Node.js not found. Please install Node.js 18 or later: https://nodejs.org
  pause
  exit /b 1
)
echo Registering a scheduled task so the Claude bridge starts automatically when you sign in...
powershell -NoProfile -ExecutionPolicy Bypass -File "%~dp0install-bridge-autostart.ps1"
if errorlevel 1 (
  echo.
  echo Failed. Please send a screenshot of this window.
) else (
  echo.
  echo Done. To remove: open PowerShell and run
  echo   Unregister-ScheduledTask -TaskName ClaudeBridgeRD17 -Confirm:$false
)
echo.
pause
