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
		<Item Name="Alicat Gas Meter Driver" Type="Folder" URL="../../../../Drivers/Alicat Gas Meter Driver">
			<Property Name="NI.DISK" Type="Bool">true</Property>
		</Item>
		<Item Name="SubVIs" Type="Folder" URL="../../SubVIs">
			<Property Name="NI.DISK" Type="Bool">true</Property>
		</Item>
		<Item Name="Omega FMA-1600A Series Gas Flow Meter" Type="Folder" URL="../../../../Drivers/Omega FMA-1600A Series Gas Flow Meter">
			<Property Name="NI.DISK" Type="Bool">true</Property>
		</Item>
		<Item Name="Type Definitions" Type="Folder" URL="../../Type Definitions">
			<Property Name="NI.DISK" Type="Bool">true</Property>
		</Item>
		<Item Name="Documentation" Type="Folder" URL="../../Documentation">
			<Property Name="NI.DISK" Type="Bool">true</Property>
		</Item>
		<Item Name="UTILITY" Type="Folder">
			<Item Name="UTILITY Create Nested Directories.vi" Type="VI" URL="../../../Utility/UTILITY Create Nested Directories.vi"/>
			<Item Name="UTILITY This VIs Path.vi" Type="VI" URL="../../../Utility/UTILITY This VIs Path.vi"/>
			<Item Name="UTILITY Elapsed Time General Info.vi" Type="VI" URL="../../../Utility/UTILITY Elapsed Time General Info.vi"/>
			<Item Name="UTILITY Elapsed Time.vi" Type="VI" URL="../../../Utility/UTILITY Elapsed Time.vi"/>
			<Item Name="UTILITY E-Time.vi" Type="VI" URL="../../../Utility/UTILITY E-Time.vi"/>
			<Item Name="UTILITY System Time.vi" Type="VI" URL="../../../Utility/UTILITY System Time.vi"/>
			<Item Name="UTILITY Notifier.ctl" Type="VI" URL="../../../Utility/Type Definitions/UTILITY Notifier.ctl"/>
			<Item Name="UTILITY 1D DBL to 1D String.vi" Type="VI" URL="../../../Utility/UTILITY 1D DBL to 1D String.vi"/>
			<Item Name="UTILITY Boolean Notifier.vi" Type="VI" URL="../../../Utility/UTILITY Boolean Notifier.vi"/>
			<Item Name="UTILITY Check Interval.vi" Type="VI" URL="../../../Utility/UTILITY Check Interval.vi"/>
			<Item Name="UTILITY Integral.vi" Type="VI" URL="../../../Utility/UTILITY Integral.vi"/>
			<Item Name="UTILITY Custom VISA Name.vi" Type="VI" URL="../../../Utility/UTILITY Custom VISA Name.vi"/>
		</Item>
		<Item Name="RANGE Gas Meters.vi" Type="VI" URL="../RANGE Gas Meters.vi"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="DAQmx Fill In Error Info.vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/miscellaneous.llb/DAQmx Fill In Error Info.vi"/>
				<Item Name="DAQmx Read (Analog 1D DBL 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Analog 1D DBL 1Chan NSamp).vi"/>
				<Item Name="DAQmx Read (Analog 1D DBL NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Analog 1D DBL NChan 1Samp).vi"/>
				<Item Name="DAQmx Read (Analog 1D Wfm NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Analog 1D Wfm NChan 1Samp).vi"/>
				<Item Name="DAQmx Read (Analog 1D Wfm NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Analog 1D Wfm NChan NSamp).vi"/>
				<Item Name="DAQmx Read (Analog 2D DBL NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Analog 2D DBL NChan NSamp).vi"/>
				<Item Name="DAQmx Read (Analog 2D I16 NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Analog 2D I16 NChan NSamp).vi"/>
				<Item Name="DAQmx Read (Analog 2D I32 NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Analog 2D I32 NChan NSamp).vi"/>
				<Item Name="DAQmx Read (Analog 2D U16 NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Analog 2D U16 NChan NSamp).vi"/>
				<Item Name="DAQmx Read (Analog 2D U32 NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Analog 2D U32 NChan NSamp).vi"/>
				<Item Name="DAQmx Read (Analog DBL 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Analog DBL 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Read (Analog Wfm 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Analog Wfm 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Read (Analog Wfm 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Analog Wfm 1Chan NSamp).vi"/>
				<Item Name="DAQmx Read (Counter 1D DBL 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Counter 1D DBL 1Chan NSamp).vi"/>
				<Item Name="DAQmx Read (Counter 1D Pulse Freq 1 Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Counter 1D Pulse Freq 1 Chan NSamp).vi"/>
				<Item Name="DAQmx Read (Counter 1D Pulse Ticks 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Counter 1D Pulse Ticks 1Chan NSamp).vi"/>
				<Item Name="DAQmx Read (Counter 1D Pulse Time 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Counter 1D Pulse Time 1Chan NSamp).vi"/>
				<Item Name="DAQmx Read (Counter 1D U32 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Counter 1D U32 1Chan NSamp).vi"/>
				<Item Name="DAQmx Read (Counter DBL 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Counter DBL 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Read (Counter Pulse Freq 1 Chan 1 Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Counter Pulse Freq 1 Chan 1 Samp).vi"/>
				<Item Name="DAQmx Read (Counter Pulse Ticks 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Counter Pulse Ticks 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Read (Counter Pulse Time 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Counter Pulse Time 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Read (Counter U32 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Counter U32 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Read (Digital 1D Bool 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital 1D Bool 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Read (Digital 1D Bool NChan 1Samp 1Line).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital 1D Bool NChan 1Samp 1Line).vi"/>
				<Item Name="DAQmx Read (Digital 1D U8 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital 1D U8 1Chan NSamp).vi"/>
				<Item Name="DAQmx Read (Digital 1D U8 NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital 1D U8 NChan 1Samp).vi"/>
				<Item Name="DAQmx Read (Digital 1D U16 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital 1D U16 1Chan NSamp).vi"/>
				<Item Name="DAQmx Read (Digital 1D U16 NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital 1D U16 NChan 1Samp).vi"/>
				<Item Name="DAQmx Read (Digital 1D U32 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital 1D U32 1Chan NSamp).vi"/>
				<Item Name="DAQmx Read (Digital 1D U32 NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital 1D U32 NChan 1Samp).vi"/>
				<Item Name="DAQmx Read (Digital 1D Wfm NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital 1D Wfm NChan 1Samp).vi"/>
				<Item Name="DAQmx Read (Digital 1D Wfm NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital 1D Wfm NChan NSamp).vi"/>
				<Item Name="DAQmx Read (Digital 2D Bool NChan 1Samp NLine).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital 2D Bool NChan 1Samp NLine).vi"/>
				<Item Name="DAQmx Read (Digital 2D U8 NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital 2D U8 NChan NSamp).vi"/>
				<Item Name="DAQmx Read (Digital 2D U16 NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital 2D U16 NChan NSamp).vi"/>
				<Item Name="DAQmx Read (Digital 2D U32 NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital 2D U32 NChan NSamp).vi"/>
				<Item Name="DAQmx Read (Digital Bool 1Line 1Point).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital Bool 1Line 1Point).vi"/>
				<Item Name="DAQmx Read (Digital U8 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital U8 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Read (Digital U16 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital U16 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Read (Digital U32 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital U32 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Read (Digital Wfm 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital Wfm 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Read (Digital Wfm 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital Wfm 1Chan NSamp).vi"/>
				<Item Name="DAQmx Read (Raw 1D I8).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Raw 1D I8).vi"/>
				<Item Name="DAQmx Read (Raw 1D I16).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Raw 1D I16).vi"/>
				<Item Name="DAQmx Read (Raw 1D I32).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Raw 1D I32).vi"/>
				<Item Name="DAQmx Read (Raw 1D U8).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Raw 1D U8).vi"/>
				<Item Name="DAQmx Read (Raw 1D U16).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Raw 1D U16).vi"/>
				<Item Name="DAQmx Read (Raw 1D U32).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Raw 1D U32).vi"/>
				<Item Name="DAQmx Read.vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read.vi"/>
				<Item Name="FormatTime String.vi" Type="VI" URL="/&lt;vilib&gt;/express/express execution control/ElapsedTimeBlock.llb/FormatTime String.vi"/>
				<Item Name="subElapsedTime.vi" Type="VI" URL="/&lt;vilib&gt;/express/express execution control/ElapsedTimeBlock.llb/subElapsedTime.vi"/>
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
				<Item Name="whitespace.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/whitespace.ctl"/>
				<Item Name="Trim Whitespace.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Trim Whitespace.vi"/>
				<Item Name="Error Code Database.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Code Database.vi"/>
				<Item Name="GetRTHostConnectedProp.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetRTHostConnectedProp.vi"/>
				<Item Name="Set String Value.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set String Value.vi"/>
				<Item Name="Check Special Tags.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Check Special Tags.vi"/>
				<Item Name="General Error Handler Core CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler Core CORE.vi"/>
				<Item Name="DialogType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogType.ctl"/>
				<Item Name="General Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler.vi"/>
				<Item Name="Simple Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Simple Error Handler.vi"/>
				<Item Name="NI_PackedLibraryUtility.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/LVLibp/NI_PackedLibraryUtility.lvlib"/>
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
				<Item Name="NI_FileType.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/lvfile.llb/NI_FileType.lvlib"/>
				<Item Name="Check if File or Folder Exists.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Check if File or Folder Exists.vi"/>
				<Item Name="FixedFileInfo_Struct.ctl" Type="VI" URL="/&lt;vilib&gt;/Platform/fileVersionInfo.llb/FixedFileInfo_Struct.ctl"/>
				<Item Name="MoveMemory.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/fileVersionInfo.llb/MoveMemory.vi"/>
				<Item Name="BuildErrorSource.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/fileVersionInfo.llb/BuildErrorSource.vi"/>
				<Item Name="VerQueryValue.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/fileVersionInfo.llb/VerQueryValue.vi"/>
				<Item Name="GetFileVersionInfo.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/fileVersionInfo.llb/GetFileVersionInfo.vi"/>
				<Item Name="GetFileVersionInfoSize.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/fileVersionInfo.llb/GetFileVersionInfoSize.vi"/>
				<Item Name="FileVersionInformation.ctl" Type="VI" URL="/&lt;vilib&gt;/Platform/fileVersionInfo.llb/FileVersionInformation.ctl"/>
				<Item Name="FileVersionInfo.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/fileVersionInfo.llb/FileVersionInfo.vi"/>
				<Item Name="Find First Error.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Find First Error.vi"/>
				<Item Name="Close File+.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Close File+.vi"/>
				<Item Name="Read File+ (string).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read File+ (string).vi"/>
				<Item Name="Open File+.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Open File+.vi"/>
				<Item Name="Read Lines From File.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read Lines From File.vi"/>
				<Item Name="Read From Spreadsheet File (string).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read From Spreadsheet File (string).vi"/>
				<Item Name="Read From Spreadsheet File (I64).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read From Spreadsheet File (I64).vi"/>
				<Item Name="Read From Spreadsheet File (DBL).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read From Spreadsheet File (DBL).vi"/>
				<Item Name="Read From Spreadsheet File.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read From Spreadsheet File.vi"/>
				<Item Name="Write Spreadsheet String.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Write Spreadsheet String.vi"/>
				<Item Name="Write To Spreadsheet File (string).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Write To Spreadsheet File (string).vi"/>
				<Item Name="Write To Spreadsheet File (I64).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Write To Spreadsheet File (I64).vi"/>
				<Item Name="Write To Spreadsheet File (DBL).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Write To Spreadsheet File (DBL).vi"/>
				<Item Name="Write To Spreadsheet File.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Write To Spreadsheet File.vi"/>
				<Item Name="VISA Configure Serial Port (Instr).vi" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Configure Serial Port (Instr).vi"/>
				<Item Name="VISA Configure Serial Port (Serial Instr).vi" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Configure Serial Port (Serial Instr).vi"/>
				<Item Name="VISA Configure Serial Port" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Configure Serial Port"/>
				<Item Name="VISA Open Access Mode.ctl" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Open Access Mode.ctl"/>
				<Item Name="Space Constant.vi" Type="VI" URL="/&lt;vilib&gt;/dlg_ctls.llb/Space Constant.vi"/>
				<Item Name="NI_AALPro.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/NI_AALPro.lvlib"/>
				<Item Name="NI_PtbyPt.lvlib" Type="Library" URL="/&lt;vilib&gt;/ptbypt/NI_PtbyPt.lvlib"/>
				<Item Name="NI_AALBase.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/NI_AALBase.lvlib"/>
				<Item Name="Parse State Queue__jki_lib_state_machine.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/State Machine/_JKI_lib_State_Machine.llb/Parse State Queue__jki_lib_state_machine.vi"/>
				<Item Name="Set Cursor (Icon Pict).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/cursorutil.llb/Set Cursor (Icon Pict).vi"/>
				<Item Name="Set Cursor (Cursor ID).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/cursorutil.llb/Set Cursor (Cursor ID).vi"/>
				<Item Name="Set Cursor.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/cursorutil.llb/Set Cursor.vi"/>
				<Item Name="Set Busy.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/cursorutil.llb/Set Busy.vi"/>
				<Item Name="Unset Busy.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/cursorutil.llb/Unset Busy.vi"/>
				<Item Name="Add State(s) to Queue__jki_lib_state_machine.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/State Machine/_JKI_lib_State_Machine.llb/Add State(s) to Queue__jki_lib_state_machine.vi"/>
				<Item Name="compatReadText.vi" Type="VI" URL="/&lt;vilib&gt;/_oldvers/_oldvers.llb/compatReadText.vi"/>
				<Item Name="DAQmx Read (Counter 1D DBL NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Counter 1D DBL NChan 1Samp).vi"/>
				<Item Name="DAQmx Read (Counter 1D U32 NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Counter 1D U32 NChan 1Samp).vi"/>
				<Item Name="DAQmx Read (Counter 2D DBL NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Counter 2D DBL NChan NSamp).vi"/>
				<Item Name="DAQmx Read (Counter 2D U32 NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Counter 2D U32 NChan NSamp).vi"/>
				<Item Name="Write Delimited Spreadsheet (string).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Write Delimited Spreadsheet (string).vi"/>
				<Item Name="Write Delimited Spreadsheet (I64).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Write Delimited Spreadsheet (I64).vi"/>
				<Item Name="Write Delimited Spreadsheet (DBL).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Write Delimited Spreadsheet (DBL).vi"/>
				<Item Name="Write Delimited Spreadsheet.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Write Delimited Spreadsheet.vi"/>
				<Item Name="VISA Flush IO Buffer Mask.ctl" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Flush IO Buffer Mask.ctl"/>
				<Item Name="Application Directory.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Application Directory.vi"/>
				<Item Name="subDisplayMessage.vi" Type="VI" URL="/&lt;vilib&gt;/express/express output/DisplayMessageBlock.llb/subDisplayMessage.vi"/>
				<Item Name="ex_CorrectErrorChain.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/ex_CorrectErrorChain.vi"/>
				<Item Name="subFile Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/express/express input/FileDialogBlock.llb/subFile Dialog.vi"/>
			</Item>
			<Item Name="nilvaiu.dll" Type="Document" URL="nilvaiu.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="version.dll" Type="Document" URL="version.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="kernel32.dll" Type="Document" URL="kernel32.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="lvanlys.dll" Type="Document" URL="/&lt;resource&gt;/lvanlys.dll"/>
			<Item Name="UTILITY General Time Header.vi" Type="VI" URL="../../../Utility/UTILITY General Time Header.vi"/>
			<Item Name="WT500 Wiring Control.ctl" Type="VI" URL="../../../../Drivers/Yokogawa WT500/Type Definitions/WT500 Wiring Control.ctl"/>
			<Item Name="WT500 IEC 2015 Setup.vi" Type="VI" URL="../../../../Drivers/Yokogawa WT500/Main/WT500 IEC 2015 Setup.vi"/>
			<Item Name="YKWT500 Revision Query.vi" Type="VI" URL="../../../../Drivers/Yokogawa WT500/LLBs/ykwt500.llb/YKWT500 Revision Query.vi"/>
			<Item Name="_YKWT500 Query.vi" Type="VI" URL="../../../../Drivers/Yokogawa WT500/LLBs/_ykwt500.llb/_YKWT500 Query.vi"/>
			<Item Name="YKWT500 Error Query.vi" Type="VI" URL="../../../../Drivers/Yokogawa WT500/LLBs/ykwt500.llb/YKWT500 Error Query.vi"/>
			<Item Name="WT500 General Setup.vi" Type="VI" URL="../../../../Drivers/Yokogawa WT500/Main/WT500 General Setup.vi"/>
			<Item Name="WT500 Set Wiring.vi" Type="VI" URL="../../../../Drivers/Yokogawa WT500/Main/WT500 Set Wiring.vi"/>
			<Item Name="YKWT500 Initialize.vi" Type="VI" URL="../../../../Drivers/Yokogawa WT500/LLBs/ykwt500.llb/YKWT500 Initialize.vi"/>
			<Item Name="_YKWT500 Utility Default Instrument Setup.vi" Type="VI" URL="../../../../Drivers/Yokogawa WT500/LLBs/_ykwt500.llb/_YKWT500 Utility Default Instrument Setup.vi"/>
			<Item Name="_YKWT500 Write.vi" Type="VI" URL="../../../../Drivers/Yokogawa WT500/LLBs/_ykwt500.llb/_YKWT500 Write.vi"/>
			<Item Name="YKWT500 Reset.vi" Type="VI" URL="../../../../Drivers/Yokogawa WT500/LLBs/ykwt500.llb/YKWT500 Reset.vi"/>
			<Item Name="YKWT500 Close.vi" Type="VI" URL="../../../../Drivers/Yokogawa WT500/LLBs/ykwt500.llb/YKWT500 Close.vi"/>
			<Item Name="YKWT500 Start Stop Integration.vi" Type="VI" URL="../../../../Drivers/Yokogawa WT500/LLBs/ykwt500.llb/YKWT500 Start Stop Integration.vi"/>
			<Item Name="YKWT500 Query Condition Status.vi" Type="VI" URL="../../../../Drivers/Yokogawa WT500/LLBs/ykwt500.llb/YKWT500 Query Condition Status.vi"/>
			<Item Name="YKWT500 Configure Update Rate.vi" Type="VI" URL="../../../../Drivers/Yokogawa WT500/LLBs/ykwt500.llb/YKWT500 Configure Update Rate.vi"/>
			<Item Name="YKWT500 Configure Wiring.vi" Type="VI" URL="../../../../Drivers/Yokogawa WT500/LLBs/ykwt500.llb/YKWT500 Configure Wiring.vi"/>
			<Item Name="YKWT500 Query Element Type.vi" Type="VI" URL="../../../../Drivers/Yokogawa WT500/LLBs/ykwt500.llb/YKWT500 Query Element Type.vi"/>
			<Item Name="YKWT500 Reset Integration.vi" Type="VI" URL="../../../../Drivers/Yokogawa WT500/LLBs/ykwt500.llb/YKWT500 Reset Integration.vi"/>
			<Item Name="YKWT500 Configure Voltage.vi" Type="VI" URL="../../../../Drivers/Yokogawa WT500/LLBs/ykwt500.llb/YKWT500 Configure Voltage.vi"/>
			<Item Name="YKWT500 Configure Current.vi" Type="VI" URL="../../../../Drivers/Yokogawa WT500/LLBs/ykwt500.llb/YKWT500 Configure Current.vi"/>
			<Item Name="WT500 Configure Array Locations.vi" Type="VI" URL="../../../../Drivers/Yokogawa WT500/Type Definitions/WT500 Configure Array Locations.vi"/>
			<Item Name="YKWT500 Configure Display Numeric Format.vi" Type="VI" URL="../../../../Drivers/Yokogawa WT500/LLBs/ykwt500.llb/YKWT500 Configure Display Numeric Format.vi"/>
			<Item Name="YKWT500 Configure Display Format.vi" Type="VI" URL="../../../../Drivers/Yokogawa WT500/LLBs/ykwt500.llb/YKWT500 Configure Display Format.vi"/>
			<Item Name="YKWT500 Configure Display Numeric.vi" Type="VI" URL="../../../../Drivers/Yokogawa WT500/LLBs/ykwt500.llb/YKWT500 Configure Display Numeric.vi"/>
			<Item Name="YKWT500 Configure Numeric Item.vi" Type="VI" URL="../../../../Drivers/Yokogawa WT500/LLBs/ykwt500.llb/YKWT500 Configure Numeric Item.vi"/>
			<Item Name="YKWT500 Configure Numeric Item (Set).vi" Type="VI" URL="../../../../Drivers/Yokogawa WT500/LLBs/ykwt500.llb/YKWT500 Configure Numeric Item (Set).vi"/>
			<Item Name="YKWT500 Configure Numeric Item (Preset).vi" Type="VI" URL="../../../../Drivers/Yokogawa WT500/LLBs/ykwt500.llb/YKWT500 Configure Numeric Item (Preset).vi"/>
			<Item Name="YKWT500 Configure Numeric Item (Delete).vi" Type="VI" URL="../../../../Drivers/Yokogawa WT500/LLBs/ykwt500.llb/YKWT500 Configure Numeric Item (Delete).vi"/>
			<Item Name="UTILITY Delay mS.vi" Type="VI" URL="../../../Utility/UTILITY Delay mS.vi"/>
			<Item Name="YKWT500 Read Numeric.vi" Type="VI" URL="../../../../Drivers/Yokogawa WT500/LLBs/ykwt500.llb/YKWT500 Read Numeric.vi"/>
			<Item Name="YKWT500 Read Numeric (Normal).vi" Type="VI" URL="../../../../Drivers/Yokogawa WT500/LLBs/ykwt500.llb/YKWT500 Read Numeric (Normal).vi"/>
			<Item Name="YKWT500 Initiate.vi" Type="VI" URL="../../../../Drivers/Yokogawa WT500/LLBs/ykwt500.llb/YKWT500 Initiate.vi"/>
			<Item Name="YKWT500 Wait for Acquisition Complete.vi" Type="VI" URL="../../../../Drivers/Yokogawa WT500/LLBs/ykwt500.llb/YKWT500 Wait for Acquisition Complete.vi"/>
			<Item Name="YKWT500 Fetch Numeric (Normal).vi" Type="VI" URL="../../../../Drivers/Yokogawa WT500/LLBs/ykwt500.llb/YKWT500 Fetch Numeric (Normal).vi"/>
			<Item Name="YKWT500 Read Numeric (Preset Normal).vi" Type="VI" URL="../../../../Drivers/Yokogawa WT500/LLBs/ykwt500.llb/YKWT500 Read Numeric (Preset Normal).vi"/>
			<Item Name="YKWT500 Read Numeric (List).vi" Type="VI" URL="../../../../Drivers/Yokogawa WT500/LLBs/ykwt500.llb/YKWT500 Read Numeric (List).vi"/>
			<Item Name="YKWT500 Fetch Numeric (List).vi" Type="VI" URL="../../../../Drivers/Yokogawa WT500/LLBs/ykwt500.llb/YKWT500 Fetch Numeric (List).vi"/>
			<Item Name="_YKWT500 Query Number of List Order.vi" Type="VI" URL="../../../../Drivers/Yokogawa WT500/LLBs/_ykwt500.llb/_YKWT500 Query Number of List Order.vi"/>
			<Item Name="YKWT500 Read Numeric (Preset List).vi" Type="VI" URL="../../../../Drivers/Yokogawa WT500/LLBs/ykwt500.llb/YKWT500 Read Numeric (Preset List).vi"/>
			<Item Name="YKWT500 Configure Numeric List.vi" Type="VI" URL="../../../../Drivers/Yokogawa WT500/LLBs/ykwt500.llb/YKWT500 Configure Numeric List.vi"/>
			<Item Name="YKWT500 Configure Numeric List (Set).vi" Type="VI" URL="../../../../Drivers/Yokogawa WT500/LLBs/ykwt500.llb/YKWT500 Configure Numeric List (Set).vi"/>
			<Item Name="YKWT500 Configure Numeric List (Preset).vi" Type="VI" URL="../../../../Drivers/Yokogawa WT500/LLBs/ykwt500.llb/YKWT500 Configure Numeric List (Preset).vi"/>
			<Item Name="YKWT500 Configure Numeric List (Delete).vi" Type="VI" URL="../../../../Drivers/Yokogawa WT500/LLBs/ykwt500.llb/YKWT500 Configure Numeric List (Delete).vi"/>
			<Item Name="WT500 Get Power Data.vi" Type="VI" URL="../../../../Drivers/Yokogawa WT500/Main/WT500 Get Power Data.vi"/>
			<Item Name="UTILITY Power Data.ctl" Type="VI" URL="../../../Utility/Type Definitions/UTILITY Power Data.ctl"/>
			<Item Name="Standby Power Header.vi" Type="VI" URL="../../../Utility/Standby Power/Supporting VIs/Standby Power Header.vi"/>
			<Item Name="Custom Pallet DBL.ctl" Type="VI" URL="../../../Utility/Custom Pallet Controls/Custom Pallet DBL.ctl"/>
		</Item>
		<Item Name="Build Specifications" Type="Build">
			<Item Name="RANGE Gas Meter" Type="EXE">
				<Property Name="App_copyErrors" Type="Bool">true</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{B74CF707-E463-4039-A2C7-2A368ACCA88B}</Property>
				<Property Name="App_INI_GUID" Type="Str">{3A89212D-6B20-4BC1-AD21-A37797D36FE4}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{2C8A3516-CB1E-4B61-BAF4-FEC5A1A9BA4E}</Property>
				<Property Name="Bld_buildSpecDescription" Type="Str">Added Totalized Flow, fixed timer counter to reset to "blank". Added Full Scale/Reading Accuracy calculation to zero meter at "0". Added extra parameters to the default startup file, updated header and data to write. Converted LPM to LPS

Build 2. Several updates. Changed totalizing from LPM to SLPM. Change the file save routine. Allow more config
file parameters, added Tare, added custom Gas Mixtures, input button to change gas mix on the fly. </Property>
				<Property Name="Bld_buildSpecName" Type="Str">RANGE Gas Meter</Property>
				<Property Name="Bld_excludeInlineSubVIs" Type="Bool">true</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../builds/NI_AB_PROJECTNAME</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToCommon</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{8F83C6DE-F0F1-462C-BA0F-212577AB3783}</Property>
				<Property Name="Bld_version.build" Type="Int">47</Property>
				<Property Name="Bld_version.major" Type="Int">2</Property>
				<Property Name="Destination[0].destName" Type="Str">RANGE Gas Meter.exe</Property>
				<Property Name="Destination[0].path" Type="Path">../builds/NI_AB_PROJECTNAME/RANGE Gas Meter.exe</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../builds/NI_AB_PROJECTNAME/data</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Exe_iconItemID" Type="Ref">/My Computer/Documentation/Gas Lab.ico</Property>
				<Property Name="Source[0].itemID" Type="Str">{AFE1E737-D38B-4245-B715-326586CFFF87}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/RANGE Gas Meters.vi</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="SourceCount" Type="Int">2</Property>
				<Property Name="TgtF_companyName" Type="Str">General Electric</Property>
				<Property Name="TgtF_enableDebugging" Type="Bool">true</Property>
				<Property Name="TgtF_fileDescription" Type="Str">RANGE Gas Meter</Property>
				<Property Name="TgtF_internalName" Type="Str">RANGE Gas Meter</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2016 General Electric</Property>
				<Property Name="TgtF_productName" Type="Str">RANGE Gas Meter</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{8AF6EB4E-10AB-4A02-9AFE-7E444266E2FA}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">RANGE Gas Meter.exe</Property>
			</Item>
			<Item Name="GE Gas Lab Flow Meter" Type="Installer">
				<Property Name="Destination[0].name" Type="Str">RANGE Gas Meter</Property>
				<Property Name="Destination[0].parent" Type="Str">{3912416A-D2E5-411B-AFEE-B63654D690C0}</Property>
				<Property Name="Destination[0].tag" Type="Str">{4BF0CCA2-F2DD-4B21-9058-4EB47B933470}</Property>
				<Property Name="Destination[0].type" Type="Str">userFolder</Property>
				<Property Name="Destination[1].name" Type="Str">c:\RANGE Gas Meter</Property>
				<Property Name="Destination[1].path" Type="Path">/c/RANGE Gas Meter</Property>
				<Property Name="Destination[1].tag" Type="Str">{802C1054-B864-4FA7-AFD1-C4CDB623E409}</Property>
				<Property Name="Destination[1].type" Type="Str">absFolder</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="DistPart[0].flavorID" Type="Str">_full_</Property>
				<Property Name="DistPart[0].productID" Type="Str">{060A0DD9-6B7B-4AC4-A621-A7A37D08E989}</Property>
				<Property Name="DistPart[0].productName" Type="Str">NI-488.2 Runtime 16.0</Property>
				<Property Name="DistPart[0].upgradeCode" Type="Str">{357F6618-C660-41A2-A185-5578CC876D1D}</Property>
				<Property Name="DistPart[1].flavorID" Type="Str">_full_</Property>
				<Property Name="DistPart[1].productID" Type="Str">{1DDA4217-76EE-4AE8-B8DC-688A3DEB8DA5}</Property>
				<Property Name="DistPart[1].productName" Type="Str">NI-DAQmx Runtime 16.0</Property>
				<Property Name="DistPart[1].upgradeCode" Type="Str">{923C9CD5-A0D8-4147-9A8D-998780E30763}</Property>
				<Property Name="DistPart[2].flavorID" Type="Str">_deployment_</Property>
				<Property Name="DistPart[2].productID" Type="Str">{272BF3A9-7DBB-47EE-B2B8-CB893AA8166B}</Property>
				<Property Name="DistPart[2].productName" Type="Str">NI-VISA Runtime 16.0</Property>
				<Property Name="DistPart[2].upgradeCode" Type="Str">{8627993A-3F66-483C-A562-0D3BA3F267B1}</Property>
				<Property Name="DistPart[3].flavorID" Type="Str">DefaultFull</Property>
				<Property Name="DistPart[3].productID" Type="Str">{448569AE-EE10-456F-B3A6-CA1D862E2E9C}</Property>
				<Property Name="DistPart[3].productName" Type="Str">NI LabVIEW Runtime 2016</Property>
				<Property Name="DistPart[3].SoftDep[0].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[3].SoftDep[0].productName" Type="Str">NI LabVIEW Runtime 2016 Non-English Support.</Property>
				<Property Name="DistPart[3].SoftDep[0].upgradeCode" Type="Str">{72AEEB03-DF6A-4C90-B44E-22B1E74CF14F}</Property>
				<Property Name="DistPart[3].SoftDep[1].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[3].SoftDep[1].productName" Type="Str">NI ActiveX Container</Property>
				<Property Name="DistPart[3].SoftDep[1].upgradeCode" Type="Str">{1038A887-23E1-4289-B0BD-0C4B83C6BA21}</Property>
				<Property Name="DistPart[3].SoftDep[10].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[3].SoftDep[10].productName" Type="Str">NI VC2015 Runtime</Property>
				<Property Name="DistPart[3].SoftDep[10].upgradeCode" Type="Str">{D42E7BAE-6589-4570-B6A3-3E28889392E7}</Property>
				<Property Name="DistPart[3].SoftDep[11].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[3].SoftDep[11].productName" Type="Str">NI mDNS Responder 14.0</Property>
				<Property Name="DistPart[3].SoftDep[11].upgradeCode" Type="Str">{9607874B-4BB3-42CB-B450-A2F5EF60BA3B}</Property>
				<Property Name="DistPart[3].SoftDep[12].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[3].SoftDep[12].productName" Type="Str">NI Deployment Framework 2016</Property>
				<Property Name="DistPart[3].SoftDep[12].upgradeCode" Type="Str">{838942E4-B73C-492E-81A3-AA1E291FD0DC}</Property>
				<Property Name="DistPart[3].SoftDep[13].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[3].SoftDep[13].productName" Type="Str">NI Error Reporting 2016</Property>
				<Property Name="DistPart[3].SoftDep[13].upgradeCode" Type="Str">{42E818C6-2B08-4DE7-BD91-B0FD704C119A}</Property>
				<Property Name="DistPart[3].SoftDep[2].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[3].SoftDep[2].productName" Type="Str">NI System Web Server 16.0</Property>
				<Property Name="DistPart[3].SoftDep[2].upgradeCode" Type="Str">{FCF64B73-B7D4-4971-8F11-24BAF7CC3E6C}</Property>
				<Property Name="DistPart[3].SoftDep[3].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[3].SoftDep[3].productName" Type="Str">Math Kernel Libraries</Property>
				<Property Name="DistPart[3].SoftDep[3].upgradeCode" Type="Str">{F34FFCA8-C4CB-47CC-8B81-C4E95E227355}</Property>
				<Property Name="DistPart[3].SoftDep[4].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[3].SoftDep[4].productName" Type="Str">NI Logos 5.8</Property>
				<Property Name="DistPart[3].SoftDep[4].upgradeCode" Type="Str">{5E4A4CE3-4D06-11D4-8B22-006008C16337}</Property>
				<Property Name="DistPart[3].SoftDep[5].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[3].SoftDep[5].productName" Type="Str">NI TDM Streaming 16.0</Property>
				<Property Name="DistPart[3].SoftDep[5].upgradeCode" Type="Str">{4CD11BE6-6BB7-4082-8A27-C13771BC309B}</Property>
				<Property Name="DistPart[3].SoftDep[6].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[3].SoftDep[6].productName" Type="Str">NI LabVIEW Web Server 2016</Property>
				<Property Name="DistPart[3].SoftDep[6].upgradeCode" Type="Str">{6A61A967-C04E-47A1-8D08-DF27332A78AB}</Property>
				<Property Name="DistPart[3].SoftDep[7].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[3].SoftDep[7].productName" Type="Str">NI LabVIEW Real-Time NBFifo 2016</Property>
				<Property Name="DistPart[3].SoftDep[7].upgradeCode" Type="Str">{718F68F2-14F0-4656-A29E-617F12A7343B}</Property>
				<Property Name="DistPart[3].SoftDep[8].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[3].SoftDep[8].productName" Type="Str">NI VC2008MSMs</Property>
				<Property Name="DistPart[3].SoftDep[8].upgradeCode" Type="Str">{FDA3F8BB-BAA9-45D7-8DC7-22E1F5C76315}</Property>
				<Property Name="DistPart[3].SoftDep[9].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[3].SoftDep[9].productName" Type="Str">NI VC2010MSMs</Property>
				<Property Name="DistPart[3].SoftDep[9].upgradeCode" Type="Str">{EFBA6F9E-F934-4BD7-AC51-60CCA480489C}</Property>
				<Property Name="DistPart[3].SoftDepCount" Type="Int">14</Property>
				<Property Name="DistPart[3].upgradeCode" Type="Str">{E7DBF016-365A-40B6-9526-B4D0B4830F51}</Property>
				<Property Name="DistPart[4].flavorID" Type="Str">_full_</Property>
				<Property Name="DistPart[4].productID" Type="Str">{C8ED285F-9BE8-455F-82F1-9DB5DC4F7771}</Property>
				<Property Name="DistPart[4].productName" Type="Str">NI-DAQmx Runtime with Configuration Support 16.0</Property>
				<Property Name="DistPart[4].upgradeCode" Type="Str">{9856368A-ED47-4944-87BE-8EF3472AE39B}</Property>
				<Property Name="DistPartCount" Type="Int">5</Property>
				<Property Name="INST_author" Type="Str">General Electric</Property>
				<Property Name="INST_autoIncrement" Type="Bool">true</Property>
				<Property Name="INST_buildLocation" Type="Path">../builds/RANGE Gas Meter/GE Gas Lab Flow Meter</Property>
				<Property Name="INST_buildLocation.type" Type="Str">relativeToCommon</Property>
				<Property Name="INST_buildSpecName" Type="Str">GE Gas Lab Flow Meter</Property>
				<Property Name="INST_defaultDir" Type="Str">{802C1054-B864-4FA7-AFD1-C4CDB623E409}</Property>
				<Property Name="INST_productName" Type="Str">RANGE Gas Meter</Property>
				<Property Name="INST_productVersion" Type="Str">1.0.5</Property>
				<Property Name="InstSpecBitness" Type="Str">32-bit</Property>
				<Property Name="InstSpecVersion" Type="Str">16008010</Property>
				<Property Name="MSI_arpCompany" Type="Str">General Electric</Property>
				<Property Name="MSI_arpContact" Type="Str">Corey Sweatt</Property>
				<Property Name="MSI_arpPhone" Type="Str">502-452-4708</Property>
				<Property Name="MSI_bannerImageID" Type="Ref">/My Computer/Documentation/chian-haier-ge.bmp</Property>
				<Property Name="MSI_distID" Type="Str">{91C6AF44-E903-4C51-A68F-4B1DDEB3DD11}</Property>
				<Property Name="MSI_hwOption" Type="Int">3</Property>
				<Property Name="MSI_hwPath" Type="Path">../Documentation/Range MAX Config File.nce</Property>
				<Property Name="MSI_hwPath.type" Type="Str">relativeToCommon</Property>
				<Property Name="MSI_osCheck" Type="Int">0</Property>
				<Property Name="MSI_upgradeCode" Type="Str">{66678074-A7AD-4075-ACB3-E27E14B7061A}</Property>
				<Property Name="MSI_welcomeImageID" Type="Ref">/My Computer/Documentation/GE Gas Range.bmp</Property>
				<Property Name="MSI_windowTitle" Type="Str">Welcome to the Gas Lab Flow Meter Software</Property>
				<Property Name="RegDest[0].dirName" Type="Str">Software</Property>
				<Property Name="RegDest[0].dirTag" Type="Str">{DDFAFC8B-E728-4AC8-96DE-B920EBB97A86}</Property>
				<Property Name="RegDest[0].parentTag" Type="Str">2</Property>
				<Property Name="RegDestCount" Type="Int">1</Property>
				<Property Name="Source[0].dest" Type="Str">{4BF0CCA2-F2DD-4B21-9058-4EB47B933470}</Property>
				<Property Name="Source[0].File[0].dest" Type="Str">{4BF0CCA2-F2DD-4B21-9058-4EB47B933470}</Property>
				<Property Name="Source[0].File[0].name" Type="Str">RANGE Gas Meter.exe</Property>
				<Property Name="Source[0].File[0].tag" Type="Str">{8AF6EB4E-10AB-4A02-9AFE-7E444266E2FA}</Property>
				<Property Name="Source[0].FileCount" Type="Int">1</Property>
				<Property Name="Source[0].name" Type="Str">RANGE Gas Meter</Property>
				<Property Name="Source[0].tag" Type="Ref">/My Computer/Build Specifications/RANGE Gas Meter</Property>
				<Property Name="Source[0].type" Type="Str">EXE</Property>
				<Property Name="Source[1].dest" Type="Str">{802C1054-B864-4FA7-AFD1-C4CDB623E409}</Property>
				<Property Name="Source[1].File[0].dest" Type="Str">{802C1054-B864-4FA7-AFD1-C4CDB623E409}</Property>
				<Property Name="Source[1].File[0].name" Type="Str">RANGE Gas Meter.exe</Property>
				<Property Name="Source[1].File[0].Shortcut[0].destIndex" Type="Int">1</Property>
				<Property Name="Source[1].File[0].Shortcut[0].name" Type="Str">RANGE Gas Meter</Property>
				<Property Name="Source[1].File[0].Shortcut[0].subDir" Type="Str">RANGE Gas Meter</Property>
				<Property Name="Source[1].File[0].Shortcut[1].destIndex" Type="Int">2</Property>
				<Property Name="Source[1].File[0].Shortcut[1].name" Type="Str">RANGE Gas Meter</Property>
				<Property Name="Source[1].File[0].Shortcut[1].subDir" Type="Str">RANGE Gas Meter</Property>
				<Property Name="Source[1].File[0].ShortcutCount" Type="Int">2</Property>
				<Property Name="Source[1].File[0].tag" Type="Str">{8AF6EB4E-10AB-4A02-9AFE-7E444266E2FA}</Property>
				<Property Name="Source[1].FileCount" Type="Int">1</Property>
				<Property Name="Source[1].name" Type="Str">RANGE Gas Meter</Property>
				<Property Name="Source[1].tag" Type="Ref">/My Computer/Build Specifications/RANGE Gas Meter</Property>
				<Property Name="Source[1].type" Type="Str">EXE</Property>
				<Property Name="SourceCount" Type="Int">2</Property>
			</Item>
		</Item>
	</Item>
</Project>
