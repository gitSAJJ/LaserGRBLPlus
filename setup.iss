; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "LaserGRBLPlus"
#define MyAppVersion "0.10.0"
#define MyAppVersionName ""
#define MyAppPublisher "LaserGRBLPlus"
#define MyAppURL ""
#define MyAppExeName "LaserGRBLPlus.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{FB5437C4-D253-47F4-9C03-03A2EAD9E1AB}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppVerName={#MyAppName} {#MyAppVersionName}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\{#MyAppName}
DisableDirPage=no
DisableProgramGroupPage=yes
OutputDir=.\
OutputBaseFilename=install
Compression=zip
SolidCompression=no
InternalCompressLevel=ultra64
CompressionThreads=2
RestartIfNeededByRun=False
Uninstallable=yes
UninstallFilesDir={pf}
SetupIconFile=.\install.ico
UninstallDisplayIcon={app}\LaserGRBLPlus.exe

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked
;Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: ".\LaserGRBL\bin\Release\LaserGRBLPlus.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: ".\LaserGRBL\bin\Release\LaserGRBLPlus.pdb"; DestDir: "{app}"; Flags: ignoreversion
Source: ".\LaserGRBL\bin\Release\Autotrace\autotrace.exe"; DestDir: "{app}\Autotrace"; Flags: ignoreversion
Source: ".\LaserGRBL\bin\Release\it\LaserGRBLPlus.resources.dll"; DestDir: "{app}\it"; Flags: ignoreversion
Source: ".\LaserGRBL\bin\Release\da\LaserGRBLPlus.resources.dll"; DestDir: "{app}\da"; Flags: ignoreversion
Source: ".\LaserGRBL\bin\Release\de\LaserGRBLPlus.resources.dll"; DestDir: "{app}\de"; Flags: ignoreversion
Source: ".\LaserGRBL\bin\Release\es\LaserGRBLPlus.resources.dll"; DestDir: "{app}\es"; Flags: ignoreversion
Source: ".\LaserGRBL\bin\Release\fr\LaserGRBLPlus.resources.dll"; DestDir: "{app}\fr"; Flags: ignoreversion
Source: ".\LaserGRBL\bin\Release\pt-BR\LaserGRBLPlus.resources.dll"; DestDir: "{app}\pt-BR"; Flags: ignoreversion
Source: ".\LaserGRBL\bin\Release\ru\LaserGRBLPlus.resources.dll"; DestDir: "{app}\ru"; Flags: ignoreversion
Source: ".\LaserGRBL\bin\Release\zh-CN\LaserGRBLPlus.resources.dll"; DestDir: "{app}\zh-CN"; Flags: ignoreversion
Source: ".\LaserGRBL\bin\Release\sk-SK\LaserGRBLPlus.resources.dll"; DestDir: "{app}\sk-SK"; Flags: ignoreversion
Source: ".\LaserGRBL\bin\Release\hu-HU\LaserGRBLPlus.resources.dll"; DestDir: "{app}\hu-HU"; Flags: ignoreversion
Source: ".\LaserGRBL\bin\Release\cs-CZ\LaserGRBLPlus.resources.dll"; DestDir: "{app}\cs-CZ"; Flags: ignoreversion
Source: ".\LaserGRBL\bin\Release\pl-PL\LaserGRBLPlus.resources.dll"; DestDir: "{app}\pl-PL"; Flags: ignoreversion
Source: ".\LaserGRBL\bin\Release\zh-TW\LaserGRBLPlus.resources.dll"; DestDir: "{app}\zh-TW"; Flags: ignoreversion
Source: ".\LaserGRBL\bin\Release\el-GR\LaserGRBLPlus.resources.dll"; DestDir: "{app}\el-GR"; Flags: ignoreversion
Source: ".\LaserGRBL\bin\Release\tr-TR\LaserGRBLPlus.resources.dll"; DestDir: "{app}\tr-TR"; Flags: ignoreversion
Source: ".\LaserGRBL\bin\Release\ro-RO\LaserGRBLPlus.resources.dll"; DestDir: "{app}\ro-RO"; Flags: ignoreversion
Source: ".\LaserGRBL\bin\Release\Driver\*"; DestDir: "{app}\Driver"; Flags: ignoreversion
Source: ".\LaserGRBL\bin\Release\Firmware\*"; DestDir: "{app}\Firmware"; Flags: ignoreversion
Source: ".\LaserGRBL\bin\Release\LaserGRBLPlus.exe.config"; DestDir: "{app}"; Flags: ignoreversion
Source: ".\LaserGRBL\bin\Release\StandardMaterials.psh"; DestDir: "{app}"; Flags: ignoreversion
Source: ".\LaserGRBL\bin\Release\StandardButtons.zbn"; DestDir: "{app}"; Flags: ignoreversion
Source: ".\LaserGRBL\bin\Release\Sound\*"; DestDir: "{app}\Sound"; Flags: ignoreversion
Source: ".\lasergrblfile.ico"; DestDir: "{app}"; Flags: ignoreversion
Source: ".\zippedbutton.ico"; DestDir: "{app}"; Flags: ignoreversion
Source: ".\LaserGRBL\bin\Release\Newtonsoft.Json.dll"; DestDir: "{app}"; Flags: ignoreversion

; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{commonprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon
;Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: quicklaunchicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

[Registry]
Root: HKCR; SubKey: ".nc"; ValueType: string; ValueData: "LaserGRBL gcode file"; Flags: uninsdeletekey
Root: HKCR; SubKey: "LaserGRBLPlus gcode file"; ValueType: string; ValueData: "GCode file for laser engraving"; Flags: uninsdeletekey
Root: HKCR; SubKey: "LaserGRBLPlus gcode file\Shell\Open\Command"; ValueType: string; ValueData: """{app}\LaserGRBLPlus.exe"" ""%1"""; Flags: uninsdeletekey
Root: HKCR; Subkey: "LaserGRBLPlus gcode file\DefaultIcon"; ValueType: string; ValueData: "{app}\lasergrblfile.ico,0"; Flags: uninsdeletevalue

Root: HKCR; SubKey: ".zbn"; ValueType: string; ValueData: "LaserGRBL zipped button"; Flags: uninsdeletekey
Root: HKCR; SubKey: "LaserGRBLPlus zipped button"; ValueType: string; ValueData: "This file contains LaserGRBL custom buttons"; Flags: uninsdeletekey
Root: HKCR; SubKey: "LaserGRBLPlus zipped button\Shell\Open\Command"; ValueType: string; ValueData: """{app}\LaserGRBLPlus.exe"" ""%1"""; Flags: uninsdeletekey
Root: HKCR; Subkey: "LaserGRBLPlus zipped button\DefaultIcon"; ValueType: string; ValueData: "{app}\zippedbutton.ico,0"; Flags: uninsdeletevalue

Root: HKCR; SubKey: ".lgp"; ValueType: string; ValueData: "LaserGRBL Project file"; Flags: uninsdeletekey
Root: HKCR; SubKey: "LaserGRBLPlus Project file"; ValueType: string; ValueData: "Project file for laser engraving"; Flags: uninsdeletekey
Root: HKCR; SubKey: "LaserGRBLPlus Project file\Shell\Open\Command"; ValueType: string; ValueData: """{app}\LaserGRBLPlus.exe"" ""%1"""; Flags: uninsdeletekey
Root: HKCR; Subkey: "LaserGRBLPlus Project file\DefaultIcon"; ValueType: string; ValueData: "{app}\lasergrblfile.ico,0"; Flags: uninsdeletevalue
