
@echo off

call :StartApp "C:\Program Files (x86)\Microsoft Office\root\Office16\OUTLOOK.EXE" "OUTLOOK.EXE"

call :StartTeams C:\Users\d366186\AppData\Local\Microsoft\Teams\Update.exe --processStart "Teams.exe" "Teams.exe"

exit /b

rem ##############################
rem �A�v���N��(�ʏ�)
rem ##############################
:StartApp

tasklist | find %2 > NUL

if %ERRORLEVEL% == 0 (
   echo %2�͋N�����̂��߁A�������܂���B
) else (
   echo %2���N�����܂��B
   rem �擪�Ɂu""�v��t���邱�Ƃŕʃv���Z�X�ŋN������
   start "" %1
)

exit /b

rem ##############################
rem �A�v���N��(Teams�p)
rem ##############################
:StartTeams

tasklist | find %4 > NUL

if %ERRORLEVEL% == 0 (
   echo %4�͋N�����̂��߁A�������܂���B
) else (
   echo %4���N�����܂��B
   rem �擪�Ɂu""�v��t���邱�Ƃŕʃv���Z�X�ŋN������
   start "" %1 %2 %3
)

exit /b