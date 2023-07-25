# v2go

设置使用v2free代理

start "" "%~dp0v2free\v2free.exe"  -config v2free\v2free.json

设置sockets5代理

start chrome.exe --user-data-dir=%~dp0chrome-user-data  --proxy-server="socks5://127.0.0.1:20808" --host-resolver-rules="MAP * ~NOTFOUND , EXCLUDE 127.0.0.1"

设置http代理

start chrome.exe --user-data-dir=%~dp0chrome-user-data  --proxy-server="http://127.0.0.1:20809" --host-resolver-rules="MAP * ~NOTFOUND , EXCLUDE 127.0.0.1"

设置windows代理

inetcpl.cpl

查看windows代理

netsh winhttp import proxy source=ie

查看windows代理

netsh winhttp show proxy