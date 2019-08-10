@ECHO OFF
TITLE KODI Thumbs fix
SET "KODI=G:\KODI"
SET "DIR=portable_data\userdata"
SET "APP=kodi.exe"
ECHO.
ECHO KODI must to be closed.
ECHO --------------------------
:QUESTION
SET /P C=Would you like to continue[Y/N]?
IF /I "%C%" EQU "Y" GOTO START
IF /I "%C%" EQU "N" GOTO EOF
CLS
ECHO.
ECHO ----------------------------
ECHO Please answer [Y]es or [N]o!
ECHO ----------------------------
ECHO.
GOTO QUESTION
:START
CLS
TASKKILL /IM %APP% /F
RD /S /Q "%KODI%\%DIR%\Thumbnails"
DEL "%KODI%\%DIR%\Database\Textures13.db"
CLS
ECHO.
ECHO    Done ! ! !
ECHO.
PAUSE
START "" "%KODI%\%APP%" -p
:EXIT
GOTO EOF
