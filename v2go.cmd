start /wait "" "%~dp0v2free\ip_Update\ip_1.bat"

start "" "%~dp0v2free\v2free.exe"  -config v2free\v2free.json

%SystemRoot%\System32\reg.exe query "HKLM\Software\Microsoft\Windows\CurrentVersion\App Paths\chrome.exe" >nul 2>&1
IF  not errorlevel 1 (
start chrome.exe --user-data-dir=%~dp0chrome-user-data  --proxy-server="socks5://127.0.0.1:20808" --host-resolver-rules="MAP * ~NOTFOUND , EXCLUDE 127.0.0.1"  https://www.bannedbook.org/bnews/fq/?utm_source=v2free-win
) else (
	echo Chrome浏览器不存在或没有正确安装，请尝试重新安装Chrome浏览器
)