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
fastboot flash bootloader bootloader-hammerhead-hhz12h.img
fastboot reboot-bootloader
ping -n 5 127.0.0.1 >nul
fastboot flash radio radio-hammerhead-m8974a-2.0.50.2.26.img
fastboot reboot-bootloader
ping -n 5 127.0.0.1 >nul
fastboot -w update image-hammerhead-lmy48b.zip

echo Press any key to exit...
pause >nul
exit
