<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="16008000">
	<Item Name="My Computer" Type="My Computer">
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="Documentation" Type="Folder" URL="../Documentation">
			<Property Name="NI.DISK" Type="Bool">true</Property>
		</Item>
		<Item Name="SubVIs" Type="Folder" URL="../SubVIs">
			<Property Name="NI.DISK" Type="Bool">true</Property>
		</Item>
		<Item Name="Type Definitions" Type="Folder" URL="../Type Definitions">
			<Property Name="NI.DISK" Type="Bool">true</Property>
		</Item>
		<Item Name="UTILITY" Type="Folder">
			<Item Name="Calibration" Type="Folder" URL="../../../Trunk/Utility/Calibration">
				<Property Name="NI.DISK" Type="Bool">true</Property>
			</Item>
			<Item Name="GEA2 Commands" Type="Folder" URL="../../../Trunk/Utility/GEA2 Commands">
				<Property Name="NI.DISK" Type="Bool">true</Property>
			</Item>
			<Item Name="LabVIEW GEA2 Toolkit v1.0.0.0" Type="Folder" URL="../../../Trunk/Utility/LabVIEW GEA2 Toolkit v1.0.0.0">
				<Property Name="NI.DISK" Type="Bool">true</Property>
			</Item>
			<Item Name="Save File" Type="Folder" URL="../../../Trunk/Utility/Save File">
				<Property Name="NI.DISK" Type="Bool">true</Property>
			</Item>
			<Item Name="UTILITY 1D DBL to 1D String.vi" Type="VI" URL="../../../Trunk/Utility/UTILITY 1D DBL to 1D String.vi"/>
			<Item Name="UTILITY 1D String to 1D DBL.vi" Type="VI" URL="../../../Trunk/Utility/UTILITY 1D String to 1D DBL.vi"/>
			<Item Name="UTILITY Array Get 1D String Column From 2D.vi" Type="VI" URL="../../../Trunk/Utility/UTILITY Array Get 1D String Column From 2D.vi"/>
			<Item Name="UTILITY Array to String Array.vi" Type="VI" URL="../../../Trunk/Utility/UTILITY Array to String Array.vi"/>
			<Item Name="UTILITY Common PID Adjuster.vi" Type="VI" URL="../../../Trunk/Utility/UTILITY Common PID Adjuster.vi"/>
			<Item Name="UTILITY Convert String to Time.vi" Type="VI" URL="../../../Trunk/Utility/UTILITY Convert String to Time.vi"/>
			<Item Name="UTILITY Convert String to TimeStamp.vi" Type="VI" URL="../../../Trunk/Utility/UTILITY Convert String to TimeStamp.vi"/>
			<Item Name="UTILITY Counter.vi" Type="VI" URL="../../../Trunk/Utility/UTILITY Counter.vi"/>
			<Item Name="UTILITY Create Default File.vi" Type="VI" URL="../../../Trunk/Utility/UTILITY Create Default File.vi"/>
			<Item Name="UTILITY Create Nested Directories.vi" Type="VI" URL="../../../Trunk/Utility/UTILITY Create Nested Directories.vi"/>
			<Item Name="UTILITY Date and Time.ctl" Type="VI" URL="../../../Trunk/Utility/Type Definitions/UTILITY Date and Time.ctl"/>
			<Item Name="UTILITY Date String Days.vi" Type="VI" URL="../../../Trunk/Utility/UTILITY Date String Days.vi"/>
			<Item Name="UTILITY Default File Create.ctl" Type="VI" URL="../../../Trunk/Utility/Type Definitions/UTILITY Default File Create.ctl"/>
			<Item Name="UTILITY Delay mS.vi" Type="VI" URL="../../../Trunk/Utility/UTILITY Delay mS.vi"/>
			<Item Name="UTILITY Delete Empty String Cells 2D.vi" Type="VI" URL="../../../Trunk/Utility/UTILITY Delete Empty String Cells 2D.vi"/>
			<Item Name="UTILITY Delete Empty String Cells.vi" Type="VI" URL="../../../Trunk/Utility/UTILITY Delete Empty String Cells.vi"/>
			<Item Name="UTILITY E-Time.vi" Type="VI" URL="../../../Trunk/Utility/UTILITY E-Time.vi"/>
			<Item Name="UTILITY Fuzzy Logic Scale.vi" Type="VI" URL="../../../Trunk/Utility/UTILITY Fuzzy Logic Scale.vi"/>
			<Item Name="UTILITY Get Excel Data From Worksheet.vi" Type="VI" URL="../../../Trunk/Utility/UTILITY Get Excel Data From Worksheet.vi"/>
			<Item Name="UTILITY IP and Computer Name.vi" Type="VI" URL="../../../Trunk/Utility/UTILITY IP and Computer Name.vi"/>
			<Item Name="UTILITY JKI Loop Speed Adjust.vi" Type="VI" URL="../../../Trunk/Utility/UTILITY JKI Loop Speed Adjust.vi"/>
			<Item Name="UTILITY JKI Loop Timer.vi" Type="VI" URL="../../../Trunk/Utility/UTILITY JKI Loop Timer.vi"/>
			<Item Name="UTILITY Local.vi" Type="VI" URL="../../../Trunk/Utility/UTILITY Local.vi"/>
			<Item Name="UTILITY PID Correction Loop Check.vi" Type="VI" URL="../../../Trunk/Utility/UTILITY PID Correction Loop Check.vi"/>
			<Item Name="UTILITY Power Analyzer.ctl" Type="VI" URL="../../../Trunk/Utility/Type Definitions/UTILITY Power Analyzer.ctl"/>
			<Item Name="UTILITY Power Inputs Control.ctl" Type="VI" URL="../../../Trunk/Utility/Type Definitions/UTILITY Power Inputs Control.ctl"/>
			<Item Name="UTILITY Save Data.vi" Type="VI" URL="../../../Trunk/Utility/UTILITY Save Data.vi"/>
			<Item Name="UTILITY Simple PID.vi" Type="VI" URL="../../../Trunk/Utility/UTILITY Simple PID.vi"/>
			<Item Name="UTILITY System Time.vi" Type="VI" URL="../../../Trunk/Utility/UTILITY System Time.vi"/>
			<Item Name="UTILITY TC Coefficients.ctl" Type="VI" URL="../../../Trunk/Utility/Type Definitions/UTILITY TC Coefficients.ctl"/>
			<Item Name="UTILITY This VIs Path.vi" Type="VI" URL="../../../Trunk/Utility/UTILITY This VIs Path.vi"/>
			<Item Name="UTILITY Timeout Calc.vi" Type="VI" URL="../../../Trunk/Utility/UTILITY Timeout Calc.vi"/>
			<Item Name="UTILITY Write Header.vi" Type="VI" URL="../../../Trunk/Utility/UTILITY Write Header.vi"/>
			<Item Name="UTILTIY Remove Blank Rows.vi" Type="VI" URL="../../../Trunk/Utility/UTILTIY Remove Blank Rows.vi"/>
		</Item>
		<Item Name="Main.vi" Type="VI" URL="../Main.vi"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="Add State(s) to Queue__jki_lib_state_machine.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/State Machine/_JKI_lib_State_Machine.llb/Add State(s) to Queue__jki_lib_state_machine.vi"/>
				<Item Name="Bit-array To Byte-array.vi" Type="VI" URL="/&lt;vilib&gt;/picture/pictutil.llb/Bit-array To Byte-array.vi"/>
				<Item Name="BuildErrorSource.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/fileVersionInfo.llb/BuildErrorSource.vi"/>
				<Item Name="BuildHelpPath.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/BuildHelpPath.vi"/>
				<Item Name="Built App File Layout.vi" Type="VI" URL="/&lt;vilib&gt;/AppBuilder/Built App File Layout.vi"/>
				<Item Name="Calc Long Word Padded Width.vi" Type="VI" URL="/&lt;vilib&gt;/picture/bmp.llb/Calc Long Word Padded Width.vi"/>
				<Item Name="Check Color Table Size.vi" Type="VI" URL="/&lt;vilib&gt;/picture/jpeg.llb/Check Color Table Size.vi"/>
				<Item Name="Check Data Size.vi" Type="VI" URL="/&lt;vilib&gt;/picture/jpeg.llb/Check Data Size.vi"/>
				<Item Name="Check File Permissions.vi" Type="VI" URL="/&lt;vilib&gt;/picture/jpeg.llb/Check File Permissions.vi"/>
				<Item Name="Check for Equality.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/WDTOps.llb/Check for Equality.vi"/>
				<Item Name="Check if File or Folder Exists.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Check if File or Folder Exists.vi"/>
				<Item Name="Check Path.vi" Type="VI" URL="/&lt;vilib&gt;/picture/jpeg.llb/Check Path.vi"/>
				<Item Name="Check Special Tags.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Check Special Tags.vi"/>
				<Item Name="Clear Errors.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Clear Errors.vi"/>
				<Item Name="Close File+.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Close File+.vi"/>
				<Item Name="Close Registry Key.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Close Registry Key.vi"/>
				<Item Name="Color to RGB.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/colorconv.llb/Color to RGB.vi"/>
				<Item Name="compatOverwrite.vi" Type="VI" URL="/&lt;vilib&gt;/_oldvers/_oldvers.llb/compatOverwrite.vi"/>
				<Item Name="compatReadText.vi" Type="VI" URL="/&lt;vilib&gt;/_oldvers/_oldvers.llb/compatReadText.vi"/>
				<Item Name="Convert property node font to graphics font.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Convert property node font to graphics font.vi"/>
				<Item Name="Create ActiveX Event Queue.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/ax-events.llb/Create ActiveX Event Queue.vi"/>
				<Item Name="Create Error Clust.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/ax-events.llb/Create Error Clust.vi"/>
				<Item Name="Create Mask By Alpha.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Create Mask By Alpha.vi"/>
				<Item Name="Destroy ActiveX Event Queue.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/ax-events.llb/Destroy ActiveX Event Queue.vi"/>
				<Item Name="Details Display Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Details Display Dialog.vi"/>
				<Item Name="DialogType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogType.ctl"/>
				<Item Name="DialogTypeEnum.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogTypeEnum.ctl"/>
				<Item Name="Directory of Top Level VI.vi" Type="VI" URL="/&lt;vilib&gt;/picture/jpeg.llb/Directory of Top Level VI.vi"/>
				<Item Name="DU64_U32SubtractWithBorrow.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/TSOps.llb/DU64_U32SubtractWithBorrow.vi"/>
				<Item Name="Dynamic To Waveform Array.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/transition.llb/Dynamic To Waveform Array.vi"/>
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
				<Item Name="Error Code Database.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Code Database.vi"/>
				<Item Name="ErrWarn.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/ErrWarn.ctl"/>
				<Item Name="Escape Characters for HTTP.vi" Type="VI" URL="/&lt;vilib&gt;/printing/PathToURL.llb/Escape Characters for HTTP.vi"/>
				<Item Name="EventData.ctl" Type="VI" URL="/&lt;vilib&gt;/Platform/ax-events.llb/EventData.ctl"/>
				<Item Name="eventvkey.ctl" Type="VI" URL="/&lt;vilib&gt;/event_ctls.llb/eventvkey.ctl"/>
				<Item Name="ex_CorrectErrorChain.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/ex_CorrectErrorChain.vi"/>
				<Item Name="ex_GetAllExpressAttribs.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/transition.llb/ex_GetAllExpressAttribs.vi"/>
				<Item Name="ex_Modify Signal Name.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/ex_Modify Signal Name.vi"/>
				<Item Name="ex_Modify Signals Names.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/ex_Modify Signals Names.vi"/>
				<Item Name="ex_SmoothingDesign.vi" Type="VI" URL="/&lt;vilib&gt;/express/express analysis/FilterBlock.llb/ex_SmoothingDesign.vi"/>
				<Item Name="ex_WaveformAttribs.ctl" Type="VI" URL="/&lt;vilib&gt;/express/express shared/transition.llb/ex_WaveformAttribs.ctl"/>
				<Item Name="Express Waveform Components.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/transition.llb/Express Waveform Components.vi"/>
				<Item Name="FileVersionInfo.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/fileVersionInfo.llb/FileVersionInfo.vi"/>
				<Item Name="FileVersionInformation.ctl" Type="VI" URL="/&lt;vilib&gt;/Platform/fileVersionInfo.llb/FileVersionInformation.ctl"/>
				<Item Name="Find First Error.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Find First Error.vi"/>
				<Item Name="Find Tag.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Find Tag.vi"/>
				<Item Name="FixedFileInfo_Struct.ctl" Type="VI" URL="/&lt;vilib&gt;/Platform/fileVersionInfo.llb/FixedFileInfo_Struct.ctl"/>
				<Item Name="Flip and Pad for Picture Control.vi" Type="VI" URL="/&lt;vilib&gt;/picture/bmp.llb/Flip and Pad for Picture Control.vi"/>
				<Item Name="Format Message String.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Format Message String.vi"/>
				<Item Name="FormatTime String.vi" Type="VI" URL="/&lt;vilib&gt;/express/express execution control/ElapsedTimeBlock.llb/FormatTime String.vi"/>
				<Item Name="General Error Handler Core CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler Core CORE.vi"/>
				<Item Name="General Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler.vi"/>
				<Item Name="Generate Temporary File Path.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Generate Temporary File Path.vi"/>
				<Item Name="Get File Extension.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Get File Extension.vi"/>
				<Item Name="Get LV Class Default Value.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/LVClass/Get LV Class Default Value.vi"/>
				<Item Name="Get String Text Bounds.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Get String Text Bounds.vi"/>
				<Item Name="Get Text Rect.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Get Text Rect.vi"/>
				<Item Name="GetFileVersionInfo.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/fileVersionInfo.llb/GetFileVersionInfo.vi"/>
				<Item Name="GetFileVersionInfoSize.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/fileVersionInfo.llb/GetFileVersionInfoSize.vi"/>
				<Item Name="GetHelpDir.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetHelpDir.vi"/>
				<Item Name="GetRTHostConnectedProp.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetRTHostConnectedProp.vi"/>
				<Item Name="Handle Open Word or Excel File.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/NIReport.llb/Toolkit/Handle Open Word or Excel File.vi"/>
				<Item Name="I128 Timestamp.ctl" Type="VI" URL="/&lt;vilib&gt;/Waveform/TSOps.llb/I128 Timestamp.ctl"/>
				<Item Name="imagedata.ctl" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/imagedata.ctl"/>
				<Item Name="Longest Line Length in Pixels.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Longest Line Length in Pixels.vi"/>
				<Item Name="LV70DateRecToTimeStamp.vi" Type="VI" URL="/&lt;vilib&gt;/_oldvers/_oldvers.llb/LV70DateRecToTimeStamp.vi"/>
				<Item Name="LVBoundsTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVBoundsTypeDef.ctl"/>
				<Item Name="LVComboBoxStrsAndValuesArrayTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVComboBoxStrsAndValuesArrayTypeDef.ctl"/>
				<Item Name="LVDateTimeRec.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVDateTimeRec.ctl"/>
				<Item Name="lvpidtkt.dll" Type="Document" URL="/&lt;vilib&gt;/addons/control/pid/lvpidtkt.dll"/>
				<Item Name="LVRectTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVRectTypeDef.ctl"/>
				<Item Name="MoveMemory.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/fileVersionInfo.llb/MoveMemory.vi"/>
				<Item Name="NI_AALBase.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/NI_AALBase.lvlib"/>
				<Item Name="NI_AALPro.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/NI_AALPro.lvlib"/>
				<Item Name="NI_Excel.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Utility/NIReport.llb/Excel/NI_Excel.lvclass"/>
				<Item Name="NI_FileType.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/lvfile.llb/NI_FileType.lvlib"/>
				<Item Name="NI_HTML.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Utility/NIReport.llb/HTML/NI_HTML.lvclass"/>
				<Item Name="NI_MABase.lvlib" Type="Library" URL="/&lt;vilib&gt;/measure/NI_MABase.lvlib"/>
				<Item Name="NI_MAPro.lvlib" Type="Library" URL="/&lt;vilib&gt;/measure/NI_MAPro.lvlib"/>
				<Item Name="NI_PackedLibraryUtility.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/LVLibp/NI_PackedLibraryUtility.lvlib"/>
				<Item Name="NI_PID__prctrl compat.lvlib" Type="Library" URL="/&lt;vilib&gt;/addons/control/pid/NI_PID__prctrl compat.lvlib"/>
				<Item Name="NI_PID_pid.lvlib" Type="Library" URL="/&lt;vilib&gt;/addons/control/pid/NI_PID_pid.lvlib"/>
				<Item Name="NI_PtbyPt.lvlib" Type="Library" URL="/&lt;vilib&gt;/ptbypt/NI_PtbyPt.lvlib"/>
				<Item Name="NI_report.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Utility/NIReport.llb/NI_report.lvclass"/>
				<Item Name="NI_ReportGenerationCore.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/NIReport.llb/NI_ReportGenerationCore.lvlib"/>
				<Item Name="NI_ReportGenerationToolkit.lvlib" Type="Library" URL="/&lt;vilib&gt;/addons/_office/NI_ReportGenerationToolkit.lvlib"/>
				<Item Name="NI_Standard Report.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Utility/NIReport.llb/Standard Report/NI_Standard Report.lvclass"/>
				<Item Name="Not Found Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Not Found Dialog.vi"/>
				<Item Name="OccFireType.ctl" Type="VI" URL="/&lt;vilib&gt;/Platform/ax-events.llb/OccFireType.ctl"/>
				<Item Name="Open File+.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Open File+.vi"/>
				<Item Name="Open Registry Key.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Open Registry Key.vi"/>
				<Item Name="Parse State Queue__jki_lib_state_machine.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/State Machine/_JKI_lib_State_Machine.llb/Parse State Queue__jki_lib_state_machine.vi"/>
				<Item Name="Path to URL.vi" Type="VI" URL="/&lt;vilib&gt;/printing/PathToURL.llb/Path to URL.vi"/>
				<Item Name="Read Delimited Spreadsheet (DBL).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read Delimited Spreadsheet (DBL).vi"/>
				<Item Name="Read Delimited Spreadsheet (I64).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read Delimited Spreadsheet (I64).vi"/>
				<Item Name="Read Delimited Spreadsheet (string).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read Delimited Spreadsheet (string).vi"/>
				<Item Name="Read Delimited Spreadsheet.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read Delimited Spreadsheet.vi"/>
				<Item Name="Read File+ (string).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read File+ (string).vi"/>
				<Item Name="Read From Spreadsheet File (DBL).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read From Spreadsheet File (DBL).vi"/>
				<Item Name="Read From Spreadsheet File (I64).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read From Spreadsheet File (I64).vi"/>
				<Item Name="Read From Spreadsheet File (string).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read From Spreadsheet File (string).vi"/>
				<Item Name="Read From Spreadsheet File.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read From Spreadsheet File.vi"/>
				<Item Name="Read JPEG File.vi" Type="VI" URL="/&lt;vilib&gt;/picture/jpeg.llb/Read JPEG File.vi"/>
				<Item Name="Read Lines From File (with error IO).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read Lines From File (with error IO).vi"/>
				<Item Name="Read Lines From File.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read Lines From File.vi"/>
				<Item Name="Read PNG File.vi" Type="VI" URL="/&lt;vilib&gt;/picture/png.llb/Read PNG File.vi"/>
				<Item Name="Read Registry Value DWORD.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Read Registry Value DWORD.vi"/>
				<Item Name="Read Registry Value Simple STR.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Read Registry Value Simple STR.vi"/>
				<Item Name="Read Registry Value Simple U32.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Read Registry Value Simple U32.vi"/>
				<Item Name="Read Registry Value Simple.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Read Registry Value Simple.vi"/>
				<Item Name="Read Registry Value STR.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Read Registry Value STR.vi"/>
				<Item Name="Read Registry Value.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Read Registry Value.vi"/>
				<Item Name="Registry Handle Master.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Registry Handle Master.vi"/>
				<Item Name="Registry refnum.ctl" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Registry refnum.ctl"/>
				<Item Name="Registry RtKey.ctl" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Registry RtKey.ctl"/>
				<Item Name="Registry SAM.ctl" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Registry SAM.ctl"/>
				<Item Name="Registry Simplify Data Type.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Registry Simplify Data Type.vi"/>
				<Item Name="Registry View.ctl" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Registry View.ctl"/>
				<Item Name="Registry WinErr-LVErr.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Registry WinErr-LVErr.vi"/>
				<Item Name="Search and Replace Pattern.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Search and Replace Pattern.vi"/>
				<Item Name="Set Bold Text.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set Bold Text.vi"/>
				<Item Name="Set Busy.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/cursorutil.llb/Set Busy.vi"/>
				<Item Name="Set Cursor (Cursor ID).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/cursorutil.llb/Set Cursor (Cursor ID).vi"/>
				<Item Name="Set Cursor (Icon Pict).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/cursorutil.llb/Set Cursor (Icon Pict).vi"/>
				<Item Name="Set Cursor.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/cursorutil.llb/Set Cursor.vi"/>
				<Item Name="Set String Value.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set String Value.vi"/>
				<Item Name="Simple Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Simple Error Handler.vi"/>
				<Item Name="Space Constant.vi" Type="VI" URL="/&lt;vilib&gt;/dlg_ctls.llb/Space Constant.vi"/>
				<Item Name="STR_ASCII-Unicode.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/STR_ASCII-Unicode.vi"/>
				<Item Name="subElapsedTime.vi" Type="VI" URL="/&lt;vilib&gt;/express/express execution control/ElapsedTimeBlock.llb/subElapsedTime.vi"/>
				<Item Name="subFilter.vi" Type="VI" URL="/&lt;vilib&gt;/express/express analysis/FilterBlock.llb/subFilter.vi"/>
				<Item Name="TagReturnType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/TagReturnType.ctl"/>
				<Item Name="Three Button Dialog CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog CORE.vi"/>
				<Item Name="Three Button Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog.vi"/>
				<Item Name="Timestamp Subtract.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/TSOps.llb/Timestamp Subtract.vi"/>
				<Item Name="Trim Whitespace.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Trim Whitespace.vi"/>
				<Item Name="Unset Busy.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/cursorutil.llb/Unset Busy.vi"/>
				<Item Name="VerQueryValue.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/fileVersionInfo.llb/VerQueryValue.vi"/>
				<Item Name="VISA Configure Serial Port" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Configure Serial Port"/>
				<Item Name="VISA Configure Serial Port (Instr).vi" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Configure Serial Port (Instr).vi"/>
				<Item Name="VISA Configure Serial Port (Serial Instr).vi" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Configure Serial Port (Serial Instr).vi"/>
				<Item Name="VISA Open Access Mode.ctl" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Open Access Mode.ctl"/>
				<Item Name="Wait On ActiveX Event.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/ax-events.llb/Wait On ActiveX Event.vi"/>
				<Item Name="Wait types.ctl" Type="VI" URL="/&lt;vilib&gt;/Platform/ax-events.llb/Wait types.ctl"/>
				<Item Name="whitespace.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/whitespace.ctl"/>
				<Item Name="Write BMP Data To Buffer.vi" Type="VI" URL="/&lt;vilib&gt;/picture/bmp.llb/Write BMP Data To Buffer.vi"/>
				<Item Name="Write BMP Data.vi" Type="VI" URL="/&lt;vilib&gt;/picture/bmp.llb/Write BMP Data.vi"/>
				<Item Name="Write BMP File.vi" Type="VI" URL="/&lt;vilib&gt;/picture/bmp.llb/Write BMP File.vi"/>
				<Item Name="Write Delimited Spreadsheet (DBL).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Write Delimited Spreadsheet (DBL).vi"/>
				<Item Name="Write Delimited Spreadsheet (I64).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Write Delimited Spreadsheet (I64).vi"/>
				<Item Name="Write Delimited Spreadsheet (string).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Write Delimited Spreadsheet (string).vi"/>
				<Item Name="Write Delimited Spreadsheet.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Write Delimited Spreadsheet.vi"/>
				<Item Name="Write JPEG File.vi" Type="VI" URL="/&lt;vilib&gt;/picture/jpeg.llb/Write JPEG File.vi"/>
				<Item Name="Write PNG File.vi" Type="VI" URL="/&lt;vilib&gt;/picture/png.llb/Write PNG File.vi"/>
				<Item Name="Write Spreadsheet String.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Write Spreadsheet String.vi"/>
				<Item Name="Write To Spreadsheet File (DBL).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Write To Spreadsheet File (DBL).vi"/>
				<Item Name="Write To Spreadsheet File (I64).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Write To Spreadsheet File (I64).vi"/>
				<Item Name="Write To Spreadsheet File (string).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Write To Spreadsheet File (string).vi"/>
				<Item Name="Write To Spreadsheet File.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Write To Spreadsheet File.vi"/>
			</Item>
			<Item Name="Advapi32.dll" Type="Document" URL="Advapi32.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="Agilent 34970 Array to Scan List.vi" Type="VI" URL="../../Agilent 34972/Examples/Agilent 34970 Array to Scan List.vi"/>
			<Item Name="Algorithms.ctl" Type="VI" URL="../../../Trunk/Washer HCC/Washer HCC NEWFI/Washer Soft Load Box/type defs/Algorithms.ctl"/>
			<Item Name="ATC_Data.ctl" Type="VI" URL="../../../Trunk/Washer HCC/Washer HCC NEWFI/Washer Soft Load Box/type defs/ATC_Data.ctl"/>
			<Item Name="Check Special Condtions.ctl" Type="VI" URL="../../../Trunk/Hybrid Water Heater/Support VIs/Draw Water Specific/Type Definitions/Check Special Condtions.ctl"/>
			<Item Name="Custom Pallet DBL.ctl" Type="VI" URL="../../../Trunk/Utility/Custom Pallet Controls/Custom Pallet DBL.ctl"/>
			<Item Name="Custom Pallet Forward.ctl" Type="VI" URL="../../../Trunk/Utility/Custom Pallet Controls/Custom Pallet Forward.ctl"/>
			<Item Name="Custom Pallet Number.ctl" Type="VI" URL="../../../Trunk/Utility/Custom Pallet Controls/Custom Pallet Number.ctl"/>
			<Item Name="Custom Pallet String.ctl" Type="VI" URL="../../../Trunk/Utility/Custom Pallet Controls/Custom Pallet String.ctl"/>
			<Item Name="DOE Appliance Common.ctl" Type="VI" URL="../../../Trunk/Washer DOE/Type Definitions/DOE Appliance Common.ctl"/>
			<Item Name="DOE Capacity Measurments.ctl" Type="VI" URL="../../../Trunk/Washer DOE/Type Definitions/DOE Capacity Measurments.ctl"/>
			<Item Name="DOE Dryer RMC Calculation Equation.vi" Type="VI" URL="../../../Trunk/Washer DOE/Support VIs/DOE Dryer RMC Calculation Equation.vi"/>
			<Item Name="DOE Dryer Standard.ctl" Type="VI" URL="../../../Trunk/Washer DOE/Type Definitions/DOE Dryer Standard.ctl"/>
			<Item Name="DOE Main Control.ctl" Type="VI" URL="../../../Trunk/Washer DOE/Type Definitions/DOE Main Control.ctl"/>
			<Item Name="DOE Test Fixture Hardware.ctl" Type="VI" URL="../../../Trunk/Washer DOE/Type Definitions/DOE Test Fixture Hardware.ctl"/>
			<Item Name="ERD_Always_Show.ctl" Type="VI" URL="../../../Trunk/Washer HCC/Washer HCC NEWFI/Washer Soft Load Box/type defs/ERD_Always_Show.ctl"/>
			<Item Name="Fault_Table_Info.ctl" Type="VI" URL="../../../Trunk/Washer HCC/Washer HCC NEWFI/Washer Soft Load Box/type defs/Fault_Table_Info.ctl"/>
			<Item Name="FMA1600A COM Ports.ctl" Type="VI" URL="../../Omega FMA-1600A Series Gas Flow Meter/Type Definitions/FMA1600A COM Ports.ctl"/>
			<Item Name="GEA2.ctl" Type="VI" URL="../../../Trunk/Washer DOE/Configuration/GEA2.ctl"/>
			<Item Name="GSE 350 Build Full Data String.vi" Type="VI" URL="../../GSE 350 Scale Display/SubVIs/GSE 350 Build Full Data String.vi"/>
			<Item Name="GSE 350 Close.vi" Type="VI" URL="../../GSE 350 Scale Display/SubVIs/GSE 350 Close.vi"/>
			<Item Name="GSE 350 Extract Component Data.vi" Type="VI" URL="../../GSE 350 Scale Display/SubVIs/GSE 350 Extract Component Data.vi"/>
			<Item Name="GSE 350 Extract Negative Value.vi" Type="VI" URL="../../GSE 350 Scale Display/SubVIs/GSE 350 Extract Negative Value.vi"/>
			<Item Name="GSE 350 Initialize.vi" Type="VI" URL="../../GSE 350 Scale Display/SubVIs/GSE 350 Initialize.vi"/>
			<Item Name="GSE 350 Main.vi" Type="VI" URL="../../GSE 350 Scale Display/GSE 350 Main.vi"/>
			<Item Name="GSE 350 Parse Data Stream.vi" Type="VI" URL="../../GSE 350 Scale Display/SubVIs/GSE 350 Parse Data Stream.vi"/>
			<Item Name="GSE 350 Read Data.vi" Type="VI" URL="../../GSE 350 Scale Display/SubVIs/GSE 350 Read Data.vi"/>
			<Item Name="GSE 350 Send Receive.vi" Type="VI" URL="../../GSE 350 Scale Display/SubVIs/GSE 350 Send Receive.vi"/>
			<Item Name="HCC Compile Cluster.vi" Type="VI" URL="../../../Trunk/Washer HCC/Washer HCC NEWFI/Support VIs/HCC Compile Cluster.vi"/>
			<Item Name="HCC Compile Write Array.vi" Type="VI" URL="../../../Trunk/Washer HCC/Washer HCC NEWFI/Support VIs/HCC Compile Write Array.vi"/>
			<Item Name="HCC Cycle Check Conditions.ctl" Type="VI" URL="../../../Trunk/Washer HCC/Washer HCC NEWFI/Type Definitions/HCC Cycle Check Conditions.ctl"/>
			<Item Name="HCC Cycle Count Checker.vi" Type="VI" URL="../../../Trunk/Washer HCC/Washer HCC NEWFI/Support VIs/HCC Cycle Count Checker.vi"/>
			<Item Name="HCC Cycle Count Filter.vi" Type="VI" URL="../../../Trunk/Washer HCC/Washer HCC NEWFI/Support VIs/HCC Cycle Count Filter.vi"/>
			<Item Name="HCC Cycle Count Timer Update.vi" Type="VI" URL="../../../Trunk/Washer HCC/Washer HCC NEWFI/Support VIs/HCC Cycle Count Timer Update.vi"/>
			<Item Name="HCC Filename Setup.ctl" Type="VI" URL="../../../Trunk/Washer HCC/Washer HCC NEWFI/Type Definitions/HCC Filename Setup.ctl"/>
			<Item Name="HCC Get Viper Diagnostics.vi" Type="VI" URL="../../../Trunk/Washer HCC/Washer HCC NEWFI/Support VIs/HCC Get Viper Diagnostics.vi"/>
			<Item Name="HCC Individual Cycle Conditions.vi" Type="VI" URL="../../../Trunk/Washer HCC/Washer HCC NEWFI/Support VIs/HCC Individual Cycle Conditions.vi"/>
			<Item Name="HCC Read Write Display.vi" Type="VI" URL="../../../Trunk/Washer HCC/Washer HCC NEWFI/Support VIs/HCC Read Write Display.vi"/>
			<Item Name="HCC Washer Types.ctl" Type="VI" URL="../../../Trunk/Washer HCC/Washer HCC NEWFI/Type Definitions/HCC Washer Types.ctl"/>
			<Item Name="HEWH Agilent Cluster.ctl" Type="VI" URL="../../../Trunk/Hybrid Water Heater/Type Definitions/HEWH Agilent Cluster.ctl"/>
			<Item Name="HEWH Assemble HEWH Diagnostics Data.vi" Type="VI" URL="../../../Trunk/Hybrid Water Heater/Support VIs/HEWH Assemble HEWH Diagnostics Data.vi"/>
			<Item Name="HEWH Calc and Calibration.ctl" Type="VI" URL="../../../Trunk/Hybrid Water Heater/Type Definitions/HEWH Calc and Calibration.ctl"/>
			<Item Name="HEWH Draw Flag ENUM.ctl" Type="VI" URL="../../../Trunk/Hybrid Water Heater/Type Definitions/HEWH Draw Flag ENUM.ctl"/>
			<Item Name="HEWH Draw Pattern Setup.ctl" Type="VI" URL="../../../Trunk/Hybrid Water Heater/Type Definitions/HEWH Draw Pattern Setup.ctl"/>
			<Item Name="HEWH Hyperterminal.vi" Type="VI" URL="../../../Trunk/Hybrid Water Heater/Support VIs/HEWH Hyperterminal.vi"/>
			<Item Name="HEWH Output Information.ctl" Type="VI" URL="../../../Trunk/Hybrid Water Heater/Type Definitions/HEWH Output Information.ctl"/>
			<Item Name="HEWH Power Data.ctl" Type="VI" URL="../../../Trunk/Hybrid Water Heater/Type Definitions/HEWH Power Data.ctl"/>
			<Item Name="HEWH Power Elements.ctl" Type="VI" URL="../../../Trunk/Hybrid Water Heater/Type Definitions/HEWH Power Elements.ctl"/>
			<Item Name="HEWH PreDraw.ctl" Type="VI" URL="../../../Trunk/Hybrid Water Heater/Type Definitions/HEWH PreDraw.ctl"/>
			<Item Name="HEWH Special Condition Check.ctl" Type="VI" URL="../../../Trunk/Hybrid Water Heater/Support VIs/Draw Water Specific/Type Definitions/HEWH Special Condition Check.ctl"/>
			<Item Name="HEWH Specific DAQ.ctl" Type="VI" URL="../../../Trunk/Hybrid Water Heater/Type Definitions/HEWH Specific DAQ.ctl"/>
			<Item Name="HEWH Start Conditions.ctl" Type="VI" URL="../../../Trunk/Hybrid Water Heater/Type Definitions/HEWH Start Conditions.ctl"/>
			<Item Name="HEWH Termination Condition Cluster.ctl" Type="VI" URL="../../../Trunk/Hybrid Water Heater/Type Definitions/HEWH Termination Condition Cluster.ctl"/>
			<Item Name="IND560 Configuration.ctl" Type="VI" URL="../../IND560 Scale Monitor/Type Definitions/IND560 Configuration.ctl"/>
			<Item Name="IND560 Serial Close.vi" Type="VI" URL="../../IND560 Scale Monitor/Support VIs/IND560 Serial Close.vi"/>
			<Item Name="IND560 Serial FGV Filter.vi" Type="VI" URL="../../IND560 Scale Monitor/Support VIs/IND560 Serial FGV Filter.vi"/>
			<Item Name="IND560 Serial Get Data.vi" Type="VI" URL="../../IND560 Scale Monitor/Support VIs/IND560 Serial Get Data.vi"/>
			<Item Name="IND560 Serial Initialize.vi" Type="VI" URL="../../IND560 Scale Monitor/Support VIs/IND560 Serial Initialize.vi"/>
			<Item Name="IND560 Serial Parse.vi" Type="VI" URL="../../IND560 Scale Monitor/Support VIs/IND560 Serial Parse.vi"/>
			<Item Name="IND560 Serial Read.vi" Type="VI" URL="../../IND560 Scale Monitor/Support VIs/IND560 Serial Read.vi"/>
			<Item Name="IND560 Serial Scale Commands.ctl" Type="VI" URL="../../IND560 Scale Monitor/Type Definitions/IND560 Serial Scale Commands.ctl"/>
			<Item Name="IND560 Serial Tester.vi" Type="VI" URL="../../IND560 Scale Monitor/IND560 Serial Tester.vi"/>
			<Item Name="INTELLIFAUCET Tested Flowrate Scenarios.ctl" Type="VI" URL="../../../Trunk/Hybrid Water Heater/Custom Instrument Control/Intellifaucet/Type Definitions/INTELLIFAUCET Tested Flowrate Scenarios.ctl"/>
			<Item Name="kernel32.dll" Type="Document" URL="kernel32.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="lvanlys.dll" Type="Document" URL="/&lt;resource&gt;/lvanlys.dll"/>
			<Item Name="mscorlib" Type="VI" URL="mscorlib">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="PRAT Test.ctl" Type="VI" URL="../../../Trunk/Hybrid Water Heater/Type Definitions/PRAT Test.ctl"/>
			<Item Name="RANGE Create File Path.vi" Type="VI" URL="../../../Trunk/Range/SubVIs/RANGE Create File Path.vi"/>
			<Item Name="Red_Micro_Parse.vi" Type="VI" URL="../../../Trunk/Washer HCC/Washer HCC NEWFI/Washer Soft Load Box/subVIs/Red_Micro_Parse.vi"/>
			<Item Name="Redundant.ctl" Type="VI" URL="../../../Trunk/Washer HCC/Washer HCC NEWFI/Washer Soft Load Box/type defs/Redundant.ctl"/>
			<Item Name="Setra Close.vi" Type="VI" URL="../../Setra SuperCount 75lb/SubVIs/Setra Close.vi"/>
			<Item Name="Setra Commands.ctl" Type="VI" URL="../../Setra SuperCount 75lb/Type Definitions/Setra Commands.ctl"/>
			<Item Name="Setra Data Parse.vi" Type="VI" URL="../../Setra SuperCount 75lb/SubVIs/Setra Data Parse.vi"/>
			<Item Name="Setra Initialize.vi" Type="VI" URL="../../Setra SuperCount 75lb/SubVIs/Setra Initialize.vi"/>
			<Item Name="Setra Main.vi" Type="VI" URL="../../Setra SuperCount 75lb/Setra Main.vi"/>
			<Item Name="Setra Read Write.vi" Type="VI" URL="../../Setra SuperCount 75lb/SubVIs/Setra Read Write.vi"/>
			<Item Name="Station ID Selector.ctl" Type="VI" URL="../../../Trunk/Hybrid Water Heater/Custom Instrument Control/MW100/Type Definitions/Station ID Selector.ctl"/>
			<Item Name="System" Type="VI" URL="System">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="Terminate Draw Conditions.ctl" Type="VI" URL="../../../Trunk/Hybrid Water Heater/Support VIs/Draw Water Specific/Type Definitions/Terminate Draw Conditions.ctl"/>
			<Item Name="UTILITY General Time Header.vi" Type="VI" URL="../../../Trunk/Utility/UTILITY General Time Header.vi"/>
			<Item Name="Version.ctl" Type="VI" URL="../../../Trunk/Washer HCC/Washer HCC NEWFI/Washer Soft Load Box/type defs/Version.ctl"/>
			<Item Name="version.dll" Type="Document" URL="version.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="ViperHawk Data.ctl" Type="VI" URL="../../../Trunk/Washer HCC/Washer HCC NEWFI/Type Definitions/ViperHawk/ViperHawk Data.ctl"/>
			<Item Name="ViperHawk Diagnostic Data.ctl" Type="VI" URL="../../../Trunk/Washer HCC/Washer HCC NEWFI/Type Definitions/ViperHawk/ViperHawk Diagnostic Data.ctl"/>
			<Item Name="ViperHawk Get Diagnostic Data.vi" Type="VI" URL="../../../Trunk/Washer HCC/Washer HCC NEWFI/Support VIs/ViperHawk/ViperHawk Get Diagnostic Data.vi"/>
			<Item Name="ViperHawk Search Control.ctl" Type="VI" URL="../../../Trunk/Washer HCC/Washer HCC NEWFI/Type Definitions/ViperHawk/ViperHawk Search Control.ctl"/>
		</Item>
		<Item Name="Build Specifications" Type="Build">
			<Item Name="Fisher &amp; Paykel Installer" Type="Installer">
				<Property Name="Destination[0].name" Type="Str">Fisher Paykel Motor Controller</Property>
				<Property Name="Destination[0].parent" Type="Str">{3912416A-D2E5-411B-AFEE-B63654D690C0}</Property>
				<Property Name="Destination[0].tag" Type="Str">{EFBC608B-7439-47FC-8FA4-85D00611F8AE}</Property>
				<Property Name="Destination[0].type" Type="Str">userFolder</Property>
				<Property Name="Destination[1].name" Type="Str">c:\FisherPaykel</Property>
				<Property Name="Destination[1].path" Type="Path">/c/FisherPaykel</Property>
				<Property Name="Destination[1].tag" Type="Str">{8C9237B3-88AC-4FF5-8581-160776E9D4E2}</Property>
				<Property Name="Destination[1].type" Type="Str">absFolder</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="DistPart[0].flavorID" Type="Str">_full_</Property>
				<Property Name="DistPart[0].productID" Type="Str">{060A0DD9-6B7B-4AC4-A621-A7A37D08E989}</Property>
				<Property Name="DistPart[0].productName" Type="Str">NI-488.2 Runtime 16.0</Property>
				<Property Name="DistPart[0].upgradeCode" Type="Str">{357F6618-C660-41A2-A185-5578CC876D1D}</Property>
				<Property Name="DistPart[1].flavorID" Type="Str">_deployment_</Property>
				<Property Name="DistPart[1].productID" Type="Str">{272BF3A9-7DBB-47EE-B2B8-CB893AA8166B}</Property>
				<Property Name="DistPart[1].productName" Type="Str">NI-VISA Runtime 16.0</Property>
				<Property Name="DistPart[1].upgradeCode" Type="Str">{8627993A-3F66-483C-A562-0D3BA3F267B1}</Property>
				<Property Name="DistPart[2].flavorID" Type="Str">DefaultFull</Property>
				<Property Name="DistPart[2].productID" Type="Str">{BBDD90FA-BCEE-4886-ABCF-2A04950ADC03}</Property>
				<Property Name="DistPart[2].productName" Type="Str">NI LabVIEW Runtime 2016 f2</Property>
				<Property Name="DistPart[2].SoftDep[0].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[2].SoftDep[0].productName" Type="Str">NI ActiveX Container</Property>
				<Property Name="DistPart[2].SoftDep[0].upgradeCode" Type="Str">{1038A887-23E1-4289-B0BD-0C4B83C6BA21}</Property>
				<Property Name="DistPart[2].SoftDep[1].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[2].SoftDep[1].productName" Type="Str">NI System Web Server 16.0</Property>
				<Property Name="DistPart[2].SoftDep[1].upgradeCode" Type="Str">{FCF64B73-B7D4-4971-8F11-24BAF7CC3E6C}</Property>
				<Property Name="DistPart[2].SoftDep[10].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[2].SoftDep[10].productName" Type="Str">NI Deployment Framework 2016</Property>
				<Property Name="DistPart[2].SoftDep[10].upgradeCode" Type="Str">{838942E4-B73C-492E-81A3-AA1E291FD0DC}</Property>
				<Property Name="DistPart[2].SoftDep[11].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[2].SoftDep[11].productName" Type="Str">NI LabVIEW Runtime 2016 Non-English Support.</Property>
				<Property Name="DistPart[2].SoftDep[11].upgradeCode" Type="Str">{72AEEB03-DF6A-4C90-B44E-22B1E74CF14F}</Property>
				<Property Name="DistPart[2].SoftDep[12].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[2].SoftDep[12].productName" Type="Str">NI LabVIEW Web Server 2016</Property>
				<Property Name="DistPart[2].SoftDep[12].upgradeCode" Type="Str">{6A61A967-C04E-47A1-8D08-DF27332A78AB}</Property>
				<Property Name="DistPart[2].SoftDep[13].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[2].SoftDep[13].productName" Type="Str">NI Error Reporting 2016</Property>
				<Property Name="DistPart[2].SoftDep[13].upgradeCode" Type="Str">{42E818C6-2B08-4DE7-BD91-B0FD704C119A}</Property>
				<Property Name="DistPart[2].SoftDep[2].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[2].SoftDep[2].productName" Type="Str">Math Kernel Libraries</Property>
				<Property Name="DistPart[2].SoftDep[2].upgradeCode" Type="Str">{F34FFCA8-C4CB-47CC-8B81-C4E95E227355}</Property>
				<Property Name="DistPart[2].SoftDep[3].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[2].SoftDep[3].productName" Type="Str">NI Logos 5.8</Property>
				<Property Name="DistPart[2].SoftDep[3].upgradeCode" Type="Str">{5E4A4CE3-4D06-11D4-8B22-006008C16337}</Property>
				<Property Name="DistPart[2].SoftDep[4].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[2].SoftDep[4].productName" Type="Str">NI TDM Streaming 16.0</Property>
				<Property Name="DistPart[2].SoftDep[4].upgradeCode" Type="Str">{4CD11BE6-6BB7-4082-8A27-C13771BC309B}</Property>
				<Property Name="DistPart[2].SoftDep[5].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[2].SoftDep[5].productName" Type="Str">NI LabVIEW Real-Time NBFifo 2016</Property>
				<Property Name="DistPart[2].SoftDep[5].upgradeCode" Type="Str">{718F68F2-14F0-4656-A29E-617F12A7343B}</Property>
				<Property Name="DistPart[2].SoftDep[6].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[2].SoftDep[6].productName" Type="Str">NI VC2008MSMs</Property>
				<Property Name="DistPart[2].SoftDep[6].upgradeCode" Type="Str">{FDA3F8BB-BAA9-45D7-8DC7-22E1F5C76315}</Property>
				<Property Name="DistPart[2].SoftDep[7].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[2].SoftDep[7].productName" Type="Str">NI VC2010MSMs</Property>
				<Property Name="DistPart[2].SoftDep[7].upgradeCode" Type="Str">{EFBA6F9E-F934-4BD7-AC51-60CCA480489C}</Property>
				<Property Name="DistPart[2].SoftDep[8].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[2].SoftDep[8].productName" Type="Str">NI VC2015 Runtime</Property>
				<Property Name="DistPart[2].SoftDep[8].upgradeCode" Type="Str">{D42E7BAE-6589-4570-B6A3-3E28889392E7}</Property>
				<Property Name="DistPart[2].SoftDep[9].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[2].SoftDep[9].productName" Type="Str">NI mDNS Responder 14.0</Property>
				<Property Name="DistPart[2].SoftDep[9].upgradeCode" Type="Str">{9607874B-4BB3-42CB-B450-A2F5EF60BA3B}</Property>
				<Property Name="DistPart[2].SoftDepCount" Type="Int">14</Property>
				<Property Name="DistPart[2].upgradeCode" Type="Str">{E7DBF016-365A-40B6-9526-B4D0B4830F51}</Property>
				<Property Name="DistPart[3].flavorID" Type="Str">_full_</Property>
				<Property Name="DistPart[3].productID" Type="Str">{ACA0F019-8166-47F0-A0A1-03ADD07227A1}</Property>
				<Property Name="DistPart[3].productName" Type="Str">NI Measurement &amp; Automation Explorer 16.0</Property>
				<Property Name="DistPart[3].SoftDep[0].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[3].SoftDep[0].productName" Type="Str">NI Error Reporting</Property>
				<Property Name="DistPart[3].SoftDep[0].upgradeCode" Type="Str">{42E818C6-2B08-4DE7-BD91-B0FD704C119A}</Property>
				<Property Name="DistPart[3].SoftDepCount" Type="Int">1</Property>
				<Property Name="DistPart[3].upgradeCode" Type="Str">{AE940F24-CC0E-4148-9A96-10FB04D9796D}</Property>
				<Property Name="DistPart[4].flavorID" Type="Str">_full_</Property>
				<Property Name="DistPart[4].productID" Type="Str">{29A4CC66-61FA-46D0-ADEE-8542A3012CE8}</Property>
				<Property Name="DistPart[4].productName" Type="Str">NI-488.2 Application Development Support 16.0</Property>
				<Property Name="DistPart[4].upgradeCode" Type="Str">{8A0AA5EF-B4FC-4D9B-9680-F02F0BDC3DE5}</Property>
				<Property Name="DistPart[5].flavorID" Type="Str">_full_</Property>
				<Property Name="DistPart[5].productID" Type="Str">{5533CF26-FBAC-4A5D-B63A-DCC84FFAF459}</Property>
				<Property Name="DistPart[5].productName" Type="Str">NI-DAQmx Application Development Support 16.0</Property>
				<Property Name="DistPart[5].upgradeCode" Type="Str">{DBA9D0BD-729E-494F-AFA2-0BA464B875C2}</Property>
				<Property Name="DistPart[6].flavorID" Type="Str">_deployment_</Property>
				<Property Name="DistPart[6].productID" Type="Str">{8FDCABE7-32BE-4BFA-AC20-5C6F1493AE83}</Property>
				<Property Name="DistPart[6].productName" Type="Str">NI-VISA Configuration Support 16.0</Property>
				<Property Name="DistPart[6].upgradeCode" Type="Str">{093EECCF-DE2B-4226-B7E5-B1FD4028A783}</Property>
				<Property Name="DistPart[7].flavorID" Type="Str">_full_</Property>
				<Property Name="DistPart[7].productID" Type="Str">{CC56BB1F-9FC4-4A37-863B-1A37CEA1E620}</Property>
				<Property Name="DistPart[7].productName" Type="Str">NI I/O Trace 16.0</Property>
				<Property Name="DistPart[7].upgradeCode" Type="Str">{B87BCB47-3C93-11D4-88E6-0008C7C25519}</Property>
				<Property Name="DistPart[8].flavorID" Type="Str">DefaultFull</Property>
				<Property Name="DistPart[8].productID" Type="Str">{84A14A37-121A-4BAF-B2D5-4A807910A22F}</Property>
				<Property Name="DistPart[8].productName" Type="Str">NI Distributed System Manager 2016</Property>
				<Property Name="DistPart[8].upgradeCode" Type="Str">{AE3BDC39-5362-47B3-866A-80CC36690478}</Property>
				<Property Name="DistPartCount" Type="Int">9</Property>
				<Property Name="INST_author" Type="Str">General Electric</Property>
				<Property Name="INST_autoIncrement" Type="Bool">true</Property>
				<Property Name="INST_buildLocation" Type="Path">../builds/Fisher Paykel Motor Controller/Fisher &amp; Paykel Installer</Property>
				<Property Name="INST_buildLocation.type" Type="Str">relativeToCommon</Property>
				<Property Name="INST_buildSpecName" Type="Str">Fisher &amp; Paykel Installer</Property>
				<Property Name="INST_defaultDir" Type="Str">{8C9237B3-88AC-4FF5-8581-160776E9D4E2}</Property>
				<Property Name="INST_productName" Type="Str">Fisher Paykel Motor Controller</Property>
				<Property Name="INST_productVersion" Type="Str">1.0.8</Property>
				<Property Name="InstSpecBitness" Type="Str">32-bit</Property>
				<Property Name="InstSpecVersion" Type="Str">16008010</Property>
				<Property Name="MSI_arpCompany" Type="Str">General Electric</Property>
				<Property Name="MSI_arpContact" Type="Str">Corey Sweatt</Property>
				<Property Name="MSI_arpPhone" Type="Str">502-452-4708</Property>
				<Property Name="MSI_bannerImageID" Type="Ref">/My Computer/Documentation/FisherPaykel Logo.bmp</Property>
				<Property Name="MSI_distID" Type="Str">{10458254-D9F9-4A42-8D00-D94FDFD10F76}</Property>
				<Property Name="MSI_osCheck" Type="Int">0</Property>
				<Property Name="MSI_upgradeCode" Type="Str">{E7A9EE6B-E045-4DFE-9C35-E901FA203619}</Property>
				<Property Name="MSI_welcomeImageID" Type="Ref">/My Computer/Documentation/FisherPaykel Logo.bmp</Property>
				<Property Name="MSI_windowMessage" Type="Str">Welcome to the Fisher &amp; Paykel Motor Controller</Property>
				<Property Name="MSI_windowTitle" Type="Str">Welcome to the Fisher &amp; Paykel Motor Controller</Property>
				<Property Name="RegDest[0].dirName" Type="Str">Software</Property>
				<Property Name="RegDest[0].dirTag" Type="Str">{DDFAFC8B-E728-4AC8-96DE-B920EBB97A86}</Property>
				<Property Name="RegDest[0].parentTag" Type="Str">2</Property>
				<Property Name="RegDestCount" Type="Int">1</Property>
				<Property Name="Source[0].dest" Type="Str">{8C9237B3-88AC-4FF5-8581-160776E9D4E2}</Property>
				<Property Name="Source[0].File[0].dest" Type="Str">{8C9237B3-88AC-4FF5-8581-160776E9D4E2}</Property>
				<Property Name="Source[0].File[0].name" Type="Str">Fisher&amp;Paykel Motor Controller.exe</Property>
				<Property Name="Source[0].File[0].Shortcut[0].destIndex" Type="Int">1</Property>
				<Property Name="Source[0].File[0].Shortcut[0].name" Type="Str">Fisher&amp;Paykel Motor Controller</Property>
				<Property Name="Source[0].File[0].Shortcut[0].subDir" Type="Str"></Property>
				<Property Name="Source[0].File[0].Shortcut[1].destIndex" Type="Int">2</Property>
				<Property Name="Source[0].File[0].Shortcut[1].name" Type="Str">Fisher&amp;Paykel Motor Controller</Property>
				<Property Name="Source[0].File[0].Shortcut[1].subDir" Type="Str"></Property>
				<Property Name="Source[0].File[0].ShortcutCount" Type="Int">2</Property>
				<Property Name="Source[0].File[0].tag" Type="Str">{85558336-8F99-4D24-ACEA-2D6DCDDEAD90}</Property>
				<Property Name="Source[0].FileCount" Type="Int">1</Property>
				<Property Name="Source[0].name" Type="Str">Fisher&amp;Paykel Motor Controller</Property>
				<Property Name="Source[0].tag" Type="Ref">/My Computer/Build Specifications/Fisher&amp;Paykel Motor Controller</Property>
				<Property Name="Source[0].type" Type="Str">EXE</Property>
				<Property Name="SourceCount" Type="Int">1</Property>
			</Item>
			<Item Name="Fisher&amp;Paykel Motor Controller" Type="EXE">
				<Property Name="App_copyErrors" Type="Bool">true</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{406A3938-128E-47B7-8861-355E56421818}</Property>
				<Property Name="App_INI_GUID" Type="Str">{5ACCA4D5-0327-4208-9052-DAF25CE13221}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{2D48B305-1BCD-482D-8722-74DBB3F56360}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">Fisher&amp;Paykel Motor Controller</Property>
				<Property Name="Bld_excludeInlineSubVIs" Type="Bool">true</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../builds/NI_AB_PROJECTNAME/Fisher&amp;Paykel Motor Controller</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToCommon</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{D3AA3E77-5309-42CB-AA5B-CAFDA92E68B7}</Property>
				<Property Name="Bld_version.build" Type="Int">36</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">Fisher&amp;Paykel Motor Controller.exe</Property>
				<Property Name="Destination[0].path" Type="Path">../builds/NI_AB_PROJECTNAME/Fisher&amp;Paykel Motor Controller/Fisher&amp;Paykel Motor Controller.exe</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../builds/NI_AB_PROJECTNAME/Fisher&amp;Paykel Motor Controller/data</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Exe_iconItemID" Type="Ref">/My Computer/Documentation/Stepper.ico</Property>
				<Property Name="Source[0].itemID" Type="Str">{AA808CFD-6750-4BAA-B740-260798520A42}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/Main.vi</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="Source[2].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[2].itemID" Type="Ref">/My Computer/Documentation/Serial Protocol Description.pdf</Property>
				<Property Name="Source[2].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[3].Container.applyInclusion" Type="Bool">true</Property>
				<Property Name="Source[3].Container.depDestIndex" Type="Int">0</Property>
				<Property Name="Source[3].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[3].itemID" Type="Ref">/My Computer/UTILITY/LabVIEW GEA2 Toolkit v1.0.0.0/Appliance.NET</Property>
				<Property Name="Source[3].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[3].type" Type="Str">Container</Property>
				<Property Name="SourceCount" Type="Int">4</Property>
				<Property Name="TgtF_companyName" Type="Str">General Electric</Property>
				<Property Name="TgtF_enableDebugging" Type="Bool">true</Property>
				<Property Name="TgtF_fileDescription" Type="Str">Fisher&amp;Paykel Motor Controller</Property>
				<Property Name="TgtF_internalName" Type="Str">Fisher&amp;Paykel Motor Controller</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2016 General Electric</Property>
				<Property Name="TgtF_productName" Type="Str">Fisher&amp;Paykel Motor Controller</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{85558336-8F99-4D24-ACEA-2D6DCDDEAD90}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">Fisher&amp;Paykel Motor Controller.exe</Property>
			</Item>
		</Item>
	</Item>
</Project>
