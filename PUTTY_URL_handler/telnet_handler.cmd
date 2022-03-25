@echo off
SETLOCAL


rem //removing telnet:// from call
SET input=%1
FOR /f "tokens=1,2,3 delims=:" %%a IN ("%input%") do SET host=%%b&SET port=%%c
SET host=%host:~2,-1%
echo %host%
echo %port%
rem searching putty location
SET EXEC="%ProgramFiles%\PuTTY\putty.exe"
IF EXIST %EXEC% GOTO CONNECT
SET EXEC="%ProgramFiles(x86)%\PuTTY\putty.exe"
IF EXIST %EXEC% GOTO CONNECT
SET EXEC="%appdata%\PuTTY\putty.exe"
IF EXIST %EXEC% GOTO CONNECT
echo PuTTY EXE Not Found...
GOTO END

:CONNECT
echo Connecting to: %host%
start "%host%" %EXEC% -telnet %host% %port%

:END