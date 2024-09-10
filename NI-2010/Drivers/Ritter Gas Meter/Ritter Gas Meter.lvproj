<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="23008000">
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
		<Item Name="Examples" Type="Folder" URL="../Examples">
			<Property Name="NI.DISK" Type="Bool">true</Property>
		</Item>
		<Item Name="SubVIs" Type="Folder" URL="../SubVIs">
			<Property Name="NI.DISK" Type="Bool">true</Property>
		</Item>
		<Item Name="Type Definitions" Type="Folder" URL="../Type Definitions">
			<Property Name="NI.DISK" Type="Bool">true</Property>
		</Item>
		<Item Name="Documentation" Type="Folder" URL="../Documentation">
			<Property Name="NI.DISK" Type="Bool">true</Property>
		</Item>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="NI_AALBase.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/NI_AALBase.lvlib"/>
				<Item Name="VISA Configure Serial Port" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Configure Serial Port"/>
				<Item Name="VISA Configure Serial Port (Instr).vi" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Configure Serial Port (Instr).vi"/>
				<Item Name="VISA Configure Serial Port (Serial Instr).vi" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Configure Serial Port (Serial Instr).vi"/>
				<Item Name="Modbus Master.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/Modbus Library/API/Master/Modbus Master.lvclass"/>
				<Item Name="Network Master.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/Modbus Library/Network Protocol/Network Master/Network Master.lvclass"/>
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
				<Item Name="Network Protocol.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/Modbus Library/Network Protocol/Network Protocol.lvclass"/>
				<Item Name="Master Function Definition.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/Modbus Library/Master Function Definition/Master Function Definition.lvclass"/>
				<Item Name="Device Data Model.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/Modbus Library/Data Model/Device Data Model.lvclass"/>
				<Item Name="Modbus Data Unit.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/Modbus Library/Modbus Data Unit/Modbus Data Unit.lvclass"/>
				<Item Name="Bits to Bytes.vi" Type="VI" URL="/&lt;vilib&gt;/NI/Modbus Library/Utility/Bits to Bytes.vi"/>
				<Item Name="U16s to Bytes.vi" Type="VI" URL="/&lt;vilib&gt;/NI/Modbus Library/Utility/U16s to Bytes.vi"/>
				<Item Name="Bytes to Bits.vi" Type="VI" URL="/&lt;vilib&gt;/NI/Modbus Library/Utility/Bytes to Bits.vi"/>
				<Item Name="Bytes to U16s.vi" Type="VI" URL="/&lt;vilib&gt;/NI/Modbus Library/Utility/Bytes to U16s.vi"/>
				<Item Name="Modbus API.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/Modbus Library/API/Modbus API.lvclass"/>
				<Item Name="Transmission Data Unit.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/Modbus Library/Transmission Data Unit/Transmission Data Unit.lvclass"/>
				<Item Name="Serial Data Unit.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/Modbus Library/Transmission Data Unit/Serial Interface/Serial Data Unit.lvclass"/>
				<Item Name="FileVersionInformation.ctl" Type="VI" URL="/&lt;vilib&gt;/Platform/fileVersionInfo.llb/FileVersionInformation.ctl"/>
				<Item Name="Simple Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Simple Error Handler.vi"/>
				<Item Name="DialogType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogType.ctl"/>
				<Item Name="General Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler.vi"/>
				<Item Name="DialogTypeEnum.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogTypeEnum.ctl"/>
				<Item Name="General Error Handler Core CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler Core CORE.vi"/>
				<Item Name="whitespace.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/whitespace.ctl"/>
				<Item Name="Trim Whitespace.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Trim Whitespace.vi"/>
				<Item Name="Trim Whitespace One-Sided.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Trim Whitespace One-Sided.vi"/>
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
				<Item Name="ErrWarn.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/ErrWarn.ctl"/>
				<Item Name="eventvkey.ctl" Type="VI" URL="/&lt;vilib&gt;/event_ctls.llb/eventvkey.ctl"/>
				<Item Name="Clear Errors.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Clear Errors.vi"/>
				<Item Name="Not Found Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Not Found Dialog.vi"/>
				<Item Name="Three Button Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog.vi"/>
				<Item Name="Three Button Dialog CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog CORE.vi"/>
				<Item Name="LVRectTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVRectTypeDef.ctl"/>
				<Item Name="Longest Line Length in Pixels.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Longest Line Length in Pixels.vi"/>
				<Item Name="Convert property node font to graphics font.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Convert property node font to graphics font.vi"/>
				<Item Name="Get Text Rect.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Get Text Rect.vi"/>
				<Item Name="Get String Text Bounds.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Get String Text Bounds.vi"/>
				<Item Name="LVBoundsTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVBoundsTypeDef.ctl"/>
				<Item Name="BuildHelpPath.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/BuildHelpPath.vi"/>
				<Item Name="GetHelpDir.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetHelpDir.vi"/>
				<Item Name="Space Constant.vi" Type="VI" URL="/&lt;vilib&gt;/dlg_ctls.llb/Space Constant.vi"/>
				<Item Name="Write To Spreadsheet File.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Write To Spreadsheet File.vi"/>
				<Item Name="Write To Spreadsheet File (DBL).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Write To Spreadsheet File (DBL).vi"/>
				<Item Name="Write Spreadsheet String.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Write Spreadsheet String.vi"/>
				<Item Name="Write To Spreadsheet File (I64).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Write To Spreadsheet File (I64).vi"/>
				<Item Name="Write To Spreadsheet File (string).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Write To Spreadsheet File (string).vi"/>
				<Item Name="Write Delimited Spreadsheet.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Write Delimited Spreadsheet.vi"/>
				<Item Name="Write Delimited Spreadsheet (DBL).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Write Delimited Spreadsheet (DBL).vi"/>
				<Item Name="Write Delimited Spreadsheet (I64).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Write Delimited Spreadsheet (I64).vi"/>
				<Item Name="Write Delimited Spreadsheet (string).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Write Delimited Spreadsheet (string).vi"/>
				<Item Name="Check if File or Folder Exists.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Check if File or Folder Exists.vi"/>
				<Item Name="NI_FileType.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/lvfile.llb/NI_FileType.lvlib"/>
				<Item Name="NI_PackedLibraryUtility.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/LVLibp/NI_PackedLibraryUtility.lvlib"/>
				<Item Name="Add State(s) to Queue__JKI_lib_State_Machine.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/State Machine/_JKI_lib_State_Machine.llb/Add State(s) to Queue__JKI_lib_State_Machine.vi"/>
				<Item Name="Parse State Queue__JKI_lib_State_Machine.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/State Machine/_JKI_lib_State_Machine.llb/Parse State Queue__JKI_lib_State_Machine.vi"/>
				<Item Name="Unset Busy.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/cursorutil.llb/Unset Busy.vi"/>
				<Item Name="Set Cursor.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/cursorutil.llb/Set Cursor.vi"/>
				<Item Name="Set Cursor (Cursor ID).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/cursorutil.llb/Set Cursor (Cursor ID).vi"/>
				<Item Name="Set Cursor (Icon Pict).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/cursorutil.llb/Set Cursor (Icon Pict).vi"/>
				<Item Name="Set Busy.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/cursorutil.llb/Set Busy.vi"/>
				<Item Name="Read Delimited Spreadsheet.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read Delimited Spreadsheet.vi"/>
				<Item Name="Read Delimited Spreadsheet (DBL).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read Delimited Spreadsheet (DBL).vi"/>
				<Item Name="Read Lines From File (with error IO).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read Lines From File (with error IO).vi"/>
				<Item Name="Open File+.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Open File+.vi"/>
				<Item Name="Read File+ (string).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read File+ (string).vi"/>
				<Item Name="compatReadText.vi" Type="VI" URL="/&lt;vilib&gt;/_oldvers/_oldvers.llb/compatReadText.vi"/>
				<Item Name="Close File+.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Close File+.vi"/>
				<Item Name="Find First Error.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Find First Error.vi"/>
				<Item Name="Read Delimited Spreadsheet (I64).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read Delimited Spreadsheet (I64).vi"/>
				<Item Name="Read Delimited Spreadsheet (string).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read Delimited Spreadsheet (string).vi"/>
				<Item Name="LVDateTimeRec.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVDateTimeRec.ctl"/>
				<Item Name="NI_report.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Utility/NIReport.llb/NI_report.lvclass"/>
				<Item Name="NI_ReportGenerationCore.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/NIReport.llb/NI_ReportGenerationCore.lvlib"/>
				<Item Name="NI_HTML.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Utility/NIReport.llb/HTML/NI_HTML.lvclass"/>
				<Item Name="Write JPEG File.vi" Type="VI" URL="/&lt;vilib&gt;/picture/jpeg.llb/Write JPEG File.vi"/>
				<Item Name="imagedata.ctl" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/imagedata.ctl"/>
				<Item Name="Check Data Size.vi" Type="VI" URL="/&lt;vilib&gt;/picture/jpeg.llb/Check Data Size.vi"/>
				<Item Name="Check Color Table Size.vi" Type="VI" URL="/&lt;vilib&gt;/picture/jpeg.llb/Check Color Table Size.vi"/>
				<Item Name="Check Path.vi" Type="VI" URL="/&lt;vilib&gt;/picture/jpeg.llb/Check Path.vi"/>
				<Item Name="Directory of Top Level VI.vi" Type="VI" URL="/&lt;vilib&gt;/picture/jpeg.llb/Directory of Top Level VI.vi"/>
				<Item Name="Check File Permissions.vi" Type="VI" URL="/&lt;vilib&gt;/picture/jpeg.llb/Check File Permissions.vi"/>
				<Item Name="Write PNG File.vi" Type="VI" URL="/&lt;vilib&gt;/picture/png.llb/Write PNG File.vi"/>
				<Item Name="Registry RtKey.ctl" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Registry RtKey.ctl"/>
				<Item Name="Generate Temporary File Path.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Generate Temporary File Path.vi"/>
				<Item Name="Path to URL.vi" Type="VI" URL="/&lt;vilib&gt;/printing/PathToURL.llb/Path to URL.vi"/>
				<Item Name="Path to URL inner.vi" Type="VI" URL="/&lt;vilib&gt;/printing/PathToURL.llb/Path to URL inner.vi"/>
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
				<Item Name="Built App File Layout.vi" Type="VI" URL="/&lt;vilib&gt;/AppBuilder/Built App File Layout.vi"/>
				<Item Name="Get LV Class Default Value.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/LVClass/Get LV Class Default Value.vi"/>
				<Item Name="NI_Standard Report.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Utility/NIReport.llb/Standard Report/NI_Standard Report.lvclass"/>
				<Item Name="Read PNG File.vi" Type="VI" URL="/&lt;vilib&gt;/picture/png.llb/Read PNG File.vi"/>
				<Item Name="Create Mask By Alpha.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Create Mask By Alpha.vi"/>
				<Item Name="Bit-array To Byte-array.vi" Type="VI" URL="/&lt;vilib&gt;/picture/pictutil.llb/Bit-array To Byte-array.vi"/>
				<Item Name="Write BMP File.vi" Type="VI" URL="/&lt;vilib&gt;/picture/bmp.llb/Write BMP File.vi"/>
				<Item Name="Write BMP Data.vi" Type="VI" URL="/&lt;vilib&gt;/picture/bmp.llb/Write BMP Data.vi"/>
				<Item Name="Write BMP Data To Buffer.vi" Type="VI" URL="/&lt;vilib&gt;/picture/bmp.llb/Write BMP Data To Buffer.vi"/>
				<Item Name="Calc Long Word Padded Width.vi" Type="VI" URL="/&lt;vilib&gt;/picture/bmp.llb/Calc Long Word Padded Width.vi"/>
				<Item Name="Flip and Pad for Picture Control.vi" Type="VI" URL="/&lt;vilib&gt;/picture/bmp.llb/Flip and Pad for Picture Control.vi"/>
				<Item Name="NI_Excel.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Utility/NIReport.llb/Excel/NI_Excel.lvclass"/>
				<Item Name="NI_ReportGenerationToolkit.lvlib" Type="Library" URL="/&lt;vilib&gt;/addons/_office/NI_ReportGenerationToolkit.lvlib"/>
				<Item Name="Get File Extension.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Get File Extension.vi"/>
				<Item Name="Read JPEG File.vi" Type="VI" URL="/&lt;vilib&gt;/picture/jpeg.llb/Read JPEG File.vi"/>
				<Item Name="Handle Open Word or Excel File.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/NIReport.llb/Toolkit/Handle Open Word or Excel File.vi"/>
				<Item Name="Read From Spreadsheet File.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read From Spreadsheet File.vi"/>
				<Item Name="Read From Spreadsheet File (DBL).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read From Spreadsheet File (DBL).vi"/>
				<Item Name="Read Lines From File.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read Lines From File.vi"/>
				<Item Name="Read From Spreadsheet File (I64).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read From Spreadsheet File (I64).vi"/>
				<Item Name="Read From Spreadsheet File (string).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read From Spreadsheet File (string).vi"/>
				<Item Name="VISA Open Access Mode.ctl" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Open Access Mode.ctl"/>
				<Item Name="Dynamic To Waveform Array.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/transition.llb/Dynamic To Waveform Array.vi"/>
				<Item Name="subFilter.vi" Type="VI" URL="/&lt;vilib&gt;/express/express analysis/FilterBlock.llb/subFilter.vi"/>
				<Item Name="NI_MAPro.lvlib" Type="Library" URL="/&lt;vilib&gt;/measure/NI_MAPro.lvlib"/>
				<Item Name="NI_MABase.lvlib" Type="Library" URL="/&lt;vilib&gt;/measure/NI_MABase.lvlib"/>
				<Item Name="Timestamp Subtract.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/TSOps.llb/Timestamp Subtract.vi"/>
				<Item Name="I128 Timestamp.ctl" Type="VI" URL="/&lt;vilib&gt;/Waveform/TSOps.llb/I128 Timestamp.ctl"/>
				<Item Name="DU64_U32SubtractWithBorrow.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/TSOps.llb/DU64_U32SubtractWithBorrow.vi"/>
				<Item Name="Check for Equality.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/WDTOps.llb/Check for Equality.vi"/>
				<Item Name="NI_AALPro.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/NI_AALPro.lvlib"/>
				<Item Name="ex_SmoothingDesign.vi" Type="VI" URL="/&lt;vilib&gt;/express/express analysis/FilterBlock.llb/ex_SmoothingDesign.vi"/>
				<Item Name="Express Waveform Components.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/transition.llb/Express Waveform Components.vi"/>
				<Item Name="ex_WaveformAttribs.ctl" Type="VI" URL="/&lt;vilib&gt;/express/express shared/transition.llb/ex_WaveformAttribs.ctl"/>
				<Item Name="ex_GetAllExpressAttribs.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/transition.llb/ex_GetAllExpressAttribs.vi"/>
				<Item Name="ex_CorrectErrorChain.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/ex_CorrectErrorChain.vi"/>
				<Item Name="ex_Modify Signals Names.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/ex_Modify Signals Names.vi"/>
				<Item Name="ex_Modify Signal Name.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/ex_Modify Signal Name.vi"/>
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
			<Item Name="lvanlys.dll" Type="Document" URL="/&lt;resource&gt;/lvanlys.dll"/>
			<Item Name="DOE Test Fixture Hardware.ctl" Type="VI" URL="../../../Trunk/Washer DOE/Type Definitions/DOE Test Fixture Hardware.ctl"/>
			<Item Name="UTILITY Power Inputs Control.ctl" Type="VI" URL="../../../Trunk/Utility/Type Definitions/UTILITY Power Inputs Control.ctl"/>
			<Item Name="IND560 Configuration.ctl" Type="VI" URL="../../IND560 Scale Monitor/Type Definitions/IND560 Configuration.ctl"/>
			<Item Name="HEWH Agilent Cluster.ctl" Type="VI" URL="../../../Trunk/Hybrid Water Heater/Type Definitions/HEWH Agilent Cluster.ctl"/>
			<Item Name="UTILITY TC Coefficients.ctl" Type="VI" URL="../../../Trunk/Utility/Type Definitions/UTILITY TC Coefficients.ctl"/>
			<Item Name="FMA1600A COM Ports.ctl" Type="VI" URL="../../Omega FMA-1600A Series Gas Flow Meter/Type Definitions/FMA1600A COM Ports.ctl"/>
			<Item Name="Data Frame.ctl" Type="VI" URL="../../Alicat Gas Meter Driver/Sub-VIs/Data Frame.ctl"/>
			<Item Name="FMA1600A Units String.ctl" Type="VI" URL="../../Omega FMA-1600A Series Gas Flow Meter/Type Definitions/FMA1600A Units String.ctl"/>
			<Item Name="Units of Measure.ctl" Type="VI" URL="../../Alicat Gas Meter Driver/Sub-VIs/Units of Measure.ctl"/>
			<Item Name="Inficon IP Address.ctl" Type="VI" URL="../../Inficon Fusion Micro GC/Type Definitions/Inficon IP Address.ctl"/>
			<Item Name="HEWH Output Information.ctl" Type="VI" URL="../../../Trunk/Hybrid Water Heater/Type Definitions/HEWH Output Information.ctl"/>
			<Item Name="HEWH Draw Pattern Setup.ctl" Type="VI" URL="../../../Trunk/Hybrid Water Heater/Type Definitions/HEWH Draw Pattern Setup.ctl"/>
			<Item Name="PRAT Test.ctl" Type="VI" URL="../../../Trunk/Hybrid Water Heater/Type Definitions/PRAT Test.ctl"/>
			<Item Name="File Setup.lvlib" Type="Library" URL="../../../Trunk/Utility/Save File/File Setup.lvlib"/>
			<Item Name="DOE Appliance Common.ctl" Type="VI" URL="../../../Trunk/Washer DOE/Type Definitions/DOE Appliance Common.ctl"/>
			<Item Name="Custom Pallet String.ctl" Type="VI" URL="../../../Trunk/Utility/Custom Pallet Controls/Custom Pallet String.ctl"/>
			<Item Name="DPT IMC Data.ctl" Type="VI" URL="../../../Trunk/Utility/Save File/File Setup (Public)/Type Definition/DPT IMC Data.ctl"/>
			<Item Name="DOE Dryer Standard.ctl" Type="VI" URL="../../../Trunk/Washer DOE/Type Definitions/DOE Dryer Standard.ctl"/>
			<Item Name="UTILITY Create Nested Directories.vi" Type="VI" URL="../../../Trunk/Utility/UTILITY Create Nested Directories.vi"/>
			<Item Name="Save File.lvlib" Type="Library" URL="../../../Trunk/Utility/Save File/Save File.lvlib"/>
			<Item Name="UTILITY Save Data.vi" Type="VI" URL="../../../Trunk/Utility/UTILITY Save Data.vi"/>
			<Item Name="UTILITY Write Header.vi" Type="VI" URL="../../../Trunk/Utility/UTILITY Write Header.vi"/>
			<Item Name="Save File Appliance Display.ctl" Type="VI" URL="../../../Trunk/Utility/Save File/Public/Type Definitions/Save File Appliance Display.ctl"/>
			<Item Name="Save File Type.ctl" Type="VI" URL="../../../Trunk/Utility/Save File/Private/Type Definitions/Save File Type.ctl"/>
			<Item Name="Calibration.vi" Type="VI" URL="../../../Trunk/Utility/Calibration/Main/Calibration.vi"/>
			<Item Name="Calibration.ctl" Type="VI" URL="../../../Trunk/Utility/Calibration/Type Definitions/Calibration.ctl"/>
			<Item Name="Calibration Time.ctl" Type="VI" URL="../../../Trunk/Utility/Calibration/Type Definitions/Calibration Time.ctl"/>
			<Item Name="Calibration SN.ctl" Type="VI" URL="../../../Trunk/Utility/Calibration/Type Definitions/Calibration SN.ctl"/>
			<Item Name="Calibration Equipment.vi" Type="VI" URL="../../../Trunk/Utility/Calibration/Main/Calibration Equipment.vi"/>
			<Item Name="Calibration Read Dates.vi" Type="VI" URL="../../../Trunk/Utility/Calibration/Main/Calibration Read Dates.vi"/>
			<Item Name="Calibration Convert String to Dates.vi" Type="VI" URL="../../../Trunk/Utility/Calibration/Support VIs/Calibration Convert String to Dates.vi"/>
			<Item Name="UTILITY Convert String to TimeStamp.vi" Type="VI" URL="../../../Trunk/Utility/UTILITY Convert String to TimeStamp.vi"/>
			<Item Name="UTILITY Date and Time.ctl" Type="VI" URL="../../../Trunk/Utility/Type Definitions/UTILITY Date and Time.ctl"/>
			<Item Name="LV70DateRecToTimeStamp.vi" Type="VI" URL="../../../Trunk/Utility/_oldvers.llb/LV70DateRecToTimeStamp.vi"/>
			<Item Name="Calibration Convert String to String.vi" Type="VI" URL="../../../Trunk/Utility/Calibration/Support VIs/Calibration Convert String to String.vi"/>
			<Item Name="UTILTIY Remove Blank Rows.vi" Type="VI" URL="../../../Trunk/Utility/UTILTIY Remove Blank Rows.vi"/>
			<Item Name="UTILITY Date String Days.vi" Type="VI" URL="../../../Trunk/Utility/UTILITY Date String Days.vi"/>
			<Item Name="UTILITY Array Get 1D String Column From 2D.vi" Type="VI" URL="../../../Trunk/Utility/UTILITY Array Get 1D String Column From 2D.vi"/>
			<Item Name="UTILITY Delete Empty String Cells 2D.vi" Type="VI" URL="../../../Trunk/Utility/UTILITY Delete Empty String Cells 2D.vi"/>
			<Item Name="UTILITY Delete Empty String Cells.vi" Type="VI" URL="../../../Trunk/Utility/UTILITY Delete Empty String Cells.vi"/>
			<Item Name="UTILITY 1D String to 1D DBL.vi" Type="VI" URL="../../../Trunk/Utility/UTILITY 1D String to 1D DBL.vi"/>
			<Item Name="Agilent 34970 Array to Scan List.vi" Type="VI" URL="../../Agilent 34972/Examples/Agilent 34970 Array to Scan List.vi"/>
			<Item Name="Custom Pallet Forward.ctl" Type="VI" URL="../../../Trunk/Utility/Custom Pallet Controls/Custom Pallet Forward.ctl"/>
			<Item Name="UTILITY Get Excel Data From Worksheet.vi" Type="VI" URL="../../../Trunk/Utility/UTILITY Get Excel Data From Worksheet.vi"/>
			<Item Name="Advapi32.dll" Type="Document" URL="Advapi32.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="kernel32.dll" Type="Document" URL="kernel32.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="UTILITY IP and Computer Name.vi" Type="VI" URL="../../../Trunk/Utility/UTILITY IP and Computer Name.vi"/>
			<Item Name="Custom Pallet DBL.ctl" Type="VI" URL="../../../Trunk/Utility/Custom Pallet Controls/Custom Pallet DBL.ctl"/>
			<Item Name="Setra Main.vi" Type="VI" URL="../../Setra SuperCount 75lb/Setra Main.vi"/>
			<Item Name="Setra Commands.ctl" Type="VI" URL="../../Setra SuperCount 75lb/Type Definitions/Setra Commands.ctl"/>
			<Item Name="Setra Initialize.vi" Type="VI" URL="../../Setra SuperCount 75lb/SubVIs/Setra Initialize.vi"/>
			<Item Name="Setra Read Write.vi" Type="VI" URL="../../Setra SuperCount 75lb/SubVIs/Setra Read Write.vi"/>
			<Item Name="Setra Data Parse.vi" Type="VI" URL="../../Setra SuperCount 75lb/SubVIs/Setra Data Parse.vi"/>
			<Item Name="Setra Close.vi" Type="VI" URL="../../Setra SuperCount 75lb/SubVIs/Setra Close.vi"/>
			<Item Name="DOE Dryer RMC Calculation Equation.vi" Type="VI" URL="../../../Trunk/Washer DOE/Support VIs/DOE Dryer RMC Calculation Equation.vi"/>
			<Item Name="UTILITY Local.vi" Type="VI" URL="../../../Trunk/Utility/UTILITY Local.vi"/>
			<Item Name="Save File Menu.rtm" Type="Document" URL="../../../Trunk/Utility/Save File/File Setup (Private)/Save File Menu.rtm"/>
			<Item Name="UTILITY Create Default File.vi" Type="VI" URL="../../../Trunk/Utility/UTILITY Create Default File.vi"/>
			<Item Name="DOE Main Control.ctl" Type="VI" URL="../../../Trunk/Washer DOE/Type Definitions/DOE Main Control.ctl"/>
			<Item Name="GEA2.ctl" Type="VI" URL="../../../Trunk/Washer DOE/Configuration/GEA2.ctl"/>
			<Item Name="DOE Capacity Measurments.ctl" Type="VI" URL="../../../Trunk/Washer DOE/Type Definitions/DOE Capacity Measurments.ctl"/>
			<Item Name="IND560 Serial Tester.vi" Type="VI" URL="../../IND560 Scale Monitor/IND560 Serial Tester.vi"/>
			<Item Name="IND560 Serial Initialize.vi" Type="VI" URL="../../IND560 Scale Monitor/Support VIs/IND560 Serial Initialize.vi"/>
			<Item Name="IND560 Serial Get Data.vi" Type="VI" URL="../../IND560 Scale Monitor/Support VIs/IND560 Serial Get Data.vi"/>
			<Item Name="IND560 Serial Scale Commands.ctl" Type="VI" URL="../../IND560 Scale Monitor/Type Definitions/IND560 Serial Scale Commands.ctl"/>
			<Item Name="IND560 Serial Read.vi" Type="VI" URL="../../IND560 Scale Monitor/Support VIs/IND560 Serial Read.vi"/>
			<Item Name="IND560 Serial FGV Filter.vi" Type="VI" URL="../../IND560 Scale Monitor/Support VIs/IND560 Serial FGV Filter.vi"/>
			<Item Name="IND560 Serial Parse.vi" Type="VI" URL="../../IND560 Scale Monitor/Support VIs/IND560 Serial Parse.vi"/>
			<Item Name="IND560 Serial Close.vi" Type="VI" URL="../../IND560 Scale Monitor/Support VIs/IND560 Serial Close.vi"/>
			<Item Name="GSE 350 Main.vi" Type="VI" URL="../../GSE 350 Scale Display/GSE 350 Main.vi"/>
			<Item Name="GSE 350 Initialize.vi" Type="VI" URL="../../GSE 350 Scale Display/SubVIs/GSE 350 Initialize.vi"/>
			<Item Name="GSE 350 Send Receive.vi" Type="VI" URL="../../GSE 350 Scale Display/SubVIs/GSE 350 Send Receive.vi"/>
			<Item Name="GSE 350 Read Data.vi" Type="VI" URL="../../GSE 350 Scale Display/SubVIs/GSE 350 Read Data.vi"/>
			<Item Name="GSE 350 Build Full Data String.vi" Type="VI" URL="../../GSE 350 Scale Display/SubVIs/GSE 350 Build Full Data String.vi"/>
			<Item Name="GSE 350 Extract Negative Value.vi" Type="VI" URL="../../GSE 350 Scale Display/SubVIs/GSE 350 Extract Negative Value.vi"/>
			<Item Name="GSE 350 Parse Data Stream.vi" Type="VI" URL="../../GSE 350 Scale Display/SubVIs/GSE 350 Parse Data Stream.vi"/>
			<Item Name="GSE 350 Extract Component Data.vi" Type="VI" URL="../../GSE 350 Scale Display/SubVIs/GSE 350 Extract Component Data.vi"/>
			<Item Name="GSE 350 Close.vi" Type="VI" URL="../../GSE 350 Scale Display/SubVIs/GSE 350 Close.vi"/>
			<Item Name="UTILITY This VIs Path.vi" Type="VI" URL="../../../Trunk/Utility/UTILITY This VIs Path.vi"/>
			<Item Name="version.dll" Type="Document" URL="version.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="Terminate Draw Conditions.ctl" Type="VI" URL="../../../Trunk/Hybrid Water Heater/Support VIs/Draw Water Specific/Type Definitions/Terminate Draw Conditions.ctl"/>
			<Item Name="HEWH Start Conditions.ctl" Type="VI" URL="../../../Trunk/Hybrid Water Heater/Type Definitions/HEWH Start Conditions.ctl"/>
			<Item Name="Check Special Condtions.ctl" Type="VI" URL="../../../Trunk/Hybrid Water Heater/Support VIs/Draw Water Specific/Type Definitions/Check Special Condtions.ctl"/>
			<Item Name="HEWH Special Condition Check.ctl" Type="VI" URL="../../../Trunk/Hybrid Water Heater/Support VIs/Draw Water Specific/Type Definitions/HEWH Special Condition Check.ctl"/>
			<Item Name="HEWH Draw Flag ENUM.ctl" Type="VI" URL="../../../Trunk/Hybrid Water Heater/Type Definitions/HEWH Draw Flag ENUM.ctl"/>
			<Item Name="HEWH Specific DAQ.ctl" Type="VI" URL="../../../Trunk/Hybrid Water Heater/Type Definitions/HEWH Specific DAQ.ctl"/>
			<Item Name="HEWH Power Data.ctl" Type="VI" URL="../../../Trunk/Hybrid Water Heater/Type Definitions/HEWH Power Data.ctl"/>
			<Item Name="HEWH Power Elements.ctl" Type="VI" URL="../../../Trunk/Hybrid Water Heater/Type Definitions/HEWH Power Elements.ctl"/>
			<Item Name="UTILITY Power Analyzer.ctl" Type="VI" URL="../../../Trunk/Utility/Type Definitions/UTILITY Power Analyzer.ctl"/>
			<Item Name="HEWH Calc and Calibration.ctl" Type="VI" URL="../../../Trunk/Hybrid Water Heater/Type Definitions/HEWH Calc and Calibration.ctl"/>
			<Item Name="Station ID Selector.ctl" Type="VI" URL="../../../Trunk/Hybrid Water Heater/Custom Instrument Control/MW100/Type Definitions/Station ID Selector.ctl"/>
			<Item Name="RANGE ANSI Rate.ctl" Type="VI" URL="../../../Trunk/Range/Type Definitions/RANGE ANSI Rate.ctl"/>
			<Item Name="HEWH Module 4 Relay Status.ctl" Type="VI" URL="../../../Trunk/Hybrid Water Heater/Custom Instrument Control/MW100/Type Definitions/HEWH Module 4 Relay Status.ctl"/>
			<Item Name="Inficon Data.ctl" Type="VI" URL="../../Inficon Fusion Micro GC/Type Definitions/Inficon Data.ctl"/>
			<Item Name="Data Cluster.ctl" Type="VI" URL="../../Alicat Gas Meter Driver/Sub-VIs/Data Cluster.ctl"/>
			<Item Name="Gas Populate Ritter Data.vi" Type="VI" URL="../../../Trunk/Hybrid Water Heater/Support VIs/Gas Populate Ritter Data.vi"/>
			<Item Name="Gas Ritter Temperature and Pressure.vi" Type="VI" URL="../../../Trunk/Hybrid Water Heater/Support VIs/Gas Ritter Temperature and Pressure.vi"/>
			<Item Name="Heise Barometric Pressure 901A Send Receive.vi" Type="VI" URL="../../Heise Barometric Pressure 901A/SubVIs/Heise Barometric Pressure 901A Send Receive.vi"/>
			<Item Name="Heise Barometric Pressure 901A Parse Data Stream.vi" Type="VI" URL="../../Heise Barometric Pressure 901A/SubVIs/Heise Barometric Pressure 901A Parse Data Stream.vi"/>
			<Item Name="Heise Barometric Pressure 901A Raw String.vi" Type="VI" URL="../../Heise Barometric Pressure 901A/SubVIs/Heise Barometric Pressure 901A Raw String.vi"/>
			<Item Name="Ritter STP Correction.vi" Type="VI" URL="../../../Trunk/Hybrid Water Heater/Support VIs/Ritter STP Correction.vi"/>
			<Item Name="Ritter Temperature Vapor Pressure Conversion.vi" Type="VI" URL="../../../Trunk/Hybrid Water Heater/Support VIs/Ritter Temperature Vapor Pressure Conversion.vi"/>
			<Item Name="UTILITY E-Time.vi" Type="VI" URL="../../../Trunk/Utility/UTILITY E-Time.vi"/>
		</Item>
		<Item Name="Build Specifications" Type="Build">
			<Item Name="Ritter Example" Type="EXE">
				<Property Name="App_copyErrors" Type="Bool">true</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{CABF6DFE-51F5-46D1-8003-AC2B5E1B82AA}</Property>
				<Property Name="App_INI_GUID" Type="Str">{7A5E0BEE-ABED-4FDD-A4C8-13D6D1E043C1}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
				<Property Name="App_serverType" Type="Int">0</Property>
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{8AC1FE80-2FF7-4145-BC8B-DFA6F04B4BAC}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">Ritter Example</Property>
				<Property Name="Bld_excludeInlineSubVIs" Type="Bool">true</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../builds/NI_AB_PROJECTNAME/Ritter Example</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToCommon</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{0ADE86DF-32FF-485B-84EB-466F36A57B23}</Property>
				<Property Name="Bld_version.build" Type="Int">6</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">Ritter Example.exe</Property>
				<Property Name="Destination[0].path" Type="Path">../builds/NI_AB_PROJECTNAME/Ritter Example/Ritter Example.exe</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../builds/NI_AB_PROJECTNAME/Ritter Example/data</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Source[0].itemID" Type="Str">{FE342B9B-DE4E-49E7-84F9-884198A4E6E6}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/Examples/ritter sample 1.vi</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="SourceCount" Type="Int">2</Property>
				<Property Name="TgtF_companyName" Type="Str">GE Appliances, a Haier Company</Property>
				<Property Name="TgtF_enableDebugging" Type="Bool">true</Property>
				<Property Name="TgtF_fileDescription" Type="Str">Ritter Example</Property>
				<Property Name="TgtF_internalName" Type="Str">Ritter Example</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2024 GE Appliances, a Haier Company</Property>
				<Property Name="TgtF_productName" Type="Str">Ritter Example</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{06D3C6D2-4EE1-4A3E-B1F4-1EDD7C446194}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">Ritter Example.exe</Property>
				<Property Name="TgtF_versionIndependent" Type="Bool">true</Property>
			</Item>
			<Item Name="My Installer" Type="Installer">
				<Property Name="Destination[0].name" Type="Str">Ritter Gas Meter</Property>
				<Property Name="Destination[0].parent" Type="Str">{3912416A-D2E5-411B-AFEE-B63654D690C0}</Property>
				<Property Name="Destination[0].tag" Type="Str">{823A4D58-4195-4BD1-90D1-9F527C73549A}</Property>
				<Property Name="Destination[0].type" Type="Str">userFolder</Property>
				<Property Name="DestinationCount" Type="Int">1</Property>
				<Property Name="DistPart[0].flavorID" Type="Str">DefaultFull</Property>
				<Property Name="DistPart[0].productID" Type="Str">{7C216C83-85F9-4A5F-9938-2D839206554D}</Property>
				<Property Name="DistPart[0].productName" Type="Str">NI LabVIEW Runtime 2023 Q1</Property>
				<Property Name="DistPart[0].SoftDep[0].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[0].SoftDep[0].productName" Type="Str">NI ActiveX Container</Property>
				<Property Name="DistPart[0].SoftDep[0].upgradeCode" Type="Str">{1038A887-23E1-4289-B0BD-0C4B83C6BA21}</Property>
				<Property Name="DistPart[0].SoftDep[1].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[0].SoftDep[1].productName" Type="Str">NI Deployment Framework 2023</Property>
				<Property Name="DistPart[0].SoftDep[1].upgradeCode" Type="Str">{838942E4-B73C-492E-81A3-AA1E291FD0DC}</Property>
				<Property Name="DistPart[0].SoftDep[10].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[0].SoftDep[10].productName" Type="Str">NI VC2015 Runtime</Property>
				<Property Name="DistPart[0].SoftDep[10].upgradeCode" Type="Str">{D42E7BAE-6589-4570-B6A3-3E28889392E7}</Property>
				<Property Name="DistPart[0].SoftDep[11].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[0].SoftDep[11].productName" Type="Str">NI TDM Streaming 23.1</Property>
				<Property Name="DistPart[0].SoftDep[11].upgradeCode" Type="Str">{4CD11BE6-6BB7-4082-8A27-C13771BC309B}</Property>
				<Property Name="DistPart[0].SoftDep[2].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[0].SoftDep[2].productName" Type="Str">NI Error Reporting 2020</Property>
				<Property Name="DistPart[0].SoftDep[2].upgradeCode" Type="Str">{42E818C6-2B08-4DE7-BD91-B0FD704C119A}</Property>
				<Property Name="DistPart[0].SoftDep[3].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[0].SoftDep[3].productName" Type="Str">NI LabVIEW Real-Time NBFifo 2023</Property>
				<Property Name="DistPart[0].SoftDep[3].upgradeCode" Type="Str">{4916D413-AC43-3010-9B66-301D33EA43AC}</Property>
				<Property Name="DistPart[0].SoftDep[4].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[0].SoftDep[4].productName" Type="Str">NI LabVIEW Runtime 2023 Q1 Non-English Support.</Property>
				<Property Name="DistPart[0].SoftDep[4].upgradeCode" Type="Str">{4C71F057-4B64-3691-A123-E064BF263A9B}</Property>
				<Property Name="DistPart[0].SoftDep[5].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[0].SoftDep[5].productName" Type="Str">NI Logos 23.1</Property>
				<Property Name="DistPart[0].SoftDep[5].upgradeCode" Type="Str">{5E4A4CE3-4D06-11D4-8B22-006008C16337}</Property>
				<Property Name="DistPart[0].SoftDep[6].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[0].SoftDep[6].productName" Type="Str">NI LabVIEW Web Server 2023</Property>
				<Property Name="DistPart[0].SoftDep[6].upgradeCode" Type="Str">{0960380B-EA86-4E0C-8B57-14CD8CCF2C15}</Property>
				<Property Name="DistPart[0].SoftDep[7].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[0].SoftDep[7].productName" Type="Str">NI mDNS Responder 23.0</Property>
				<Property Name="DistPart[0].SoftDep[7].upgradeCode" Type="Str">{9607874B-4BB3-42CB-B450-A2F5EF60BA3B}</Property>
				<Property Name="DistPart[0].SoftDep[8].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[0].SoftDep[8].productName" Type="Str">Math Kernel Libraries 2017</Property>
				<Property Name="DistPart[0].SoftDep[8].upgradeCode" Type="Str">{699C1AC5-2CF2-4745-9674-B19536EBA8A3}</Property>
				<Property Name="DistPart[0].SoftDep[9].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[0].SoftDep[9].productName" Type="Str">Math Kernel Libraries 2020</Property>
				<Property Name="DistPart[0].SoftDep[9].upgradeCode" Type="Str">{9872BBBA-FB96-42A4-80A2-9605AC5CBCF1}</Property>
				<Property Name="DistPart[0].SoftDepCount" Type="Int">12</Property>
				<Property Name="DistPart[0].upgradeCode" Type="Str">{A3DD8CEA-07BB-3EB5-A026-4AB75BDFF807}</Property>
				<Property Name="DistPart[1].flavorID" Type="Str">_deployment_</Property>
				<Property Name="DistPart[1].productID" Type="Str">{016644E7-BFD9-410F-902D-962614CB4E72}</Property>
				<Property Name="DistPart[1].productName" Type="Str">NI-VISA Runtime 22.5</Property>
				<Property Name="DistPart[1].upgradeCode" Type="Str">{8627993A-3F66-483C-A562-0D3BA3F267B1}</Property>
				<Property Name="DistPart[2].flavorID" Type="Str">_full_</Property>
				<Property Name="DistPart[2].productID" Type="Str">{40ADE154-B4E9-4C84-8C20-C35A3697699B}</Property>
				<Property Name="DistPart[2].productName" Type="Str">NI-VISA .NET Runtime 22.5</Property>
				<Property Name="DistPart[2].upgradeCode" Type="Str">{33687859-DC67-437F-A652-689B14A1C74C}</Property>
				<Property Name="DistPartCount" Type="Int">3</Property>
				<Property Name="INST_author" Type="Str">GE Appliances, a Haier Company</Property>
				<Property Name="INST_autoIncrement" Type="Bool">true</Property>
				<Property Name="INST_buildLocation" Type="Path">../builds/Ritter Gas Meter/My Installer</Property>
				<Property Name="INST_buildLocation.type" Type="Str">relativeToCommon</Property>
				<Property Name="INST_buildSpecName" Type="Str">My Installer</Property>
				<Property Name="INST_defaultDir" Type="Str">{823A4D58-4195-4BD1-90D1-9F527C73549A}</Property>
				<Property Name="INST_installerName" Type="Str">install.exe</Property>
				<Property Name="INST_productName" Type="Str">Ritter Gas Meter</Property>
				<Property Name="INST_productVersion" Type="Str">1.0.1</Property>
				<Property Name="InstSpecBitness" Type="Str">32-bit</Property>
				<Property Name="InstSpecVersion" Type="Str">23108276</Property>
				<Property Name="MSI_arpCompany" Type="Str">GE Appliances, a Haier Company</Property>
				<Property Name="MSI_distID" Type="Str">{AD360A38-742E-49CD-942E-E9E9810B5DDE}</Property>
				<Property Name="MSI_hideNonRuntimes" Type="Bool">true</Property>
				<Property Name="MSI_osCheck" Type="Int">0</Property>
				<Property Name="MSI_upgradeCode" Type="Str">{96191304-95C0-46CA-8079-9542F7C140BF}</Property>
				<Property Name="MSI_windowMessage" Type="Str">Calibration is Awesome!</Property>
				<Property Name="MSI_windowTitle" Type="Str">Ritter Calibration Software</Property>
				<Property Name="RegDest[0].dirName" Type="Str">Software</Property>
				<Property Name="RegDest[0].dirTag" Type="Str">{DDFAFC8B-E728-4AC8-96DE-B920EBB97A86}</Property>
				<Property Name="RegDest[0].parentTag" Type="Str">2</Property>
				<Property Name="RegDestCount" Type="Int">1</Property>
				<Property Name="Source[0].dest" Type="Str">{823A4D58-4195-4BD1-90D1-9F527C73549A}</Property>
				<Property Name="Source[0].File[0].dest" Type="Str">{823A4D58-4195-4BD1-90D1-9F527C73549A}</Property>
				<Property Name="Source[0].File[0].name" Type="Str">Ritter Example.exe</Property>
				<Property Name="Source[0].File[0].Shortcut[0].destIndex" Type="Int">0</Property>
				<Property Name="Source[0].File[0].Shortcut[0].name" Type="Str">Ritter Example</Property>
				<Property Name="Source[0].File[0].Shortcut[0].subDir" Type="Str">Ritter Gas Meter</Property>
				<Property Name="Source[0].File[0].ShortcutCount" Type="Int">1</Property>
				<Property Name="Source[0].File[0].tag" Type="Str">{06D3C6D2-4EE1-4A3E-B1F4-1EDD7C446194}</Property>
				<Property Name="Source[0].FileCount" Type="Int">1</Property>
				<Property Name="Source[0].name" Type="Str">Ritter Example</Property>
				<Property Name="Source[0].tag" Type="Ref">/My Computer/Build Specifications/Ritter Example</Property>
				<Property Name="Source[0].type" Type="Str">EXE</Property>
				<Property Name="SourceCount" Type="Int">1</Property>
			</Item>
		</Item>
	</Item>
</Project>
