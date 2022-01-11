@echo off
title Python to Exe Converter
if exist fyann goto install
if not exist fyann goto start

:install
echo ========================================================
echo Creator: https://github.com/fyannz
echo ========================================================
echo.
del fyann
echo Installing PyInstaller...
timeout /t 3 /nobreak >nul
pip install pyinstaller
timeout /t 3 /nobreak >nul
echo.
echo PyInstaller installed!
timeout /t 1 /nobreak >nul
cls


:start
echo ========================================================
echo Creator: https://github.com/fyannz
echo ========================================================
echo.
set /p filename=Enter your .py file name (example.py): 
set /p foldername=Enter folder name to store converted file: 
cls
echo ========================================================
echo Creator: https://github.com/fyannz
echo ========================================================
echo.
echo Checking if %filename% exist...
timeout /t 2 >nul
if not exist %filename% goto not-exist
if exist %filename% goto start-convert

:not-exist
cls
echo ========================================================
echo Creator: https://github.com/fyannz
echo ========================================================
echo.
echo Can't find file named '%filename%', maybe some typo?
pause
cls
goto start

:start-convert
cls
echo ========================================================
echo Creator: https://github.com/fyannz
echo ========================================================
echo.
echo %filename% Found! starting converter...
timeout /t 1 >nul
mkdir %foldername%
timeout /t 1 >nul
move %filename% %foldername%
timeout /t 1 >nul
timeout /t 1 >nul
PyInstaller --onefile --noconsole %filename%
pause
exit