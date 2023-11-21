@echo off

IF NOT EXIST "C:\Program Files\Python312" (
    echo This BAT was tested with the x64 version of Python on v3.12. If you would like to proceed, press Enter
    pause >nul
)

IF NOT EXIST "%~dp0\venv\" (
    python -m venv venv
)

call venv/Scripts/activate.bat
