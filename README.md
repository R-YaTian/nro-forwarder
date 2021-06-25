# nro-forwarder
Easy nro-forwarder tools for HOS 12+
## Build
Run build_template.bat to make the template file
## Usage
#### Normal:
build.bat hbmenu.nro /hbmenu.nro 05b25dc3089c0000  
build.bat D:\Downloads\hbmenu.nro /hbmenu.nro 05b25dc3089c0000
#### Random Title ID:
build.bat hbmenu.nro /hbmenu.nro rand
#### Use romfs mode (may not works fine):
build.bat hbmenu.nro romfs 05b25dc3089c0000
#### RetroArch Rom Forwarder (don't support romfs mode):
build.bat mesen_libretro_libnx.nro /retroarch/cores/mesen_libretro_libnx.nro rand /roms/NES/SMB.nes
## TODO
Make a cross-platform GUI for the tool (may use python with tkinter)
## Credits
nx-hbloader from switchbrew  
hacBrewPack from The-4n  
nstool from jakcron
