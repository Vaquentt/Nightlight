@echo off
color 5

title Checking Python Version
python --version | findstr "3.11." || python --version | findstr "3.10." || python --version | findstr "3.9." || python --version | findstr "3.8."
if %errorlevel%==0 (
    echo Python 3.8.0 or higher is already installed
) else (
    echo Python 3.8.0 or higher is not installed
    echo Please install Python 3.8.0 or higher and add it to your PATH
    timeout /t 5 >nul
)

title Installing Requirements
cd /d "%~dp0"
echo Installing Requirements...
python -m pip install -r requirements.txt

cd tools
title Checking for updates
echo Checking for updates...
python update.py
