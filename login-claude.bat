@echo off
title Claude login (one time only)
cd /d "%~dp0"
where node >nul 2>nul
if errorlevel 1 (
  echo Node.js not found. Please install Node.js 18 or later: https://nodejs.org
  pause
  exit /b 1
)
echo A browser window will open. Sign in with your company Claude account (SSO).
echo.
node claude-bridge.js --login --sso
echo.
pause
