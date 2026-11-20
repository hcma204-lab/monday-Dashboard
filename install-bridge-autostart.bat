@echo off
title Install Claude bridge autostart
cd /d "%~dp0"
echo Creating a startup shortcut so the Claude bridge starts when you sign in to Windows...
powershell -NoProfile -ExecutionPolicy Bypass -Command "$d='%~dp0'; $s=(New-Object -ComObject WScript.Shell).CreateShortcut((Join-Path ([Environment]::GetFolderPath('Startup')) 'Claude-Bridge-Dashboard.lnk')); $s.TargetPath=(Join-Path $d 'start-claude-bridge.bat'); $s.WorkingDirectory=$d; $s.WindowStyle=7; $s.Description='Claude bridge for the dashboard (local only)'; $s.Save(); Write-Host ('OK: ' + $s.FullName)"
if errorlevel 1 (
  echo Failed to create the shortcut.
) else (
  echo.
  echo Done. The bridge will start minimized each time you sign in.
  echo To remove it: press Win+R, type shell:startup, delete Claude-Bridge-Dashboard.lnk
)
echo.
pause
