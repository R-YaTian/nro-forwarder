# nro-forwarder
Easy nro-forwarder tool which supports HOS 12+
## Build
Run build_template.bat to make the template file
## Usage
### Put "prod.keys" file on the same folders as "build.bat"
#### Normal:
build.bat hbmenu.nro /hbmenu.nro 05b25dc3089c0000  
build.bat D:\Downloads\hbmenu.nro /hbmenu.nro 05b25dc3089c0000
#### Random Title ID:
build.bat hbmenu.nro /hbmenu.nro rand
#### Use romfs mode (not working if nro file has romfs):
build.bat mtp-server-nx.nro romfs rand
#### Use romfs-alt mode (may boot slowly):
build.bat JKSV.nro romfsalt rand
#### RetroArch Rom Forwarder (don't support romfs mode):
build.bat mesen_libretro_libnx.nro /retroarch/cores/mesen_libretro_libnx.nro rand /roms/NES/SMB.nes
## TODO
Make a Multi-Platform GUI for the tool (may use Python with tkinter)
## Credits
[nx-hbloader](https://github.com/switchbrew/nx-hbloader) from switchbrew  
[a nx-hbloader fork](https://github.com/HookedBehemoth/nx-hbloader) from HookedBehemoth  
[nx-hbloader-retroarch-forwarder-mod](https://github.com/natinusala/nx-hbloader-retroarch-forwarder-mod) from natinusala  
[hacBrewPack](https://github.com/The-4n/hacBrewPack) from The-4n  
[nstool](https://github.com/jakcron/nstool) from jakcron  
[NACP Format Wiki](https://switchbrew.org/wiki/NACP) from SwitchBrew  
[PatchTool](https://github.com/spacebruce/PatchTool) from spacebruce
