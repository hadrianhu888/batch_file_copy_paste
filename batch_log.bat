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

copy /y %CD%\dir2\txt2.txt %CD%\dir1
copy /y %CD%\dir1\txt1.txt %CD%\dir2
copy /y %CD%\dir0\txt0.txt %CD%\dir2

copy /y %CD%\dir2\txt2.txt %CD%\dir3
copy /y %CD%\dir1\txt1.txt %CD%\dir3
copy /y %CD%\dir2\txt0.txt %CD%\dir3

move %CD%\dir0\date_time.txt %CD%

echo %date% %time%

del tempCodeRunnerFile.bat

cd %CD%\dir0
del /p /a %CD%\dir0\txt1.txt 

cd %CD%

set DateTime = %date% %time%
echo %date% %time% > %CD%\date_time.txt

call %PERL% get_time_date.pl

move %CD%\*.txt %LOGS%

echo off