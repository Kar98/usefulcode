rem This batch file will iterate through each line of the file specified, then using awk.exe, spit the files based ...
rem ... on the line received.
@echo off
cd %~dp0
SETLOCAL ENABLEDELAYEDEXPANSION
@CLS
@ECHO.
SET VAR
FOR /F "tokens=*" %%A IN (phonenumbers.txt) DO (
awk.exe "/%%A/" udr >> wholesale_udrs.txt
)
@ECHO.
@PAUSE
ENDLOCAL
