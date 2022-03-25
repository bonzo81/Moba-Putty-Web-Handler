@echo off
REM Simple SSH Link Protocol Handler for Win10
REM Can be used with Mobaxterm or easy adaopted to any other ssh client
REM Public Domain feel free to use.
REM https://tcpip.wtf
REM -MG-
SETLOCAL
rem get username
set var=Please enter you Username:
set /p USERID= %var%

rem //removing ssh:// from call
SET TARGETHOST=%1
SET T2=%TARGETHOST:~6,-1%
rem searching Mobaxterm location
SET EXEC="%ProgramFiles%\Mobatek\MobaXterm\MobaXterm.exe"
IF EXIST %EXEC% GOTO CONNECT
SET EXEC="%ProgramFiles(x86)%\Mobatek\MobaXterm\MobaXterm.exe"
IF EXIST %EXEC% GOTO CONNECT
SET EXEC="%appdata%\Mobatek\MobaXterm\MobaXterm.exe"
IF EXIST %EXEC% GOTO CONNECT
echo MobaXterm EXE Not Found...
GOTO END

:CONNECT
echo Connecting to: %T2%
start "%T2%" %EXEC% -newtab "ssh %USERID%@%T2%"

:END