@echo off
title ReporTix — Server Cloner
python server_cloner.py
if errorlevel 1 (
    echo.
    echo  [ERROR] Failed to start. Run install.bat first.
    pause
)
