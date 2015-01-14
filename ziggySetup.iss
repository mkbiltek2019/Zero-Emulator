; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{4E0641B3-F422-4982-B3C8-BBF94C84204A}
AppName=Zero
AppVersion=Zero 0.7
;AppVerName=Zero 0.7
AppPublisher=Arjun Nair
AppPublisherURL=www.arjunnair.in
AppSupportURL=www.zero.arjunnair.in
AppUpdatesURL=www.zero.arjunnair.in
DefaultDirName={pf}\Zero
DefaultGroupName=Zero
AllowNoIcons=yes
LicenseFile=.\Run\License.txt
InfoAfterFile=.\Run\ReadMe.txt
OutputDir=.\InnoScript
OutputBaseFilename=Zero 0.7 Setup
Compression=lzma
SolidCompression=yes
AppCopyright=Copyright 2015 Arjun Nair

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: ".\Run\Zero.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: ".\Run\roms\*"; DestDir: "{app}\roms"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: ".\Run\programs\*"; DestDir: "{app}\programs"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: ".\Run\Speccy.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: ".\Run\ZeroSound.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: ".\Run\ZipForge.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: ".\Run\zlib.net.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: ".\Run\zlib1.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: ".\Run\wd1793.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: ".\Run\fdc765.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: ".\Run\Peripherals.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: ".\Run\pzxtools.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: ".\Run\ZeroFileAssociater.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: ".\Run\Zero.exe.config"; DestDir: "{app}"; Flags: onlyifdoesntexist
Source: ".\Run\License.txt"; DestDir: "{app}"; Flags: ignoreversion
Source: ".\Run\What's New.txt"; DestDir: "{app}"; Flags: ignoreversion
Source: ".\Run\ReadMe.txt"; DestDir: "{app}"; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\Zero"; Filename: "{app}\Zero.exe"
Name: "{group}\{cm:UninstallProgram,Zero}"; Filename: "{uninstallexe}"
Name: "{commondesktop}\Zero"; Filename: "{app}\Zero.exe"; Tasks: desktopicon
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\Zero"; Filename: "{app}\Zero.exe"; Tasks: quicklaunchicon

[Run]
Filename: "{app}\Zero.exe"; Description: "{cm:LaunchProgram,Zero}"; Flags: nowait postinstall skipifsilent

[CustomMessages]
slimdxmissing =This setup requires the Slim DX Runtime Feb 2010.%nPlease download and install it and then run this setup again.%n%nDo you want to download SlimDX now?
dotnetmissing =This setup requires .NET Framework 3.5.%nPlease download and install it and then run this setup again.%n%nDo you want to download .NET Framework 3.5 now?

[Code]
// function InitializeSetup(): Boolean;
// var
//    ErrorCode: Integer;
//    slimDXPresent : Boolean;
//    dotNet3_5Present: Boolean;
//    Result1 : Boolean;
//    dotNetInstalled : Cardinal;

// begin
//  dotNet3_5Present :=  RegQueryDWordValue(HKLM, 'Software\Microsoft\NET Framework Setup\NDP\v3.5', 'Install', dotNetInstalled);
//  slimDXPresent := RegValueExists(HKLM,'SOFTWARE\Classes\Installer\Assemblies\Global', 'SlimDX,version="2.0.9.42",culture="neutral",publicKeyToken="B1B0C32FD1FFE4F9",processorArchitecture="x86"');

// if dotNet3_5Present = true then
//	begin
//	   if dotNetInstalled = 1 then
//  	   begin
//  		 Result := true;
// 	 	
//	  	 end
//	   else
//	     begin
//	       dotNet3_5Present := false;
//	     end
//	end;

// if (dotNet3_5Present = false) then
//		begin
//			Result1 := MsgBox(ExpandConstant('{cm:dotnetmissing}'),
//					mbConfirmation, MB_YESNO) = idYes;
//			if Result1 =false then
//				begin
//			   	Result:=false;
//			  end
//			else
//			  begin
//				  Result:=false;
//				  ShellExec('open',				
//				     'http://www.microsoft.com/downloads/details.aspx?familyid=333325fd-ae52-4e35-b531-508d977d32a6&displaylang=en',
//					   '','',SW_SHOWNORMAL,ewNoWait,ErrorCode);
//        end;
//    end;
	
//  if slimDXPresent = true then
//	begin
//		Result := true;
		
//	end;

  
//  if (slimDXPresent = false) then
//		begin
//			Result1 := MsgBox(ExpandConstant('{cm:slimdxmissing}'),
//						mbConfirmation, MB_YESNO) = idYes;
//			if Result1 =false then
//				begin
//	 	   		Result:=false;
//				end
//			else
//			begin
//				Result:=false;
//				ShellExec('open',
//				'http://slimdx.googlecode.com/files/SlimDX%20Runtime%20%28February%202010%29.msi',
//				'','',SW_SHOWNORMAL,ewNoWait,ErrorCode);
//      end;
//   end;

// end;

