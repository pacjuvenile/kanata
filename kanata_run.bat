@echo off
cd /d "%~dp0"
echo Set WshShell = CreateObject("WScript.Shell") > "%temp%\tmp_run.vbs"
echo WshShell.Run "kanata_windows_tty_winIOv2_cmd_allowed_x64.exe --cfg config/system.kbd", 0, False >> "%temp%\tmp_run.vbs"
cscript //nologo "%temp%\tmp_run.vbs"
del /f /q "%temp%\tmp_run.vbs"
