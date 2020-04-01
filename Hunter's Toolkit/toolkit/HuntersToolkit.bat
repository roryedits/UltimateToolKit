set title=.\toolkit\system\title.bat
set main=.\toolkit\system\mainmenu.bat
set settings=.\toolkit\system\settings.bat
set othertools=.\toolkit\system\otools.bat

ECHO OFF
CLS

:MENU
CALL %main%
SET /P M=Enter your option:
IF %M%==1 GOTO INSTALL
IF %M%==2 GOTO SETTINGS
IF %M%==3 GOTO SYSREP
IF %M%==9 GOTO OT
IF %M%==0 GOTO EOF



:INSTALL
start cmd.exe
GOTO MENU



:SETTINGS
CALL %settings%
GOTO MENU

:SYSREP
CLS
CALL %title%
ECHO.
ECHO     *************************
ECHO     *     System Repair     *
ECHO     *************************
ECHO.
ECHO Select an option:
ECHO.
ECHO 1 - System File Checker
ECHO 2 - D.I.S.M.
ECHO.
ECHO 0 - Main Menu
ECHO.
SET /P M=Enter your option:
IF %M%==1 GOTO RUNSFC
IF %M%==2 GOTO DISM
IF %M%==0 GOTO MENU

:OT
CALL %othertools%
GOTO MENU


:RUNSFC
powershell "start .\toolkit\bin\sysrep\sfc.bat -v runAs"
GOTO SYSREP

:DISM
powershell "start .\toolkit\bin\sysrep\dism.bat -v runAs"
GOTO SYSREP

:EOF