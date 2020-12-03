@echo off
SET THEFILE=c:\users\san\docume~1\kusmang\gamedev\rpg\ugamerpg.exe
echo Linking %THEFILE%
c:\dev-pas\bin\ldw.exe  -s   -b base.$$$ -o c:\users\san\docume~1\kusmang\gamedev\rpg\ugamerpg.exe link.res
if errorlevel 1 goto linkend
goto end
:asmend
echo An error occured while assembling %THEFILE%
goto end
:linkend
echo An error occured while linking %THEFILE%
:end
