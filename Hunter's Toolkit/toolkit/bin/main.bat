set main=.\toolkit\bin\mainmenu.bat
:MENU
CALL %main%
SET /P M=Enter your option:
IF %M%==1 GOTO INSTALL
IF %M%==2 GOTO SETTINGS
IF %M%==9 GOTO SYSREP
IF %M%==0 GOTO EOF



:INSTALL
start cmd.exe
GOTO MENU



:SETTINGS
CLS
CALL %title%
ECHO.
ECHO     *************************
ECHO     *     Settings Menu     *
ECHO     *************************
ECHO.
ECHO Select an option:
ECHO.
ECHO 1 - Never Sleep
ECHO 2 - Settings
ECHO.
ECHO 0 - Main Menu
ECHO.
SET /P M=Enter your option:
IF %M%==1 GOTO NEVERSLEEP
IF %M%==2 GOTO SETTINGS
IF %M%==0 GOTO MENU

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

CALL %commands%