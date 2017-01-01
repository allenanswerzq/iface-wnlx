@echo off
:: Start the server.
start c:\Soft\VcXsrv\vcxsrv.exe :0 -clipboard -multiwindow

:: Set background to black.
set DISPLAY=127.0.0.1:0

:retry
xhost +192.168.56.3
if "%errorlevel%"=="1" (
  echo *********xhost error********
  goto :retry
)
