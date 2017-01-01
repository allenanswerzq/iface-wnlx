@echo off
ssh-agent | grep -v echo | sed -e "s/^/@set /" | sed -e "s/;.*$//" - > setenv.bat
call setenv.bat
del setenv.bat
ssh-add c:\Soft\iwnlx\.ssh\id_rsa"
@echo on
