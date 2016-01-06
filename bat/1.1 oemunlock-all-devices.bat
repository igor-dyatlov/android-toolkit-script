@ECHO OFF

PATH=%PATH%;"%SYSTEMROOT%\C:\Android\SDK\platform-tools"
fastboot oem unlock
fastboot reboot-bootloader
ping -n 5 127.0.0.1 >nul

echo Press any key to exit...
pause >nul
exit
