

cd /d C:\local\work\tmpfolder

rem dir /b /o-n：カレント以下のファイル名を降順で一覧にする
rem skip：一覧の中で先頭から30行をスキップする
rem rd /s /q：サブディレクトリごと削除、quietなので削除時の確認をなしにする
for /f "skip=30" %%A in ('dir /b /o-n') do rd /s /q "%%A"

%~dp0\MakeTmpFolder.vbs
