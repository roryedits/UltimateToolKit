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
ECHO 2 - Reset Network Adapter
ECHO.
ECHO 0 - Main Menu
ECHO.
SET /P M=Enter your option:
IF %M%==1 GOTO NEVERSLEEP
IF %M%==2 GOTO RNA
IF %M%==0 GOTO EOF

:NEVERSLEEP
CALL .\toolkit\bin\settings\neversleep.bat
GOTO SETTINGS

:RNA
powershell "start .\toolkit\bin\settigns\rna.bat -v runAs"
GOTO SETTINGS