make clean
make
cp -r ./build/exefs ./
copy /Y .\exefs\main.npdm default.npdm >NUL
del .\exefs\main.npdm
md control
md romfs
make clean
pause
