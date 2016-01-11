@ECHO OFF

PATH=%PATH%;"%SYSTEMROOT%\C:\Android\SDK\platform-tools"
fastboot devices

echo Press any key to exit...
pause >nul
exit
