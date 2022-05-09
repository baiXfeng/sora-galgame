@ECHO off
color 0A
:Start

ECHO -------------------------------------------
ECHO ============ PSV自制游戏打包 ==============
ECHO.
ECHO 1.请输入应用名字!
ECHO (由字母数字组成不含空格)!
ECHO.
set name=
set /p name=输入:

ECHO.
ECHO ===========================================
ECHO 2.请输入安装目录,限定9个字符(例子: MYGAME001)!
ECHO 请避免和其他应用重名,否则将进行覆盖安装导致数据丢失!
ECHO.
set titleid=
set /p titleid=输入:

ECHO.
ECHO ===========================================
ECHO 3.请输入版本号(例子: 01.00)!
ECHO.
set version=
set /p version=输入:

:PACK_PSV
cd binary\psvita
pack %name% %titleid% %version%

