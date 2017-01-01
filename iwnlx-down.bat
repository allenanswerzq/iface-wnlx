@echo off
echo Shutdown iwnlx....
tasklist.exe  | grep vcxsrv | awk '{print $2 }' | xargs kill -f
tasklist.exe  | grep python | awk '{print $2 }' | xargs kill -f
call haven-linux-down.bat
@echo on