@echo off
rem Atomic Bomberman dedicated server - starts the server in this window (Ctrl+C stops it).
rem Settings: server.ini next to this file.
setlocal
cd /d "%~dp0"

set "PYEXE="
for %%P in (python.exe py.exe) do (
    if not defined PYEXE (
        %%P -c "import sys; sys.exit(0 if sys.version_info >= (3, 7) else 1)" >nul 2>nul
        if not errorlevel 1 set "PYEXE=%%P"
    )
)
if not defined PYEXE (
    echo Python 3.7+ not found - running setup.cmd first.
    call setup.cmd
    if errorlevel 1 exit /b 1
    for /d %%D in ("%LocalAppData%\Programs\Python\Python3*") do if exist "%%D\python.exe" set "PYEXE=%%D\python.exe"
    if not defined PYEXE set "PYEXE=python.exe"
)

"%PYEXE%" bm_server.py %*
