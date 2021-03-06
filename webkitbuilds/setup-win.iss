; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "Groestlpay"
#define MyAppVersion "2.7.0"
#define MyAppPublisher "Groestlcoin"
#define MyAppURL "http://groestlcoin.org"
#define MyAppExeName "Groestlpay.exe"

[Setup]
AppId={{804636ee-b017-4cad-8719-e58ac97ffa5c}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\{#MyAppName}
DefaultGroupName={#MyAppName}
OutputBaseFilename=Groestlpay-win
OutputDir=./
Compression=lzma
SolidCompression=yes

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "french"; MessagesFile: "compiler:Languages\French.isl"
Name: "japanese"; MessagesFile: "compiler:Languages\Japanese.isl"
Name: "spanish"; MessagesFile: "compiler:Languages\Spanish.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "Groestlpay\win64\groestlpay.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "Groestlpay\win64\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "../public/img/icons/favicon.ico"; DestDir: "{app}"; DestName: "icon.ico"; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; WorkingDir: "{app}"; IconFilename: "{app}/icon.ico"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; IconFilename: "{app}/icon.ico"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

[Registry]
Root: HKCR; Subkey: "groestlcoin"; ValueType: "string"; ValueData: "URL:Groestlcoin Custom Protocol"; Flags: uninsdeletekey
Root: HKCR; Subkey: "groestlcoin"; ValueType: "string"; ValueName: "URL Protocol"; ValueData: ""
Root: HKCR; Subkey: "groestlcoin\DefaultIcon"; ValueType: "string"; ValueData: "{app}\{#MyAppExeName},0"
Root: HKCR; Subkey: "groestlcoin\shell\open\command"; ValueType: "string"; ValueData: """{app}\{#MyAppExeName}"" ""%1"""

Root: HKCR; Subkey: "groestlpay"; ValueType: "string"; ValueData: "URL:Groestlpay Custom Protocol"; Flags: uninsdeletekey
Root: HKCR; Subkey: "groestlpay"; ValueType: "string"; ValueName: "URL Protocol"; ValueData: ""
Root: HKCR; Subkey: "groestlpay\DefaultIcon"; ValueType: "string"; ValueData: "{app}\{#MyAppExeName},0"
Root: HKCR; Subkey: "groestlpay\shell\open\command"; ValueType: "string"; ValueData: """{app}\{#MyAppExeName}"" ""%1"""

