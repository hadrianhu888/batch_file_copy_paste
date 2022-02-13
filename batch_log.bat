@echo off
set PERL = C:\Strawberry\perl\bin\perl5.32.1.exe 
set LOGFILE=test_log.txt
call :LOG > %LOGFILE%
exit /B

:LOG

echo on

echo %date% %time% 

echo %CD%
set MAIN_PATH = %~dp0batch_file_copy_paste

set LOGS =  %~dp0logs
set DIR_0 = %CD%\dir0
set DIR_1 = %CD%\dir1
set DIR_2 = %CD%\dir2
set DIR_3 = %CD%\dir3

echo %DIR_0%
echo %DIR_1%
echo %DIR_2%
echo %DIR_3%

copy /y %DIR_0%\txt0.txt %DIR_1%
copy /y %DIR_1%\txt1.txt %DIR_0%

copy /y %DIR_2%\txt2.txt %DIR_1%
copy /y %DIR_1%\txt1.txt %DIR_2%
copy /y %DIR_0%\txt0.txt %DIR_3%

copy /y %DIR_2%\txt2.txt %DIR_3%
copy /y %DIR_1%\txt1.txt %DIR_3%
copy /y %DIR_2%\txt0.txt %DIR_3%

move %DIR_1%\date_time.txt %CD%

echo %date% %time%

del tempCodeRunnerFile.bat

cd %DIR_0%
del /p /a %DIR_0%\txt1.txt 

cd %CD%
set DateTime = %date% %time%
echo %date% %time% > %CD%\date_time.txt

call %PERL% get_time_date.pl 

cd %CD%
copy /y %CD%\*.txt %LOGS%

echo off