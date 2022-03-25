@echo off
SETLOCAL


rem //removing telnet:// from call
SET input=%1
FOR /f "tokens=1,2,3 delims=:" %%a IN ("%input%") do SET host=%%b&SET port=%%c
SET host=%host:~2%
echo %host%
echo %port%
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
echo Connecting to: %host%
start "%host%" %EXEC% -newtab "telnet -r %host% %port%"

:END