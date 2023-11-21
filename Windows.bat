@echo off

IF NOT EXIST "C:\Program Files\Python312" (
    echo This BAT was tested with the x64 version of Python on v3.12. If you would like to proceed, press Enter
    pause >nul
)

IF NOT EXIST "%~dp0\venv\" (
    python -m venv venv
)

call venv/Scripts/activate.bat
echo installing dependencies
pip3 install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu121
pip install -r requirements.txt
echo downloading models
python src/download_models.py
echo running webui
python src/webui.py 