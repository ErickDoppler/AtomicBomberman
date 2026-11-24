@echo off
rem Atomic Bomberman dedicated server - installs what the server needs (Windows).
rem The server needs Python 3.7 or newer and nothing else (standard library only).
setlocal
cd /d "%~dp0"

call :findpython
if defined PYEXE goto :found

echo Python 3.7 or newer is missing - installing it.
where winget >nul 2>nul
if %errorlevel%==0 (
    winget install -e --id Python.Python.3.12 --silent --accept-package-agreements --accept-source-agreements
    call :findpython
    if defined PYEXE goto :found
)

echo Downloading the Python installer from python.org ...
set "PYARCH=amd64"
if /i "%PROCESSOR_ARCHITECTURE%"=="ARM64" set "PYARCH=arm64"
set "PYURL=https://www.python.org/ftp/python/3.12.8/python-3.12.8-%PYARCH%.exe"
set "PYSETUP=%TEMP%\python-installer.exe"
powershell -NoProfile -ExecutionPolicy Bypass -Command "try { Invoke-WebRequest -UseBasicParsing -Uri '%PYURL%' -OutFile '%PYSETUP%' } catch { exit 1 }"
if errorlevel 1 (
    echo The download failed. Install Python 3.7+ from https://www.python.org/downloads/ and run this file again.
    exit /b 1
)
"%PYSETUP%" /quiet InstallAllUsers=0 PrependPath=1 Include_test=0
del "%PYSETUP%" >nul 2>nul

rem the new installation is not on this window's PATH yet: look where the installer puts it
for /d %%D in ("%LocalAppData%\Programs\Python\Python3*") do if exist "%%D\python.exe" set "PATH=%%D;%%D\Scripts;%PATH%"
call :findpython
if not defined PYEXE (
    echo Python was installed but is not found yet. Open a new command window and run start.cmd.
    exit /b 1
)

:found
echo Python is installed: %PYEXE%
echo Everything the server needs is installed.
echo Edit server.ini (name, port), then start the server with start.cmd
exit /b 0

:findpython
set "PYEXE="
for %%P in (python.exe py.exe) do (
    if not defined PYEXE (
        %%P -c "import sys; sys.exit(0 if sys.version_info >= (3, 7) else 1)" >nul 2>nul
        if not errorlevel 1 set "PYEXE=%%P"
    )
)
exit /b 0
