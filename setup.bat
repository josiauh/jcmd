@echo off
echo JCMD
echo You should only be running this once.
REM set up a venv because this is based on python venv
REM and because things are missing
python -m venv .
REM copying all of the requirements
copy setupPrereq\activate.bat Scripts\activate.bat
xcopy /E /I setupPrereq\cmds Scripts\cmds
REM this is just to let people know that they should use cmd because
copy setupPrereq\Activate.ps1 Scripts\Activate.ps1
.\Scripts\activate
