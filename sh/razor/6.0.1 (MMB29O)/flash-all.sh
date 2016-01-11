#!/bin/sh

fastboot flash bootloader bootloader-flo-flo-04.05.img
fastboot reboot-bootloader
sleep 5
fastboot -w update image-razor-mmb29o.zip
