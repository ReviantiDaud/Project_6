@echo off 
echo Starting backup...

copy *.pdf backup
copy *.docx backup

echo Backup completed!

@echo off setlocal enabledelayedexpansion
echo Starting backup...

set count=0

for %%f in (*.pdf *.docx) do (
set /a count+=1
echo Copying file !count!: %%f copy "%%f" backup /Y >nul
)

echo.
echo Total file copied: %count%
echo Backup completed!

@echo off
 for %%f in (*.pdf *.docx) do (
for %%s in (%%f) do echo File: %%f Size: %%~zs bytes >> verify.txt
)

@echo off
echo.
echo Compressing backup folder...

powershell Compress-Archive -Path backup\* -DestinationPath backup -Force

echo Compression Done!
pause