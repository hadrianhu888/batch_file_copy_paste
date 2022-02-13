@echo off
@REM if not "%1"=="STDOUT_TO_FILE"  %0 STDOUT_TO_FILE %*  >log.txt 2>&1
@REM shift /1
set DateTime = %date% %time%
echo %date% %time% > date_time.txt

