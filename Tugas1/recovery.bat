@echo off
echo Running recovery...
copy backup\*.* . /y

:: write to log file
echo [%date% %time%] Recovery started >> recovery_log.txt
echo [%date% %time%] Files restored to original location >> recovery_log.txt
echo [%date% %time%] Recovery completed >> recovery_log.txt
echo -------------------------------------------------- >> recovery_log.txt

echo Recovery Done!
pause