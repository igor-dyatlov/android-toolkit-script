@ECHO OFF

PATH=%PATH%;"%SYSTEMROOT%\C:\Android\SDK\platform-tools"

fastboot erase boot
fastboot reboot-bootloader
ping -n 5 127.0.0.1 >nul
fastboot erase cache
fastboot reboot-bootloader
ping -n 5 127.0.0.1 >nul
fastboot erase radio
fastboot reboot-bootloader
ping -n 5 127.0.0.1 >nul
fastboot erase recovery
fastboot reboot-bootloader
ping -n 5 127.0.0.1 >nul
fastboot erase system
fastboot reboot-bootloader
ping -n 5 127.0.0.1 >nul
fastboot erase userdata
fastboot reboot-bootloader
ping -n 5 127.0.0.1 >nul

echo Press any key to exit...
pause >nul
exit
