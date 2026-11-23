@echo off
title Claude Bridge (dashboard)
cd /d "%~dp0"
where node >nul 2>nul
if errorlevel 1 (
  echo Node.js not found. Please install Node.js 18 or later: https://nodejs.org
  pause
  exit /b 1
)
node claude-bridge.js
echo.
echo Bridge stopped.
pause
