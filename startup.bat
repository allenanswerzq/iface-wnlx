@echo off


color a


echo Starting vcxsrv...
call d:\etc\x11\x11-start.bat


echo Starting pageant...
start d:\bin\putty\pageant.exe
sleep 2


echo Loading haven-ssh key...
d:\bin\putty\pageant.exe c:\keys\my-ssh-key.ppk


echo Starting haven-linux...
call haven-linux-up.bat


echo Starting Windows/Linux iface...
start python d:\etc\iface\iface.py --windows