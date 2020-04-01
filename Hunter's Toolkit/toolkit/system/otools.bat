:OT
CLS
CALL %title%
ECHO.
ECHO     ***********************
ECHO     *     Other Tools     *
ECHO     ***********************
ECHO.
ECHO Select an option:
ECHO.
ECHO 1 - Add Take Ownership on Right Click
ECHO 2 - Remove Take Ownership
ECHO 3 - McAfee Removal Tool
ECHO.
ECHO 0 - Main Menu
ECHO.
SET /P M=Enter your option:
IF %M%==1 GOTO AddTO
IF %M%==2 GOTO RemTO
IF %M%==3 GOTO MCPR
IF %M%==0 GOTO EOF

:AddTO
Start-Process $env:windir\sysnative\reg.exe import .toolkit\bin\ot\AddTakeOwnership.reg
pause
GOTO OT

:RemTO
start ".toolkit\bin\ot\remto.bat"
GOTO OT

:MCPR
CALL ".\toolkit\bin\ot\runmcpr.bat"
GOTO OT

:EOF
rmdir /q /s .\toolkit\temp