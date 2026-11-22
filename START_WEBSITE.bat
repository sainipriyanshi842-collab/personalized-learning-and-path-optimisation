@echo off
title Personalized Learning Path Optimization
cd /d "%~dp0"

echo ==============================================================================
echo   Personalized Learning Path Optimization - Web Visualizer
echo   Graphic Era University - Dept. of CSE - Session 2026-27
echo ==============================================================================
echo.

set "PY_CMD="
if exist "%LOCALAPPDATA%\Programs\Python\Python312\python.exe" (
    set "PY_CMD=%LOCALAPPDATA%\Programs\Python\Python312\python.exe"
) else if exist "%ProgramFiles%\Python312\python.exe" (
    set "PY_CMD=%ProgramFiles%\Python312\python.exe"
) else (
    set "PY_CMD=python"
)

echo [*] Opening website in your default browser...
start "" "http://127.0.0.1:8080/index.html"

echo [*] Starting web API server...
"%PY_CMD%" web\server.py --no-browser

if %errorlevel% neq 0 (
    echo.
    echo [Info] Server is already active or closed.
    pause
)
