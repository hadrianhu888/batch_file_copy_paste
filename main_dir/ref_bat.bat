echo on
set _MAIN_ = %~dp0
echo %_MAIN_%
cd %_MAIN_%/batch_file_copy_paste
call batch_log.bat
echo off 