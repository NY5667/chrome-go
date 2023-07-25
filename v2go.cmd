REM start /wait "" "%~dp0v2free\ip_Update\ip_1.bat"

start "" "%~dp0v2free\v2free.exe"  -config v2free\v2free.json
REM start "" "v2free\v2free.exe"  -config v2free\v2free.json
REM echo 等待翻墙软件启动，请稍候...
start chrome.exe --user-data-dir=%~dp0chrome-user-data  --proxy-server="socks5://127.0.0.1:20808" --host-resolver-rules="MAP * ~NOTFOUND , EXCLUDE 127.0.0.1"
REM start chrome.exe --proxy-server="socks5://127.0.0.1:20808"
REM start chrome.exe --user-data-dir=%~dp0chrome-user-data  --proxy-server="http://127.0.0.1:20809" --host-resolver-rules="MAP * ~NOTFOUND , EXCLUDE 127.0.0.1"
REM start cmd /k set HTTP_PROXY=http://127.0.0.1:20809 && set HTTPS_PROXY=http://127.0.0.1:20809

REM inetcpl.cpl
REM netsh winhttp import proxy source=ie
REM netsh winhttp show proxy