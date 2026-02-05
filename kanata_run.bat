@echo off
cd /d "%~dp0"

echo Set WshShell = CreateObject("WScript.Shell") > "%temp%\kanata_run.vbs"
echo WshShell.Run "kanata.exe --cfg config/system.kbd", 0, False >> "%temp%\kanata_run.vbs"

cscript //nologo "%temp%\kanata_run.vbs"
del /f /q "%temp%\kanata_run.vbs"
