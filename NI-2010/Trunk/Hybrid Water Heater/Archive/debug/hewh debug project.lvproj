<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="9008000">
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
		<Item Name="GetGEA2HyperData.vi" Type="VI" URL="../../GEA2/GetGEA2HyperData.vi"/>
		<Item Name="GEA_HEWH_SM.vi" Type="VI" URL="../../GEA2/GEA_HEWH_SM.vi"/>
		<Item Name="02 HEWH Stand Overide.vi" Type="VI" URL="../../02 HEWH Stand Overide.vi"/>
		<Item Name="HEWH Serial Data Read.vi" Type="VI" URL="../../HEWH Serial Data Read.vi"/>
		<Item Name="Panel Overide Com Settings.vi" Type="VI" URL="../../Panel Overide Com Settings.vi"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="Parse State Queue__jki_lib_state_machine.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/State Machine/_jki_lib_state_machine.llb/Parse State Queue__jki_lib_state_machine.vi"/>
				<Item Name="Trim Whitespace.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Trim Whitespace.vi"/>
				<Item Name="whitespace.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/whitespace.ctl"/>
				<Item Name="Add State(s) to Queue__jki_lib_state_machine.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/State Machine/_jki_lib_state_machine.llb/Add State(s) to Queue__jki_lib_state_machine.vi"/>
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
				<Item Name="Unset Busy.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/cursorutil.llb/Unset Busy.vi"/>
				<Item Name="Merge Errors.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Merge Errors.vi"/>
				<Item Name="Set Cursor.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/cursorutil.llb/Set Cursor.vi"/>
				<Item Name="Set Cursor (Cursor ID).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/cursorutil.llb/Set Cursor (Cursor ID).vi"/>
				<Item Name="Set Cursor (Icon Pict).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/cursorutil.llb/Set Cursor (Icon Pict).vi"/>
				<Item Name="Set Busy.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/cursorutil.llb/Set Busy.vi"/>
				<Item Name="VISA Configure Serial Port" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Configure Serial Port"/>
				<Item Name="VISA Configure Serial Port (Instr).vi" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Configure Serial Port (Instr).vi"/>
				<Item Name="VISA Configure Serial Port (Serial Instr).vi" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Configure Serial Port (Serial Instr).vi"/>
				<Item Name="Clear Errors.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Clear Errors.vi"/>
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
				<Item Name="ErrWarn.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/ErrWarn.ctl"/>
				<Item Name="eventvkey.ctl" Type="VI" URL="/&lt;vilib&gt;/event_ctls.llb/eventvkey.ctl"/>
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
				<Item Name="Semaphore RefNum" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/Semaphore RefNum"/>
				<Item Name="Release Semaphore Reference.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/Release Semaphore Reference.vi"/>
				<Item Name="Semaphore Refnum Core.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/Semaphore Refnum Core.ctl"/>
				<Item Name="RemoveNamedSemaphorePrefix.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/RemoveNamedSemaphorePrefix.vi"/>
				<Item Name="GetNamedSemaphorePrefix.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/GetNamedSemaphorePrefix.vi"/>
				<Item Name="Release Semaphore.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/Release Semaphore.vi"/>
				<Item Name="Not A Semaphore.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/Not A Semaphore.vi"/>
				<Item Name="Acquire Semaphore.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/Acquire Semaphore.vi"/>
				<Item Name="Obtain Semaphore Reference.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/Obtain Semaphore Reference.vi"/>
				<Item Name="Validate Semaphore Size.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/Validate Semaphore Size.vi"/>
				<Item Name="AddNamedSemaphorePrefix.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/AddNamedSemaphorePrefix.vi"/>
				<Item Name="System Exec.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/system.llb/System Exec.vi"/>
				<Item Name="Space Constant.vi" Type="VI" URL="/&lt;vilib&gt;/dlg_ctls.llb/Space Constant.vi"/>
				<Item Name="NI_LVConfig.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/config.llb/NI_LVConfig.lvlib"/>
				<Item Name="Check if File or Folder Exists.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Check if File or Folder Exists.vi"/>
				<Item Name="NI_FileType.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/lvfile.llb/NI_FileType.lvlib"/>
				<Item Name="Simple Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Simple Error Handler.vi"/>
				<Item Name="NI_Gmath.lvlib" Type="Library" URL="/&lt;vilib&gt;/gmath/NI_Gmath.lvlib"/>
				<Item Name="Beep.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/system.llb/Beep.vi"/>
				<Item Name="subElapsedTime.vi" Type="VI" URL="/&lt;vilib&gt;/express/express execution control/ElapsedTimeBlock.llb/subElapsedTime.vi"/>
				<Item Name="FormatTime String.vi" Type="VI" URL="/&lt;vilib&gt;/express/express execution control/ElapsedTimeBlock.llb/FormatTime String.vi"/>
				<Item Name="Write To Spreadsheet File.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Write To Spreadsheet File.vi"/>
				<Item Name="Write To Spreadsheet File (DBL).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Write To Spreadsheet File (DBL).vi"/>
				<Item Name="Write Spreadsheet String.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Write Spreadsheet String.vi"/>
				<Item Name="Write To Spreadsheet File (I64).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Write To Spreadsheet File (I64).vi"/>
				<Item Name="Write To Spreadsheet File (string).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Write To Spreadsheet File (string).vi"/>
				<Item Name="NI_AALBase.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/NI_AALBase.lvlib"/>
				<Item Name="RGB to Color.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/colorconv.llb/RGB to Color.vi"/>
				<Item Name="FileVersionInformation.ctl" Type="VI" URL="/&lt;vilib&gt;/Platform/fileVersionInfo.llb/FileVersionInformation.ctl"/>
				<Item Name="FileVersionInfo.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/fileVersionInfo.llb/FileVersionInfo.vi"/>
				<Item Name="MoveMemory.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/fileVersionInfo.llb/MoveMemory.vi"/>
				<Item Name="FixedFileInfo_Struct.ctl" Type="VI" URL="/&lt;vilib&gt;/Platform/fileVersionInfo.llb/FixedFileInfo_Struct.ctl"/>
				<Item Name="VerQueryValue.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/fileVersionInfo.llb/VerQueryValue.vi"/>
				<Item Name="BuildErrorSource.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/fileVersionInfo.llb/BuildErrorSource.vi"/>
				<Item Name="GetFileVersionInfo.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/fileVersionInfo.llb/GetFileVersionInfo.vi"/>
				<Item Name="GetFileVersionInfoSize.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/fileVersionInfo.llb/GetFileVersionInfoSize.vi"/>
				<Item Name="Read From Spreadsheet File.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read From Spreadsheet File.vi"/>
				<Item Name="Read From Spreadsheet File (DBL).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read From Spreadsheet File (DBL).vi"/>
				<Item Name="Read Lines From File.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read Lines From File.vi"/>
				<Item Name="Close File+.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Close File+.vi"/>
				<Item Name="Find First Error.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Find First Error.vi"/>
				<Item Name="Read File+ (string).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read File+ (string).vi"/>
				<Item Name="compatReadText.vi" Type="VI" URL="/&lt;vilib&gt;/_oldvers/_oldvers.llb/compatReadText.vi"/>
				<Item Name="Open File+.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Open File+.vi"/>
				<Item Name="Read From Spreadsheet File (I64).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read From Spreadsheet File (I64).vi"/>
				<Item Name="Read From Spreadsheet File (string).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read From Spreadsheet File (string).vi"/>
				<Item Name="NI_AALPro.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/NI_AALPro.lvlib"/>
			</Item>
			<Item Name="crc16-ccitt (x1021).vi" Type="VI" URL="../../GEA2/crc16-ccitt (x1021).vi"/>
			<Item Name="HEWH_DSM_CMD.vi" Type="VI" URL="../../GEA2/HEWH_DSM_CMD.vi"/>
			<Item Name="HEWH Command Type.ctl" Type="VI" URL="../../GEA2/HEWH Command Type.ctl"/>
			<Item Name="Error Bool Enumerator.vi" Type="VI" URL="../../Error Bool Enumerator.vi"/>
			<Item Name="HEWH Error Enumeration.ctl" Type="VI" URL="../../HEWH Error Enumeration.ctl"/>
			<Item Name="visarc" Type="Document" URL="../../../../../Program Files/National Instruments/LabVIEW 2009/resource/visarc"/>
			<Item Name="HEWH Command Needs Read.vi" Type="VI" URL="../../GEA2/HEWH Command Needs Read.vi"/>
			<Item Name="Delay mS.vi" Type="VI" URL="../../../Utility/Delay mS.vi"/>
			<Item Name="GEA2 Check Read Ready.vi" Type="VI" URL="../../GEA2/GEA2 Check Read Ready.vi"/>
			<Item Name="GEA2 Add ESC Char.vi" Type="VI" URL="../../../Dryer Wilt/GEA2 Driver/GEA2 Add ESC Char.vi"/>
			<Item Name="Global HEWH.vi" Type="VI" URL="../../Global HEWH.vi"/>
			<Item Name="HEWH InitializeEquipmet.vi" Type="VI" URL="../../HEWH InitializeEquipmet.vi"/>
			<Item Name="YKMW100 Initialize.vi" Type="VI" URL="../../../../Drivers/YKMW100/YKMW100.llb/YKMW100 Initialize.vi"/>
			<Item Name="YKMW100 Login.vi" Type="VI" URL="../../../../Drivers/YKMW100/YKMW100U.llb/YKMW100 Login.vi"/>
			<Item Name="YKMW100 Receive String.vi" Type="VI" URL="../../../../Drivers/YKMW100/YKMW100.llb/YKMW100 Receive String.vi"/>
			<Item Name="YKMW100 Read Data.vi" Type="VI" URL="../../../../Drivers/YKMW100/YKMW100U.llb/YKMW100 Read Data.vi"/>
			<Item Name="YKMW100 Response Check.vi" Type="VI" URL="../../../../Drivers/YKMW100/YKMW100.llb/YKMW100 Response Check.vi"/>
			<Item Name="YKMW100 Convert Response Type.vi" Type="VI" URL="../../../../Drivers/YKMW100/YKMW100U.llb/YKMW100 Convert Response Type.vi"/>
			<Item Name="YKMW100 Set Command Error.vi" Type="VI" URL="../../../../Drivers/YKMW100/YKMW100U.llb/YKMW100 Set Command Error.vi"/>
			<Item Name="YKMW100 Send Message and Log.vi" Type="VI" URL="../../MW100/YKMW100 Send Message and Log.vi"/>
			<Item Name="YKMW100 Reset.vi" Type="VI" URL="../../../../Drivers/YKMW100/YKMW100.llb/YKMW100 Reset.vi"/>
			<Item Name="YKMW100 Close.vi" Type="VI" URL="../../../../Drivers/YKMW100/YKMW100.llb/YKMW100 Close.vi"/>
			<Item Name="YKMW100 Logout.vi" Type="VI" URL="../../../../Drivers/YKMW100/YKMW100U.llb/YKMW100 Logout.vi"/>
			<Item Name="Agilent 34970.lvlib" Type="Library" URL="../../../../Drivers/Agilent 34970/Agilent 34970.lvlib"/>
			<Item Name="YKWT500 Initialize.vi" Type="VI" URL="../../../../Drivers/ykwt500/ykwt500.llb/YKWT500 Initialize.vi"/>
			<Item Name="_YKWT500 SET AND Query.vi" Type="VI" URL="../../Experiments/_YKWT500 SET AND Query.vi"/>
			<Item Name="_YKWT500 Utility Default Instrument Setup.vi" Type="VI" URL="../../../../Drivers/ykwt500/_ykwt500.llb/_YKWT500 Utility Default Instrument Setup.vi"/>
			<Item Name="_YKWT500 Write.vi" Type="VI" URL="../../../../Drivers/ykwt500/_ykwt500.llb/_YKWT500 Write.vi"/>
			<Item Name="YKWT500 Reset.vi" Type="VI" URL="../../WT500/YKWT500 Reset.vi"/>
			<Item Name="YKWT500 Error Query.vi" Type="VI" URL="../../../../Drivers/ykwt500/ykwt500.llb/YKWT500 Error Query.vi"/>
			<Item Name="YKWT500 Close.vi" Type="VI" URL="../../../../Drivers/ykwt500/ykwt500.llb/YKWT500 Close.vi"/>
			<Item Name="HEWH CloseEquipmet.vi" Type="VI" URL="../../HEWH CloseEquipmet.vi"/>
			<Item Name="EquipReferences.ctl" Type="VI" URL="../../EquipReferences.ctl"/>
			<Item Name="Semiphore-Destroy-Local.vi" Type="VI" URL="../../../Utility/Semiphore-Destroy-Local.vi"/>
			<Item Name="Semiphore-Create-Local.vi" Type="VI" URL="../../../Utility/Semiphore-Create-Local.vi"/>
			<Item Name="YKMW100 Error Message.vi" Type="VI" URL="../../../../Drivers/YKMW100/YKMW100.llb/YKMW100 Error Message.vi"/>
			<Item Name="YKMW100 Mode Control.vi" Type="VI" URL="../../MW100/YKMW100 Mode Control.vi"/>
			<Item Name="YKMW100 Clear Output Buffer.vi" Type="VI" URL="../../MW100/YKMW100 Clear Output Buffer.vi"/>
			<Item Name="ErrorHandler.vi" Type="VI" URL="../../../../Sandbox/ErrorHandler.vi"/>
			<Item Name="YKMW100 Clear Error Display.vi" Type="VI" URL="../../MW100/YKMW100 Clear Error Display.vi"/>
			<Item Name="IP Address -Set.vi" Type="VI" URL="../../../Utility/IP Address -Set.vi"/>
			<Item Name="YKMW100 Computation Control.vi" Type="VI" URL="../../MW100/YKMW100 Computation Control.vi"/>
			<Item Name="IP and Computer Name.vi" Type="VI" URL="../../../Utility/IP and Computer Name.vi"/>
			<Item Name="Agilent Scan EZ Temperature.vi" Type="VI" URL="../../Agilent Scan EZ Temperature.vi"/>
			<Item Name="IP to Equipment.vi" Type="VI" URL="../../IP to Equipment.vi"/>
			<Item Name="Build String Array.vi" Type="VI" URL="../../../Utility/Build String Array.vi"/>
			<Item Name="Enter IPs.vi" Type="VI" URL="../../Enter IPs.vi"/>
			<Item Name="YKMW100 Get Error Log.vi" Type="VI" URL="../../MW100/YKMW100 Get Error Log.vi"/>
			<Item Name="Generic - DO1.vi" Type="VI" URL="../../Generic - DO1.vi"/>
			<Item Name="ChannelSettings.ctl" Type="VI" URL="../../ChannelSettings.ctl"/>
			<Item Name="ChannelSettings.vi" Type="VI" URL="../../ChannelSettings.vi"/>
			<Item Name="YKMW100 DO.vi" Type="VI" URL="../../MW100/YKMW100 DO.vi"/>
			<Item Name="Generic - AI1.vi" Type="VI" URL="../../Generic - AI1.vi"/>
			<Item Name="YKMW100 App Example Measurement Channel Data.vi" Type="VI" URL="../../../../Drivers/YKMW100/YKMW100.llb/YKMW100 App Example Measurement Channel Data.vi"/>
			<Item Name="YKMW100 Measurement Binary Data.vi" Type="VI" URL="../../../../Drivers/YKMW100/YKMW100.llb/YKMW100 Measurement Binary Data.vi"/>
			<Item Name="YKMW100 Get Binary.vi" Type="VI" URL="../../../../Drivers/YKMW100/YKMW100.llb/YKMW100 Get Binary.vi"/>
			<Item Name="YKMW100 Convert Channel Number.vi" Type="VI" URL="../../../../Drivers/YKMW100/YKMW100U.llb/YKMW100 Convert Channel Number.vi"/>
			<Item Name="YKMW100 Unit Decimal Point.vi" Type="VI" URL="../../../../Drivers/YKMW100/YKMW100.llb/YKMW100 Unit Decimal Point.vi"/>
			<Item Name="YKMW100 Get ASCII.vi" Type="VI" URL="../../../../Drivers/YKMW100/YKMW100.llb/YKMW100 Get ASCII.vi"/>
			<Item Name="YKMW100 Convert Data Status.vi" Type="VI" URL="../../../../Drivers/YKMW100/YKMW100U.llb/YKMW100 Convert Data Status.vi"/>
			<Item Name="YKMW100 Make Data.vi" Type="VI" URL="../../../../Drivers/YKMW100/YKMW100.llb/YKMW100 Make Data.vi"/>
			<Item Name="YKMW100 Measurement ASCII Data.vi" Type="VI" URL="../../../../Drivers/YKMW100/YKMW100.llb/YKMW100 Measurement ASCII Data.vi"/>
			<Item Name="YKMW100 Convert Alarm Status.vi" Type="VI" URL="../../../../Drivers/YKMW100/YKMW100U.llb/YKMW100 Convert Alarm Status.vi"/>
			<Item Name="YKMW100 Receive String-clear buff.vi" Type="VI" URL="../../MW100/YKMW100 Receive String-clear buff.vi"/>
			<Item Name="Solenoid - Fill.vi" Type="VI" URL="../../Solenoid - Fill.vi"/>
			<Item Name="Solenoid - DRAIN.vi" Type="VI" URL="../../Solenoid - DRAIN.vi"/>
			<Item Name="Solenoid - Output_Set COM1 Val.vi" Type="VI" URL="../../Solenoid - Output_Set COM1 Val.vi"/>
			<Item Name="YKMW100 Write Com Register.vi" Type="VI" URL="../../MW100/YKMW100 Write Com Register.vi"/>
			<Item Name="Intellifaucet_Driver.vi" Type="VI" URL="../../Intellifaucet/Intellifaucet_Driver.vi"/>
			<Item Name="Intellfaucet Mode.ctl" Type="VI" URL="../../Intellifaucet/Intellfaucet Mode.ctl"/>
			<Item Name="Intellifaucet-Ready,NotReady.vi" Type="VI" URL="../../Intellifaucet/Intellifaucet-Ready,NotReady.vi"/>
			<Item Name="Intellifaucet-Start.vi" Type="VI" URL="../../Intellifaucet/Intellifaucet-Start.vi"/>
			<Item Name="YKMW100 VF0 Relay Status.vi" Type="VI" URL="../../MW100/YKMW100 VF0 Relay Status.vi"/>
			<Item Name="Generic - DO1 - PULSE.vi" Type="VI" URL="../../Generic - DO1 - PULSE.vi"/>
			<Item Name="Intellifaucet-Stop.vi" Type="VI" URL="../../Intellifaucet/Intellifaucet-Stop.vi"/>
			<Item Name="Generic - AO1.vi" Type="VI" URL="../../Generic - AO1.vi"/>
			<Item Name="YKMW100 Output AO.vi" Type="VI" URL="../../../../Drivers/YKMW100/YKMW100.llb/YKMW100 Output AO.vi"/>
			<Item Name="Intellifaucet-Temp,Flow.vi" Type="VI" URL="../../Intellifaucet/Intellifaucet-Temp,Flow.vi"/>
			<Item Name="Linear Interpolation GPMtouA.vi" Type="VI" URL="../../Linear Interpolation GPMtouA.vi"/>
			<Item Name="Array-Get 1D Column fr 2D.vi" Type="VI" URL="../../../Utility/Array-Get 1D Column fr 2D.vi"/>
			<Item Name="Linear Interpolation TtoD.vi" Type="VI" URL="../../Linear Interpolation TtoD.vi"/>
			<Item Name="Gather Test Data - Heatup Test new.vi" Type="VI" URL="../../Gather Test Data - Heatup Test new.vi"/>
			<Item Name="HEWH Tank Indicator.ctl" Type="VI" URL="../../HEWH Tank Indicator.ctl"/>
			<Item Name="PowerData.ctl" Type="VI" URL="../../PowerData.ctl"/>
			<Item Name="PowerElements.ctl" Type="VI" URL="../../PowerElements.ctl"/>
			<Item Name="Array_Search_For_Num.vi" Type="VI" URL="../../Array_Search_For_Num.vi"/>
			<Item Name="Parse Heatup Test Data.vi" Type="VI" URL="../../Parse Heatup Test Data.vi"/>
			<Item Name="String2Array.vi" Type="VI" URL="../../../Utility/String2Array.vi"/>
			<Item Name="HEWH MW100 Cut Unneeded Data.vi" Type="VI" URL="../../HEWH MW100 Cut Unneeded Data.vi"/>
			<Item Name="HEWH Calc Convert Pressure.vi" Type="VI" URL="../../HEWH Calc Convert Pressure.vi"/>
			<Item Name="HEWH Power Cluster Calcs.vi" Type="VI" URL="../../HEWH Power Cluster Calcs.vi"/>
			<Item Name="PowerClassification.ctl" Type="VI" URL="../../PowerClassification.ctl"/>
			<Item Name="Beep2k.vi" Type="VI" URL="../../../Utility/Beep2k.vi"/>
			<Item Name="HEWH Read All MW100 Inputs.vi" Type="VI" URL="../../HEWH Read All MW100 Inputs.vi"/>
			<Item Name="Agilent_ScanList_Permutation.vi" Type="VI" URL="../../Agilent_ScanList_Permutation.vi"/>
			<Item Name="E-Time.vi" Type="VI" URL="../../../Utility/E-Time.vi"/>
			<Item Name="HEWH Error Handler.vi" Type="VI" URL="../../HEWH Error Handler.vi"/>
			<Item Name="HEWH Tank Display.vi" Type="VI" URL="../../HEWH Tank Display.vi"/>
			<Item Name="Convert Temp to Color.vi" Type="VI" URL="../../../../Sandbox/Brians Folders/Water/Solar Water Heater Monitor/Main/Convert Temp to Color.vi"/>
			<Item Name="Terminal Checker.vi" Type="VI" URL="../../../Utility/Terminal Checker.vi"/>
			<Item Name="Dispense X Gallon at Y Flowrate.vi" Type="VI" URL="../../Experiments/Dispense X Gallon at Y Flowrate.vi"/>
			<Item Name="TestedFlowratesScenarios.ctl" Type="VI" URL="../../TestedFlowratesScenarios.ctl"/>
			<Item Name="HEWH Flow Adjustment.vi" Type="VI" URL="../../HEWH Flow Adjustment.vi"/>
			<Item Name="Linear Interpolation GPM to Percent Open.vi" Type="VI" URL="../../Linear Interpolation GPM to Percent Open.vi"/>
			<Item Name="Gather Test Data - No serial port.vi" Type="VI" URL="../../Gather Test Data - No serial port.vi"/>
			<Item Name="HEWH Set DRM Mode.vi" Type="VI" URL="../../HEWH Set DRM Mode.vi"/>
			<Item Name="Use Modes.ctl" Type="VI" URL="../../Use Modes.ctl"/>
			<Item Name="This VIs Path.vi" Type="VI" URL="../../../../Sandbox/This VIs Path.vi"/>
			<Item Name="kernel32.dll" Type="Document" URL="kernel32.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="version.dll" Type="Document" URL="version.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="Solenoid Bank.vi" Type="VI" URL="../../Solenoid Bank.vi"/>
			<Item Name="YKMW100 Read Com Register.vi" Type="VI" URL="../../MW100/YKMW100 Read Com Register.vi"/>
			<Item Name="HEWH Channel Test Labels.vi" Type="VI" URL="../../HEWH Channel Test Labels.vi"/>
			<Item Name="Channel Label.ctl" Type="VI" URL="../../Channel Label.ctl"/>
			<Item Name="R134a-PH Curves.vi" Type="VI" URL="../../../../Sandbox/R134a/R134a-PH Curves.vi"/>
			<Item Name="Pressures of Dome.vi" Type="VI" URL="../../../../Sandbox/R134a/Pressures of Dome.vi"/>
			<Item Name="lvanlys.dll" Type="Document" URL="../../../../../Program Files/National Instruments/LabVIEW 2009/resource/lvanlys.dll"/>
			<Item Name="Convert PT to H.vi" Type="VI" URL="../../../../Sandbox/R134a/Convert PT to H.vi"/>
			<Item Name="Data_File_Init.vi" Type="VI" URL="../../Data_File_Init.vi"/>
			<Item Name="HEWH Config Read.vi" Type="VI" URL="../../HEWH Config Read.vi"/>
			<Item Name="Str array to dbl array.vi" Type="VI" URL="../../../Utility/Str array to dbl array.vi"/>
			<Item Name="HEWH Config Write.vi" Type="VI" URL="../../HEWH Config Write.vi"/>
			<Item Name="Calculate_T_to_H2O_LBSperGAL.vi" Type="VI" URL="../../../Utility/Calculate_T_to_H2O_LBSperGAL.vi"/>
			<Item Name="HEWH Source String Array.vi" Type="VI" URL="../../HEWH Source String Array.vi"/>
			<Item Name="GEA2_RQST_STATUS_QUERY.vi" Type="VI" URL="../../GEA2/GEA2_RQST_STATUS_QUERY.vi"/>
			<Item Name="HEWH_Mode.ctl" Type="VI" URL="../../GEA2/HEWH_Mode.ctl"/>
			<Item Name="HEWH Totalize Flow Control.vi" Type="VI" URL="../../HEWH Totalize Flow Control.vi"/>
			<Item Name="HEWH Set Valves.vi" Type="VI" URL="../../HEWH Set Valves.vi"/>
			<Item Name="ValveBankPositions.ctl" Type="VI" URL="../../ValveBankPositions.ctl"/>
			<Item Name="HEWH GEA2 Set Tank Mode and Temp.vi" Type="VI" URL="../../HEWH GEA2 Set Tank Mode and Temp.vi"/>
			<Item Name="GEA2_CMD_WRITE_SETPOINTS.vi" Type="VI" URL="../../GEA2/GEA2_CMD_WRITE_SETPOINTS.vi"/>
			<Item Name="GEA2_CMD_UPDATE_MODE.vi" Type="VI" URL="../../GEA2/GEA2_CMD_UPDATE_MODE.vi"/>
		</Item>
		<Item Name="Build Specifications" Type="Build">
			<Item Name="My Application" Type="EXE">
				<Property Name="App_applicationGUID" Type="Str">{55A1441E-1EF6-43EC-BD7B-F6B6939E97BA}</Property>
				<Property Name="App_applicationName" Type="Str">Application.exe</Property>
				<Property Name="App_companyName" Type="Str">GE</Property>
				<Property Name="App_fileDescription" Type="Str">My Application</Property>
				<Property Name="App_fileVersion.major" Type="Int">1</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{FF120008-884B-40B4-AEC3-BC320A13DE9E}</Property>
				<Property Name="App_INI_GUID" Type="Str">{29F6E709-5F97-439F-B54F-E2CE17E78D44}</Property>
				<Property Name="App_internalName" Type="Str">My Application</Property>
				<Property Name="App_legalCopyright" Type="Str">Copyright © 2012 GE</Property>
				<Property Name="App_productName" Type="Str">My Application</Property>
				<Property Name="App_winsec.description" Type="Str">http://www.GE.com</Property>
				<Property Name="Bld_buildSpecName" Type="Str">My Application</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Destination[0].destName" Type="Str">Application.exe</Property>
				<Property Name="Destination[0].path" Type="Path">../debug/Application.exe</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../debug/data</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Source[0].itemID" Type="Str">{59202122-817C-4983-ABD1-322D53A74A1C}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/GEA_HEWH_SM.vi</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="Source[2].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[2].itemID" Type="Ref">/My Computer/HEWH Serial Data Read.vi</Property>
				<Property Name="Source[2].type" Type="Str">VI</Property>
				<Property Name="Source[3].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[3].itemID" Type="Ref">/My Computer/02 HEWH Stand Overide.vi</Property>
				<Property Name="Source[3].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[3].type" Type="Str">VI</Property>
				<Property Name="Source[4].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[4].itemID" Type="Ref">/My Computer/Panel Overide Com Settings.vi</Property>
				<Property Name="Source[4].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[4].type" Type="Str">VI</Property>
				<Property Name="SourceCount" Type="Int">5</Property>
			</Item>
		</Item>
	</Item>
</Project>
