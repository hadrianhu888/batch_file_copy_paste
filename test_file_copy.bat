echo %CD%
set DIR_0 = %CD%/dir0
set DIR_1 = %CD%/dir1
set DIR_2 = %CD%/dir2
set DIR_3 = %CD%/dir3
echo %DIR_0%
echo %DIR_1%
echo %DIR_2%
echo %DIR_3%
copy /y %CD%\dir0\txt0.txt %CD%\dir1
copy /y %CD%\dir1\txt1.txt %CD%\dir0

copy /y %CD%\dir2\txt2.txt %CD%\dir1
copy /y %CD%\dir1\txt1.txt %CD%\dir2
copy /y %CD%\dir0\txt0.txt %CD%\dir2

copy /y %CD%\dir2\txt2.txt %CD%\dir3
copy /y %CD%\dir1\txt1.txt %CD%\dir3
copy /y %CD%\dir2\txt0.txt %CD%\dir3

@REM copy /y %DIR_1%\txt1.txt %DIR_2%
@REM copy /y %DIR_2%\txt2.txt %DIR_3% 
echo off