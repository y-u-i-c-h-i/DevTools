Option Explicit

'�N�����̎擾
Dim tmpDate: tmpDate = Now()
Dim tmpYear: tmpYear = Year(tmpDate)
Dim tmpMonth: tmpMonth = Right("0" & Month(tmpDate), 2)
Dim tmpDay: tmpDay = Right("0" & Day(tmpDate), 2)

' �ꎞ�t�H���_
Dim tmpPath: tmpPath = "C:\local\work\tmpfolder\" & tmpYear & tmpMonth & tmpDay

Dim objFSO: Set objFSO = WScript.CreateObject("Scripting.FileSystemObject")

If objFSO.FolderExists(tmpPath) = True Then
    '�t�@�C�������ɑ��݂��Ă���
Else
    objFSO.CreateFolder(tmpPath)
End If

'�V���[�g�J�b�g�̃����N���ύX
Dim wshell: Set wshell = WScript.CreateObject("Wscript.Shell")
Dim link: Set link = wshell.CreateShortcut("C:\local\shortcut\toolbar1\work - �V���[�g�J�b�g.lnk") 
link.TargetPath = tmpPath
link.Save

