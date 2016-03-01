# Nexus Fastboot Script
Android Toolkit for Debian, Ubuntu
##### Coming soon for Arch Linux, Fedora and Windows

This page contains a tool binary image files that allow you to restore your Nexus device's original factory firmware. These binary image files are written for your convenience, for example, if you are a tester and custom firmware you have to often return the phone to its original state.

And also, this tool allows you to set custom recovery, lock/unlock bootloader and erasing partitions.

## Features
- Automatically installs the necessary software (Fastboot/ADB)
- Automatically downloads the required recovery (Cyanogen Recovery/[CWM](https://www.clockworkmod.com/rommanager)/[TWRP](https://twrp.me/)/[Stock](https://developers.google.com/android/nexus/images))
- Automatically downloads the [original](https://developers.google.com/android/nexus/images) firmware image for your devices

## Requirements
 - Original USB wire (Phone sew only through the original cord. The prevention of failures during firmware.)
 - Fastboot
 - Original factory firmware

## Flashing Instructions
 - Download the script

Run in the console:

    git clone https://github.com/igor-dyatlov/nexus-fastboot-script.git

 Alternatively you can [download](https://github.com/igor-dyatlov/nexus-fastboot-script/archive/master.zip) this repository.

 - Connect your device to your computer over USB

Run from source folder:

    ./start.sh

Excellent! Good luck in the firmware    

## Screenshots
<img src="Screenshots/Screenshot-1.png" width="45%" />
<img src="Screenshots/Screenshot-2.png" width="45%" />
<img src="Screenshots/Screenshot-3.png" width="45%" />
<img src="Screenshots/Screenshot-4.png" width="45%" />
<img src="Screenshots/Screenshot-5.png" width="45%" />

### Donation
https://www.paypal.me/IgorDyatlov

### License
All files in this project are under the [LICENSE.md](LICENSE.md) license unless otherwise stated in the file or by a dependency's license file.
