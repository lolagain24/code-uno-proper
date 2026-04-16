@echo off
echo ========================================
echo  UNO - Raylib Build Script for Windows
echo ========================================
echo.

:: Check if raylib is installed via winget or w64devkit
where gcc >nul 2>&1
if %errorlevel% neq 0 (
    echo ERROR: gcc not found.
    echo Please install w64devkit or MinGW and add it to your PATH.
    echo Download: https://github.com/skeeto/w64devkit/releases
    pause
    exit /b 1
)

echo [1/2] Compiling uno_raylib.c ...
gcc uno_raylib.c -o uno.exe -lraylib -lm -lopengl32 -lgdi32 -lwinmm -mwindows

if %errorlevel% neq 0 (
    echo.
    echo Compilation failed. Make sure raylib is installed.
    echo Download raylib: https://github.com/raysan5/raylib/releases
    echo Extract and copy libraylib.a to your MinGW lib folder,
    echo and raylib.h to your MinGW include folder.
    pause
    exit /b 1
)

echo [2/2] Done! Launching UNO...
echo.
start uno.exe
