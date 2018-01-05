cd %~dp0
timeout /t 5
devcon.exe disable "PCI\VEN_1002&DEV_687F"
timeout /t 5
devcon.exe enable "PCI\VEN_1002&DEV_687F"

timeout /t 3
@echo off
OverdriveNTool.exe -r0 -p01800hs_stable

cd C:\Users\Keith\Desktop\Mining\xmr-stak2
xmr-stak.exe