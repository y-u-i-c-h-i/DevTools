
echo off

echo %~n0 �t�@�C���p�X(�o�b�N�A�b�v�Ώ�)
echo .
echo   [�K�{] �o�b�N�A�b�v�Ώۃt�@�C���p�X      �t�@�C���p�X    �o�b�N�A�b�v�Ώۂ̃t�@�C���p�X���w�肵�܂��B
echo .

REM cd��UNC�p�X(\\Server1\folder1)���g���Ȃ��̂�pushd�ŃJ�����g���ړ�����
REM cd /d %~dp1
pushd %~dp1

set file_name=%~n1%~x1

set year_month_day=%date:~0,4%%date:~5,2%%date:~8,2%
set hour_minute_second=%time:~0,2%%time:~3,2%%time:~6,2%
set hour_minute_second=%hour_minute_second: =0%

mkdir %~dp1history
copy "%file_name%" "history\%~n1_%year_month_day%_%hour_minute_second%_%~x1"
