@echo off

if "%1"=="--help" (
  echo usage: %0 [--external]
  echo Starts PuTTY connection. The --external parameter forces the use of external IP.
  exit /b
)

if "%1"=="--external" (
  echo Starting PuTTY ^(using external IP^)
  start d:\bin\putty\putty.exe -load "haven-linux-external"
  exit /b
)

echo Starting PuTTY ^(using host-only IP^)
start d:\bin\putty\putty.exe -load "haven-linux"
