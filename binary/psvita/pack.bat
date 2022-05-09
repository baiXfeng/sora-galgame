
set name=%1%
set titleid=%2%
set version=%3%

if "%name%"=="" GOTO NoName
if "%titleid%"=="" GOTO NoTitle
if "%version%"=="" GOTO NoVersion

:Start

set PATH=%PATH%;%cd%\mksfoex;%cd%\zip

rd /s/q assets
xcopy ..\..\assets assets\ /s
vita-mksfoex -s APP_VER=%version% -s TITLE_ID=%titleid% %name% sce_sys\param.sfo

zip -vr setup.vpk assets eboot.bin sce_sys
rd /s/q assets
move setup.vpk ..\..\
GOTO End

:NoName
echo 缺少应用名字
GOTO End

:NoTitle
echo 缺少安装目录
GOTO End

:NoVersion
echo 缺少版本号
GOTO End

:End
pause
