
echo off

echo %~n0 ファイルパス(バックアップ対象)
echo .
echo   [必須] バックアップ対象ファイルパス      ファイルパス    バックアップ対象のファイルパスを指定します。
echo .

REM cdはUNCパス(\\Server1\folder1)が使えないのでpushdでカレントを移動する
REM cd /d %~dp1
pushd %~dp1

set file_name=%~n1%~x1

set year_month_day=%date:~0,4%%date:~5,2%%date:~8,2%
set hour_minute_second=%time:~0,2%%time:~3,2%%time:~6,2%
set hour_minute_second=%hour_minute_second: =0%

mkdir %~dp1history
copy "%file_name%" "history\%~n1_%year_month_day%_%hour_minute_second%_%~x1"
