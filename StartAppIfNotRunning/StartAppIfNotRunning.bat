
@echo off

call :StartApp "C:\Program Files (x86)\Microsoft Office\root\Office16\OUTLOOK.EXE" "OUTLOOK.EXE"

call :StartTeams C:\Users\d366186\AppData\Local\Microsoft\Teams\Update.exe --processStart "Teams.exe" "Teams.exe"

exit /b

rem ##############################
rem アプリ起動(通常)
rem ##############################
:StartApp

tasklist | find %2 > NUL

if %ERRORLEVEL% == 0 (
   echo %2は起動中のため、何もしません。
) else (
   echo %2を起動します。
   rem 先頭に「""」を付けることで別プロセスで起動する
   start "" %1
)

exit /b

rem ##############################
rem アプリ起動(Teams用)
rem ##############################
:StartTeams

tasklist | find %4 > NUL

if %ERRORLEVEL% == 0 (
   echo %4は起動中のため、何もしません。
) else (
   echo %4を起動します。
   rem 先頭に「""」を付けることで別プロセスで起動する
   start "" %1 %2 %3
)

exit /b