@echo off
REM This batch file executes the list_files.ps1 PowerShell script.
REM It uses the -ExecutionPolicy Bypass flag to ensure the script can run
REM even if the system's execution policy is restricted.

echo Executing PowerShell script...
Powershell.exe -ExecutionPolicy Bypass -File "list_files.ps1"

echo Batch file finished.
pause