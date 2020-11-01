; nsis_installer.nsi
;
; This script is based on example1.nsi, but it remember the directory, 
; has uninstall support and (optionally) installs start menu shortcuts.
;
; It will install example2.nsi into a directory that the user selects.
;
; See install-shared.nsi for a more robust way of checking for administrator rights.
; See install-per-user.nsi for a file association example.

;--------------------------------

;--------------------------------
;Include Modern UI

!include "MUI2.nsh"

;--------------------------------


; The name of the installer
Name "OpenXRechnungToolbox v1.1"

; The icon
Icon "resources/images/oxt.ico"

; The file to write
OutFile "OpenXRechnungToolbox_v1.1_Installer.exe"

; Request application privileges for Windows Vista and higher
RequestExecutionLevel admin

; Build Unicode installer
Unicode True

; The default installation directory
InstallDir $PROGRAMFILES\OpenXRechnungToolbox

; Registry key to check for directory (so if you install again, it will 
; overwrite the old one automatically)
InstallDirRegKey HKLM "Software\OpenXRechnungToolbox" "Install_Dir"

;--------------------------------

; Pages

;Page components
;Page directory
;Page instfiles
!insertmacro MUI_PAGE_WELCOME
!insertmacro MUI_PAGE_LICENSE "license.txt"
!insertmacro MUI_PAGE_COMPONENTS
!insertmacro MUI_PAGE_DIRECTORY
!insertmacro MUI_PAGE_INSTFILES
    !define MUI_FINISHPAGE_NOAUTOCLOSE
    !define MUI_FINISHPAGE_RUN
    !define MUI_FINISHPAGE_RUN_NOTCHECKED
    !define MUI_FINISHPAGE_RUN_TEXT "OpenXRechnungToolbox starten"
    !define MUI_FINISHPAGE_RUN_FUNCTION "LaunchLink"
!insertmacro MUI_PAGE_FINISH

!insertmacro MUI_LANGUAGE "German"
!insertmacro MUI_LANGUAGE "English"

UninstPage uninstConfirm
UninstPage instfiles

;--------------------------------
;Reserve Files
  
  ;If you are using solid compression, files that are required before
  ;the actual installation should be stored first in the data block,
  ;because this will make your installer start faster.
  
  !insertmacro MUI_RESERVEFILE_LANGDLL

;--------------------------------

; The stuff to install
Section "Installation (required)"

  SectionIn RO
  
  ; Set output path to the installation directory.
  SetOutPath $INSTDIR
  
  ; Put file there
  File "OpenXRechnungToolbox.exe"
  File "license.txt"
  File "knownIssues.txt"
  File /r "resources"
  File /r "openJDK"

  
  ; Write the installation path into the registry
  WriteRegStr HKLM SOFTWARE\OpenXRechnungToolbox "Install_Dir" "$INSTDIR"
  
  ; Write the uninstall keys for Windows
  WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\OpenXRechnungToolbox" "DisplayName" "OpenXRechnungToolbox"
  WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\OpenXRechnungToolbox" "UninstallString" '"$INSTDIR\uninstall.exe"'
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\OpenXRechnungToolbox" "NoModify" 1
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\OpenXRechnungToolbox" "NoRepair" 1
  WriteUninstaller "$INSTDIR\uninstall.exe"
  
SectionEnd

;Installer Functions

Function .onInit

  !insertmacro MUI_LANGDLL_DISPLAY

FunctionEnd

;--------------------------------

Function LaunchLink
  ExecShell "" "$SMPROGRAMS\OpenXRechnungToolbox\OpenXRechnungToolbox.lnk"
FunctionEnd

;--------------------------------

; Optional section (can be disabled by the user)
Section "Example Invoices (optional)"

  ;SectionIn RO
  
  ; Set output path to the installation directory.
  SetOutPath $INSTDIR

  File /r "exampleInvoices"

SectionEnd

;--------------------------------

; Optional section (can be disabled by the user)
Section "Start Menu Shortcuts"

  CreateDirectory "$SMPROGRAMS\OpenXRechnungToolbox"
  CreateShortcut "$SMPROGRAMS\OpenXRechnungToolbox\OpenXRechnungToolbox.lnk" "$INSTDIR\OpenXRechnungToolbox.exe"
  CreateShortcut "$SMPROGRAMS\OpenXRechnungToolbox\Uninstall.lnk" "$INSTDIR\uninstall.exe"

SectionEnd

;--------------------------------

; Uninstaller

Section "Uninstall"
  
  ; Remove registry keys
  DeleteRegKey HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\OpenXRechnungToolbox"
  DeleteRegKey HKLM SOFTWARE\OpenXRechnungToolbox

  ; Remove files and uninstaller
  Delete $INSTDIR\OpenXRechnungToolbox.exe
  Delete $INSTDIR\license.txt
  Delete $INSTDIR\knownIssues.txt
  Delete $INSTDIR\uninstall.exe

  ; Remove shortcuts, if any
  Delete "$SMPROGRAMS\OpenXRechnungToolbox\*.lnk"

  ; Remove directories
  RMDir /r "$INSTDIR\OpenXRechnungToolbox\resources"
  RMDir /r "$INSTDIR\OpenXRechnungToolbox\openJDK"
  RMDir "$SMPROGRAMS\OpenXRechnungToolbox"
  RMDir /r "$INSTDIR"

SectionEnd

;--------------------------------
;Uninstaller Functions

Function un.onInit

  !insertmacro MUI_UNGETLANGUAGE
  
FunctionEnd
