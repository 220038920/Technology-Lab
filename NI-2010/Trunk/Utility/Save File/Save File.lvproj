<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="16008000">
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
		<Item Name="Support" Type="Folder" URL="../Support">
			<Property Name="NI.DISK" Type="Bool">true</Property>
		</Item>
		<Item Name="DOE" Type="Folder" URL="../DOE">
			<Property Name="NI.DISK" Type="Bool">true</Property>
		</Item>
		<Item Name="Type Definitions" Type="Folder" URL="../../../Hybrid Water Heater/Type Definitions">
			<Property Name="NI.DISK" Type="Bool">true</Property>
		</Item>
		<Item Name="Utility" Type="Folder">
			<Item Name="Type Definitions" Type="Folder" URL="../../Type Definitions">
				<Property Name="NI.DISK" Type="Bool">true</Property>
			</Item>
			<Item Name="Calibration" Type="Folder" URL="../../Calibration">
				<Property Name="NI.DISK" Type="Bool">true</Property>
			</Item>
			<Item Name="Custom Pallet Controls" Type="Folder" URL="../../Custom Pallet Controls">
				<Property Name="NI.DISK" Type="Bool">true</Property>
			</Item>
			<Item Name="GEA2 Commands" Type="Folder" URL="../../GEA2 Commands">
				<Property Name="NI.DISK" Type="Bool">true</Property>
			</Item>
			<Item Name="UTILITY 1D String to 1D DBL.vi" Type="VI" URL="../../UTILITY 1D String to 1D DBL.vi"/>
			<Item Name="UTILITY Array Get 1D String Column From 2D.vi" Type="VI" URL="../../UTILITY Array Get 1D String Column From 2D.vi"/>
			<Item Name="UTILITY Convert Hex String to Array.vi" Type="VI" URL="../../UTILITY Convert Hex String to Array.vi"/>
			<Item Name="UTILITY Date String Days.vi" Type="VI" URL="../../UTILITY Date String Days.vi"/>
			<Item Name="UTILITY This VIs Path.vi" Type="VI" URL="../../UTILITY This VIs Path.vi"/>
			<Item Name="UTILITY IP and Computer Name.vi" Type="VI" URL="../../UTILITY IP and Computer Name.vi"/>
			<Item Name="UTILITY Create Default File.vi" Type="VI" URL="../../UTILITY Create Default File.vi"/>
			<Item Name="UTILITY Delete Empty String Cells.vi" Type="VI" URL="../../UTILITY Delete Empty String Cells.vi"/>
			<Item Name="LV70DateRecToTimeStamp.vi" Type="VI" URL="../../_oldvers.llb/LV70DateRecToTimeStamp.vi"/>
			<Item Name="UTILITY Get Excel Data From Worksheet.vi" Type="VI" URL="../../UTILITY Get Excel Data From Worksheet.vi"/>
			<Item Name="UTILITY E-Time.vi" Type="VI" URL="../../UTILITY E-Time.vi"/>
			<Item Name="UTILITY Convert String to TimeStamp.vi" Type="VI" URL="../../UTILITY Convert String to TimeStamp.vi"/>
			<Item Name="UTILITY Local.vi" Type="VI" URL="../../UTILITY Local.vi"/>
			<Item Name="UTILITY Array to String Array.vi" Type="VI" URL="../../UTILITY Array to String Array.vi"/>
			<Item Name="UTILTIY Remove Blank Rows.vi" Type="VI" URL="../../UTILTIY Remove Blank Rows.vi"/>
			<Item Name="UTILITY Write Header.vi" Type="VI" URL="../../UTILITY Write Header.vi"/>
			<Item Name="UTILITY Save Data.vi" Type="VI" URL="../../UTILITY Save Data.vi"/>
			<Item Name="UTILITY Convert String to Time.vi" Type="VI" URL="../../UTILITY Convert String to Time.vi"/>
			<Item Name="UTILITY Create Nested Directories.vi" Type="VI" URL="../../UTILITY Create Nested Directories.vi"/>
		</Item>
		<Item Name="Save File.lvlib" Type="Library" URL="../Save File.lvlib"/>
		<Item Name="File Setup.lvlib" Type="Library" URL="../File Setup.lvlib"/>
		<Item Name="Save File Menu.rtm" Type="Document" URL="../File Setup (Private)/Save File Menu.rtm"/>
		<Item Name="Main Icon.ico" Type="Document" URL="../Documentation/Main Icon.ico"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="BuildHelpPath.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/BuildHelpPath.vi"/>
				<Item Name="Check if File or Folder Exists.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Check if File or Folder Exists.vi"/>
				<Item Name="Check Special Tags.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Check Special Tags.vi"/>
				<Item Name="Clear Errors.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Clear Errors.vi"/>
				<Item Name="Close File+.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Close File+.vi"/>
				<Item Name="Convert property node font to graphics font.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Convert property node font to graphics font.vi"/>
				<Item Name="Details Display Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Details Display Dialog.vi"/>
				<Item Name="DialogType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogType.ctl"/>
				<Item Name="DialogTypeEnum.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogTypeEnum.ctl"/>
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
				<Item Name="Error Code Database.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Code Database.vi"/>
				<Item Name="ErrWarn.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/ErrWarn.ctl"/>
				<Item Name="eventvkey.ctl" Type="VI" URL="/&lt;vilib&gt;/event_ctls.llb/eventvkey.ctl"/>
				<Item Name="FileVersionInformation.ctl" Type="VI" URL="/&lt;vilib&gt;/Platform/fileVersionInfo.llb/FileVersionInformation.ctl"/>
				<Item Name="Find First Error.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Find First Error.vi"/>
				<Item Name="Find Tag.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Find Tag.vi"/>
				<Item Name="Format Message String.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Format Message String.vi"/>
				<Item Name="General Error Handler Core CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler Core CORE.vi"/>
				<Item Name="General Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler.vi"/>
				<Item Name="Get String Text Bounds.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Get String Text Bounds.vi"/>
				<Item Name="Get Text Rect.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Get Text Rect.vi"/>
				<Item Name="GetHelpDir.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetHelpDir.vi"/>
				<Item Name="GetRTHostConnectedProp.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetRTHostConnectedProp.vi"/>
				<Item Name="Longest Line Length in Pixels.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Longest Line Length in Pixels.vi"/>
				<Item Name="LVBoundsTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVBoundsTypeDef.ctl"/>
				<Item Name="LVRectTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVRectTypeDef.ctl"/>
				<Item Name="NI_FileType.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/lvfile.llb/NI_FileType.lvlib"/>
				<Item Name="NI_PackedLibraryUtility.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/LVLibp/NI_PackedLibraryUtility.lvlib"/>
				<Item Name="Not Found Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Not Found Dialog.vi"/>
				<Item Name="Open File+.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Open File+.vi"/>
				<Item Name="Read File+ (string).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read File+ (string).vi"/>
				<Item Name="Read From Spreadsheet File (DBL).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read From Spreadsheet File (DBL).vi"/>
				<Item Name="Read From Spreadsheet File (I64).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read From Spreadsheet File (I64).vi"/>
				<Item Name="Read From Spreadsheet File (string).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read From Spreadsheet File (string).vi"/>
				<Item Name="Read From Spreadsheet File.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read From Spreadsheet File.vi"/>
				<Item Name="Read Lines From File.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read Lines From File.vi"/>
				<Item Name="Search and Replace Pattern.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Search and Replace Pattern.vi"/>
				<Item Name="Set Bold Text.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set Bold Text.vi"/>
				<Item Name="Set String Value.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set String Value.vi"/>
				<Item Name="Simple Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Simple Error Handler.vi"/>
				<Item Name="Space Constant.vi" Type="VI" URL="/&lt;vilib&gt;/dlg_ctls.llb/Space Constant.vi"/>
				<Item Name="TagReturnType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/TagReturnType.ctl"/>
				<Item Name="Three Button Dialog CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog CORE.vi"/>
				<Item Name="Three Button Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog.vi"/>
				<Item Name="Trim Whitespace.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Trim Whitespace.vi"/>
				<Item Name="whitespace.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/whitespace.ctl"/>
				<Item Name="Write Spreadsheet String.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Write Spreadsheet String.vi"/>
				<Item Name="Write To Spreadsheet File (DBL).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Write To Spreadsheet File (DBL).vi"/>
				<Item Name="Write To Spreadsheet File (I64).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Write To Spreadsheet File (I64).vi"/>
				<Item Name="Write To Spreadsheet File (string).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Write To Spreadsheet File (string).vi"/>
				<Item Name="Write To Spreadsheet File.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Write To Spreadsheet File.vi"/>
				<Item Name="Add State(s) to Queue__jki_lib_state_machine.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/State Machine/_JKI_lib_State_Machine.llb/Add State(s) to Queue__jki_lib_state_machine.vi"/>
				<Item Name="Parse State Queue__jki_lib_state_machine.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/State Machine/_JKI_lib_State_Machine.llb/Parse State Queue__jki_lib_state_machine.vi"/>
				<Item Name="Unset Busy.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/cursorutil.llb/Unset Busy.vi"/>
				<Item Name="Set Cursor.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/cursorutil.llb/Set Cursor.vi"/>
				<Item Name="Set Cursor (Cursor ID).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/cursorutil.llb/Set Cursor (Cursor ID).vi"/>
				<Item Name="Set Cursor (Icon Pict).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/cursorutil.llb/Set Cursor (Icon Pict).vi"/>
				<Item Name="Set Busy.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/cursorutil.llb/Set Busy.vi"/>
				<Item Name="compatReadText.vi" Type="VI" URL="/&lt;vilib&gt;/_oldvers/_oldvers.llb/compatReadText.vi"/>
				<Item Name="Write Delimited Spreadsheet.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Write Delimited Spreadsheet.vi"/>
				<Item Name="Write Delimited Spreadsheet (DBL).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Write Delimited Spreadsheet (DBL).vi"/>
				<Item Name="Write Delimited Spreadsheet (I64).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Write Delimited Spreadsheet (I64).vi"/>
				<Item Name="Write Delimited Spreadsheet (string).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Write Delimited Spreadsheet (string).vi"/>
				<Item Name="LV70DateRecToTimeStamp.vi" Type="VI" URL="/&lt;vilib&gt;/_oldvers/_oldvers.llb/LV70DateRecToTimeStamp.vi"/>
				<Item Name="LVDateTimeRec.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVDateTimeRec.ctl"/>
				<Item Name="NI_report.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Utility/NIReport.llb/NI_report.lvclass"/>
				<Item Name="NI_ReportGenerationCore.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/NIReport.llb/NI_ReportGenerationCore.lvlib"/>
				<Item Name="NI_HTML.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Utility/NIReport.llb/HTML/NI_HTML.lvclass"/>
				<Item Name="Write JPEG File.vi" Type="VI" URL="/&lt;vilib&gt;/picture/jpeg.llb/Write JPEG File.vi"/>
				<Item Name="imagedata.ctl" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/imagedata.ctl"/>
				<Item Name="Check File Permissions.vi" Type="VI" URL="/&lt;vilib&gt;/picture/jpeg.llb/Check File Permissions.vi"/>
				<Item Name="Check Path.vi" Type="VI" URL="/&lt;vilib&gt;/picture/jpeg.llb/Check Path.vi"/>
				<Item Name="Directory of Top Level VI.vi" Type="VI" URL="/&lt;vilib&gt;/picture/jpeg.llb/Directory of Top Level VI.vi"/>
				<Item Name="Check Color Table Size.vi" Type="VI" URL="/&lt;vilib&gt;/picture/jpeg.llb/Check Color Table Size.vi"/>
				<Item Name="Check Data Size.vi" Type="VI" URL="/&lt;vilib&gt;/picture/jpeg.llb/Check Data Size.vi"/>
				<Item Name="Write PNG File.vi" Type="VI" URL="/&lt;vilib&gt;/picture/png.llb/Write PNG File.vi"/>
				<Item Name="Registry RtKey.ctl" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Registry RtKey.ctl"/>
				<Item Name="Generate Temporary File Path.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Generate Temporary File Path.vi"/>
				<Item Name="Path to URL.vi" Type="VI" URL="/&lt;vilib&gt;/printing/PathToURL.llb/Path to URL.vi"/>
				<Item Name="Escape Characters for HTTP.vi" Type="VI" URL="/&lt;vilib&gt;/printing/PathToURL.llb/Escape Characters for HTTP.vi"/>
				<Item Name="Open Registry Key.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Open Registry Key.vi"/>
				<Item Name="Registry SAM.ctl" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Registry SAM.ctl"/>
				<Item Name="Registry refnum.ctl" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Registry refnum.ctl"/>
				<Item Name="Registry View.ctl" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Registry View.ctl"/>
				<Item Name="STR_ASCII-Unicode.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/STR_ASCII-Unicode.vi"/>
				<Item Name="Registry WinErr-LVErr.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Registry WinErr-LVErr.vi"/>
				<Item Name="Registry Handle Master.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Registry Handle Master.vi"/>
				<Item Name="Read Registry Value Simple.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Read Registry Value Simple.vi"/>
				<Item Name="Read Registry Value Simple STR.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Read Registry Value Simple STR.vi"/>
				<Item Name="Read Registry Value.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Read Registry Value.vi"/>
				<Item Name="Read Registry Value STR.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Read Registry Value STR.vi"/>
				<Item Name="Read Registry Value DWORD.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Read Registry Value DWORD.vi"/>
				<Item Name="Registry Simplify Data Type.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Registry Simplify Data Type.vi"/>
				<Item Name="Read Registry Value Simple U32.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Read Registry Value Simple U32.vi"/>
				<Item Name="Create ActiveX Event Queue.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/ax-events.llb/Create ActiveX Event Queue.vi"/>
				<Item Name="Wait types.ctl" Type="VI" URL="/&lt;vilib&gt;/Platform/ax-events.llb/Wait types.ctl"/>
				<Item Name="Create Error Clust.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/ax-events.llb/Create Error Clust.vi"/>
				<Item Name="Wait On ActiveX Event.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/ax-events.llb/Wait On ActiveX Event.vi"/>
				<Item Name="EventData.ctl" Type="VI" URL="/&lt;vilib&gt;/Platform/ax-events.llb/EventData.ctl"/>
				<Item Name="OccFireType.ctl" Type="VI" URL="/&lt;vilib&gt;/Platform/ax-events.llb/OccFireType.ctl"/>
				<Item Name="Destroy ActiveX Event Queue.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/ax-events.llb/Destroy ActiveX Event Queue.vi"/>
				<Item Name="Close Registry Key.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Close Registry Key.vi"/>
				<Item Name="NI_Standard Report.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Utility/NIReport.llb/Standard Report/NI_Standard Report.lvclass"/>
				<Item Name="Read PNG File.vi" Type="VI" URL="/&lt;vilib&gt;/picture/png.llb/Read PNG File.vi"/>
				<Item Name="Create Mask By Alpha.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Create Mask By Alpha.vi"/>
				<Item Name="Bit-array To Byte-array.vi" Type="VI" URL="/&lt;vilib&gt;/picture/pictutil.llb/Bit-array To Byte-array.vi"/>
				<Item Name="Write BMP File.vi" Type="VI" URL="/&lt;vilib&gt;/picture/bmp.llb/Write BMP File.vi"/>
				<Item Name="compatOverwrite.vi" Type="VI" URL="/&lt;vilib&gt;/_oldvers/_oldvers.llb/compatOverwrite.vi"/>
				<Item Name="Write BMP Data.vi" Type="VI" URL="/&lt;vilib&gt;/picture/bmp.llb/Write BMP Data.vi"/>
				<Item Name="Write BMP Data To Buffer.vi" Type="VI" URL="/&lt;vilib&gt;/picture/bmp.llb/Write BMP Data To Buffer.vi"/>
				<Item Name="Calc Long Word Padded Width.vi" Type="VI" URL="/&lt;vilib&gt;/picture/bmp.llb/Calc Long Word Padded Width.vi"/>
				<Item Name="Flip and Pad for Picture Control.vi" Type="VI" URL="/&lt;vilib&gt;/picture/bmp.llb/Flip and Pad for Picture Control.vi"/>
				<Item Name="Color to RGB.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/colorconv.llb/Color to RGB.vi"/>
				<Item Name="Built App File Layout.vi" Type="VI" URL="/&lt;vilib&gt;/AppBuilder/Built App File Layout.vi"/>
				<Item Name="Get LV Class Default Value.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/LVClass/Get LV Class Default Value.vi"/>
				<Item Name="NI_Excel.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Utility/NIReport.llb/Excel/NI_Excel.lvclass"/>
				<Item Name="NI_ReportGenerationToolkit.lvlib" Type="Library" URL="/&lt;vilib&gt;/addons/_office/NI_ReportGenerationToolkit.lvlib"/>
				<Item Name="Get File Extension.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Get File Extension.vi"/>
				<Item Name="Read JPEG File.vi" Type="VI" URL="/&lt;vilib&gt;/picture/jpeg.llb/Read JPEG File.vi"/>
				<Item Name="Handle Open Word or Excel File.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/NIReport.llb/Toolkit/Handle Open Word or Excel File.vi"/>
				<Item Name="Read Delimited Spreadsheet.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read Delimited Spreadsheet.vi"/>
				<Item Name="Read Delimited Spreadsheet (DBL).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read Delimited Spreadsheet (DBL).vi"/>
				<Item Name="Read Lines From File (with error IO).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read Lines From File (with error IO).vi"/>
				<Item Name="Read Delimited Spreadsheet (I64).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read Delimited Spreadsheet (I64).vi"/>
				<Item Name="Read Delimited Spreadsheet (string).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read Delimited Spreadsheet (string).vi"/>
				<Item Name="VISA Open Access Mode.ctl" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Open Access Mode.ctl"/>
				<Item Name="VISA Configure Serial Port" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Configure Serial Port"/>
				<Item Name="VISA Configure Serial Port (Instr).vi" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Configure Serial Port (Instr).vi"/>
				<Item Name="VISA Configure Serial Port (Serial Instr).vi" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Configure Serial Port (Serial Instr).vi"/>
				<Item Name="subFilter.vi" Type="VI" URL="/&lt;vilib&gt;/express/express analysis/FilterBlock.llb/subFilter.vi"/>
				<Item Name="ex_Modify Signals Names.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/ex_Modify Signals Names.vi"/>
				<Item Name="ex_Modify Signal Name.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/ex_Modify Signal Name.vi"/>
				<Item Name="ex_CorrectErrorChain.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/ex_CorrectErrorChain.vi"/>
				<Item Name="ex_SmoothingDesign.vi" Type="VI" URL="/&lt;vilib&gt;/express/express analysis/FilterBlock.llb/ex_SmoothingDesign.vi"/>
				<Item Name="NI_MAPro.lvlib" Type="Library" URL="/&lt;vilib&gt;/measure/NI_MAPro.lvlib"/>
				<Item Name="Express Waveform Components.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/transition.llb/Express Waveform Components.vi"/>
				<Item Name="ex_WaveformAttribs.ctl" Type="VI" URL="/&lt;vilib&gt;/express/express shared/transition.llb/ex_WaveformAttribs.ctl"/>
				<Item Name="ex_GetAllExpressAttribs.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/transition.llb/ex_GetAllExpressAttribs.vi"/>
				<Item Name="NI_AALBase.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/NI_AALBase.lvlib"/>
				<Item Name="NI_MABase.lvlib" Type="Library" URL="/&lt;vilib&gt;/measure/NI_MABase.lvlib"/>
				<Item Name="Dynamic To Waveform Array.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/transition.llb/Dynamic To Waveform Array.vi"/>
				<Item Name="NI_AALPro.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/NI_AALPro.lvlib"/>
				<Item Name="Timestamp Subtract.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/TSOps.llb/Timestamp Subtract.vi"/>
				<Item Name="I128 Timestamp.ctl" Type="VI" URL="/&lt;vilib&gt;/Waveform/TSOps.llb/I128 Timestamp.ctl"/>
				<Item Name="DU64_U32SubtractWithBorrow.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/TSOps.llb/DU64_U32SubtractWithBorrow.vi"/>
				<Item Name="Check for Equality.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/WDTOps.llb/Check for Equality.vi"/>
				<Item Name="LVComboBoxStrsAndValuesArrayTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVComboBoxStrsAndValuesArrayTypeDef.ctl"/>
				<Item Name="subElapsedTime.vi" Type="VI" URL="/&lt;vilib&gt;/express/express execution control/ElapsedTimeBlock.llb/subElapsedTime.vi"/>
				<Item Name="FormatTime String.vi" Type="VI" URL="/&lt;vilib&gt;/express/express execution control/ElapsedTimeBlock.llb/FormatTime String.vi"/>
				<Item Name="FileVersionInfo.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/fileVersionInfo.llb/FileVersionInfo.vi"/>
				<Item Name="GetFileVersionInfoSize.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/fileVersionInfo.llb/GetFileVersionInfoSize.vi"/>
				<Item Name="BuildErrorSource.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/fileVersionInfo.llb/BuildErrorSource.vi"/>
				<Item Name="GetFileVersionInfo.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/fileVersionInfo.llb/GetFileVersionInfo.vi"/>
				<Item Name="VerQueryValue.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/fileVersionInfo.llb/VerQueryValue.vi"/>
				<Item Name="MoveMemory.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/fileVersionInfo.llb/MoveMemory.vi"/>
				<Item Name="FixedFileInfo_Struct.ctl" Type="VI" URL="/&lt;vilib&gt;/Platform/fileVersionInfo.llb/FixedFileInfo_Struct.ctl"/>
			</Item>
			<Item Name="mscorlib" Type="VI" URL="mscorlib">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="GEA2_Toolkit.lvlib" Type="Library" URL="../../LabVIEW GEA2 Toolkit v1.0.0.0/library/GEA2_Toolkit.lvlib"/>
			<Item Name="GeaCommunication.dll" Type="Document" URL="../../LabVIEW GEA2 Toolkit v1.0.0.0/Appliance.NET/GeaCommunication.dll"/>
			<Item Name="GeaCommunication.Usb.dll" Type="Document" URL="../../LabVIEW GEA2 Toolkit v1.0.0.0/Appliance.NET/GeaCommunication.Usb.dll"/>
			<Item Name="System" Type="VI" URL="System">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="Save File Type.ctl" Type="VI" URL="../Private/Type Definitions/Save File Type.ctl"/>
			<Item Name="Station ID Selector.ctl" Type="VI" URL="../../../Hybrid Water Heater/Custom Instrument Control/MW100/Type Definitions/Station ID Selector.ctl"/>
			<Item Name="Terminate Draw Conditions.ctl" Type="VI" URL="../../../Hybrid Water Heater/Support VIs/Draw Water Specific/Type Definitions/Terminate Draw Conditions.ctl"/>
			<Item Name="Redundant.ctl" Type="VI" URL="../../../Washer HCC/Washer HCC NEWFI/Washer Soft Load Box/type defs/Redundant.ctl"/>
			<Item Name="Red_Micro_Parse.vi" Type="VI" URL="../../../Washer HCC/Washer HCC NEWFI/Washer Soft Load Box/subVIs/Red_Micro_Parse.vi"/>
			<Item Name="HexStringToBoolean.vi" Type="VI" URL="../../LabVIEW GEA2 Toolkit v1.0.0.0/subVIs/HexStringToBoolean.vi"/>
			<Item Name="Save File Appliance Display.ctl" Type="VI" URL="../Public/Type Definitions/Save File Appliance Display.ctl"/>
			<Item Name="Check Special Condtions.ctl" Type="VI" URL="../../../Hybrid Water Heater/Support VIs/Draw Water Specific/Type Definitions/Check Special Condtions.ctl"/>
			<Item Name="HEWH Special Condition Check.ctl" Type="VI" URL="../../../Hybrid Water Heater/Support VIs/Draw Water Specific/Type Definitions/HEWH Special Condition Check.ctl"/>
			<Item Name="DPT IMC Data.ctl" Type="VI" URL="../File Setup (Public)/Type Definition/DPT IMC Data.ctl"/>
			<Item Name="DOE Appliance Common.ctl" Type="VI" URL="../../../Washer DOE/Type Definitions/DOE Appliance Common.ctl"/>
			<Item Name="DOE Dryer Standard.ctl" Type="VI" URL="../../../Washer DOE/Type Definitions/DOE Dryer Standard.ctl"/>
			<Item Name="HCC Washer Types.ctl" Type="VI" URL="../../../Washer HCC/Washer HCC NEWFI/Type Definitions/HCC Washer Types.ctl"/>
			<Item Name="UTILITY Delete Empty String Cells 2D.vi" Type="VI" URL="../../UTILITY Delete Empty String Cells 2D.vi"/>
			<Item Name="DOE Test Fixture Hardware.ctl" Type="VI" URL="../../../Washer DOE/Type Definitions/DOE Test Fixture Hardware.ctl"/>
			<Item Name="IND560 Configuration.ctl" Type="VI" URL="../../../../Drivers/IND560 Scale Monitor/Type Definitions/IND560 Configuration.ctl"/>
			<Item Name="FMA1600A COM Ports.ctl" Type="VI" URL="../../../../Drivers/Omega FMA-1600A Series Gas Flow Meter/Type Definitions/FMA1600A COM Ports.ctl"/>
			<Item Name="Agilent 34970 Array to Scan List.vi" Type="VI" URL="../../../../Drivers/Agilent 34972/Examples/Agilent 34970 Array to Scan List.vi"/>
			<Item Name="Advapi32.dll" Type="Document" URL="Advapi32.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="kernel32.dll" Type="Document" URL="kernel32.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="Setra Main.vi" Type="VI" URL="../../../../Drivers/Setra SuperCount 75lb/Setra Main.vi"/>
			<Item Name="Setra Commands.ctl" Type="VI" URL="../../../../Drivers/Setra SuperCount 75lb/Type Definitions/Setra Commands.ctl"/>
			<Item Name="Setra Initialize.vi" Type="VI" URL="../../../../Drivers/Setra SuperCount 75lb/SubVIs/Setra Initialize.vi"/>
			<Item Name="Setra Read Write.vi" Type="VI" URL="../../../../Drivers/Setra SuperCount 75lb/SubVIs/Setra Read Write.vi"/>
			<Item Name="Setra Data Parse.vi" Type="VI" URL="../../../../Drivers/Setra SuperCount 75lb/SubVIs/Setra Data Parse.vi"/>
			<Item Name="Setra Close.vi" Type="VI" URL="../../../../Drivers/Setra SuperCount 75lb/SubVIs/Setra Close.vi"/>
			<Item Name="DOE Dryer RMC Calculation Equation.vi" Type="VI" URL="../../../Washer DOE/Support VIs/DOE Dryer RMC Calculation Equation.vi"/>
			<Item Name="lvanlys.dll" Type="Document" URL="/&lt;resource&gt;/lvanlys.dll"/>
			<Item Name="DOE Main Control.ctl" Type="VI" URL="../../../Washer DOE/Type Definitions/DOE Main Control.ctl"/>
			<Item Name="GEA2.ctl" Type="VI" URL="../../../Washer DOE/Configuration/GEA2.ctl"/>
			<Item Name="DOE Capacity Measurments.ctl" Type="VI" URL="../../../Washer DOE/Type Definitions/DOE Capacity Measurments.ctl"/>
			<Item Name="ViperHawk Data.ctl" Type="VI" URL="../../../Washer HCC/Washer HCC NEWFI/Type Definitions/ViperHawk/ViperHawk Data.ctl"/>
			<Item Name="ViperHawk Diagnostic Data.ctl" Type="VI" URL="../../../Washer HCC/Washer HCC NEWFI/Type Definitions/ViperHawk/ViperHawk Diagnostic Data.ctl"/>
			<Item Name="ViperHawk Search Control.ctl" Type="VI" URL="../../../Washer HCC/Washer HCC NEWFI/Type Definitions/ViperHawk/ViperHawk Search Control.ctl"/>
			<Item Name="HEWH Hyperterminal.vi" Type="VI" URL="../../../Hybrid Water Heater/Support VIs/HEWH Hyperterminal.vi"/>
			<Item Name="HEWH Assemble HEWH Diagnostics Data.vi" Type="VI" URL="../../../Hybrid Water Heater/Support VIs/HEWH Assemble HEWH Diagnostics Data.vi"/>
			<Item Name="IND560 Serial Tester.vi" Type="VI" URL="../../../../Drivers/IND560 Scale Monitor/IND560 Serial Tester.vi"/>
			<Item Name="IND560 Serial Initialize.vi" Type="VI" URL="../../../../Drivers/IND560 Scale Monitor/Support VIs/IND560 Serial Initialize.vi"/>
			<Item Name="IND560 Serial Get Data.vi" Type="VI" URL="../../../../Drivers/IND560 Scale Monitor/Support VIs/IND560 Serial Get Data.vi"/>
			<Item Name="IND560 Serial Scale Commands.ctl" Type="VI" URL="../../../../Drivers/IND560 Scale Monitor/Type Definitions/IND560 Serial Scale Commands.ctl"/>
			<Item Name="IND560 Serial Read.vi" Type="VI" URL="../../../../Drivers/IND560 Scale Monitor/Support VIs/IND560 Serial Read.vi"/>
			<Item Name="IND560 Serial FGV Filter.vi" Type="VI" URL="../../../../Drivers/IND560 Scale Monitor/Support VIs/IND560 Serial FGV Filter.vi"/>
			<Item Name="IND560 Serial Parse.vi" Type="VI" URL="../../../../Drivers/IND560 Scale Monitor/Support VIs/IND560 Serial Parse.vi"/>
			<Item Name="IND560 Serial Close.vi" Type="VI" URL="../../../../Drivers/IND560 Scale Monitor/Support VIs/IND560 Serial Close.vi"/>
			<Item Name="GSE 350 Main.vi" Type="VI" URL="../../../../Drivers/GSE 350 Scale Display/GSE 350 Main.vi"/>
			<Item Name="GSE 350 Initialize.vi" Type="VI" URL="../../../../Drivers/GSE 350 Scale Display/SubVIs/GSE 350 Initialize.vi"/>
			<Item Name="GSE 350 Send Receive.vi" Type="VI" URL="../../../../Drivers/GSE 350 Scale Display/SubVIs/GSE 350 Send Receive.vi"/>
			<Item Name="GSE 350 Read Data.vi" Type="VI" URL="../../../../Drivers/GSE 350 Scale Display/SubVIs/GSE 350 Read Data.vi"/>
			<Item Name="GSE 350 Build Full Data String.vi" Type="VI" URL="../../../../Drivers/GSE 350 Scale Display/SubVIs/GSE 350 Build Full Data String.vi"/>
			<Item Name="GSE 350 Extract Negative Value.vi" Type="VI" URL="../../../../Drivers/GSE 350 Scale Display/SubVIs/GSE 350 Extract Negative Value.vi"/>
			<Item Name="GSE 350 Parse Data Stream.vi" Type="VI" URL="../../../../Drivers/GSE 350 Scale Display/SubVIs/GSE 350 Parse Data Stream.vi"/>
			<Item Name="GSE 350 Extract Component Data.vi" Type="VI" URL="../../../../Drivers/GSE 350 Scale Display/SubVIs/GSE 350 Extract Component Data.vi"/>
			<Item Name="GSE 350 Close.vi" Type="VI" URL="../../../../Drivers/GSE 350 Scale Display/SubVIs/GSE 350 Close.vi"/>
			<Item Name="version.dll" Type="Document" URL="version.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
		</Item>
		<Item Name="Build Specifications" Type="Build">
			<Item Name="Save File DOE Configuration" Type="EXE">
				<Property Name="App_copyErrors" Type="Bool">true</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{FC8408D9-8EC4-4ED3-8FBB-48335F08F2E7}</Property>
				<Property Name="App_INI_GUID" Type="Str">{3CD8EDC3-A040-4F9A-82FB-2EB98ABA5823}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{9B3CC852-1214-4C97-8E17-72FD948230A7}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">Save File DOE Configuration</Property>
				<Property Name="Bld_excludeInlineSubVIs" Type="Bool">true</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../builds/NI_AB_PROJECTNAME/Save File DOE Configuration</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToCommon</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{C0D750EA-D3E0-40F5-9D06-B6349DF7B4B3}</Property>
				<Property Name="Bld_version.build" Type="Int">12</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">Configuration File.exe</Property>
				<Property Name="Destination[0].path" Type="Path">../builds/NI_AB_PROJECTNAME/Save File DOE Configuration/Configuration File.exe</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../builds/NI_AB_PROJECTNAME/Save File DOE Configuration/data</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Exe_iconItemID" Type="Ref">/My Computer/Main Icon.ico</Property>
				<Property Name="Source[0].itemID" Type="Str">{583A0D5C-E7DF-4009-8279-D75B5B233BDF}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/File Setup.lvlib/File Setup (Public)/Save File DOE Configuration.vi</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="Source[2].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[2].itemID" Type="Ref">/My Computer/Save File Menu.rtm</Property>
				<Property Name="Source[2].lvfile" Type="Bool">true</Property>
				<Property Name="Source[2].sourceInclusion" Type="Str">Include</Property>
				<Property Name="SourceCount" Type="Int">3</Property>
				<Property Name="TgtF_companyName" Type="Str">General Electric</Property>
				<Property Name="TgtF_enableDebugging" Type="Bool">true</Property>
				<Property Name="TgtF_fileDescription" Type="Str">Save File DOE Configuration</Property>
				<Property Name="TgtF_internalName" Type="Str">Save File DOE Configuration</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2015 General Electric</Property>
				<Property Name="TgtF_productName" Type="Str">Save File DOE Configuration</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{0198CF62-A724-4CFD-9821-52147B2FF8DE}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">Configuration File.exe</Property>
			</Item>
		</Item>
	</Item>
</Project>
