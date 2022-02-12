echo on
set PATH = %CD% 
echo %PATH%
copy /v /d ./dir0/txt0.txt ./dir1 
move ./dir0/txt0.txt ./dir1 
echo off