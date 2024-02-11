@echo off
SETLOCAL ENABLEDELAYEDEXPANSION
SET "sourceFile=telegram.exe"
SET "targetDir=%UserProfile%\Desktop\"

FOR /L %%G IN (3,1,30) DO (
    md "tel%%G"
    copy "%sourceFile%" "tel%%G"
    echo [InternetShortcut] > "%targetDir%tel%%G.url"
    echo URL=file://%CD%\tel%%G\telegram.exe >> "%targetDir%tel%%G.url"
    echo IconIndex=0 >> "%targetDir%tel%%G.url"
    echo IconFile=%CD%\tel%%G\telegram.exe >> "%targetDir%tel%%G.url"
)

ENDLOCAL
