<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="11008008">
	<Item Name="My Computer" Type="My Computer">
		<Property Name="NI.SortType" Type="Int">3</Property>
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="Include" Type="Folder"/>
		<Item Name="01 Washer HCC SM.vi" Type="VI" URL="../01 Washer HCC SM.vi"/>
		<Item Name="File Washer HCC.vi" Type="VI" URL="../File Washer HCC.vi"/>
		<Item Name="Global HCC Cluster ReadWrite.vi" Type="VI" URL="../Global HCC Cluster ReadWrite.vi"/>
		<Item Name="HCC Build Save Data Array.vi" Type="VI" URL="../HCC Build Save Data Array.vi"/>
		<Item Name="Washer HCC Tool.vi" Type="VI" URL="../Washer HCC Tool.vi"/>
		<Item Name="Parse Washer Debug Log.vi" Type="VI" URL="../Parse Washer Debug Log.vi"/>
		<Item Name="Set Washer Status.vi" Type="VI" URL="../Set Washer Status.vi"/>
		<Item Name="GEA2_ICP_Washer_SM.vi" Type="VI" URL="../GEA2_ICP_Washer_SM.vi"/>
		<Item Name="Washer Status Ctrl.ctl" Type="VI" URL="../Washer Status Ctrl.ctl"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="Parse State Queue__jki_lib_state_machine.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/State Machine/_jki_lib_state_machine.llb/Parse State Queue__jki_lib_state_machine.vi"/>
				<Item Name="Trim Whitespace.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Trim Whitespace.vi"/>
				<Item Name="whitespace.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/whitespace.ctl"/>
				<Item Name="Add State(s) to Queue__jki_lib_state_machine.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/State Machine/_jki_lib_state_machine.llb/Add State(s) to Queue__jki_lib_state_machine.vi"/>
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
				<Item Name="General Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler.vi"/>
				<Item Name="DialogType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogType.ctl"/>
				<Item Name="DialogTypeEnum.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogTypeEnum.ctl"/>
				<Item Name="General Error Handler CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler CORE.vi"/>
				<Item Name="Check Special Tags.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Check Special Tags.vi"/>
				<Item Name="TagReturnType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/TagReturnType.ctl"/>
				<Item Name="Set String Value.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set String Value.vi"/>
				<Item Name="GetRTHostConnectedProp.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetRTHostConnectedProp.vi"/>
				<Item Name="Error Code Database.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Code Database.vi"/>
				<Item Name="Format Message String.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Format Message String.vi"/>
				<Item Name="Find Tag.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Find Tag.vi"/>
				<Item Name="Search and Replace Pattern.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Search and Replace Pattern.vi"/>
				<Item Name="Set Bold Text.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set Bold Text.vi"/>
				<Item Name="Details Display Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Details Display Dialog.vi"/>
				<Item Name="eventvkey.ctl" Type="VI" URL="/&lt;vilib&gt;/event_ctls.llb/eventvkey.ctl"/>
				<Item Name="Clear Errors.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Clear Errors.vi"/>
				<Item Name="ErrWarn.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/ErrWarn.ctl"/>
				<Item Name="Not Found Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Not Found Dialog.vi"/>
				<Item Name="Three Button Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog.vi"/>
				<Item Name="Three Button Dialog CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog CORE.vi"/>
				<Item Name="Longest Line Length in Pixels.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Longest Line Length in Pixels.vi"/>
				<Item Name="Convert property node font to graphics font.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Convert property node font to graphics font.vi"/>
				<Item Name="Get Text Rect.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Get Text Rect.vi"/>
				<Item Name="Get String Text Bounds.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Get String Text Bounds.vi"/>
				<Item Name="LVBoundsTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVBoundsTypeDef.ctl"/>
				<Item Name="BuildHelpPath.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/BuildHelpPath.vi"/>
				<Item Name="GetHelpDir.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetHelpDir.vi"/>
				<Item Name="Unset Busy.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/cursorutil.llb/Unset Busy.vi"/>
				<Item Name="Set Cursor.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/cursorutil.llb/Set Cursor.vi"/>
				<Item Name="Set Cursor (Cursor ID).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/cursorutil.llb/Set Cursor (Cursor ID).vi"/>
				<Item Name="Set Cursor (Icon Pict).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/cursorutil.llb/Set Cursor (Icon Pict).vi"/>
				<Item Name="Set Busy.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/cursorutil.llb/Set Busy.vi"/>
				<Item Name="subElapsedTime.vi" Type="VI" URL="/&lt;vilib&gt;/express/express execution control/ElapsedTimeBlock.llb/subElapsedTime.vi"/>
				<Item Name="FormatTime String.vi" Type="VI" URL="/&lt;vilib&gt;/express/express execution control/ElapsedTimeBlock.llb/FormatTime String.vi"/>
				<Item Name="VISA Configure Serial Port" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Configure Serial Port"/>
				<Item Name="VISA Configure Serial Port (Instr).vi" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Configure Serial Port (Instr).vi"/>
				<Item Name="VISA Configure Serial Port (Serial Instr).vi" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Configure Serial Port (Serial Instr).vi"/>
				<Item Name="Write To Spreadsheet File.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Write To Spreadsheet File.vi"/>
				<Item Name="Write To Spreadsheet File (DBL).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Write To Spreadsheet File (DBL).vi"/>
				<Item Name="Write Spreadsheet String.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Write Spreadsheet String.vi"/>
				<Item Name="Write To Spreadsheet File (I64).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Write To Spreadsheet File (I64).vi"/>
				<Item Name="Write To Spreadsheet File (string).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Write To Spreadsheet File (string).vi"/>
				<Item Name="Close File+.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Close File+.vi"/>
				<Item Name="Find First Error.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Find First Error.vi"/>
				<Item Name="Read File+ (string).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read File+ (string).vi"/>
				<Item Name="compatReadText.vi" Type="VI" URL="/&lt;vilib&gt;/_oldvers/_oldvers.llb/compatReadText.vi"/>
				<Item Name="Open File+.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Open File+.vi"/>
				<Item Name="System Exec.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/system.llb/System Exec.vi"/>
				<Item Name="Read From Spreadsheet File.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read From Spreadsheet File.vi"/>
				<Item Name="Read From Spreadsheet File (DBL).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read From Spreadsheet File (DBL).vi"/>
				<Item Name="Read Lines From File.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read Lines From File.vi"/>
				<Item Name="Read From Spreadsheet File (I64).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read From Spreadsheet File (I64).vi"/>
				<Item Name="Read From Spreadsheet File (string).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read From Spreadsheet File (string).vi"/>
				<Item Name="NI_LVConfig.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/config.llb/NI_LVConfig.lvlib"/>
				<Item Name="Space Constant.vi" Type="VI" URL="/&lt;vilib&gt;/dlg_ctls.llb/Space Constant.vi"/>
				<Item Name="VariantType.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/VariantDataType/VariantType.lvlib"/>
				<Item Name="NI_FileType.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/lvfile.llb/NI_FileType.lvlib"/>
				<Item Name="Check if File or Folder Exists.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Check if File or Folder Exists.vi"/>
				<Item Name="FileVersionInformation.ctl" Type="VI" URL="/&lt;vilib&gt;/Platform/fileVersionInfo.llb/FileVersionInformation.ctl"/>
				<Item Name="FileVersionInfo.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/fileVersionInfo.llb/FileVersionInfo.vi"/>
				<Item Name="MoveMemory.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/fileVersionInfo.llb/MoveMemory.vi"/>
				<Item Name="FixedFileInfo_Struct.ctl" Type="VI" URL="/&lt;vilib&gt;/Platform/fileVersionInfo.llb/FixedFileInfo_Struct.ctl"/>
				<Item Name="VerQueryValue.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/fileVersionInfo.llb/VerQueryValue.vi"/>
				<Item Name="BuildErrorSource.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/fileVersionInfo.llb/BuildErrorSource.vi"/>
				<Item Name="GetFileVersionInfo.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/fileVersionInfo.llb/GetFileVersionInfo.vi"/>
				<Item Name="GetFileVersionInfoSize.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/fileVersionInfo.llb/GetFileVersionInfoSize.vi"/>
				<Item Name="Simple Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Simple Error Handler.vi"/>
				<Item Name="NI_PackedLibraryUtility.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/LVLibp/NI_PackedLibraryUtility.lvlib"/>
				<Item Name="8.6CompatibleGlobalVar.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/8.6CompatibleGlobalVar.vi"/>
			</Item>
			<Item Name="Read All Washers.vi" Type="VI" URL="../Read All Washers.vi"/>
			<Item Name="Washer Read.vi" Type="VI" URL="../Washer Read.vi"/>
			<Item Name="Com Chan Type Conversion.vi" Type="VI" URL="../../Dryer Wilt/Com Chan Type Conversion.vi"/>
			<Item Name="E-Time.vi" Type="VI" URL="../../Utility/E-Time.vi"/>
			<Item Name="Globals Wilt.vi" Type="VI" URL="../../Dryer Wilt/Globals Wilt.vi"/>
			<Item Name="crc16-ccitt (x1021).vi" Type="VI" URL="../../Hybrid Water Heater/GEA2/crc16-ccitt (x1021).vi"/>
			<Item Name="Dryer Commands.ctl" Type="VI" URL="../../Dryer Wilt/Dryer Commands.ctl"/>
			<Item Name="Error Bool Enumerator.vi" Type="VI" URL="../../Hybrid Water Heater/Error Bool Enumerator.vi"/>
			<Item Name="HEWH Error Enumeration.ctl" Type="VI" URL="../../Hybrid Water Heater/HEWH Error Enumeration.ctl"/>
			<Item Name="HEWH Command Needs Read.vi" Type="VI" URL="../../Hybrid Water Heater/GEA2/HEWH Command Needs Read.vi"/>
			<Item Name="Counter.vi" Type="VI" URL="../../Utility/Counter.vi"/>
			<Item Name="GEA2 Add ESC Char.vi" Type="VI" URL="../../Dryer Wilt/GEA2 Driver/GEA2 Add ESC Char.vi"/>
			<Item Name="HCC Data.ctl" Type="VI" URL="../HCC Data.ctl"/>
			<Item Name="Array-Get 1D Row fr 2D str.vi" Type="VI" URL="../../Utility/Array-Get 1D Row fr 2D str.vi"/>
			<Item Name="Read From Spreadsheet File (string) with Prompt.vi" Type="VI" URL="../Read From Spreadsheet File (string) with Prompt.vi"/>
			<Item Name="Read Lines From File w Prompt.vi" Type="VI" URL="../Read Lines From File w Prompt.vi"/>
			<Item Name="Globals HCC.vi" Type="VI" URL="../Globals HCC.vi"/>
			<Item Name="IP and Computer Name.vi" Type="VI" URL="../../Utility/IP and Computer Name.vi"/>
			<Item Name="Build String Array w Max Size.vi" Type="VI" URL="../../Utility/Build String Array w Max Size.vi"/>
			<Item Name="Dryer Details.ctl" Type="VI" URL="../../Dryer Wilt/Dryer Details.ctl"/>
			<Item Name="Pool Queue ASCII Correction.vi" Type="VI" URL="../../../../../New folder/Pool Queue ASCII Correction.vi"/>
			<Item Name="Washer.ctl" Type="VI" URL="../Washer.ctl"/>
			<Item Name="File Create HCC.vi" Type="VI" URL="../File Create HCC.vi"/>
			<Item Name="HCC - Fix Ascii.vi" Type="VI" URL="../HCC - Fix Ascii.vi"/>
			<Item Name="Array 2D RW str.vi" Type="VI" URL="../../../Sandbox/Array 2D RW str.vi"/>
			<Item Name="HCC Global Cluster Type.ctl" Type="VI" URL="../HCC Global Cluster Type.ctl"/>
			<Item Name="This VIs Path.vi" Type="VI" URL="../../../Sandbox/This VIs Path.vi"/>
			<Item Name="kernel32.dll" Type="Document" URL="kernel32.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="version.dll" Type="Document" URL="version.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="GEA2 Washer Interface Ctrl.ctl" Type="VI" URL="../GEA2 Washer Interface Ctrl.ctl"/>
			<Item Name="GEA2 Wait for Bus Idle.vi" Type="VI" URL="../GEA2 Wait for Bus Idle.vi"/>
			<Item Name="Washer_DSM_CMD.vi" Type="VI" URL="../../Dryer Wilt/GEA2 Driver/Washer_DSM_CMD.vi"/>
			<Item Name="Local.vi" Type="VI" URL="../../Utility/Local.vi"/>
			<Item Name="Copy to Clipboard.vi" Type="VI" URL="../../Utility/Copy to Clipboard.vi"/>
			<Item Name="Create Nested Directories.vi" Type="VI" URL="../../Utility/Create Nested Directories.vi"/>
		</Item>
		<Item Name="Build Specifications" Type="Build">
			<Item Name="Washer HCC" Type="EXE">
				<Property Name="App_INI_aliasGUID" Type="Str">{4C3D25DA-6DF8-41A3-885B-5E64A807D36A}</Property>
				<Property Name="App_INI_GUID" Type="Str">{577A6791-946D-4A6A-A62E-6543C73ACD75}</Property>
				<Property Name="App_winsec.description" Type="Str">http://www.GE.com</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{8719B080-660F-4BB7-8E2F-EC580339476C}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">Washer HCC</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../Washer HCC/build</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToCommon</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{C915D361-6856-4D37-8E16-1255B2C10134}</Property>
				<Property Name="Bld_targetDestDir" Type="Path"></Property>
				<Property Name="Destination[0].destName" Type="Str">Washer HCC.exe</Property>
				<Property Name="Destination[0].path" Type="Path">../Washer HCC/build/Washer HCC.exe</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../Washer HCC/build/data</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Source[0].itemID" Type="Str">{022BCD5B-544A-4E0D-937D-F4922DE29F86}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/01 Washer HCC SM.vi</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="Source[2].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[2].itemID" Type="Ref">/My Computer/Global HCC Cluster ReadWrite.vi</Property>
				<Property Name="Source[2].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[2].type" Type="Str">VI</Property>
				<Property Name="SourceCount" Type="Int">3</Property>
				<Property Name="TgtF_autoIncrement" Type="Bool">true</Property>
				<Property Name="TgtF_companyName" Type="Str">GE</Property>
				<Property Name="TgtF_fileDescription" Type="Str">Washer HCC</Property>
				<Property Name="TgtF_fileVersion.build" Type="Int">15</Property>
				<Property Name="TgtF_fileVersion.major" Type="Int">1</Property>
				<Property Name="TgtF_internalName" Type="Str">Washer HCC</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2011 GE</Property>
				<Property Name="TgtF_productName" Type="Str">Washer HCC</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{FCCC76A7-DE11-4D6D-A815-49027E17A84E}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">Washer HCC.exe</Property>
			</Item>
			<Item Name="Config HCC" Type="EXE">
				<Property Name="App_INI_aliasGUID" Type="Str">{AC6AE132-B747-44BF-A4A9-28C5232B5D4C}</Property>
				<Property Name="App_INI_GUID" Type="Str">{E613D274-D770-42C1-8CE1-0627D1B2937A}</Property>
				<Property Name="App_winsec.description" Type="Str">http://www.GE.com</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{0CBDD4C5-581E-4A5D-B321-0676CAAB751A}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">Config HCC</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../Washer HCC/build/Config HCC</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToCommon</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{ABF956BA-38D0-4D09-8F6C-80F5095F02B3}</Property>
				<Property Name="Bld_targetDestDir" Type="Path"></Property>
				<Property Name="Destination[0].destName" Type="Str">Config HCC.exe</Property>
				<Property Name="Destination[0].path" Type="Path">../Washer HCC/build/Config HCC/Config HCC.exe</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../Washer HCC/build/Config HCC/data</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Source[0].itemID" Type="Str">{E99AF1C4-9C7B-4DCA-B9F6-5BD32287D250}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/Global HCC Cluster ReadWrite.vi</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="SourceCount" Type="Int">2</Property>
				<Property Name="TgtF_companyName" Type="Str">GE</Property>
				<Property Name="TgtF_fileDescription" Type="Str">Config HCC</Property>
				<Property Name="TgtF_fileVersion.major" Type="Int">1</Property>
				<Property Name="TgtF_internalName" Type="Str">Config HCC</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2012 GE</Property>
				<Property Name="TgtF_productName" Type="Str">Config HCC</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{21FBFD65-8CD5-4F1A-9696-5B72137EC1B9}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">Config HCC.exe</Property>
			</Item>
			<Item Name="Washer HCC Tool" Type="EXE">
				<Property Name="App_INI_aliasGUID" Type="Str">{F3189249-CAB8-4C8B-920D-AE503BD34654}</Property>
				<Property Name="App_INI_GUID" Type="Str">{B50AAC72-E8AB-4199-959E-C8C8A25EF0AE}</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{524EE4B4-8CD4-465B-BC96-27C2969F781E}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">Washer HCC Tool</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../Washer HCC/build</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToCommon</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{9F021F86-C4FA-403A-BCDA-A55B8AD6D08A}</Property>
				<Property Name="Bld_targetDestDir" Type="Path"></Property>
				<Property Name="Destination[0].destName" Type="Str">Washer HCC Tool.exe</Property>
				<Property Name="Destination[0].path" Type="Path">../Washer HCC/build/Washer HCC Tool.exe</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../Washer HCC/build/data</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Source[0].itemID" Type="Str">{8A57EA22-7389-49EC-A59D-9A8C488B3790}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/Washer HCC Tool.vi</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="SourceCount" Type="Int">2</Property>
				<Property Name="TgtF_autoIncrement" Type="Bool">true</Property>
				<Property Name="TgtF_companyName" Type="Str">GE</Property>
				<Property Name="TgtF_fileDescription" Type="Str">Washer HCC Tool</Property>
				<Property Name="TgtF_fileVersion.build" Type="Int">9</Property>
				<Property Name="TgtF_fileVersion.major" Type="Int">1</Property>
				<Property Name="TgtF_internalName" Type="Str">Washer HCC Tool</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2012 GE</Property>
				<Property Name="TgtF_productName" Type="Str">Washer HCC Tool</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{8A6BF690-B832-4E13-BF0D-86279065AA46}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">Washer HCC Tool.exe</Property>
			</Item>
			<Item Name="GEA2 Washer" Type="EXE">
				<Property Name="App_INI_aliasGUID" Type="Str">{59B7D1AD-0AA5-458C-B1C3-B8E2765A775A}</Property>
				<Property Name="App_INI_GUID" Type="Str">{F95AB8AB-E27D-4E89-A763-1FB0935FC092}</Property>
				<Property Name="App_winsec.description" Type="Str">http://www.GE.com</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{BADE4809-5E12-4646-B1D6-5C936A755C59}</Property>
				<Property Name="Bld_buildSpecDescription" Type="Str">GEA2 Washer</Property>
				<Property Name="Bld_buildSpecName" Type="Str">GEA2 Washer</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../Washer HCC/build</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToCommon</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{AED31237-5388-45A8-ADA3-75C78637D49D}</Property>
				<Property Name="Bld_targetDestDir" Type="Path"></Property>
				<Property Name="Destination[0].destName" Type="Str">GEA2 Washer.exe</Property>
				<Property Name="Destination[0].path" Type="Path">../Washer HCC/build/GEA2 Washer.exe</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../Washer HCC/build/data</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Source[0].itemID" Type="Str">{18D526C6-D9AF-4483-AC52-CFD1D6BDD0B5}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/GEA2_ICP_Washer_SM.vi</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="Source[2].Container.applyProperties" Type="Bool">true</Property>
				<Property Name="Source[2].itemID" Type="Ref">/My Computer/Include</Property>
				<Property Name="Source[2].type" Type="Str">Container</Property>
				<Property Name="SourceCount" Type="Int">3</Property>
				<Property Name="TgtF_companyName" Type="Str">GE</Property>
				<Property Name="TgtF_fileDescription" Type="Str">GEA2 Washer</Property>
				<Property Name="TgtF_fileVersion.major" Type="Int">1</Property>
				<Property Name="TgtF_internalName" Type="Str">GEA2 Washer</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2012 GE</Property>
				<Property Name="TgtF_productName" Type="Str">GEA2 Washer</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{AFA0907E-765F-42F5-B59B-E61BD057E819}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">GEA2 Washer.exe</Property>
			</Item>
			<Item Name="01 Washer HCC SM" Type="EXE">
				<Property Name="App_copyErrors" Type="Bool">true</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{0CEA2AF9-CC32-477A-A977-25153ECE115F}</Property>
				<Property Name="App_INI_GUID" Type="Str">{4C385126-7178-4C6E-9293-059EA181B6EC}</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{F4060F51-AE94-46C3-8D36-FC5D55758142}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">01 Washer HCC SM</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../builds/NI_AB_PROJECTNAME/01 Washer HCC SM</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToCommon</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{09E4D844-86E2-4FBE-B216-F3C11500F4DE}</Property>
				<Property Name="Destination[0].destName" Type="Str">01 Washer HCC SM.exe</Property>
				<Property Name="Destination[0].path" Type="Path">../builds/NI_AB_PROJECTNAME/01 Washer HCC SM/01 Washer HCC SM.exe</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../builds/NI_AB_PROJECTNAME/01 Washer HCC SM/data</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Source[0].itemID" Type="Str">{4166AA6F-24FE-4DEB-9695-B0F1FE63F6EF}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/01 Washer HCC SM.vi</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="Source[2].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[2].itemID" Type="Ref">/My Computer/File Washer HCC.vi</Property>
				<Property Name="Source[2].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[2].type" Type="Str">VI</Property>
				<Property Name="Source[3].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[3].itemID" Type="Ref">/My Computer/Global HCC Cluster ReadWrite.vi</Property>
				<Property Name="Source[3].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[3].type" Type="Str">VI</Property>
				<Property Name="Source[4].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[4].itemID" Type="Ref">/My Computer/HCC Build Save Data Array.vi</Property>
				<Property Name="Source[4].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[4].type" Type="Str">VI</Property>
				<Property Name="Source[5].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[5].itemID" Type="Ref">/My Computer/Washer HCC Tool.vi</Property>
				<Property Name="Source[5].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[5].type" Type="Str">VI</Property>
				<Property Name="Source[6].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[6].itemID" Type="Ref">/My Computer/Parse Washer Debug Log.vi</Property>
				<Property Name="Source[6].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[6].type" Type="Str">VI</Property>
				<Property Name="Source[7].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[7].itemID" Type="Ref">/My Computer/Set Washer Status.vi</Property>
				<Property Name="Source[7].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[7].type" Type="Str">VI</Property>
				<Property Name="Source[8].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[8].itemID" Type="Ref">/My Computer/GEA2_ICP_Washer_SM.vi</Property>
				<Property Name="Source[8].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[8].type" Type="Str">VI</Property>
				<Property Name="Source[9].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[9].itemID" Type="Ref">/My Computer/Washer Status Ctrl.ctl</Property>
				<Property Name="Source[9].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[9].type" Type="Str">VI</Property>
				<Property Name="SourceCount" Type="Int">10</Property>
				<Property Name="TgtF_companyName" Type="Str">General Electric</Property>
				<Property Name="TgtF_fileDescription" Type="Str">01 Washer HCC SM</Property>
				<Property Name="TgtF_fileVersion.major" Type="Int">1</Property>
				<Property Name="TgtF_fileVersion.patch" Type="Int">1</Property>
				<Property Name="TgtF_internalName" Type="Str">01 Washer HCC SM</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2013 General Electric</Property>
				<Property Name="TgtF_productName" Type="Str">01 Washer HCC SM</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{731D31DA-27DB-4B0D-A3B5-737FAC3D4154}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">01 Washer HCC SM.exe</Property>
			</Item>
		</Item>
	</Item>
</Project>
