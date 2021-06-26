@echo off
setlocal enabledelayedexpansion
set n=0
:loop
set rand=
set /A rand=%RANDOM%%%16+1
set /A n=n+1
if %rand%==1 set rand!n!=a
if %rand%==2 set rand!n!=b
if %rand%==3 set rand!n!=c
if %rand%==4 set rand!n!=d
if %rand%==5 set rand!n!=e
if %rand%==6 set rand!n!=f
if %rand%==7 set rand!n!=1
if %rand%==8 set rand!n!=2
if %rand%==9 set rand!n!=3
if %rand%==10 set rand!n!=4
if %rand%==11 set rand!n!=5
if %rand%==12 set rand!n!=6
if %rand%==13 set rand!n!=7
if %rand%==14 set rand!n!=8
if %rand%==15 set rand!n!=9
if %rand%==16 set rand!n!=0
if !n!==11 goto end
if !n! LSS 11 goto loop
:end

set nrofile=%1
set nropath=%2
set id=%3
set rompath=%4

if "%id%"=="" set id=05%rand1%%rand2%%rand3%%rand4%%rand5%%rand6%%rand7%%rand8%%rand9%%rand10%%rand11%000
if "%id%"=="rand" set id=05%rand1%%rand2%%rand3%%rand4%%rand5%%rand6%%rand7%%rand8%%rand9%%rand10%%rand11%000
if "%nrofile%"=="" set id=05b25dc3089c0000

echo.
echo Building...
echo ID: %id%
if not "%nropath%"=="" echo Path: %nropath%
if not "%nrofile%"=="" echo File: %nrofile%
if not "%rompath%"=="" echo Rom: %rompath%
echo.

if not "%nrofile%"=="" if "%nropath%"=="" echo Error: Need "nropath" to continue, aborting...
if not "%nrofile%"=="" if "%nropath%"=="" pause
if not "%nrofile%"=="" if "%nropath%"=="" exit

if not "%rompath%"=="" if "%nropath%"=="romfs" echo Warning: Don't use "romfs mode" for "RetroArch Rom Forwarder", aborting...
if not "%rompath%"=="" if "%nropath%"=="romfs" pause
if not "%rompath%"=="" if "%nropath%"=="romfs" exit

copy /Y default.npdm "exefs/main.npdm" >NUL
if "%nropath%"=="" if "%nrofile%"=="" copy /Y default.dat "control/icon_AmericanEnglish.dat" >NUL
if "%nropath%"=="" if "%nrofile%"=="" copy /Y default.nacp "control/control.nacp" >NUL
if "%nropath%"=="" if "%nrofile%"=="" .\Windows\hacbrewpack.exe --noromfs --titleid %id% --nspdir .\ -k ./prod.keys --keygeneration 3

if not "%nrofile%"=="" if not "%nropath%"=="" .\Windows\nstool.exe --nacp ./control/control.nacp --icon ./control/icon_AmericanEnglish.dat -t nro %nrofile%
if not "%nrofile%"=="" if not "%nropath%"=="" type nul> romfs/nextNroPath
if not "%nrofile%"=="" if not "%nropath%"=="" type nul> romfs/nextArgv
if not "%nrofile%"=="" if not "%nropath%"=="" if not "%nropath%"=="romfs" echo|set /p="sdmc:%nropath%"> romfs/nextNroPath
if not "%nrofile%"=="" if not "%nropath%"=="" if not "%nropath%"=="romfs" if "%rompath%"=="" echo|set /p="sdmc:%nropath%"> romfs/nextArgv
if not "%nrofile%"=="" if not "%nropath%"=="" if not "%nropath%"=="romfs" if not "%rompath%"=="" echo|set /p=sdmc:%nropath% "sdmc:%rompath%"> romfs/nextArgv
if not "%nrofile%"=="" if "%nropath%"=="romfs" echo|set /p="romfs:/app.nro"> romfs/nextNroPath
if not "%nrofile%"=="" if "%nropath%"=="romfs" echo|set /p="romfs:/app.nro"> romfs/nextArgv
if not "%nrofile%"=="" if "%nropath%"=="romfs" copy /Y "%nrofile%" "romfs/app.nro" >NUL
if not "%nrofile%"=="" if not "%nropath%"=="" .\Windows\hacbrewpack.exe --titleid %id% --nspdir .\ -k ./prod.keys --keygeneration 3

echo.
echo Cleaning...
rmdir /S/Q hacbrewpack_backup
del .\control\icon_AmericanEnglish.dat
del .\control\control.nacp
del .\exefs\main.npdm
if not "%nrofile%"=="" if not "%nropath%"=="" del .\romfs\nextNroPath
if not "%nrofile%"=="" if not "%nropath%"=="" del .\romfs\nextArgv
if not "%nrofile%"=="" if "%nropath%"=="romfs" del .\romfs\app.nro

echo.
echo %id%.nsp is ready
pause
