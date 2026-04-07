@echo off
title ReporTix — Server Cloner — Install
color 0A
echo.
echo  ╔══════════════════════════════════════════╗
echo  ║   ReporTix — Server Cloner Installer     ║
echo  ║   https://reportix.xyz                   ║
echo  ╚══════════════════════════════════════════╝
echo.

:: Check Python
python --version >nul 2>&1
if errorlevel 1 (
    echo  [ERROR] Python is not installed or not in PATH.
    echo  Download Python from: https://www.python.org/downloads/
    echo  Make sure to check "Add Python to PATH" during installation.
    echo.
    pause
    exit /b 1
)

echo  [INFO] Python found.
echo  [INFO] Installing dependencies...
echo.
pip install -r requirements.txt
if errorlevel 1 (
    echo.
    echo  [ERROR] Failed to install dependencies.
    echo  Try running as Administrator or check your internet connection.
    pause
    exit /b 1
)

echo.
echo  [OK] Installation complete!
echo  Run "run.bat" to start the tool.
echo.
pause
