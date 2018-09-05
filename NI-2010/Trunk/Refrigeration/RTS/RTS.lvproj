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
		<Item Name="Main" Type="Folder" URL="../Main">
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
		<Item Name="Old System" Type="Folder" URL="../Old System">
			<Property Name="NI.DISK" Type="Bool">true</Property>
		</Item>
		<Item Name="Instruments" Type="Folder">
			<Item Name="WAGO 750-881" Type="Folder" URL="../../../../Drivers/WAGO 750-881">
				<Property Name="NI.DISK" Type="Bool">true</Property>
			</Item>
			<Item Name="APLUS" Type="Folder" URL="../../../../Drivers/APLUS">
				<Property Name="NI.DISK" Type="Bool">true</Property>
			</Item>
			<Item Name="Yokogawa MX100" Type="Folder" URL="../../../../Drivers/Yokogawa MX100">
				<Property Name="NI.DISK" Type="Bool">true</Property>
			</Item>
		</Item>
		<Item Name="UTILITY" Type="Folder">
			<Item Name="Dynamic Headers" Type="Folder" URL="../../../Utility/Dynamic Headers">
				<Property Name="NI.DISK" Type="Bool">true</Property>
			</Item>
			<Item Name="UTILTIY Remove Blank Rows.vi" Type="VI" URL="../../../Utility/UTILTIY Remove Blank Rows.vi"/>
			<Item Name="UTILITY Double Array to String Array.vi" Type="VI" URL="../../../Utility/UTILITY Double Array to String Array.vi"/>
			<Item Name="UTILITY System Time.vi" Type="VI" URL="../../../Utility/UTILITY System Time.vi"/>
			<Item Name="UTILITY Find File In Folder.vi" Type="VI" URL="../../../Utility/UTILITY Find File In Folder.vi"/>
			<Item Name="UTILITY 1D DBL to 1D String.vi" Type="VI" URL="../../../Utility/UTILITY 1D DBL to 1D String.vi"/>
			<Item Name="UTILITY Modbus 1bit Number Combine.vi" Type="VI" URL="../../../Utility/UTILITY Modbus 1bit Number Combine.vi"/>
			<Item Name="UTILITY Modbus Boolean Bit Flip.vi" Type="VI" URL="../../../Utility/UTILITY Modbus Boolean Bit Flip.vi"/>
			<Item Name="UTILITY Fuzzy Logic Scale.vi" Type="VI" URL="../../../Utility/UTILITY Fuzzy Logic Scale.vi"/>
			<Item Name="UTILITY Simple PID.vi" Type="VI" URL="../../../Utility/UTILITY Simple PID.vi"/>
			<Item Name="UTILITY PID Correction Loop Check.vi" Type="VI" URL="../../../Utility/UTILITY PID Correction Loop Check.vi"/>
			<Item Name="UTILITY JKI Loop Timer.vi" Type="VI" URL="../../../Utility/UTILITY JKI Loop Timer.vi"/>
			<Item Name="UTILITY Common PID Adjuster.vi" Type="VI" URL="../../../Utility/UTILITY Common PID Adjuster.vi"/>
			<Item Name="UTILITY JKI Loop Speed Adjust.vi" Type="VI" URL="../../../Utility/UTILITY JKI Loop Speed Adjust.vi"/>
			<Item Name="UTILITY Delete Empty String Cells 2D.vi" Type="VI" URL="../../../Utility/UTILITY Delete Empty String Cells 2D.vi"/>
			<Item Name="UTILITY Array Get 1D String Column From 2D.vi" Type="VI" URL="../../../Utility/UTILITY Array Get 1D String Column From 2D.vi"/>
			<Item Name="UTILITY Date and Time.ctl" Type="VI" URL="../../../Utility/Type Definitions/UTILITY Date and Time.ctl"/>
			<Item Name="UTILITY Convert String to TimeStamp.vi" Type="VI" URL="../../../Utility/UTILITY Convert String to TimeStamp.vi"/>
			<Item Name="UTILITY Date String Days.vi" Type="VI" URL="../../../Utility/UTILITY Date String Days.vi"/>
			<Item Name="UTILITY Timeout Calc.vi" Type="VI" URL="../../../Utility/UTILITY Timeout Calc.vi"/>
			<Item Name="UTILITY Modbus 16bit Number Combine.vi" Type="VI" URL="../../../Utility/UTILITY Modbus 16bit Number Combine.vi"/>
			<Item Name="UTILITY IP and Computer Name.vi" Type="VI" URL="../../../Utility/UTILITY IP and Computer Name.vi"/>
			<Item Name="UTILITY This VIs Path.vi" Type="VI" URL="../../../Utility/UTILITY This VIs Path.vi"/>
			<Item Name="UTILITY Create Nested Directories.vi" Type="VI" URL="../../../Utility/UTILITY Create Nested Directories.vi"/>
			<Item Name="UTILITY Power Data.ctl" Type="VI" URL="../../../Utility/Type Definitions/UTILITY Power Data.ctl"/>
			<Item Name="UTILITY Delete Empty String Cells.vi" Type="VI" URL="../../../Utility/UTILITY Delete Empty String Cells.vi"/>
			<Item Name="UTILITY Bool to String.vi" Type="VI" URL="../../../Utility/UTILITY Bool to String.vi"/>
			<Item Name="UTILITY Modbus 32bit Number Combine.vi" Type="VI" URL="../../../Utility/UTILITY Modbus 32bit Number Combine.vi"/>
			<Item Name="UTILITY Power Inputs Control.ctl" Type="VI" URL="../../../Utility/Type Definitions/UTILITY Power Inputs Control.ctl"/>
			<Item Name="UTILITY 1D String to 1D DBL.vi" Type="VI" URL="../../../Utility/UTILITY 1D String to 1D DBL.vi"/>
			<Item Name="UTILITY General Time Header.vi" Type="VI" URL="../../../Utility/UTILITY General Time Header.vi"/>
			<Item Name="UTILITY Elapsed Time General Info.vi" Type="VI" URL="../../../Utility/UTILITY Elapsed Time General Info.vi"/>
			<Item Name="UTILITY TC Coefficients.ctl" Type="VI" URL="../../../Utility/Type Definitions/UTILITY TC Coefficients.ctl"/>
			<Item Name="UTILITY Array to String Array.vi" Type="VI" URL="../../../Utility/UTILITY Array to String Array.vi"/>
			<Item Name="UTILITY Save Data.vi" Type="VI" URL="../../../Utility/UTILITY Save Data.vi"/>
			<Item Name="UTILITY Write Header.vi" Type="VI" URL="../../../Utility/UTILITY Write Header.vi"/>
			<Item Name="UTILITY Get Excel Data From Worksheet.vi" Type="VI" URL="../../../Utility/UTILITY Get Excel Data From Worksheet.vi"/>
			<Item Name="UTILITY Local.vi" Type="VI" URL="../../../Utility/UTILITY Local.vi"/>
			<Item Name="UTILITY E-Time.vi" Type="VI" URL="../../../Utility/UTILITY E-Time.vi"/>
			<Item Name="UTILITY Elapsed Time.vi" Type="VI" URL="../../../Utility/UTILITY Elapsed Time.vi"/>
			<Item Name="UTILITY Create Default File.vi" Type="VI" URL="../../../Utility/UTILITY Create Default File.vi"/>
			<Item Name="UTILITY Get Point File List.vi" Type="VI" URL="../../../Utility/UTILITY Get Point File List.vi"/>
			<Item Name="UTILITY Append Byte To Read TCP.vi" Type="VI" URL="../../../Utility/UTILITY Append Byte To Read TCP.vi"/>
			<Item Name="UTILITY Strip Increment Path.vi" Type="VI" URL="../../../Utility/UTILITY Strip Increment Path.vi"/>
			<Item Name="UTILITY Find Sigma Limit.vi" Type="VI" URL="../../../Utility/UTILITY Find Sigma Limit.vi"/>
		</Item>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="whitespace.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/whitespace.ctl"/>
				<Item Name="Trim Whitespace.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Trim Whitespace.vi"/>
				<Item Name="Parse State Queue__jki_lib_state_machine.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/State Machine/_JKI_lib_State_Machine.llb/Parse State Queue__jki_lib_state_machine.vi"/>
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
				<Item Name="Set Cursor (Icon Pict).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/cursorutil.llb/Set Cursor (Icon Pict).vi"/>
				<Item Name="Set Cursor (Cursor ID).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/cursorutil.llb/Set Cursor (Cursor ID).vi"/>
				<Item Name="Set Cursor.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/cursorutil.llb/Set Cursor.vi"/>
				<Item Name="Set Busy.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/cursorutil.llb/Set Busy.vi"/>
				<Item Name="Unset Busy.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/cursorutil.llb/Unset Busy.vi"/>
				<Item Name="GetHelpDir.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetHelpDir.vi"/>
				<Item Name="BuildHelpPath.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/BuildHelpPath.vi"/>
				<Item Name="LVBoundsTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVBoundsTypeDef.ctl"/>
				<Item Name="Get String Text Bounds.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Get String Text Bounds.vi"/>
				<Item Name="Get Text Rect.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Get Text Rect.vi"/>
				<Item Name="Convert property node font to graphics font.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Convert property node font to graphics font.vi"/>
				<Item Name="Longest Line Length in Pixels.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Longest Line Length in Pixels.vi"/>
				<Item Name="LVRectTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVRectTypeDef.ctl"/>
				<Item Name="Three Button Dialog CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog CORE.vi"/>
				<Item Name="Three Button Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog.vi"/>
				<Item Name="DialogTypeEnum.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogTypeEnum.ctl"/>
				<Item Name="Not Found Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Not Found Dialog.vi"/>
				<Item Name="Set Bold Text.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set Bold Text.vi"/>
				<Item Name="Clear Errors.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Clear Errors.vi"/>
				<Item Name="eventvkey.ctl" Type="VI" URL="/&lt;vilib&gt;/event_ctls.llb/eventvkey.ctl"/>
				<Item Name="TagReturnType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/TagReturnType.ctl"/>
				<Item Name="ErrWarn.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/ErrWarn.ctl"/>
				<Item Name="Details Display Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Details Display Dialog.vi"/>
				<Item Name="Search and Replace Pattern.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Search and Replace Pattern.vi"/>
				<Item Name="Find Tag.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Find Tag.vi"/>
				<Item Name="Format Message String.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Format Message String.vi"/>
				<Item Name="Error Code Database.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Code Database.vi"/>
				<Item Name="GetRTHostConnectedProp.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetRTHostConnectedProp.vi"/>
				<Item Name="Set String Value.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set String Value.vi"/>
				<Item Name="Check Special Tags.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Check Special Tags.vi"/>
				<Item Name="General Error Handler Core CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler Core CORE.vi"/>
				<Item Name="DialogType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogType.ctl"/>
				<Item Name="General Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler.vi"/>
				<Item Name="Add State(s) to Queue__jki_lib_state_machine.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/State Machine/_JKI_lib_State_Machine.llb/Add State(s) to Queue__jki_lib_state_machine.vi"/>
				<Item Name="Network Master.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/Modbus Library/Network Protocol/Network Master/Network Master.lvclass"/>
				<Item Name="Network Protocol.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/Modbus Library/Network Protocol/Network Protocol.lvclass"/>
				<Item Name="Master Function Definition.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/Modbus Library/Master Function Definition/Master Function Definition.lvclass"/>
				<Item Name="Modbus Master.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/Modbus Library/API/Master/Modbus Master.lvclass"/>
				<Item Name="Transmission Data Unit.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/Modbus Library/Transmission Data Unit/Transmission Data Unit.lvclass"/>
				<Item Name="Modbus API.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/Modbus Library/API/Modbus API.lvclass"/>
				<Item Name="Device Data Model.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/Modbus Library/Data Model/Device Data Model.lvclass"/>
				<Item Name="Modbus Data Unit.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/Modbus Library/Modbus Data Unit/Modbus Data Unit.lvclass"/>
				<Item Name="Bits to Bytes.vi" Type="VI" URL="/&lt;vilib&gt;/NI/Modbus Library/Utility/Bits to Bytes.vi"/>
				<Item Name="U16s to Bytes.vi" Type="VI" URL="/&lt;vilib&gt;/NI/Modbus Library/Utility/U16s to Bytes.vi"/>
				<Item Name="Bytes to Bits.vi" Type="VI" URL="/&lt;vilib&gt;/NI/Modbus Library/Utility/Bytes to Bits.vi"/>
				<Item Name="Bytes to U16s.vi" Type="VI" URL="/&lt;vilib&gt;/NI/Modbus Library/Utility/Bytes to U16s.vi"/>
				<Item Name="Serial Data Unit.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/Modbus Library/Transmission Data Unit/Serial Interface/Serial Data Unit.lvclass"/>
				<Item Name="Serial Master.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/Modbus Library/Network Protocol/Network Master/Serial/Serial Master.lvclass"/>
				<Item Name="VISA Flush IO Buffer Mask.ctl" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Flush IO Buffer Mask.ctl"/>
				<Item Name="Serial Shared Components.lvlib" Type="Library" URL="/&lt;vilib&gt;/NI/Modbus Library/Serial Shared Components/Serial Shared Components.lvlib"/>
				<Item Name="RTU Data Unit.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/Modbus Library/Transmission Data Unit/RTU/RTU Data Unit.lvclass"/>
				<Item Name="Serial Slave.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/Modbus Library/Network Protocol/Network Slave/Serial/Serial Slave.lvclass"/>
				<Item Name="Network Slave.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/Modbus Library/Network Protocol/Network Slave/Network Slave.lvclass"/>
				<Item Name="Generate UUID.vi" Type="VI" URL="/&lt;vilib&gt;/NI/Modbus Library/Utility/Generate UUID.vi"/>
				<Item Name="ASCII Data Unit.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/Modbus Library/Transmission Data Unit/ASCII/ASCII Data Unit.lvclass"/>
				<Item Name="API Main.lvlib" Type="Library" URL="/&lt;vilib&gt;/NI/Modbus Library/API/Wrapper/API Main.lvlib"/>
				<Item Name="Modbus Slave.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/Modbus Library/API/Slave/Modbus Slave.lvclass"/>
				<Item Name="TCP Slave.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/Modbus Library/Network Protocol/Network Slave/TCP/TCP Slave.lvclass"/>
				<Item Name="TCP Shared Components.lvlib" Type="Library" URL="/&lt;vilib&gt;/NI/Modbus Library/TCP Shared Components/TCP Shared Components.lvlib"/>
				<Item Name="Standard Data Model.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/Modbus Library/Standard Data Model/Standard Data Model.lvclass"/>
				<Item Name="IP Data Unit.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/Modbus Library/Transmission Data Unit/IP/IP Data Unit.lvclass"/>
				<Item Name="TCP Master.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/Modbus Library/Network Protocol/Network Master/TCP/TCP Master.lvclass"/>
				<Item Name="Simple Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Simple Error Handler.vi"/>
				<Item Name="Find First Error.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Find First Error.vi"/>
				<Item Name="Close File+.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Close File+.vi"/>
				<Item Name="compatReadText.vi" Type="VI" URL="/&lt;vilib&gt;/_oldvers/_oldvers.llb/compatReadText.vi"/>
				<Item Name="Read File+ (string).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read File+ (string).vi"/>
				<Item Name="Open File+.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Open File+.vi"/>
				<Item Name="Read Lines From File (with error IO).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read Lines From File (with error IO).vi"/>
				<Item Name="Read Delimited Spreadsheet (string).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read Delimited Spreadsheet (string).vi"/>
				<Item Name="Read Delimited Spreadsheet (I64).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read Delimited Spreadsheet (I64).vi"/>
				<Item Name="Read Delimited Spreadsheet (DBL).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read Delimited Spreadsheet (DBL).vi"/>
				<Item Name="Read Delimited Spreadsheet.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read Delimited Spreadsheet.vi"/>
				<Item Name="subElapsedTime.vi" Type="VI" URL="/&lt;vilib&gt;/express/express execution control/ElapsedTimeBlock.llb/subElapsedTime.vi"/>
				<Item Name="FormatTime String.vi" Type="VI" URL="/&lt;vilib&gt;/express/express execution control/ElapsedTimeBlock.llb/FormatTime String.vi"/>
				<Item Name="Space Constant.vi" Type="VI" URL="/&lt;vilib&gt;/dlg_ctls.llb/Space Constant.vi"/>
				<Item Name="NI_FileType.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/lvfile.llb/NI_FileType.lvlib"/>
				<Item Name="Application Directory.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Application Directory.vi"/>
				<Item Name="NI_AALPro.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/NI_AALPro.lvlib"/>
				<Item Name="NI_PtbyPt.lvlib" Type="Library" URL="/&lt;vilib&gt;/ptbypt/NI_PtbyPt.lvlib"/>
				<Item Name="NI_PID_pid.lvlib" Type="Library" URL="/&lt;vilib&gt;/addons/control/pid/NI_PID_pid.lvlib"/>
				<Item Name="NI_PID__prctrl compat.lvlib" Type="Library" URL="/&lt;vilib&gt;/addons/control/pid/NI_PID__prctrl compat.lvlib"/>
				<Item Name="lvpidtkt.dll" Type="Document" URL="/&lt;vilib&gt;/addons/control/pid/lvpidtkt.dll"/>
				<Item Name="ClearError.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/tdmsutil.llb/ClearError.vi"/>
				<Item Name="NI_Gmath.lvlib" Type="Library" URL="/&lt;vilib&gt;/gmath/NI_Gmath.lvlib"/>
				<Item Name="NI_AALBase.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/NI_AALBase.lvlib"/>
				<Item Name="Write Spreadsheet String.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Write Spreadsheet String.vi"/>
				<Item Name="Write Delimited Spreadsheet (string).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Write Delimited Spreadsheet (string).vi"/>
				<Item Name="Write Delimited Spreadsheet (I64).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Write Delimited Spreadsheet (I64).vi"/>
				<Item Name="Write Delimited Spreadsheet (DBL).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Write Delimited Spreadsheet (DBL).vi"/>
				<Item Name="Write Delimited Spreadsheet.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Write Delimited Spreadsheet.vi"/>
				<Item Name="LVDateTimeRec.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVDateTimeRec.ctl"/>
				<Item Name="Read Lines From File.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read Lines From File.vi"/>
				<Item Name="Read From Spreadsheet File (string).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read From Spreadsheet File (string).vi"/>
				<Item Name="Read From Spreadsheet File (I64).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read From Spreadsheet File (I64).vi"/>
				<Item Name="Read From Spreadsheet File (DBL).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read From Spreadsheet File (DBL).vi"/>
				<Item Name="Read From Spreadsheet File.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read From Spreadsheet File.vi"/>
				<Item Name="NI_PackedLibraryUtility.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/LVLibp/NI_PackedLibraryUtility.lvlib"/>
				<Item Name="Check if File or Folder Exists.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Check if File or Folder Exists.vi"/>
				<Item Name="FileVersionInformation.ctl" Type="VI" URL="/&lt;vilib&gt;/Platform/fileVersionInfo.llb/FileVersionInformation.ctl"/>
				<Item Name="BuildErrorSource.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/fileVersionInfo.llb/BuildErrorSource.vi"/>
				<Item Name="FixedFileInfo_Struct.ctl" Type="VI" URL="/&lt;vilib&gt;/Platform/fileVersionInfo.llb/FixedFileInfo_Struct.ctl"/>
				<Item Name="MoveMemory.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/fileVersionInfo.llb/MoveMemory.vi"/>
				<Item Name="VerQueryValue.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/fileVersionInfo.llb/VerQueryValue.vi"/>
				<Item Name="GetFileVersionInfo.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/fileVersionInfo.llb/GetFileVersionInfo.vi"/>
				<Item Name="GetFileVersionInfoSize.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/fileVersionInfo.llb/GetFileVersionInfoSize.vi"/>
				<Item Name="FileVersionInfo.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/fileVersionInfo.llb/FileVersionInfo.vi"/>
				<Item Name="VISA Configure Serial Port (Instr).vi" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Configure Serial Port (Instr).vi"/>
				<Item Name="VISA Configure Serial Port (Serial Instr).vi" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Configure Serial Port (Serial Instr).vi"/>
				<Item Name="VISA Configure Serial Port" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Configure Serial Port"/>
				<Item Name="VISA Open Access Mode.ctl" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Open Access Mode.ctl"/>
				<Item Name="Dynamic To Waveform Array.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/transition.llb/Dynamic To Waveform Array.vi"/>
				<Item Name="NI_MABase.lvlib" Type="Library" URL="/&lt;vilib&gt;/measure/NI_MABase.lvlib"/>
				<Item Name="Check for Equality.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/WDTOps.llb/Check for Equality.vi"/>
				<Item Name="DU64_U32SubtractWithBorrow.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/TSOps.llb/DU64_U32SubtractWithBorrow.vi"/>
				<Item Name="I128 Timestamp.ctl" Type="VI" URL="/&lt;vilib&gt;/Waveform/TSOps.llb/I128 Timestamp.ctl"/>
				<Item Name="Timestamp Subtract.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/TSOps.llb/Timestamp Subtract.vi"/>
				<Item Name="NI_MAPro.lvlib" Type="Library" URL="/&lt;vilib&gt;/measure/NI_MAPro.lvlib"/>
				<Item Name="ex_WaveformAttribs.ctl" Type="VI" URL="/&lt;vilib&gt;/express/express shared/transition.llb/ex_WaveformAttribs.ctl"/>
				<Item Name="ex_GetAllExpressAttribs.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/transition.llb/ex_GetAllExpressAttribs.vi"/>
				<Item Name="Express Waveform Components.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/transition.llb/Express Waveform Components.vi"/>
				<Item Name="ex_SmoothingDesign.vi" Type="VI" URL="/&lt;vilib&gt;/express/express analysis/FilterBlock.llb/ex_SmoothingDesign.vi"/>
				<Item Name="ex_CorrectErrorChain.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/ex_CorrectErrorChain.vi"/>
				<Item Name="ex_Modify Signal Name.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/ex_Modify Signal Name.vi"/>
				<Item Name="ex_Modify Signals Names.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/ex_Modify Signals Names.vi"/>
				<Item Name="subFilter.vi" Type="VI" URL="/&lt;vilib&gt;/express/express analysis/FilterBlock.llb/subFilter.vi"/>
				<Item Name="Write To Spreadsheet File (string).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Write To Spreadsheet File (string).vi"/>
				<Item Name="Write To Spreadsheet File (I64).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Write To Spreadsheet File (I64).vi"/>
				<Item Name="Write To Spreadsheet File (DBL).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Write To Spreadsheet File (DBL).vi"/>
				<Item Name="Write To Spreadsheet File.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Write To Spreadsheet File.vi"/>
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
				<Item Name="LVComboBoxStrsAndValuesArrayTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVComboBoxStrsAndValuesArrayTypeDef.ctl"/>
				<Item Name="Modbus Slave Example.vi" Type="VI" URL="/&lt;vilib&gt;/NI/Modbus Library/Examples/Modbus Slave Example.vi"/>
				<Item Name="Modbus Master Example.vi" Type="VI" URL="/&lt;vilib&gt;/NI/Modbus Library/Examples/Modbus Master Example.vi"/>
				<Item Name="LV70TimeStampToDateRec.vi" Type="VI" URL="/&lt;vilib&gt;/_oldvers/_oldvers.llb/LV70TimeStampToDateRec.vi"/>
				<Item Name="cfis_Replace Percent Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/cfis_Replace Percent Code.vi"/>
				<Item Name="cfis_Reverse Scan From String For Integer.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/cfis_Reverse Scan From String For Integer.vi"/>
				<Item Name="cfis_Get File Extension Without Changing Case.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/cfis_Get File Extension Without Changing Case.vi"/>
				<Item Name="cfis_Split File Path Into Three Parts.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/cfis_Split File Path Into Three Parts.vi"/>
				<Item Name="Create File with Incrementing Suffix.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Create File with Incrementing Suffix.vi"/>
				<Item Name="LV70DateRecToTimeStamp.vi" Type="VI" URL="/&lt;vilib&gt;/_oldvers/_oldvers.llb/LV70DateRecToTimeStamp.vi"/>
				<Item Name="8.6CompatibleGlobalVar.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/8.6CompatibleGlobalVar.vi"/>
				<Item Name="NI_LVConfig.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/config.llb/NI_LVConfig.lvlib"/>
				<Item Name="Waveform Array To Dynamic.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/transition.llb/Waveform Array To Dynamic.vi"/>
				<Item Name="subBuildXYGraph.vi" Type="VI" URL="/&lt;vilib&gt;/express/express controls/BuildXYGraphBlock.llb/subBuildXYGraph.vi"/>
				<Item Name="usereventprio.ctl" Type="VI" URL="/&lt;vilib&gt;/event_ctls.llb/usereventprio.ctl"/>
			</Item>
			<Item Name="lvanlys.dll" Type="Document" URL="/&lt;resource&gt;/lvanlys.dll"/>
			<Item Name="Custom Pallet DBL.ctl" Type="VI" URL="../../../Utility/Custom Pallet Controls/Custom Pallet DBL.ctl"/>
			<Item Name="Plotting Convert XY to Waveform.vi" Type="VI" URL="../../../Utility/Plotting/SubVIs/Plotting Convert XY to Waveform.vi"/>
			<Item Name="Plotting Assemble.vi" Type="VI" URL="../../../Utility/Plotting/SubVIs/Plotting Assemble.vi"/>
			<Item Name="File Setup.lvlib" Type="Library" URL="../../../Utility/Save File/File Setup.lvlib"/>
			<Item Name="Calibration SN.ctl" Type="VI" URL="../../../Utility/Calibration/Type Definitions/Calibration SN.ctl"/>
			<Item Name="Calibration Convert String to String.vi" Type="VI" URL="../../../Utility/Calibration/Support VIs/Calibration Convert String to String.vi"/>
			<Item Name="Calibration Time.ctl" Type="VI" URL="../../../Utility/Calibration/Type Definitions/Calibration Time.ctl"/>
			<Item Name="Calibration Convert String to Dates.vi" Type="VI" URL="../../../Utility/Calibration/Support VIs/Calibration Convert String to Dates.vi"/>
			<Item Name="Calibration.ctl" Type="VI" URL="../../../Utility/Calibration/Type Definitions/Calibration.ctl"/>
			<Item Name="Calibration Read Dates.vi" Type="VI" URL="../../../Utility/Calibration/Main/Calibration Read Dates.vi"/>
			<Item Name="Calibration Equipment.vi" Type="VI" URL="../../../Utility/Calibration/Main/Calibration Equipment.vi"/>
			<Item Name="Calibration.vi" Type="VI" URL="../../../Utility/Calibration/Main/Calibration.vi"/>
			<Item Name="DOE Dryer Standard.ctl" Type="VI" URL="../../../Washer DOE/Type Definitions/DOE Dryer Standard.ctl"/>
			<Item Name="DPT IMC Data.ctl" Type="VI" URL="../../../Utility/Save File/File Setup (Public)/Type Definition/DPT IMC Data.ctl"/>
			<Item Name="Custom Pallet String.ctl" Type="VI" URL="../../../Utility/Custom Pallet Controls/Custom Pallet String.ctl"/>
			<Item Name="DOE Appliance Common.ctl" Type="VI" URL="../../../Washer DOE/Type Definitions/DOE Appliance Common.ctl"/>
			<Item Name="Save File.lvlib" Type="Library" URL="../../../Utility/Save File/Save File.lvlib"/>
			<Item Name="Save File Type.ctl" Type="VI" URL="../../../Utility/Save File/Private/Type Definitions/Save File Type.ctl"/>
			<Item Name="Save File Appliance Display.ctl" Type="VI" URL="../../../Utility/Save File/Public/Type Definitions/Save File Appliance Display.ctl"/>
			<Item Name="Agilent 34970 Array to Scan List.vi" Type="VI" URL="../../../../Drivers/Agilent 34972/Examples/Agilent 34970 Array to Scan List.vi"/>
			<Item Name="FMA1600A COM Ports.ctl" Type="VI" URL="../../../../Drivers/Omega FMA-1600A Series Gas Flow Meter/Type Definitions/FMA1600A COM Ports.ctl"/>
			<Item Name="HEWH Agilent Cluster.ctl" Type="VI" URL="../../../Hybrid Water Heater/Type Definitions/HEWH Agilent Cluster.ctl"/>
			<Item Name="IND560 Configuration.ctl" Type="VI" URL="../../../../Drivers/IND560 Scale Monitor/Type Definitions/IND560 Configuration.ctl"/>
			<Item Name="DOE Test Fixture Hardware.ctl" Type="VI" URL="../../../Washer DOE/Type Definitions/DOE Test Fixture Hardware.ctl"/>
			<Item Name="GSE 350 Close.vi" Type="VI" URL="../../../../Drivers/GSE 350 Scale Display/SubVIs/GSE 350 Close.vi"/>
			<Item Name="GSE 350 Extract Component Data.vi" Type="VI" URL="../../../../Drivers/GSE 350 Scale Display/SubVIs/GSE 350 Extract Component Data.vi"/>
			<Item Name="GSE 350 Extract Negative Value.vi" Type="VI" URL="../../../../Drivers/GSE 350 Scale Display/SubVIs/GSE 350 Extract Negative Value.vi"/>
			<Item Name="GSE 350 Parse Data Stream.vi" Type="VI" URL="../../../../Drivers/GSE 350 Scale Display/SubVIs/GSE 350 Parse Data Stream.vi"/>
			<Item Name="GSE 350 Build Full Data String.vi" Type="VI" URL="../../../../Drivers/GSE 350 Scale Display/SubVIs/GSE 350 Build Full Data String.vi"/>
			<Item Name="GSE 350 Read Data.vi" Type="VI" URL="../../../../Drivers/GSE 350 Scale Display/SubVIs/GSE 350 Read Data.vi"/>
			<Item Name="GSE 350 Send Receive.vi" Type="VI" URL="../../../../Drivers/GSE 350 Scale Display/SubVIs/GSE 350 Send Receive.vi"/>
			<Item Name="GSE 350 Initialize.vi" Type="VI" URL="../../../../Drivers/GSE 350 Scale Display/SubVIs/GSE 350 Initialize.vi"/>
			<Item Name="GSE 350 Main.vi" Type="VI" URL="../../../../Drivers/GSE 350 Scale Display/GSE 350 Main.vi"/>
			<Item Name="IND560 Serial Close.vi" Type="VI" URL="../../../../Drivers/IND560 Scale Monitor/Support VIs/IND560 Serial Close.vi"/>
			<Item Name="IND560 Serial Parse.vi" Type="VI" URL="../../../../Drivers/IND560 Scale Monitor/Support VIs/IND560 Serial Parse.vi"/>
			<Item Name="IND560 Serial FGV Filter.vi" Type="VI" URL="../../../../Drivers/IND560 Scale Monitor/Support VIs/IND560 Serial FGV Filter.vi"/>
			<Item Name="IND560 Serial Read.vi" Type="VI" URL="../../../../Drivers/IND560 Scale Monitor/Support VIs/IND560 Serial Read.vi"/>
			<Item Name="IND560 Serial Scale Commands.ctl" Type="VI" URL="../../../../Drivers/IND560 Scale Monitor/Type Definitions/IND560 Serial Scale Commands.ctl"/>
			<Item Name="IND560 Serial Get Data.vi" Type="VI" URL="../../../../Drivers/IND560 Scale Monitor/Support VIs/IND560 Serial Get Data.vi"/>
			<Item Name="IND560 Serial Initialize.vi" Type="VI" URL="../../../../Drivers/IND560 Scale Monitor/Support VIs/IND560 Serial Initialize.vi"/>
			<Item Name="IND560 Serial Tester.vi" Type="VI" URL="../../../../Drivers/IND560 Scale Monitor/IND560 Serial Tester.vi"/>
			<Item Name="DOE Dryer RMC Calculation Equation.vi" Type="VI" URL="../../../Washer DOE/Support VIs/DOE Dryer RMC Calculation Equation.vi"/>
			<Item Name="Setra Close.vi" Type="VI" URL="../../../../Drivers/Setra SuperCount 75lb/SubVIs/Setra Close.vi"/>
			<Item Name="Setra Data Parse.vi" Type="VI" URL="../../../../Drivers/Setra SuperCount 75lb/SubVIs/Setra Data Parse.vi"/>
			<Item Name="Setra Commands.ctl" Type="VI" URL="../../../../Drivers/Setra SuperCount 75lb/Type Definitions/Setra Commands.ctl"/>
			<Item Name="Setra Read Write.vi" Type="VI" URL="../../../../Drivers/Setra SuperCount 75lb/SubVIs/Setra Read Write.vi"/>
			<Item Name="Setra Initialize.vi" Type="VI" URL="../../../../Drivers/Setra SuperCount 75lb/SubVIs/Setra Initialize.vi"/>
			<Item Name="Setra Main.vi" Type="VI" URL="../../../../Drivers/Setra SuperCount 75lb/Setra Main.vi"/>
			<Item Name="MSBH_MSBL.vi" Type="VI" URL="../../../Utility/GEA2 Commands/HEWH/MSBH_MSBL.vi"/>
			<Item Name="MSB LSB.vi" Type="VI" URL="../../../Utility/GEA2 Commands/HEWH/MSB LSB.vi"/>
			<Item Name="Reasons For Termination.vi" Type="VI" URL="../../../Utility/GEA2 Commands/HEWH/Reasons For Termination.vi"/>
			<Item Name="Reasons For Termination Data Decode.vi" Type="VI" URL="../../../Utility/GEA2 Commands/HEWH/Reasons For Termination Data Decode.vi"/>
			<Item Name="GEA2 Commands Service Error Codes.ctl" Type="VI" URL="../../../Utility/GEA2 Commands/HEWH/Type Definitions/GEA2 Commands Service Error Codes.ctl"/>
			<Item Name="GEA2 Commands Status Query.ctl" Type="VI" URL="../../../Utility/GEA2 Commands/HEWH/Type Definitions/GEA2 Commands Status Query.ctl"/>
			<Item Name="GEA2 Commands Button Status.ctl" Type="VI" URL="../../../Utility/GEA2 Commands/HEWH/Type Definitions/GEA2 Commands Button Status.ctl"/>
			<Item Name="GEA2 Commands WaterHeater GEA2 Data.ctl" Type="VI" URL="../../../Utility/GEA2 Commands/HEWH/Type Definitions/GEA2 Commands WaterHeater GEA2 Data.ctl"/>
			<Item Name="HEWH Assemble HEWH Diagnostics Data.vi" Type="VI" URL="../../../Hybrid Water Heater/Support VIs/HEWH Assemble HEWH Diagnostics Data.vi"/>
			<Item Name="HyperTerm Data Decode.vi" Type="VI" URL="../../../Utility/GEA2 Commands/HEWH/HyperTerm Data Decode.vi"/>
			<Item Name="GEA2_Toolkit.lvlib" Type="Library" URL="../../../Utility/LabVIEW GEA2 Toolkit v1.0.0.0/library/GEA2_Toolkit.lvlib"/>
			<Item Name="HEWH Hyperterminal.vi" Type="VI" URL="../../../Hybrid Water Heater/Support VIs/HEWH Hyperterminal.vi"/>
			<Item Name="ViperHawk Search Control.ctl" Type="VI" URL="../../../Washer HCC/Washer HCC NEWFI/Type Definitions/ViperHawk/ViperHawk Search Control.ctl"/>
			<Item Name="ViperHawk Diagnostic Data.ctl" Type="VI" URL="../../../Washer HCC/Washer HCC NEWFI/Type Definitions/ViperHawk/ViperHawk Diagnostic Data.ctl"/>
			<Item Name="ViperHawk Data.ctl" Type="VI" URL="../../../Washer HCC/Washer HCC NEWFI/Type Definitions/ViperHawk/ViperHawk Data.ctl"/>
			<Item Name="GEA2 Commands.ctl" Type="VI" URL="../../../Utility/GEA2 Commands/HEWH/Type Definitions/GEA2 Commands.ctl"/>
			<Item Name="GEA2 Message Decoder.vi" Type="VI" URL="../../../Utility/GEA2 Commands/HEWH/GEA2 Message Decoder.vi"/>
			<Item Name="Custom Pallet Forward.ctl" Type="VI" URL="../../../Utility/Custom Pallet Controls/Custom Pallet Forward.ctl"/>
			<Item Name="Data From Memory.vi" Type="VI" URL="../../../Utility/GEA2 Commands/HEWH/Data From Memory.vi"/>
			<Item Name="Request Data From Flash.vi" Type="VI" URL="../../../Utility/GEA2 Commands/HEWH/Request Data From Flash.vi"/>
			<Item Name="Update DSM Level.vi" Type="VI" URL="../../../Utility/GEA2 Commands/HEWH/Update DSM Level.vi"/>
			<Item Name="PID Denominator.vi" Type="VI" URL="../../../Utility/GEA2 Commands/HEWH/PID Denominator.vi"/>
			<Item Name="Set Model Number.vi" Type="VI" URL="../../../Utility/GEA2 Commands/HEWH/Set Model Number.vi"/>
			<Item Name="Bit Encode LEDs.vi" Type="VI" URL="../../../Utility/GEA2 Commands/HEWH/Bit Encode LEDs.vi"/>
			<Item Name="Set LEDs.vi" Type="VI" URL="../../../Utility/GEA2 Commands/HEWH/Set LEDs.vi"/>
			<Item Name="Set EEV Drive Lines.vi" Type="VI" URL="../../../Utility/GEA2 Commands/HEWH/Set EEV Drive Lines.vi"/>
			<Item Name="Set Currents.vi" Type="VI" URL="../../../Utility/GEA2 Commands/HEWH/Set Currents.vi"/>
			<Item Name="Custom Pallet Number.ctl" Type="VI" URL="../../../Utility/Custom Pallet Controls/Custom Pallet Number.ctl"/>
			<Item Name="Set Ambient Threshold 1.vi" Type="VI" URL="../../../Utility/GEA2 Commands/HEWH/Set Ambient Threshold 1.vi"/>
			<Item Name="Enter Exit FCT Mode.vi" Type="VI" URL="../../../Utility/GEA2 Commands/HEWH/Enter Exit FCT Mode.vi"/>
			<Item Name="EEV Position.vi" Type="VI" URL="../../../Utility/GEA2 Commands/HEWH/EEV Position.vi"/>
			<Item Name="DSM Override Status.vi" Type="VI" URL="../../../Utility/GEA2 Commands/DSM Override Status.vi"/>
			<Item Name="Populate HEWH Commands.vi" Type="VI" URL="../../../Utility/GEA2 Commands/HEWH/Populate HEWH Commands.vi"/>
			<Item Name="HEWH_DSM_CMD.vi" Type="VI" URL="../../../Utility/GEA2 Commands/HEWH/HEWH_DSM_CMD.vi"/>
			<Item Name="DOE Capacity Measurments.ctl" Type="VI" URL="../../../Washer DOE/Type Definitions/DOE Capacity Measurments.ctl"/>
			<Item Name="GEA2.ctl" Type="VI" URL="../../../Washer DOE/Configuration/GEA2.ctl"/>
			<Item Name="DOE Main Control.ctl" Type="VI" URL="../../../Washer DOE/Type Definitions/DOE Main Control.ctl"/>
			<Item Name="GeaCommunication.dll" Type="Document" URL="../../../Utility/LabVIEW GEA2 Toolkit v1.0.0.0/Appliance.NET/GeaCommunication.dll"/>
			<Item Name="GeaCommunication.Usb.dll" Type="Document" URL="../../../Utility/LabVIEW GEA2 Toolkit v1.0.0.0/Appliance.NET/GeaCommunication.Usb.dll"/>
			<Item Name="mscorlib" Type="VI" URL="mscorlib">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="System" Type="VI" URL="System">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="HCC Washer Types.ctl" Type="VI" URL="../../../Washer HCC/Washer HCC NEWFI/Type Definitions/HCC Washer Types.ctl"/>
			<Item Name="HexStringToBoolean.vi" Type="VI" URL="../../../Utility/LabVIEW GEA2 Toolkit v1.0.0.0/subVIs/HexStringToBoolean.vi"/>
			<Item Name="Red_Micro_Parse.vi" Type="VI" URL="../../../Washer HCC/Washer HCC NEWFI/Washer Soft Load Box/subVIs/Red_Micro_Parse.vi"/>
			<Item Name="Redundant.ctl" Type="VI" URL="../../../Washer HCC/Washer HCC NEWFI/Washer Soft Load Box/type defs/Redundant.ctl"/>
			<Item Name="Advapi32.dll" Type="Document" URL="Advapi32.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="kernel32.dll" Type="Document" URL="kernel32.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="Save File Menu.rtm" Type="Document" URL="../../../Utility/Save File/File Setup (Private)/Save File Menu.rtm"/>
			<Item Name="version.dll" Type="Document" URL="version.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="DOE Data Save Modifier.ctl" Type="VI" URL="../../../Washer DOE/Type Definitions/DOE Data Save Modifier.ctl"/>
			<Item Name="Standby Power Header.vi" Type="VI" URL="../../../Utility/Standby Power/Supporting VIs/Standby Power Header.vi"/>
			<Item Name="UTILITY Counter.vi" Type="VI" URL="../../../Utility/UTILITY Counter.vi"/>
			<Item Name="UTILITY Convert String to Time.vi" Type="VI" URL="../../../Utility/UTILITY Convert String to Time.vi"/>
			<Item Name="UTILITY Get Column Stats.vi" Type="VI" URL="../../../Utility/UTILITY Get Column Stats.vi"/>
		</Item>
		<Item Name="Build Specifications" Type="Build">
			<Item Name="RTS Combination Server" Type="EXE">
				<Property Name="App_copyErrors" Type="Bool">true</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{BAF2BFC5-C468-4650-BEEE-A29D244912DE}</Property>
				<Property Name="App_INI_GUID" Type="Str">{2C67842D-E131-4D60-BDEC-7D9EAF4812BB}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{54FD45F4-46DD-4231-8EF8-8E00472000D6}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">RTS Combination Server</Property>
				<Property Name="Bld_excludeInlineSubVIs" Type="Bool">true</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../builds/NI_AB_PROJECTNAME/RTS Combination Server</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToCommon</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{7F05D3AD-D29D-4D2B-A96B-238D1F34B1EB}</Property>
				<Property Name="Bld_version.build" Type="Int">82</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">RTS Combination Server 1.exe</Property>
				<Property Name="Destination[0].path" Type="Path">../builds/NI_AB_PROJECTNAME/RTS Combination Server/RTS Combination Server 1.exe</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../builds/NI_AB_PROJECTNAME/RTS Combination Server/data</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Source[0].itemID" Type="Str">{D5FEE0F4-0900-4DF3-AB30-90558CEB81F8}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/Main/RTS Combination Server.vi</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="SourceCount" Type="Int">2</Property>
				<Property Name="TgtF_companyName" Type="Str">GE Appliances, a Haier company</Property>
				<Property Name="TgtF_enableDebugging" Type="Bool">true</Property>
				<Property Name="TgtF_fileDescription" Type="Str">RTS Combination Server 1</Property>
				<Property Name="TgtF_internalName" Type="Str">RTS Combination Server 1</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2017 GE Appliances, a Haier company</Property>
				<Property Name="TgtF_productName" Type="Str">RTS Combination Server</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{8E3D4263-3BF5-4564-827B-20D4EAD3DD23}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">RTS Combination Server 1.exe</Property>
			</Item>
			<Item Name="RTS Client" Type="EXE">
				<Property Name="App_copyErrors" Type="Bool">true</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{5D6CB9B2-F0E5-4CE8-8FA4-3158C8578593}</Property>
				<Property Name="App_INI_GUID" Type="Str">{7F9BFA6D-7383-4B03-8EFD-D4C66A80D15D}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{8BADBF3B-E198-4BC5-8777-D885FB252BA6}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">RTS Client</Property>
				<Property Name="Bld_excludeInlineSubVIs" Type="Bool">true</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../builds/NI_AB_PROJECTNAME/RTS Client</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToCommon</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{4D7EDE27-E2E2-4532-9F8F-AA3F1871D758}</Property>
				<Property Name="Bld_version.build" Type="Int">13</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">RTS Client.exe</Property>
				<Property Name="Destination[0].path" Type="Path">../builds/NI_AB_PROJECTNAME/RTS Client/RTS Client.exe</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../builds/NI_AB_PROJECTNAME/RTS Client/data</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Exe_iconItemID" Type="Ref">/My Computer/Documentation/RTS Icon.ico</Property>
				<Property Name="Source[0].itemID" Type="Str">{7D27D1D2-499B-471B-8573-7B50F6A337D6}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/Main/RTS Client.vi</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="SourceCount" Type="Int">2</Property>
				<Property Name="TgtF_companyName" Type="Str">GE Appliances, a Haier company</Property>
				<Property Name="TgtF_enableDebugging" Type="Bool">true</Property>
				<Property Name="TgtF_fileDescription" Type="Str">RTS Client</Property>
				<Property Name="TgtF_internalName" Type="Str">RTS Client</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2018 GE Appliances, a Haier company</Property>
				<Property Name="TgtF_productName" Type="Str">RTS Client</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{4EC378C2-7113-4C13-ACE8-268460C35BAF}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">RTS Client.exe</Property>
			</Item>
			<Item Name="Haier Refrigeration Test System" Type="Installer">
				<Property Name="Destination[0].name" Type="Str">RTS</Property>
				<Property Name="Destination[0].parent" Type="Str">{3912416A-D2E5-411B-AFEE-B63654D690C0}</Property>
				<Property Name="Destination[0].tag" Type="Str">{1D13BD08-937D-4F83-9299-39970DC69C93}</Property>
				<Property Name="Destination[0].type" Type="Str">userFolder</Property>
				<Property Name="Destination[1].name" Type="Str">c:\Haier Refrigeration Test System</Property>
				<Property Name="Destination[1].path" Type="Path">/c/Haier Refrigeration Test System</Property>
				<Property Name="Destination[1].tag" Type="Str">{465698C6-C396-415E-944E-1F0AEFDC94D1}</Property>
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
				<Property Name="DistPart[2].SoftDep[0].productName" Type="Str">NI LabVIEW Runtime 2016 Non-English Support.</Property>
				<Property Name="DistPart[2].SoftDep[0].upgradeCode" Type="Str">{72AEEB03-DF6A-4C90-B44E-22B1E74CF14F}</Property>
				<Property Name="DistPart[2].SoftDep[1].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[2].SoftDep[1].productName" Type="Str">NI ActiveX Container</Property>
				<Property Name="DistPart[2].SoftDep[1].upgradeCode" Type="Str">{1038A887-23E1-4289-B0BD-0C4B83C6BA21}</Property>
				<Property Name="DistPart[2].SoftDep[10].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[2].SoftDep[10].productName" Type="Str">NI VC2015 Runtime</Property>
				<Property Name="DistPart[2].SoftDep[10].upgradeCode" Type="Str">{D42E7BAE-6589-4570-B6A3-3E28889392E7}</Property>
				<Property Name="DistPart[2].SoftDep[11].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[2].SoftDep[11].productName" Type="Str">NI mDNS Responder 14.0</Property>
				<Property Name="DistPart[2].SoftDep[11].upgradeCode" Type="Str">{9607874B-4BB3-42CB-B450-A2F5EF60BA3B}</Property>
				<Property Name="DistPart[2].SoftDep[12].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[2].SoftDep[12].productName" Type="Str">NI Deployment Framework 2016</Property>
				<Property Name="DistPart[2].SoftDep[12].upgradeCode" Type="Str">{838942E4-B73C-492E-81A3-AA1E291FD0DC}</Property>
				<Property Name="DistPart[2].SoftDep[13].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[2].SoftDep[13].productName" Type="Str">NI Error Reporting 2016</Property>
				<Property Name="DistPart[2].SoftDep[13].upgradeCode" Type="Str">{42E818C6-2B08-4DE7-BD91-B0FD704C119A}</Property>
				<Property Name="DistPart[2].SoftDep[2].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[2].SoftDep[2].productName" Type="Str">NI System Web Server 16.0</Property>
				<Property Name="DistPart[2].SoftDep[2].upgradeCode" Type="Str">{FCF64B73-B7D4-4971-8F11-24BAF7CC3E6C}</Property>
				<Property Name="DistPart[2].SoftDep[3].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[2].SoftDep[3].productName" Type="Str">Math Kernel Libraries</Property>
				<Property Name="DistPart[2].SoftDep[3].upgradeCode" Type="Str">{F34FFCA8-C4CB-47CC-8B81-C4E95E227355}</Property>
				<Property Name="DistPart[2].SoftDep[4].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[2].SoftDep[4].productName" Type="Str">NI Logos 5.8</Property>
				<Property Name="DistPart[2].SoftDep[4].upgradeCode" Type="Str">{5E4A4CE3-4D06-11D4-8B22-006008C16337}</Property>
				<Property Name="DistPart[2].SoftDep[5].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[2].SoftDep[5].productName" Type="Str">NI TDM Streaming 16.0</Property>
				<Property Name="DistPart[2].SoftDep[5].upgradeCode" Type="Str">{4CD11BE6-6BB7-4082-8A27-C13771BC309B}</Property>
				<Property Name="DistPart[2].SoftDep[6].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[2].SoftDep[6].productName" Type="Str">NI LabVIEW Web Server 2016</Property>
				<Property Name="DistPart[2].SoftDep[6].upgradeCode" Type="Str">{6A61A967-C04E-47A1-8D08-DF27332A78AB}</Property>
				<Property Name="DistPart[2].SoftDep[7].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[2].SoftDep[7].productName" Type="Str">NI LabVIEW Real-Time NBFifo 2016</Property>
				<Property Name="DistPart[2].SoftDep[7].upgradeCode" Type="Str">{718F68F2-14F0-4656-A29E-617F12A7343B}</Property>
				<Property Name="DistPart[2].SoftDep[8].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[2].SoftDep[8].productName" Type="Str">NI VC2008MSMs</Property>
				<Property Name="DistPart[2].SoftDep[8].upgradeCode" Type="Str">{FDA3F8BB-BAA9-45D7-8DC7-22E1F5C76315}</Property>
				<Property Name="DistPart[2].SoftDep[9].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[2].SoftDep[9].productName" Type="Str">NI VC2010MSMs</Property>
				<Property Name="DistPart[2].SoftDep[9].upgradeCode" Type="Str">{EFBA6F9E-F934-4BD7-AC51-60CCA480489C}</Property>
				<Property Name="DistPart[2].SoftDepCount" Type="Int">14</Property>
				<Property Name="DistPart[2].upgradeCode" Type="Str">{E7DBF016-365A-40B6-9526-B4D0B4830F51}</Property>
				<Property Name="DistPartCount" Type="Int">3</Property>
				<Property Name="INST_author" Type="Str">GE Appliances, a Haier company</Property>
				<Property Name="INST_autoIncrement" Type="Bool">true</Property>
				<Property Name="INST_buildLocation" Type="Path">../builds/Haier Refrigeration Test System/Haier Refrigeration Test System</Property>
				<Property Name="INST_buildLocation.type" Type="Str">relativeToCommon</Property>
				<Property Name="INST_buildSpecName" Type="Str">Haier Refrigeration Test System</Property>
				<Property Name="INST_defaultDir" Type="Str">{465698C6-C396-415E-944E-1F0AEFDC94D1}</Property>
				<Property Name="INST_productName" Type="Str">Haier Refrigeration Test System</Property>
				<Property Name="INST_productVersion" Type="Str">1.0.6</Property>
				<Property Name="InstSpecBitness" Type="Str">32-bit</Property>
				<Property Name="InstSpecVersion" Type="Str">16008010</Property>
				<Property Name="MSI_arpCompany" Type="Str">GE Appliances, a Haier company</Property>
				<Property Name="MSI_arpContact" Type="Str">Corey Sweatt (corey.sweatt2@geappliances.com)</Property>
				<Property Name="MSI_arpURL" Type="Str">http://www.geappliances.com/</Property>
				<Property Name="MSI_autoselectDrivers" Type="Bool">true</Property>
				<Property Name="MSI_bannerImageID" Type="Ref">/My Computer/Documentation/Haier Logo.bmp</Property>
				<Property Name="MSI_distID" Type="Str">{50D129EE-0FE8-48DB-B00D-6145C7272543}</Property>
				<Property Name="MSI_hideNonRuntimes" Type="Bool">true</Property>
				<Property Name="MSI_osCheck" Type="Int">0</Property>
				<Property Name="MSI_upgradeCode" Type="Str">{547D7011-AD2C-43EC-8C92-1BD247FCA607}</Property>
				<Property Name="MSI_windowMessage" Type="Str">Now Installing the Haier Refrigeration Test System</Property>
				<Property Name="MSI_windowTitle" Type="Str">Haier Refrigeration Test System</Property>
				<Property Name="RegDest[0].dirName" Type="Str">Software</Property>
				<Property Name="RegDest[0].dirTag" Type="Str">{DDFAFC8B-E728-4AC8-96DE-B920EBB97A86}</Property>
				<Property Name="RegDest[0].parentTag" Type="Str">2</Property>
				<Property Name="RegDestCount" Type="Int">1</Property>
				<Property Name="Source[0].dest" Type="Str">{465698C6-C396-415E-944E-1F0AEFDC94D1}</Property>
				<Property Name="Source[0].File[0].dest" Type="Str">{465698C6-C396-415E-944E-1F0AEFDC94D1}</Property>
				<Property Name="Source[0].File[0].name" Type="Str">RTS Client.exe</Property>
				<Property Name="Source[0].File[0].Shortcut[0].destIndex" Type="Int">1</Property>
				<Property Name="Source[0].File[0].Shortcut[0].name" Type="Str">RTS Client</Property>
				<Property Name="Source[0].File[0].Shortcut[0].subDir" Type="Str"></Property>
				<Property Name="Source[0].File[0].Shortcut[1].destIndex" Type="Int">2</Property>
				<Property Name="Source[0].File[0].Shortcut[1].name" Type="Str">RTS Client</Property>
				<Property Name="Source[0].File[0].Shortcut[1].subDir" Type="Str"></Property>
				<Property Name="Source[0].File[0].ShortcutCount" Type="Int">2</Property>
				<Property Name="Source[0].File[0].tag" Type="Str">{4EC378C2-7113-4C13-ACE8-268460C35BAF}</Property>
				<Property Name="Source[0].FileCount" Type="Int">1</Property>
				<Property Name="Source[0].name" Type="Str">RTS Client</Property>
				<Property Name="Source[0].tag" Type="Ref">/My Computer/Build Specifications/RTS Client</Property>
				<Property Name="Source[0].type" Type="Str">EXE</Property>
				<Property Name="Source[1].dest" Type="Str">{465698C6-C396-415E-944E-1F0AEFDC94D1}</Property>
				<Property Name="Source[1].name" Type="Str">WasherDOEConfig.csv</Property>
				<Property Name="Source[1].tag" Type="Ref">/My Computer/Documentation/WasherDOEConfig.csv</Property>
				<Property Name="Source[1].type" Type="Str">File</Property>
				<Property Name="SourceCount" Type="Int">2</Property>
			</Item>
		</Item>
	</Item>
</Project>
