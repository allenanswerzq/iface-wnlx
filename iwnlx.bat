@echo off
color a

echo Starting vcxsrv...
call x11-start.bat
echo ==================================
:: echo Starting pageant...
:: start d:\bin\putty\pageant.exe
:: sleep 2

:: echo Loading haven-ssh key...
:: d:\bin\putty\pageant.exe c:\keys\my-ssh-key.ppk


echo Starting haven-linux...
call haven-linux-up.bat


echo Starting Windows/Linux iface...
start python c:\Bin\iwnlx\iface\iface.py --windows

l-cmd