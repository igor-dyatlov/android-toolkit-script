@ECHO OFF

PATH=%PATH%;"%SYSTEMROOT%\C:\Android\SDK\platform-tools"
fastboot erase recovery
fastboot reboot-bootloader
ping -n 5 127.0.0.1 >nul
fastboot flash recovery twrp-2.8.6.1-hammerheadcaf.img
fastboot reboot-bootloader
ping -n 5 127.0.0.1 >nul

echo Press any key to exit...
pause >nul
exit
