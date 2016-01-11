@ECHO OFF

PATH=%PATH%;"%SYSTEMROOT%\C:\Android\SDK\platform-tools"
fastboot flash system imya.img
fastboot flash cache imya.img
fastboot flash userdata imya.img
fastboot flash recovery imya.img

echo Press any key to exit...
pause >nul
exit
