!include "MUI2.nsh"

Var ProjectName

Name $ProjectName
InstallDir "$PROGRAMFILES\Modern UI Test"

; 欢迎页面
!define MUI_WELCOMEPAGE_TITLE "Monkeys!!!"
!define MUI_WELCOMEPAGE_TEXT "Welcome to the Monkey Chooser Installer!"
!insertmacro MUI_PAGE_WELCOME

; 用户协议页面
!insertmacro MUI_PAGE_LICENSE "${PROJECT_DIR}\\License.txt"

; 选择安装路径页面
!define MUI_TEXT_DIRECTORY_TITLE "please select install dir"
!insertmacro MUI_PAGE_DIRECTORY

; 安装进度页面
!define MUI_TEXT_INSTALLING_TITLE "installing"
!insertmacro MUI_PAGE_INSTFILES

Function .onInit
	StrCpy $ProjectName "MUI2 EXAMPLE"
	MessageBox MB_OK "welcome to use $ProjectName installer"
FunctionEnd

Section ""
	SetOutPath $INSTDIR
SectionEnd
