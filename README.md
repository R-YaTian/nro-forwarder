# nro-forwarder
Easy nro-forwarder tools for HOS 12+
## Build
Run build_template.bat to make the template file
## Usage
### Put "prod.keys" file on the same folders as "build.bat"
#### Normal:
build.bat hbmenu.nro /hbmenu.nro 05b25dc3089c0000  
build.bat D:\Downloads\hbmenu.nro /hbmenu.nro 05b25dc3089c0000
#### Random Title ID:
build.bat hbmenu.nro /hbmenu.nro rand
#### Use romfs mode (may not working if nro has romfs):
build.bat mtp-server-nx.nro romfs rand
#### RetroArch Rom Forwarder (don't support romfs mode):
build.bat mesen_libretro_libnx.nro /retroarch/cores/mesen_libretro_libnx.nro rand /roms/NES/SMB.nes
## TODO
Make a Multi-Platform GUI for the tool (may use python with tkinter)
## Credits
nx-hbloader from switchbrew  
a nx-hbloader fork from HookedBehemoth  
nx-hbloader-retroarch-forwarder-mod from natinusala  
hacBrewPack from The-4n  
nstool from jakcron
