@ECHO off
color 0A
:Start

ECHO -------------------------------------------
ECHO ============ PSV������Ϸ��� ==============
ECHO.
ECHO 1.������Ӧ������!
ECHO (����ĸ������ɲ����ո�)!
ECHO.
set name=
set /p name=����:

ECHO.
ECHO ===========================================
ECHO 2.�����밲װĿ¼,�޶�9���ַ�(����: MYGAME001)!
ECHO ����������Ӧ������,���򽫽��и��ǰ�װ�������ݶ�ʧ!
ECHO.
set titleid=
set /p titleid=����:

ECHO.
ECHO ===========================================
ECHO 3.������汾��(����: 01.00)!
ECHO.
set version=
set /p version=����:

:PACK_PSV
cd binary\psvita
pack %name% %titleid% %version%

