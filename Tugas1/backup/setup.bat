@echo off
echo Running setup...
mkdir backup
xcopy * backup /Y
echo Done!
pause