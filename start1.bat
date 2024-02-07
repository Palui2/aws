@echo off
net config server /srvcomment:"Windows Server 2019 By Musa" > out.txt 2>&1
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /V EnableAutoTray /T REG_DWORD /D 0 /F > out.txt 2>&1
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /f /v Wallpaper /t REG_SZ /d D:\a\wallpaper.bat
net user musa Mus@123 /add >nul
net localgroup administrators musa /add >nul
net user musa /active:yes >nul
net user installer /delete
diskperf -Y >nul
sc config Audiosrv start= auto >nul
sc start audiosrv >nul
ICACLS C:\Windows\Temp /grant musa:F >nul
ICACLS C:\Windows\installer /grant musa:F >nul
echo Successfully installed! If RDP is dead, rebuild again.
echo IP:
tasklist | find /i "ngrok.exe" >Nul && curl -s localhost:4040/api/tunnels | jq -r .tunnels[0].public_url || echo "Failed to retreive NGROK authtoken - check again your authtoken"
echo Username: musa
echo Password: Mus@123
echo You can login now
xcopy /s *.* C:\Users\musa\desktop\
ping -n 10 127.0.0.1 >nul
