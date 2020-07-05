Option Explicit

'年月日の取得
Dim tmpDate: tmpDate = Now()
Dim tmpYear: tmpYear = Year(tmpDate)
Dim tmpMonth: tmpMonth = Right("0" & Month(tmpDate), 2)
Dim tmpDay: tmpDay = Right("0" & Day(tmpDate), 2)

' 一時フォルダ
Dim tmpPath: tmpPath = "C:\local\work\tmpfolder\" & tmpYear & tmpMonth & tmpDay

Dim objFSO: Set objFSO = WScript.CreateObject("Scripting.FileSystemObject")

If objFSO.FolderExists(tmpPath) = True Then
    'ファイルが既に存在している
Else
    objFSO.CreateFolder(tmpPath)
End If

'ショートカットのリンク先を変更
Dim wshell: Set wshell = WScript.CreateObject("Wscript.Shell")
Dim link: Set link = wshell.CreateShortcut("C:\local\shortcut\toolbar1\work - ショートカット.lnk") 
link.TargetPath = tmpPath
link.Save

