rem 変数定義(バッチのログ)
set OPELOG_DATE=%date:~0,4%-%date:~5,2%-%date:~8,2%
set OPELOG_FILE_NAME=%~dp0\log\%~n0_%OPELOG_DATE%.log

rem Cドライブのコピー
C:

robocopy.exe "C:\local\dev\git-myrepo" "\\server\backup2\dev\git-myrepo" /MIR
robocopy.exe "C:\local\shortcut" "\\serverbackup2\shortcut" /MIR
robocopy.exe "C:\local\software" "\\serverbackup2\software" /MIR
robocopy.exe "C:\local\tools" "\\serverbackup2\tools" /MIR
robocopy.exe "C:\local\work\archive" "\\serverbackup2\work\archive" /MIR
robocopy.exe "C:\local\work\config" "\\serverbackup2\work\config" /MIR

rem robocopy.exe "C:\local" "\\serverbackup" /MIR >> %OPELOG_FILE_NAME%
rem robocopy.exe "C:\Users\${Username}\AppData\Roaming\Microsoft\IME\15.0\IMEJP\UserDict" "\\serverbackup\tools\UserDictionaryTool" /MIR >> %OPELOG_FILE_NAME%





