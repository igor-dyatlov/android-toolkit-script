@ECHO OFF

PATH=%PATH%;"%SYSTEMROOT%\System32"
fastboot flash bootloader bootloader-flo-flo-04.05.img
fastboot reboot-bootloader
ping -n 5 127.0.0.1 >nul
fastboot -w update image-razor-mmb29o.zip

echo Press any key to exit...
pause >nul
exit
