; Installer-creator for a Glulx game file.
; All the installation stuff taken from sites:
;   http://www.ifwiki.org/index.php/How_to_distribute_Inform_Glulx_games_as_standalone_apps
;   http://nsis.sourceforge.net/Main_Page
;   https://eblong.com/zarf/glk/wininstaller.nsi
; To use: makensis -v3 wininstaller.nsi

!include MUI2.nsh

Name "The Dragon and the Phoenix for Windows"
OutFile "install.exe"

!define VERSION "1.0"

InstallDir "$PROGRAMFILES\The Dragon and the Phoenix"

InstallDirRegKey HKLM "Software\YOUR COMPANY\The Dragon and the Phoenix" "InstallationDirectory"

RequestExecutionLevel admin
;SetCompressor /solid lzma # commented out, maybe fix virus warning?

;--------------------------------

!define MUI_WELCOMEPAGE_TITLE "The Dragon and the Phoenix for Windows ${VERSION}"
	
;!define MUI_ABORTWARNING

!insertmacro MUI_PAGE_WELCOME

!define MUI_COMPONENTSPAGE_NODESC
!insertmacro MUI_PAGE_COMPONENTS
!insertmacro MUI_PAGE_DIRECTORY
!insertmacro MUI_PAGE_INSTFILES

!define MUI_FINISHPAGE_TITLE "Installation complete"
!define MUI_FINISHPAGE_TEXT_LARGE
!define MUI_FINISHPAGE_TEXT "The Dragon and the Phoenix is now ready to play."
!define MUI_FINISHPAGE_SHOWREADME "$INSTDIR\READ-ME.html"
!define MUI_FINISHPAGE_SHOWREADME_NOTCHECKED
!define MUI_FINISHPAGE_RUN "$INSTDIR\git.exe"
!define MUI_FINISHPAGE_RUN_PARAMETERS "$\"$INSTDIR\GAMEFILE.gblorb$\""

!insertmacro MUI_PAGE_FINISH
	
!insertmacro MUI_UNPAGE_CONFIRM
!insertmacro MUI_UNPAGE_INSTFILES
!insertmacro MUI_UNPAGE_FINISH

!insertmacro MUI_LANGUAGE "English"

;--------------------------------

; The stuff to install
Section "The Dragon and the Phoenix"
	SectionIn RO
	SetOutPath $INSTDIR
	File "git.exe"
	File "GAMEFILE.gblorb"
	File "cover.ico"
	File "garglk.ini"
	File "SDL.dll"
	File "SDL_mixer.dll"
	File "SDL_sound.dll"
	File "freetype6.dll"
	File "libgarglk.dll"
	File "libjpeg-8.dll"
	File "libogg-0.dll"
	File "libpng14-14.dll"
	File "libvorbis-0.dll"
	File "libvorbisfile-3.dll"
	File "mikmod.dll"
	File "smpeg.dll"
	File "zlib1.dll"
	File "Licenses.txt"
	File "READ-ME.html"
	File "play-if-card.pdf"

	CreateShortCut "$INSTDIR\The Dragon and the Phoenix.lnk" "$INSTDIR\git.exe" "$\"$INSTDIR\GAMEFILE.gblorb$\"" "$INSTDIR\cover.ico" 0
	  
	; Write the installation path into the registry
	WriteRegStr HKLM SOFTWARE\NSIS_GAMETITLE "Install_Dir" "$INSTDIR"
	  
	; Write the uninstall keys for Windows
	WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\GAMETITLE" "DisplayName" "The Dragon and the Phoenix for Windows"
	WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\GAMETITLE" "UninstallString" '"$INSTDIR\uninstall.exe"'
	WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\GAMETITLE" "NoModify" 1
	WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\GAMETITLE" "NoRepair" 1
	WriteUninstaller "uninstall.exe"

SectionEnd

Section "Start Menu Shortcuts"
	SectionIn RO
	SetShellVarContext all
	CreateDirectory "$SMPROGRAMS\The Dragon and the Phoenix"
	CreateShortCut "$SMPROGRAMS\The Dragon and the Phoenix\Uninstall.lnk" "$INSTDIR\uninstall.exe" "" "$INSTDIR\uninstall.exe" 0
	SetOutPath "$DOCUMENTS"
	CreateShortCut "$SMPROGRAMS\The Dragon and the Phoenix\The Dragon and the Phoenix.lnk" "$INSTDIR\git.exe" "$\"$INSTDIR\GAMEFILE.gblorb$\"" "$INSTDIR\cover.ico" 0
	CreateShortCut "$SMPROGRAMS\The Dragon and the Phoenix\READ-ME.lnk" "$INSTDIR\READ-ME.html" "" "" 0
	CreateShortCut "$SMPROGRAMS\The Dragon and the Phoenix\IF Reference Card.lnk" "$INSTDIR\play-if-card.pdf" "" "" 0
SectionEnd

Section "Desktop Shortcut"
	SetOutPath "$DOCUMENTS"
	CreateShortCut "$DESKTOP\The Dragon and the Phoenix.lnk" "$INSTDIR\git.exe" "$\"$INSTDIR\GAMEFILE.gblorb$\"" "$INSTDIR\cover.ico" 0
SectionEnd

;--------------------------------

; Uninstaller

Section "Uninstall"
	SetShellVarContext all

	; Remove registry keys
	DeleteRegKey HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\GAMETITLE"
	DeleteRegKey HKLM SOFTWARE\NSIS_GAMETITLE

	; Remove files and uninstaller
	Delete $INSTDIR\git.exe
	Delete $INSTDIR\uninstall.exe
	Delete $INSTDIR\GAMEFILE.gblorb
	Delete $INSTDIR\cover.ico
	Delete $INSTDIR\garglk.ini
	Delete $INSTDIR\SDL.dll
	Delete $INSTDIR\SDL_mixer.dll
	Delete $INSTDIR\SDL_sound.dll
	Delete $INSTDIR\freetype6.dll
	Delete $INSTDIR\libgarglk.dll
	Delete $INSTDIR\libjpeg-8.dll
	Delete $INSTDIR\libogg-0.dll
	Delete $INSTDIR\libpng14-14.dll
	Delete $INSTDIR\libvorbis-0.dll
	Delete $INSTDIR\libvorbisfile-3.dll
	Delete $INSTDIR\mikmod.dll
	Delete $INSTDIR\smpeg.dll
	Delete $INSTDIR\zlib1.dll
	Delete $INSTDIR\Licenses.txt
	Delete $INSTDIR\READ-ME.html
	Delete $INSTDIR\play-if-card.pdf
	Delete "$INSTDIR\The Dragon and the Phoenix.lnk"

	; Remove shortcuts, if any
	Delete "$SMPROGRAMS\The Dragon and the Phoenix\*.*"
	Delete "$DESKTOP\The Dragon and the Phoenix.lnk"

	; Remove directories used
	RMDir "$SMPROGRAMS\The Dragon and the Phoenix"
	RMDir "$INSTDIR"
SectionEnd
