@echo off
echo Masukkan folder yang ingin di backup:
set /p source="Path folder:"

echo Masukkan folder tujuan backup:
set /p dest="folder backup:"

xcopy "%source%" "%dest%" /E /I /Y
echo Backup selesai!

@echo off

set "source=C:\Users\%USERPROFILE%\datasumber
set "dest=D:\backup_project6\Tugas3

if not exist "%dest%" mkdir "%dest%"

echo menjalankan incremental Backup...
robocopy "%source%" "%dest%" /E /XO
echo Selesai!

@echo off
set local

set "source=C:\datasumber"
set "dest=D:\backup_project6\Tugas3

::loop
echo Melakukan backup dari %source% ke %dest%...
xcopy "%source%" "%dest%" /E /I /Y /D

echo Backup selesai! menunggu 1 menit...
timeout /t 60
goto loop
pause





















