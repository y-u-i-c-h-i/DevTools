

cd /d C:\local\work\tmpfolder

rem dir /b /o-n�F�J�����g�ȉ��̃t�@�C�������~���ňꗗ�ɂ���
rem skip�F�ꗗ�̒��Ő擪����30�s���X�L�b�v����
rem rd /s /q�F�T�u�f�B���N�g�����ƍ폜�Aquiet�Ȃ̂ō폜���̊m�F���Ȃ��ɂ���
for /f "skip=30" %%A in ('dir /b /o-n') do rd /s /q "%%A"

%~dp0\MakeTmpFolder.vbs
