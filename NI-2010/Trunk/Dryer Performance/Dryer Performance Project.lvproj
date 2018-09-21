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
		<Item Name="Main exe" Type="Folder" URL="../Main exe">
			<Property Name="NI.DISK" Type="Bool">true</Property>
		</Item>
		<Item Name="Support Exe" Type="Folder" URL="../Support Exe">
			<Property Name="NI.DISK" Type="Bool">true</Property>
		</Item>
		<Item Name="Panels" Type="Folder" URL="../Panels">
			<Property Name="NI.DISK" Type="Bool">true</Property>
		</Item>
		<Item Name="Instruments" Type="Folder">
			<Item Name="SL9200" Type="Folder" URL="../../../Drivers/SL9200">
				<Property Name="NI.DISK" Type="Bool">true</Property>
			</Item>
			<Item Name="AG34980" Type="Folder">
				<Property Name="NI.SortType" Type="Int">0</Property>
				<Item Name="AG34980A Configure Channel Delay.vi" Type="VI" URL="../../../Drivers/Agilent 34980/LV_8_2_34980a/ag34980a/ag34980A.llb/AG34980A Configure Channel Delay.vi"/>
				<Item Name="AG34980A Configure DC Voltage.vi" Type="VI" URL="../../../Drivers/Agilent 34980/LV_8_2_34980a/ag34980a/ag34980A.llb/AG34980A Configure DC Voltage.vi"/>
				<Item Name="AG34980A Configure Integration Time.vi" Type="VI" URL="../../../Drivers/Agilent 34980/LV_8_2_34980a/ag34980a/ag34980A.llb/AG34980A Configure Integration Time.vi"/>
				<Item Name="AG34980A Configure Scale.vi" Type="VI" URL="../../../Drivers/Agilent 34980/LV_8_2_34980a/ag34980a/ag34980A.llb/AG34980A Configure Scale.vi"/>
				<Item Name="AG34980A Configure Scan.vi" Type="VI" URL="../../../Drivers/Agilent 34980/LV_8_2_34980a/ag34980a/ag34980A.llb/AG34980A Configure Scan.vi"/>
				<Item Name="AG34980A Configure Thermocouple.vi" Type="VI" URL="../../../Drivers/Agilent 34980/LV_8_2_34980a/ag34980a/ag34980A.llb/AG34980A Configure Thermocouple.vi"/>
				<Item Name="AG34980A Display.vi" Type="VI" URL="../../../Drivers/Agilent 34980/LV_8_2_34980a/ag34980a/ag34980A.llb/AG34980A Display.vi"/>
				<Item Name="AG34980A Error Query (Multiple).vi" Type="VI" URL="../../../Drivers/Agilent 34980/LV_8_2_34980a/ag34980a/ag34980A.llb/AG34980A Error Query (Multiple).vi"/>
				<Item Name="AG34980A Error Query.vi" Type="VI" URL="../../../Drivers/Agilent 34980/LV_8_2_34980a/ag34980a/ag34980A.llb/AG34980A Error Query.vi"/>
				<Item Name="AG34980A Fetch.vi" Type="VI" URL="../../../Drivers/Agilent 34980/LV_8_2_34980a/ag34980a/ag34980A.llb/AG34980A Fetch.vi"/>
				<Item Name="AG34980A Get Scan List.vi" Type="VI" URL="../../../Drivers/Agilent 34980/LV_8_2_34980a/ag34980a/AG34980A Get Scan List.vi"/>
				<Item Name="AG34980A Initialize.vi" Type="VI" URL="../../../Drivers/Agilent 34980/LV_8_2_34980a/ag34980a/ag34980A.llb/AG34980A Initialize.vi"/>
				<Item Name="AG34980A Initiate.vi" Type="VI" URL="../../../Drivers/Agilent 34980/LV_8_2_34980a/ag34980a/ag34980A.llb/AG34980A Initiate.vi"/>
				<Item Name="AG34980A List to Array.vi" Type="VI" URL="../../../Drivers/Agilent 34980/LV_8_2_34980a/ag34980a/ag34980A.llb/AG34980A List to Array.vi"/>
				<Item Name="AG34980A Measure DC Voltage.vi" Type="VI" URL="../../../Drivers/Agilent 34980/LV_8_2_34980a/ag34980a/ag34980A.llb/AG34980A Measure DC Voltage.vi"/>
				<Item Name="AG34980A Reading Count.vi" Type="VI" URL="../../../Drivers/Agilent 34980/LV_8_2_34980a/ag34980a/ag34980A.llb/AG34980A Reading Count.vi"/>
				<Item Name="AG34980A Reset.vi" Type="VI" URL="../../../Drivers/Agilent 34980/LV_8_2_34980a/ag34980a/ag34980A.llb/AG34980A Reset.vi"/>
				<Item Name="AG34980A Temperature Auto Zero.vi" Type="VI" URL="../../../Drivers/Agilent 34980/LV_8_2_34980a/ag34980a/ag34980A.llb/AG34980A Temperature Auto Zero.vi"/>
				<Item Name="AG34980A Thermocouple Check.vi" Type="VI" URL="../../../Drivers/Agilent 34980/LV_8_2_34980a/ag34980a/ag34980A.llb/AG34980A Thermocouple Check.vi"/>
			</Item>
			<Item Name="Yokogawa WT500" Type="Folder" URL="../../../Drivers/Yokogawa WT500">
				<Property Name="NI.DISK" Type="Bool">true</Property>
			</Item>
			<Item Name="Yokogawa WT200 Series" Type="Folder" URL="../../../Drivers/Yokogawa WT200 Series">
				<Property Name="NI.DISK" Type="Bool">true</Property>
			</Item>
			<Item Name="cDAQ" Type="Folder" URL="../../../Drivers/cDAQ">
				<Property Name="NI.DISK" Type="Bool">true</Property>
			</Item>
			<Item Name="Agilent 34972" Type="Folder" URL="../../../Drivers/Agilent 34972">
				<Property Name="NI.DISK" Type="Bool">true</Property>
			</Item>
			<Item Name="Newport ITX-D3N" Type="Folder" URL="../../../Drivers/Newport ITX-D3N">
				<Property Name="NI.DISK" Type="Bool">true</Property>
			</Item>
			<Item Name="Newfi" Type="Folder">
				<Item Name="Nufi Global_ReceivedDataCluster.vi" Type="VI" URL="../../Nufi/Nufi Global_ReceivedDataCluster.vi"/>
			</Item>
			<Item Name="Chroma 617xx" Type="Folder" URL="../../../Drivers/Chroma 617xx">
				<Property Name="NI.DISK" Type="Bool">true</Property>
			</Item>
			<Item Name="APLUS" Type="Folder" URL="../../../Drivers/APLUS">
				<Property Name="NI.DISK" Type="Bool">true</Property>
			</Item>
			<Item Name="Yokogawa WT300 Series" Type="Folder" URL="../../../Drivers/Yokogawa WT300 Series">
				<Property Name="NI.DISK" Type="Bool">true</Property>
			</Item>
		</Item>
		<Item Name="Support VIs" Type="Folder" URL="../Support VIs">
			<Property Name="NI.DISK" Type="Bool">true</Property>
			<Property Name="NI.SortType" Type="Int">0</Property>
		</Item>
		<Item Name="Globals" Type="Folder" URL="../Globals">
			<Property Name="NI.DISK" Type="Bool">true</Property>
		</Item>
		<Item Name="Utility" Type="Folder">
			<Item Name="Type Definitions" Type="Folder" URL="../../Utility/Type Definitions">
				<Property Name="NI.DISK" Type="Bool">true</Property>
			</Item>
			<Item Name="Custom Pallet Controls" Type="Folder" URL="../../Utility/Custom Pallet Controls">
				<Property Name="NI.DISK" Type="Bool">true</Property>
			</Item>
			<Item Name="Save File" Type="Folder" URL="../../Utility/Save File">
				<Property Name="NI.DISK" Type="Bool">true</Property>
			</Item>
			<Item Name="Calibration" Type="Folder" URL="../../Utility/Calibration">
				<Property Name="NI.DISK" Type="Bool">true</Property>
			</Item>
			<Item Name="UTILITY Delay mS.vi" Type="VI" URL="../../Utility/UTILITY Delay mS.vi"/>
			<Item Name="UTILITY E-Time.vi" Type="VI" URL="../../Utility/UTILITY E-Time.vi"/>
			<Item Name="UTILITY IP and Computer Name.vi" Type="VI" URL="../../Utility/UTILITY IP and Computer Name.vi"/>
			<Item Name="UTILITY Log String to Spreadsheet.vi" Type="VI" URL="../../Utility/UTILITY Log String to Spreadsheet.vi"/>
			<Item Name="String_in_Reference.vi" Type="VI" URL="../../Utility/String_in_Reference.vi"/>
			<Item Name="UTILITY Timeout Calc.vi" Type="VI" URL="../../Utility/UTILITY Timeout Calc.vi"/>
			<Item Name="UTILITY Local.vi" Type="VI" URL="../../Utility/UTILITY Local.vi"/>
			<Item Name="E-Time (mS).vi" Type="VI" URL="../../Utility/E-Time (mS).vi"/>
			<Item Name="UTILITY Error Bool Add Message.vi" Type="VI" URL="../../Utility/UTILITY Error Bool Add Message.vi"/>
			<Item Name="UTILITY String to Array.vi" Type="VI" URL="../../Utility/UTILITY String to Array.vi"/>
			<Item Name="UTILITY Array Get 1D Column From 2D.vi" Type="VI" URL="../../Utility/UTILITY Array Get 1D Column From 2D.vi"/>
			<Item Name="Build String Array.vi" Type="VI" URL="../../Utility/Build String Array.vi"/>
			<Item Name="Array-Add 1D Str Column to 2D.vi" Type="VI" URL="../../Utility/Array-Add 1D Str Column to 2D.vi"/>
			<Item Name="Read From Spreadsheet File (string) with Error.vi" Type="VI" URL="../../Utility/Read from Spreadsheet with Error/Read From Spreadsheet File (string) with Error.vi"/>
			<Item Name="Read Lines From File with Error.vi" Type="VI" URL="../../Utility/Read from Spreadsheet with Error/Read Lines From File with Error.vi"/>
			<Item Name="UTILITY FGV Double.vi" Type="VI" URL="../../Utility/UTILITY FGV Double.vi"/>
			<Item Name="Moving Average Half Center.vi" Type="VI" URL="../../Utility/Moving Average Half Center.vi"/>
			<Item Name="UTILITY Array Get 1D String Column From 2D.vi" Type="VI" URL="../../Utility/UTILITY Array Get 1D String Column From 2D.vi"/>
			<Item Name="UTILITY Counter.vi" Type="VI" URL="../../Utility/UTILITY Counter.vi"/>
			<Item Name="UTILITY Delete Empty String Cells.vi" Type="VI" URL="../../Utility/UTILITY Delete Empty String Cells.vi"/>
			<Item Name="UTILITY This VIs Path.vi" Type="VI" URL="../../Utility/UTILITY This VIs Path.vi"/>
			<Item Name="UTILITY Convert String to TimeStamp.vi" Type="VI" URL="../../Utility/UTILITY Convert String to TimeStamp.vi"/>
			<Item Name="UTILITY Write Header.vi" Type="VI" URL="../../Utility/UTILITY Write Header.vi"/>
			<Item Name="UTILITY Save Data.vi" Type="VI" URL="../../Utility/UTILITY Save Data.vi"/>
			<Item Name="UTILITY Convert String to Time.vi" Type="VI" URL="../../Utility/UTILITY Convert String to Time.vi"/>
			<Item Name="UTILITY Convert Hex String to Array.vi" Type="VI" URL="../../Utility/UTILITY Convert Hex String to Array.vi"/>
			<Item Name="UTILITY Get Excel Data From Worksheet.vi" Type="VI" URL="../../Utility/UTILITY Get Excel Data From Worksheet.vi"/>
			<Item Name="UTILITY 1D String to 1D DBL.vi" Type="VI" URL="../../Utility/UTILITY 1D String to 1D DBL.vi"/>
			<Item Name="UTILITY Date String Days.vi" Type="VI" URL="../../Utility/UTILITY Date String Days.vi"/>
			<Item Name="UTILITY Com Chan Type Conversion.vi" Type="VI" URL="../../Utility/UTILITY Com Chan Type Conversion.vi"/>
			<Item Name="Agilent Sort Channels.vi" Type="VI" URL="../../Utility/Agilent Sort Channels.vi"/>
			<Item Name="Final Harmonics.vi" Type="VI" URL="../../Utility/Standby Power/Supporting VIs/Final Harmonics.vi"/>
			<Item Name="Generate Error.vi" Type="VI" URL="../../Utility/Standby Power/Supporting VIs/Generate Error.vi"/>
			<Item Name="Search Single.vi" Type="VI" URL="../../Utility/Standby Power/Supporting VIs/Search Single.vi"/>
			<Item Name="LV70DateRecToTimeStamp.vi" Type="VI" URL="../../Utility/_oldvers.llb/LV70DateRecToTimeStamp.vi"/>
			<Item Name="Power Settings.vi" Type="VI" URL="../../Utility/Standby Power/Supporting VIs/Power Settings.vi"/>
			<Item Name="UTILITY Plot XY Build Data.vi" Type="VI" URL="../../Utility/UTILITY Plot XY Build Data.vi"/>
			<Item Name="Populate Yokogawa Settings.vi" Type="VI" URL="../../Utility/Standby Power/Supporting VIs/Populate Yokogawa Settings.vi"/>
			<Item Name="UTILITY Create Nested Directories.vi" Type="VI" URL="../../Utility/UTILITY Create Nested Directories.vi"/>
			<Item Name="Off Mode Standby Mode Power Measure SM.vi" Type="VI" URL="../../Utility/Standby Power/Main/Off Mode Standby Mode Power Measure SM.vi"/>
		</Item>
		<Item Name="Icons" Type="Folder" URL="../Icons">
			<Property Name="NI.DISK" Type="Bool">true</Property>
		</Item>
		<Item Name="Type Definitions" Type="Folder" URL="../Type Definitions">
			<Property Name="NI.DISK" Type="Bool">true</Property>
		</Item>
		<Item Name="Work" Type="Folder" URL="../Work">
			<Property Name="NI.DISK" Type="Bool">true</Property>
		</Item>
		<Item Name="version.dll" Type="Document" URL="version.dll">
			<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
		</Item>
		<Item Name="kernel32.dll" Type="Document" URL="kernel32.dll">
			<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
		</Item>
		<Item Name="Advapi32.dll" Type="Document" URL="Advapi32.dll">
			<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
		</Item>
		<Item Name="lvanlys.dll" Type="Document" URL="/&lt;resource&gt;/lvanlys.dll"/>
		<Item Name="nilvaiu.dll" Type="Document" URL="nilvaiu.dll">
			<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
		</Item>
		<Item Name="Cont Acq Thermocouple Samples-Int Clk-Init.vi" Type="VI" URL="../Instruments/CDAQ/Cont Acq Thermocouple Samples-Int Clk-Init.vi"/>
		<Item Name="Cont Acq AI Samples-Int Clk-Init.vi" Type="VI" URL="../Instruments/CDAQ/Cont Acq AI Samples-Int Clk-Init.vi"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="Parse State Queue__jki_lib_state_machine.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/State Machine/_JKI_lib_State_Machine.llb/Parse State Queue__jki_lib_state_machine.vi"/>
				<Item Name="Trim Whitespace.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Trim Whitespace.vi"/>
				<Item Name="whitespace.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/whitespace.ctl"/>
				<Item Name="Add State(s) to Queue__jki_lib_state_machine.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/State Machine/_JKI_lib_State_Machine.llb/Add State(s) to Queue__jki_lib_state_machine.vi"/>
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
				<Item Name="General Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler.vi"/>
				<Item Name="DialogType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogType.ctl"/>
				<Item Name="Clear Errors.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Clear Errors.vi"/>
				<Item Name="Three Button Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog.vi"/>
				<Item Name="Unset Busy.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/cursorutil.llb/Unset Busy.vi"/>
				<Item Name="Set Busy.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/cursorutil.llb/Set Busy.vi"/>
				<Item Name="Write To Spreadsheet File.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Write To Spreadsheet File.vi"/>
				<Item Name="Write To Spreadsheet File (DBL).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Write To Spreadsheet File (DBL).vi"/>
				<Item Name="Write Spreadsheet String.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Write Spreadsheet String.vi"/>
				<Item Name="Write To Spreadsheet File (I64).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Write To Spreadsheet File (I64).vi"/>
				<Item Name="Write To Spreadsheet File (string).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Write To Spreadsheet File (string).vi"/>
				<Item Name="Simple Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Simple Error Handler.vi"/>
				<Item Name="Read From Spreadsheet File.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read From Spreadsheet File.vi"/>
				<Item Name="Read From Spreadsheet File (DBL).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read From Spreadsheet File (DBL).vi"/>
				<Item Name="Close File+.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Close File+.vi"/>
				<Item Name="Read File+ (string).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read File+ (string).vi"/>
				<Item Name="Open File+.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Open File+.vi"/>
				<Item Name="Read From Spreadsheet File (I64).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read From Spreadsheet File (I64).vi"/>
				<Item Name="Read From Spreadsheet File (string).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read From Spreadsheet File (string).vi"/>
				<Item Name="NI_LVConfig.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/config.llb/NI_LVConfig.lvlib"/>
				<Item Name="Space Constant.vi" Type="VI" URL="/&lt;vilib&gt;/dlg_ctls.llb/Space Constant.vi"/>
				<Item Name="VISA Configure Serial Port" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Configure Serial Port"/>
				<Item Name="VISA Configure Serial Port (Instr).vi" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Configure Serial Port (Instr).vi"/>
				<Item Name="VISA Configure Serial Port (Serial Instr).vi" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Configure Serial Port (Serial Instr).vi"/>
				<Item Name="VISA Open Access Mode.ctl" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Open Access Mode.ctl"/>
				<Item Name="NI_AALBase.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/NI_AALBase.lvlib"/>
				<Item Name="NI_Gmath.lvlib" Type="Library" URL="/&lt;vilib&gt;/gmath/NI_Gmath.lvlib"/>
				<Item Name="NI_AALPro.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/NI_AALPro.lvlib"/>
				<Item Name="DAQmx Stop Task.vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/task.llb/DAQmx Stop Task.vi"/>
				<Item Name="DAQmx Fill In Error Info.vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/miscellaneous.llb/DAQmx Fill In Error Info.vi"/>
				<Item Name="DAQmx Read.vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read.vi"/>
				<Item Name="DAQmx Read (Analog 1D Wfm NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Analog 1D Wfm NChan NSamp).vi"/>
				<Item Name="DAQmx Read (Analog 1D DBL 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Analog 1D DBL 1Chan NSamp).vi"/>
				<Item Name="DAQmx Read (Analog 1D DBL NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Analog 1D DBL NChan 1Samp).vi"/>
				<Item Name="DAQmx Read (Analog 1D Wfm NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Analog 1D Wfm NChan 1Samp).vi"/>
				<Item Name="DAQmx Read (Analog 2D DBL NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Analog 2D DBL NChan NSamp).vi"/>
				<Item Name="DAQmx Read (Analog DBL 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Analog DBL 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Read (Analog Wfm 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Analog Wfm 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Read (Analog Wfm 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Analog Wfm 1Chan NSamp).vi"/>
				<Item Name="DAQmx Read (Digital 1D Bool 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital 1D Bool 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Read (Digital 1D U32 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital 1D U32 1Chan NSamp).vi"/>
				<Item Name="DAQmx Read (Digital 1D U8 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital 1D U8 1Chan NSamp).vi"/>
				<Item Name="DAQmx Read (Digital 1D Wfm NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital 1D Wfm NChan 1Samp).vi"/>
				<Item Name="DAQmx Read (Digital 2D U32 NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital 2D U32 NChan NSamp).vi"/>
				<Item Name="DAQmx Read (Digital 2D U8 NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital 2D U8 NChan NSamp).vi"/>
				<Item Name="DAQmx Read (Digital Bool 1Line 1Point).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital Bool 1Line 1Point).vi"/>
				<Item Name="DAQmx Read (Digital Wfm 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital Wfm 1Chan NSamp).vi"/>
				<Item Name="DAQmx Read (Raw 1D I16).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Raw 1D I16).vi"/>
				<Item Name="DAQmx Read (Raw 1D I32).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Raw 1D I32).vi"/>
				<Item Name="DAQmx Read (Raw 1D I8).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Raw 1D I8).vi"/>
				<Item Name="DAQmx Read (Raw 1D U16).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Raw 1D U16).vi"/>
				<Item Name="DAQmx Read (Raw 1D U32).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Raw 1D U32).vi"/>
				<Item Name="DAQmx Read (Raw 1D U8).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Raw 1D U8).vi"/>
				<Item Name="DAQmx Read (Digital 1D Wfm NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital 1D Wfm NChan NSamp).vi"/>
				<Item Name="DAQmx Read (Digital Wfm 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital Wfm 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Read (Counter 1D DBL 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Counter 1D DBL 1Chan NSamp).vi"/>
				<Item Name="DAQmx Read (Counter DBL 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Counter DBL 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Read (Counter U32 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Counter U32 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Read (Counter 1D U32 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Counter 1D U32 1Chan NSamp).vi"/>
				<Item Name="DAQmx Read (Digital 1D U8 NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital 1D U8 NChan 1Samp).vi"/>
				<Item Name="DAQmx Read (Digital 1D U32 NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital 1D U32 NChan 1Samp).vi"/>
				<Item Name="DAQmx Read (Digital U8 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital U8 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Read (Digital U32 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital U32 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Read (Digital 1D Bool NChan 1Samp 1Line).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital 1D Bool NChan 1Samp 1Line).vi"/>
				<Item Name="DAQmx Read (Digital 2D Bool NChan 1Samp NLine).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital 2D Bool NChan 1Samp NLine).vi"/>
				<Item Name="DAQmx Read (Analog 2D U16 NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Analog 2D U16 NChan NSamp).vi"/>
				<Item Name="DAQmx Read (Analog 2D I16 NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Analog 2D I16 NChan NSamp).vi"/>
				<Item Name="DAQmx Read (Analog 2D I32 NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Analog 2D I32 NChan NSamp).vi"/>
				<Item Name="DAQmx Read (Analog 2D U32 NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Analog 2D U32 NChan NSamp).vi"/>
				<Item Name="DAQmx Read (Digital U16 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital U16 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Read (Digital 1D U16 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital 1D U16 1Chan NSamp).vi"/>
				<Item Name="DAQmx Read (Digital 1D U16 NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital 1D U16 NChan 1Samp).vi"/>
				<Item Name="DAQmx Read (Digital 2D U16 NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital 2D U16 NChan NSamp).vi"/>
				<Item Name="DAQmx Start Task.vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/task.llb/DAQmx Start Task.vi"/>
				<Item Name="System Exec.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/system.llb/System Exec.vi"/>
				<Item Name="VariantType.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/VariantDataType/VariantType.lvlib"/>
				<Item Name="LVComboBoxStrsAndValuesArrayTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVComboBoxStrsAndValuesArrayTypeDef.ctl"/>
				<Item Name="subBuildXYGraph.vi" Type="VI" URL="/&lt;vilib&gt;/express/express controls/BuildXYGraphBlock.llb/subBuildXYGraph.vi"/>
				<Item Name="Dynamic To Waveform Array.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/transition.llb/Dynamic To Waveform Array.vi"/>
				<Item Name="Waveform Array To Dynamic.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/transition.llb/Waveform Array To Dynamic.vi"/>
				<Item Name="DAQmx Timing.vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/timing.llb/DAQmx Timing.vi"/>
				<Item Name="DAQmx Timing (Sample Clock).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/timing.llb/DAQmx Timing (Sample Clock).vi"/>
				<Item Name="DAQmx Timing (Handshaking).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/timing.llb/DAQmx Timing (Handshaking).vi"/>
				<Item Name="DAQmx Timing (Implicit).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/timing.llb/DAQmx Timing (Implicit).vi"/>
				<Item Name="DAQmx Timing (Use Waveform).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/timing.llb/DAQmx Timing (Use Waveform).vi"/>
				<Item Name="DAQmx Timing (Change Detection).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/timing.llb/DAQmx Timing (Change Detection).vi"/>
				<Item Name="DAQmx Timing (Burst Import Clock).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/timing.llb/DAQmx Timing (Burst Import Clock).vi"/>
				<Item Name="DAQmx Timing (Burst Export Clock).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/timing.llb/DAQmx Timing (Burst Export Clock).vi"/>
				<Item Name="DAQmx Timing (Pipelined Sample Clock).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/timing.llb/DAQmx Timing (Pipelined Sample Clock).vi"/>
				<Item Name="DAQmx Create Virtual Channel.vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Virtual Channel.vi"/>
				<Item Name="DAQmx Create Channel (AI-Voltage-Basic).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Voltage-Basic).vi"/>
				<Item Name="DAQmx Rollback Channel If Error.vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Rollback Channel If Error.vi"/>
				<Item Name="DAQmx Create AI Channel (sub).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create AI Channel (sub).vi"/>
				<Item Name="DAQmx Create Channel (AI-Voltage-Custom with Excitation).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Voltage-Custom with Excitation).vi"/>
				<Item Name="DAQmx Create Channel (AI-Resistance).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Resistance).vi"/>
				<Item Name="DAQmx Create Channel (AI-Temperature-Thermocouple).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Temperature-Thermocouple).vi"/>
				<Item Name="DAQmx Set CJC Parameters (sub).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Set CJC Parameters (sub).vi"/>
				<Item Name="DAQmx Create Channel (AI-Temperature-RTD).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Temperature-RTD).vi"/>
				<Item Name="DAQmx Create Channel (AI-Temperature-Thermistor-Iex).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Temperature-Thermistor-Iex).vi"/>
				<Item Name="DAQmx Create Channel (AI-Temperature-Thermistor-Vex).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Temperature-Thermistor-Vex).vi"/>
				<Item Name="DAQmx Create Channel (AO-Voltage-Basic).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AO-Voltage-Basic).vi"/>
				<Item Name="DAQmx Create AO Channel (sub).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create AO Channel (sub).vi"/>
				<Item Name="DAQmx Create Channel (AO-FuncGen).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AO-FuncGen).vi"/>
				<Item Name="DAQmx Create Channel (DI-Digital Input).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (DI-Digital Input).vi"/>
				<Item Name="DAQmx Create DI Channel (sub).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create DI Channel (sub).vi"/>
				<Item Name="DAQmx Create Channel (DO-Digital Output).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (DO-Digital Output).vi"/>
				<Item Name="DAQmx Create DO Channel (sub).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create DO Channel (sub).vi"/>
				<Item Name="DAQmx Create Channel (CI-Frequency).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-Frequency).vi"/>
				<Item Name="DAQmx Create CI Channel (sub).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create CI Channel (sub).vi"/>
				<Item Name="DAQmx Create Channel (CI-Period).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-Period).vi"/>
				<Item Name="DAQmx Create Channel (CI-Count Edges).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-Count Edges).vi"/>
				<Item Name="DAQmx Create Channel (CI-Pulse Width).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-Pulse Width).vi"/>
				<Item Name="DAQmx Create Channel (CI-Semi Period).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-Semi Period).vi"/>
				<Item Name="DAQmx Create Channel (AI-Current-Basic).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Current-Basic).vi"/>
				<Item Name="DAQmx Create Channel (AI-Strain-Strain Gage).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Strain-Strain Gage).vi"/>
				<Item Name="DAQmx Create Channel (AI-Temperature-Built-in Sensor).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Temperature-Built-in Sensor).vi"/>
				<Item Name="DAQmx Create Channel (AI-Frequency-Voltage).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Frequency-Voltage).vi"/>
				<Item Name="DAQmx Create Channel (CO-Pulse Generation-Frequency).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CO-Pulse Generation-Frequency).vi"/>
				<Item Name="DAQmx Create CO Channel (sub).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create CO Channel (sub).vi"/>
				<Item Name="DAQmx Create Channel (CO-Pulse Generation-Time).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CO-Pulse Generation-Time).vi"/>
				<Item Name="DAQmx Create Channel (CO-Pulse Generation-Ticks).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CO-Pulse Generation-Ticks).vi"/>
				<Item Name="DAQmx Create Channel (AI-Position-LVDT).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Position-LVDT).vi"/>
				<Item Name="DAQmx Create Channel (AI-Position-RVDT).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Position-RVDT).vi"/>
				<Item Name="DAQmx Create Channel (CI-Two Edge Separation).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-Two Edge Separation).vi"/>
				<Item Name="DAQmx Create Channel (AI-Acceleration-Accelerometer).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Acceleration-Accelerometer).vi"/>
				<Item Name="DAQmx Create Channel (CI-Position-Angular Encoder).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-Position-Angular Encoder).vi"/>
				<Item Name="DAQmx Create Channel (CI-Position-Linear Encoder).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-Position-Linear Encoder).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Acceleration-Accelerometer).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Acceleration-Accelerometer).vi"/>
				<Item Name="DAQmx Create AI Channel TEDS(sub).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create AI Channel TEDS(sub).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Current-Basic).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Current-Basic).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Position-LVDT).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Position-LVDT).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Position-RVDT).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Position-RVDT).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Resistance).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Resistance).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Strain-Strain Gage).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Strain-Strain Gage).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Temperature-RTD).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Temperature-RTD).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Temperature-Thermistor-Iex).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Temperature-Thermistor-Iex).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Temperature-Thermistor-Vex).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Temperature-Thermistor-Vex).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Voltage-Basic).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Voltage-Basic).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Voltage-Custom with Excitation).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Voltage-Custom with Excitation).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Temperature-Thermocouple).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Temperature-Thermocouple).vi"/>
				<Item Name="DAQmx Create Channel (AI-Sound Pressure-Microphone).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Sound Pressure-Microphone).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Sound Pressure-Microphone).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Sound Pressure-Microphone).vi"/>
				<Item Name="DAQmx Create Channel (CI-GPS Timestamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-GPS Timestamp).vi"/>
				<Item Name="DAQmx Create Channel (AO-Current-Basic).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AO-Current-Basic).vi"/>
				<Item Name="DAQmx Create Channel (AI-Voltage-RMS).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Voltage-RMS).vi"/>
				<Item Name="DAQmx Create Channel (AI-Current-RMS).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Current-RMS).vi"/>
				<Item Name="DAQmx Create Channel (AI-Position-EddyCurrentProxProbe).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Position-EddyCurrentProxProbe).vi"/>
				<Item Name="DAQmx Flatten Channel String.vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/miscellaneous.llb/DAQmx Flatten Channel String.vi"/>
				<Item Name="DAQmx Clear Task.vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/task.llb/DAQmx Clear Task.vi"/>
				<Item Name="FileVersionInformation.ctl" Type="VI" URL="/&lt;vilib&gt;/Platform/fileVersionInfo.llb/FileVersionInformation.ctl"/>
				<Item Name="DAQmx Create Channel (CI-Pulse Freq).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-Pulse Freq).vi"/>
				<Item Name="DAQmx Create Channel (CI-Pulse Time).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-Pulse Time).vi"/>
				<Item Name="DAQmx Create Channel (CI-Pulse Ticks).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-Pulse Ticks).vi"/>
				<Item Name="DAQmx Create Channel (AI-Bridge).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Bridge).vi"/>
				<Item Name="DAQmx Create Channel (AI-Force-Bridge-Polynomial).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Force-Bridge-Polynomial).vi"/>
				<Item Name="DAQmx Create Channel (AI-Force-Bridge-Table).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Force-Bridge-Table).vi"/>
				<Item Name="DAQmx Create Channel (AI-Force-Bridge-Two-Point-Linear).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Force-Bridge-Two-Point-Linear).vi"/>
				<Item Name="DAQmx Create Channel (AI-Pressure-Bridge-Two-Point-Linear).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Pressure-Bridge-Two-Point-Linear).vi"/>
				<Item Name="DAQmx Create Channel (AI-Pressure-Bridge-Table).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Pressure-Bridge-Table).vi"/>
				<Item Name="DAQmx Create Channel (AI-Pressure-Bridge-Polynomial).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Pressure-Bridge-Polynomial).vi"/>
				<Item Name="DAQmx Create Channel (AI-Torque-Bridge-Two-Point-Linear).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Torque-Bridge-Two-Point-Linear).vi"/>
				<Item Name="DAQmx Create Channel (AI-Torque-Bridge-Table).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Torque-Bridge-Table).vi"/>
				<Item Name="DAQmx Create Channel (AI-Torque-Bridge-Polynomial).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Torque-Bridge-Polynomial).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Force-Bridge).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Force-Bridge).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Pressure-Bridge).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Pressure-Bridge).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Torque-Bridge).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Torque-Bridge).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Force-IEPE Sensor).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Force-IEPE Sensor).vi"/>
				<Item Name="DAQmx Create Channel (AI-Force-IEPE Sensor).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Force-IEPE Sensor).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Bridge).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Bridge).vi"/>
				<Item Name="DAQmx Read (Counter 1D Pulse Freq 1 Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Counter 1D Pulse Freq 1 Chan NSamp).vi"/>
				<Item Name="DAQmx Read (Counter 1D Pulse Ticks 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Counter 1D Pulse Ticks 1Chan NSamp).vi"/>
				<Item Name="DAQmx Read (Counter 1D Pulse Time 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Counter 1D Pulse Time 1Chan NSamp).vi"/>
				<Item Name="DAQmx Read (Counter Pulse Freq 1 Chan 1 Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Counter Pulse Freq 1 Chan 1 Samp).vi"/>
				<Item Name="DAQmx Read (Counter Pulse Ticks 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Counter Pulse Ticks 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Read (Counter Pulse Time 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Counter Pulse Time 1Chan 1Samp).vi"/>
				<Item Name="subFilter.vi" Type="VI" URL="/&lt;vilib&gt;/express/express analysis/FilterBlock.llb/subFilter.vi"/>
				<Item Name="8.6CompatibleGlobalVar.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/8.6CompatibleGlobalVar.vi"/>
				<Item Name="DAQmx Create Channel (AI-Velocity-IEPE Sensor).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Velocity-IEPE Sensor).vi"/>
				<Item Name="DAQmx Create Channel (AI-Strain-Rosette Strain Gage).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Strain-Rosette Strain Gage).vi"/>
				<Item Name="DAQmx Create Strain Rosette AI Channels (sub).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Strain Rosette AI Channels (sub).vi"/>
				<Item Name="DialogTypeEnum.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogTypeEnum.ctl"/>
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
				<Item Name="Three Button Dialog CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog CORE.vi"/>
				<Item Name="Longest Line Length in Pixels.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Longest Line Length in Pixels.vi"/>
				<Item Name="Convert property node font to graphics font.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Convert property node font to graphics font.vi"/>
				<Item Name="Get Text Rect.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Get Text Rect.vi"/>
				<Item Name="Get String Text Bounds.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Get String Text Bounds.vi"/>
				<Item Name="LVBoundsTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVBoundsTypeDef.ctl"/>
				<Item Name="BuildHelpPath.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/BuildHelpPath.vi"/>
				<Item Name="GetHelpDir.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetHelpDir.vi"/>
				<Item Name="Set Cursor.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/cursorutil.llb/Set Cursor.vi"/>
				<Item Name="Set Cursor (Cursor ID).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/cursorutil.llb/Set Cursor (Cursor ID).vi"/>
				<Item Name="Set Cursor (Icon Pict).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/cursorutil.llb/Set Cursor (Icon Pict).vi"/>
				<Item Name="Read Lines From File.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read Lines From File.vi"/>
				<Item Name="compatReadText.vi" Type="VI" URL="/&lt;vilib&gt;/_oldvers/_oldvers.llb/compatReadText.vi"/>
				<Item Name="Find First Error.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Find First Error.vi"/>
				<Item Name="ex_Modify Signals Names.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/ex_Modify Signals Names.vi"/>
				<Item Name="ex_Modify Signal Name.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/ex_Modify Signal Name.vi"/>
				<Item Name="ex_CorrectErrorChain.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/ex_CorrectErrorChain.vi"/>
				<Item Name="NI_MAPro.lvlib" Type="Library" URL="/&lt;vilib&gt;/measure/NI_MAPro.lvlib"/>
				<Item Name="NI_MABase.lvlib" Type="Library" URL="/&lt;vilib&gt;/measure/NI_MABase.lvlib"/>
				<Item Name="Timestamp Subtract.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/TSOps.llb/Timestamp Subtract.vi"/>
				<Item Name="I128 Timestamp.ctl" Type="VI" URL="/&lt;vilib&gt;/Waveform/TSOps.llb/I128 Timestamp.ctl"/>
				<Item Name="DU64_U32SubtractWithBorrow.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/TSOps.llb/DU64_U32SubtractWithBorrow.vi"/>
				<Item Name="Check for Equality.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/WDTOps.llb/Check for Equality.vi"/>
				<Item Name="ex_SmoothingDesign.vi" Type="VI" URL="/&lt;vilib&gt;/express/express analysis/FilterBlock.llb/ex_SmoothingDesign.vi"/>
				<Item Name="Express Waveform Components.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/transition.llb/Express Waveform Components.vi"/>
				<Item Name="ex_WaveformAttribs.ctl" Type="VI" URL="/&lt;vilib&gt;/express/express shared/transition.llb/ex_WaveformAttribs.ctl"/>
				<Item Name="ex_GetAllExpressAttribs.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/transition.llb/ex_GetAllExpressAttribs.vi"/>
				<Item Name="VISA Find Search Mode.ctl" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Find Search Mode.ctl"/>
				<Item Name="General Error Handler Core CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler Core CORE.vi"/>
				<Item Name="LVRectTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVRectTypeDef.ctl"/>
				<Item Name="subElapsedTime.vi" Type="VI" URL="/&lt;vilib&gt;/express/express execution control/ElapsedTimeBlock.llb/subElapsedTime.vi"/>
				<Item Name="FormatTime String.vi" Type="VI" URL="/&lt;vilib&gt;/express/express execution control/ElapsedTimeBlock.llb/FormatTime String.vi"/>
				<Item Name="FileVersionInfo.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/fileVersionInfo.llb/FileVersionInfo.vi"/>
				<Item Name="GetFileVersionInfoSize.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/fileVersionInfo.llb/GetFileVersionInfoSize.vi"/>
				<Item Name="BuildErrorSource.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/fileVersionInfo.llb/BuildErrorSource.vi"/>
				<Item Name="GetFileVersionInfo.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/fileVersionInfo.llb/GetFileVersionInfo.vi"/>
				<Item Name="VerQueryValue.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/fileVersionInfo.llb/VerQueryValue.vi"/>
				<Item Name="MoveMemory.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/fileVersionInfo.llb/MoveMemory.vi"/>
				<Item Name="FixedFileInfo_Struct.ctl" Type="VI" URL="/&lt;vilib&gt;/Platform/fileVersionInfo.llb/FixedFileInfo_Struct.ctl"/>
				<Item Name="Write Characters To File.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Write Characters To File.vi"/>
				<Item Name="Open_Create_Replace File.vi" Type="VI" URL="/&lt;vilib&gt;/_oldvers/_oldvers.llb/Open_Create_Replace File.vi"/>
				<Item Name="compatFileDialog.vi" Type="VI" URL="/&lt;vilib&gt;/_oldvers/_oldvers.llb/compatFileDialog.vi"/>
				<Item Name="compatOpenFileOperation.vi" Type="VI" URL="/&lt;vilib&gt;/_oldvers/_oldvers.llb/compatOpenFileOperation.vi"/>
				<Item Name="compatCalcOffset.vi" Type="VI" URL="/&lt;vilib&gt;/_oldvers/_oldvers.llb/compatCalcOffset.vi"/>
				<Item Name="Write File+ (string).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Write File+ (string).vi"/>
				<Item Name="compatWriteText.vi" Type="VI" URL="/&lt;vilib&gt;/_oldvers/_oldvers.llb/compatWriteText.vi"/>
				<Item Name="IVI Error Message Builder.vi" Type="VI" URL="/&lt;vilib&gt;/errclust.llb/IVI Error Message Builder.vi"/>
				<Item Name="Check if File or Folder Exists.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Check if File or Folder Exists.vi"/>
				<Item Name="NI_FileType.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/lvfile.llb/NI_FileType.lvlib"/>
				<Item Name="NI_PackedLibraryUtility.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/LVLibp/NI_PackedLibraryUtility.lvlib"/>
				<Item Name="NI_ReportGenerationToolkit.lvlib" Type="Library" URL="/&lt;vilib&gt;/addons/_office/NI_ReportGenerationToolkit.lvlib"/>
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
				<Item Name="Get File Extension.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Get File Extension.vi"/>
				<Item Name="Read JPEG File.vi" Type="VI" URL="/&lt;vilib&gt;/picture/jpeg.llb/Read JPEG File.vi"/>
				<Item Name="Handle Open Word or Excel File.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/NIReport.llb/Toolkit/Handle Open Word or Excel File.vi"/>
				<Item Name="LVDateTimeRec.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVDateTimeRec.ctl"/>
				<Item Name="NI_PtbyPt.lvlib" Type="Library" URL="/&lt;vilib&gt;/ptbypt/NI_PtbyPt.lvlib"/>
				<Item Name="DAQmx Read (Counter 1D DBL NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Counter 1D DBL NChan 1Samp).vi"/>
				<Item Name="DAQmx Read (Counter 1D U32 NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Counter 1D U32 NChan 1Samp).vi"/>
				<Item Name="DAQmx Read (Counter 2D DBL NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Counter 2D DBL NChan NSamp).vi"/>
				<Item Name="DAQmx Read (Counter 2D U32 NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Counter 2D U32 NChan NSamp).vi"/>
				<Item Name="DAQmx Create Channel (CI-Duty Cycle).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-Duty Cycle).vi"/>
				<Item Name="DAQmx Create Channel (CI-Velocity-Angular).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-Velocity-Angular).vi"/>
				<Item Name="DAQmx Create Channel (CI-Velocity-Linear).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-Velocity-Linear).vi"/>
				<Item Name="Device Data Model.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/Modbus Library/Data Model/Device Data Model.lvclass"/>
				<Item Name="Standard Data Model.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/Modbus Library/Standard Data Model/Standard Data Model.lvclass"/>
				<Item Name="Modbus Data Unit.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/Modbus Library/Modbus Data Unit/Modbus Data Unit.lvclass"/>
				<Item Name="Bits to Bytes.vi" Type="VI" URL="/&lt;vilib&gt;/NI/Modbus Library/Utility/Bits to Bytes.vi"/>
				<Item Name="U16s to Bytes.vi" Type="VI" URL="/&lt;vilib&gt;/NI/Modbus Library/Utility/U16s to Bytes.vi"/>
				<Item Name="Bytes to Bits.vi" Type="VI" URL="/&lt;vilib&gt;/NI/Modbus Library/Utility/Bytes to Bits.vi"/>
				<Item Name="Bytes to U16s.vi" Type="VI" URL="/&lt;vilib&gt;/NI/Modbus Library/Utility/Bytes to U16s.vi"/>
				<Item Name="Transmission Data Unit.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/Modbus Library/Transmission Data Unit/Transmission Data Unit.lvclass"/>
				<Item Name="Modbus API.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/Modbus Library/API/Modbus API.lvclass"/>
				<Item Name="Network Protocol.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/Modbus Library/Network Protocol/Network Protocol.lvclass"/>
				<Item Name="Master Function Definition.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/Modbus Library/Master Function Definition/Master Function Definition.lvclass"/>
				<Item Name="Network Master.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/Modbus Library/Network Protocol/Network Master/Network Master.lvclass"/>
				<Item Name="Modbus Master.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/Modbus Library/API/Master/Modbus Master.lvclass"/>
				<Item Name="Serial Data Unit.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/Modbus Library/Transmission Data Unit/Serial Interface/Serial Data Unit.lvclass"/>
				<Item Name="RTU Data Unit.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/Modbus Library/Transmission Data Unit/RTU/RTU Data Unit.lvclass"/>
				<Item Name="Serial Master.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/Modbus Library/Network Protocol/Network Master/Serial/Serial Master.lvclass"/>
				<Item Name="VISA Flush IO Buffer Mask.ctl" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Flush IO Buffer Mask.ctl"/>
				<Item Name="Serial Shared Components.lvlib" Type="Library" URL="/&lt;vilib&gt;/NI/Modbus Library/Serial Shared Components/Serial Shared Components.lvlib"/>
				<Item Name="Serial Slave.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/Modbus Library/Network Protocol/Network Slave/Serial/Serial Slave.lvclass"/>
				<Item Name="Network Slave.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/Modbus Library/Network Protocol/Network Slave/Network Slave.lvclass"/>
				<Item Name="Generate UUID.vi" Type="VI" URL="/&lt;vilib&gt;/NI/Modbus Library/Utility/Generate UUID.vi"/>
				<Item Name="ASCII Data Unit.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/Modbus Library/Transmission Data Unit/ASCII/ASCII Data Unit.lvclass"/>
				<Item Name="API Main.lvlib" Type="Library" URL="/&lt;vilib&gt;/NI/Modbus Library/API/Wrapper/API Main.lvlib"/>
				<Item Name="Modbus Slave.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/Modbus Library/API/Slave/Modbus Slave.lvclass"/>
				<Item Name="TCP Slave.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/Modbus Library/Network Protocol/Network Slave/TCP/TCP Slave.lvclass"/>
				<Item Name="TCP Shared Components.lvlib" Type="Library" URL="/&lt;vilib&gt;/NI/Modbus Library/TCP Shared Components/TCP Shared Components.lvlib"/>
				<Item Name="IP Data Unit.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/Modbus Library/Transmission Data Unit/IP/IP Data Unit.lvclass"/>
				<Item Name="TCP Master.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/Modbus Library/Network Protocol/Network Master/TCP/TCP Master.lvclass"/>
			</Item>
			<Item Name="Regression Equation String.vi" Type="VI" URL="../../../../Program Files/National Instruments/LabVIEW 2009/examples/analysis/regressn.llb/Regression Equation String.vi"/>
			<Item Name="Instrument Sensor.ctl" Type="VI" URL="../../../Drivers/cDAQ/Type Definitions/Instrument Sensor.ctl"/>
			<Item Name="DOE Test Fixture Hardware.ctl" Type="VI" URL="../../Washer DOE/Type Definitions/DOE Test Fixture Hardware.ctl"/>
			<Item Name="IND560 Configuration.ctl" Type="VI" URL="../../../Drivers/IND560 Scale Monitor/Type Definitions/IND560 Configuration.ctl"/>
			<Item Name="HEWH Agilent Cluster.ctl" Type="VI" URL="../../Hybrid Water Heater/Type Definitions/HEWH Agilent Cluster.ctl"/>
			<Item Name="UTILTIY Remove Blank Rows.vi" Type="VI" URL="../../Utility/UTILTIY Remove Blank Rows.vi"/>
			<Item Name="HEWH Output Information.ctl" Type="VI" URL="../../Hybrid Water Heater/Type Definitions/HEWH Output Information.ctl"/>
			<Item Name="HEWH Draw Pattern Setup.ctl" Type="VI" URL="../../Hybrid Water Heater/Type Definitions/HEWH Draw Pattern Setup.ctl"/>
			<Item Name="HEWH PreDraw.ctl" Type="VI" URL="../../Hybrid Water Heater/Type Definitions/HEWH PreDraw.ctl"/>
			<Item Name="PRAT Test.ctl" Type="VI" URL="../../Hybrid Water Heater/Type Definitions/PRAT Test.ctl"/>
			<Item Name="HEWH Termination Condition Cluster.ctl" Type="VI" URL="../../Hybrid Water Heater/Type Definitions/HEWH Termination Condition Cluster.ctl"/>
			<Item Name="HEWH Power Elements.ctl" Type="VI" URL="../../Hybrid Water Heater/Type Definitions/HEWH Power Elements.ctl"/>
			<Item Name="HEWH Power Data.ctl" Type="VI" URL="../../Hybrid Water Heater/Type Definitions/HEWH Power Data.ctl"/>
			<Item Name="INTELLIFAUCET Tested Flowrate Scenarios.ctl" Type="VI" URL="../../Hybrid Water Heater/Custom Instrument Control/Intellifaucet/Type Definitions/INTELLIFAUCET Tested Flowrate Scenarios.ctl"/>
			<Item Name="HEWH Calc and Calibration.ctl" Type="VI" URL="../../Hybrid Water Heater/Type Definitions/HEWH Calc and Calibration.ctl"/>
			<Item Name="Station ID Selector.ctl" Type="VI" URL="../../Hybrid Water Heater/Custom Instrument Control/MW100/Type Definitions/Station ID Selector.ctl"/>
			<Item Name="HEWH_DSM_CMD.vi" Type="VI" URL="../../Utility/GEA2 Commands/HEWH/HEWH_DSM_CMD.vi"/>
			<Item Name="GEA2_Toolkit.lvlib" Type="Library" URL="../../Utility/LabVIEW GEA2 Toolkit v1.0.0.0/library/GEA2_Toolkit.lvlib"/>
			<Item Name="GeaCommunication.dll" Type="Document" URL="../../Utility/LabVIEW GEA2 Toolkit v1.0.0.0/Appliance.NET/GeaCommunication.dll"/>
			<Item Name="GeaCommunication.Usb.dll" Type="Document" URL="../../Utility/LabVIEW GEA2 Toolkit v1.0.0.0/Appliance.NET/GeaCommunication.Usb.dll"/>
			<Item Name="mscorlib" Type="VI" URL="mscorlib">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="System" Type="VI" URL="System">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="UTILITY Array to String Array.vi" Type="VI" URL="../../Utility/UTILITY Array to String Array.vi"/>
			<Item Name="GEA2 Commands.ctl" Type="VI" URL="../../Utility/GEA2 Commands/HEWH/Type Definitions/GEA2 Commands.ctl"/>
			<Item Name="Populate HEWH Commands.vi" Type="VI" URL="../../Utility/GEA2 Commands/HEWH/Populate HEWH Commands.vi"/>
			<Item Name="DSM Override Status.vi" Type="VI" URL="../../Utility/GEA2 Commands/DSM Override Status.vi"/>
			<Item Name="EEV Position.vi" Type="VI" URL="../../Utility/GEA2 Commands/HEWH/EEV Position.vi"/>
			<Item Name="Enter Exit FCT Mode.vi" Type="VI" URL="../../Utility/GEA2 Commands/HEWH/Enter Exit FCT Mode.vi"/>
			<Item Name="Set Ambient Threshold 1.vi" Type="VI" URL="../../Utility/GEA2 Commands/HEWH/Set Ambient Threshold 1.vi"/>
			<Item Name="Set Currents.vi" Type="VI" URL="../../Utility/GEA2 Commands/HEWH/Set Currents.vi"/>
			<Item Name="Set EEV Drive Lines.vi" Type="VI" URL="../../Utility/GEA2 Commands/HEWH/Set EEV Drive Lines.vi"/>
			<Item Name="Set LEDs.vi" Type="VI" URL="../../Utility/GEA2 Commands/HEWH/Set LEDs.vi"/>
			<Item Name="Bit Encode LEDs.vi" Type="VI" URL="../../Utility/GEA2 Commands/HEWH/Bit Encode LEDs.vi"/>
			<Item Name="Set Model Number.vi" Type="VI" URL="../../Utility/GEA2 Commands/HEWH/Set Model Number.vi"/>
			<Item Name="PID Denominator.vi" Type="VI" URL="../../Utility/GEA2 Commands/HEWH/PID Denominator.vi"/>
			<Item Name="Update DSM Level.vi" Type="VI" URL="../../Utility/GEA2 Commands/HEWH/Update DSM Level.vi"/>
			<Item Name="Request Data From Flash.vi" Type="VI" URL="../../Utility/GEA2 Commands/HEWH/Request Data From Flash.vi"/>
			<Item Name="Data From Memory.vi" Type="VI" URL="../../Utility/GEA2 Commands/HEWH/Data From Memory.vi"/>
			<Item Name="GEA2 Message Decoder.vi" Type="VI" URL="../../Utility/GEA2 Commands/HEWH/GEA2 Message Decoder.vi"/>
			<Item Name="ViperHawk Data.ctl" Type="VI" URL="../../Washer HCC/Washer HCC NEWFI/Type Definitions/ViperHawk/ViperHawk Data.ctl"/>
			<Item Name="ViperHawk Diagnostic Data.ctl" Type="VI" URL="../../Washer HCC/Washer HCC NEWFI/Type Definitions/ViperHawk/ViperHawk Diagnostic Data.ctl"/>
			<Item Name="ViperHawk Search Control.ctl" Type="VI" URL="../../Washer HCC/Washer HCC NEWFI/Type Definitions/ViperHawk/ViperHawk Search Control.ctl"/>
			<Item Name="GEA2 Commands WaterHeater GEA2 Data.ctl" Type="VI" URL="../../Utility/GEA2 Commands/HEWH/Type Definitions/GEA2 Commands WaterHeater GEA2 Data.ctl"/>
			<Item Name="GEA2 Commands Button Status.ctl" Type="VI" URL="../../Utility/GEA2 Commands/HEWH/Type Definitions/GEA2 Commands Button Status.ctl"/>
			<Item Name="GEA2 Commands Status Query.ctl" Type="VI" URL="../../Utility/GEA2 Commands/HEWH/Type Definitions/GEA2 Commands Status Query.ctl"/>
			<Item Name="GEA2 Commands Service Error Codes.ctl" Type="VI" URL="../../Utility/GEA2 Commands/HEWH/Type Definitions/GEA2 Commands Service Error Codes.ctl"/>
			<Item Name="HEWH Hyperterminal.vi" Type="VI" URL="../../Hybrid Water Heater/Support VIs/HEWH Hyperterminal.vi"/>
			<Item Name="HyperTerm Data Decode.vi" Type="VI" URL="../../Utility/GEA2 Commands/HEWH/HyperTerm Data Decode.vi"/>
			<Item Name="Reasons For Termination.vi" Type="VI" URL="../../Utility/GEA2 Commands/HEWH/Reasons For Termination.vi"/>
			<Item Name="Reasons For Termination Data Decode.vi" Type="VI" URL="../../Utility/GEA2 Commands/HEWH/Reasons For Termination Data Decode.vi"/>
			<Item Name="MSB LSB.vi" Type="VI" URL="../../Utility/GEA2 Commands/HEWH/MSB LSB.vi"/>
			<Item Name="MSBH_MSBL.vi" Type="VI" URL="../../Utility/GEA2 Commands/HEWH/MSBH_MSBL.vi"/>
			<Item Name="UTILITY Create Default File.vi" Type="VI" URL="../../Utility/UTILITY Create Default File.vi"/>
			<Item Name="DOE Main Control.ctl" Type="VI" URL="../../Washer DOE/Type Definitions/DOE Main Control.ctl"/>
			<Item Name="GEA2.ctl" Type="VI" URL="../../Washer DOE/Configuration/GEA2.ctl"/>
			<Item Name="DOE Capacity Measurments.ctl" Type="VI" URL="../../Washer DOE/Type Definitions/DOE Capacity Measurments.ctl"/>
			<Item Name="Standby Power.rtm" Type="Document" URL="../../Utility/Standby Power/Documentation/Standby Power.rtm"/>
			<Item Name="TC Cluster Panel.ctl" Type="VI" URL="../../../Drivers/cDAQ/Type Definitions/TC Cluster Panel.ctl"/>
			<Item Name="Panel.ctl" Type="VI" URL="../../../Drivers/cDAQ/Type Definitions/Panel.ctl"/>
			<Item Name="Panel Color Set Ver2.vi" Type="VI" URL="../../../Drivers/cDAQ/Support VIs/Panel Color Set Ver2.vi"/>
			<Item Name="HCC Filename Setup.ctl" Type="VI" URL="../../Washer HCC/Washer HCC NEWFI/Type Definitions/HCC Filename Setup.ctl"/>
			<Item Name="HCC Read Write Display.vi" Type="VI" URL="../../Washer HCC/Washer HCC NEWFI/Support VIs/HCC Read Write Display.vi"/>
			<Item Name="HCC Compile Cluster.vi" Type="VI" URL="../../Washer HCC/Washer HCC NEWFI/Support VIs/HCC Compile Cluster.vi"/>
			<Item Name="HCC Compile Write Array.vi" Type="VI" URL="../../Washer HCC/Washer HCC NEWFI/Support VIs/HCC Compile Write Array.vi"/>
			<Item Name="UTILITY 1D DBL to 1D String.vi" Type="VI" URL="../../Utility/UTILITY 1D DBL to 1D String.vi"/>
			<Item Name="ERD_Always_Show.ctl" Type="VI" URL="../../Washer HCC/Washer HCC NEWFI/Washer Soft Load Box/type defs/ERD_Always_Show.ctl"/>
			<Item Name="Version.ctl" Type="VI" URL="../../Washer HCC/Washer HCC NEWFI/Washer Soft Load Box/type defs/Version.ctl"/>
			<Item Name="Redundant.ctl" Type="VI" URL="../../Washer HCC/Washer HCC NEWFI/Washer Soft Load Box/type defs/Redundant.ctl"/>
			<Item Name="ATC_Data.ctl" Type="VI" URL="../../Washer HCC/Washer HCC NEWFI/Washer Soft Load Box/type defs/ATC_Data.ctl"/>
			<Item Name="Algorithms.ctl" Type="VI" URL="../../Washer HCC/Washer HCC NEWFI/Washer Soft Load Box/type defs/Algorithms.ctl"/>
			<Item Name="GEA2 HEWH ERDs.vi" Type="VI" URL="../../Utility/LabVIEW GEA2 Toolkit v1.0.0.0/subVIs/GEA2 HEWH ERDs.vi"/>
			<Item Name="Washer ERD List.vi" Type="VI" URL="../../Utility/LabVIEW GEA2 Toolkit v1.0.0.0/subVIs/Washer ERD List.vi"/>
			<Item Name="DISH ERD List.vi" Type="VI" URL="../../Utility/LabVIEW GEA2 Toolkit v1.0.0.0/subVIs/DISH ERD List.vi"/>
			<Item Name="HEWH Standard ERD List.vi" Type="VI" URL="../../Utility/LabVIEW GEA2 Toolkit v1.0.0.0/subVIs/HEWH Standard ERD List.vi"/>
			<Item Name="HEWH Mixing Valve ERD List.vi" Type="VI" URL="../../Utility/LabVIEW GEA2 Toolkit v1.0.0.0/subVIs/HEWH Mixing Valve ERD List.vi"/>
			<Item Name="Red_Micro_Parse.vi" Type="VI" URL="../../Washer HCC/Washer HCC NEWFI/Washer Soft Load Box/subVIs/Red_Micro_Parse.vi"/>
			<Item Name="HexStringToBoolean.vi" Type="VI" URL="../../Utility/LabVIEW GEA2 Toolkit v1.0.0.0/subVIs/HexStringToBoolean.vi"/>
			<Item Name="FMA1600A COM Ports.ctl" Type="VI" URL="../../../Drivers/Omega FMA-1600A Series Gas Flow Meter/Type Definitions/FMA1600A COM Ports.ctl"/>
			<Item Name="UTILITY Delete Empty String Cells 2D.vi" Type="VI" URL="../../Utility/UTILITY Delete Empty String Cells 2D.vi"/>
			<Item Name="RANGE DAQ Data Four Meters.ctl" Type="VI" URL="../../Range/Type Definitions/RANGE DAQ Data Four Meters.ctl"/>
			<Item Name="RANGE DAQ Data.ctl" Type="VI" URL="../../Range/Type Definitions/RANGE DAQ Data.ctl"/>
			<Item Name="FMA1600A Gas Type.ctl" Type="VI" URL="../../../Drivers/Omega FMA-1600A Series Gas Flow Meter/Type Definitions/FMA1600A Gas Type.ctl"/>
			<Item Name="RANGE GAS Data.ctl" Type="VI" URL="../../Range/Type Definitions/RANGE GAS Data.ctl"/>
			<Item Name="RANGE Panel Data.ctl" Type="VI" URL="../../Range/Type Definitions/RANGE Panel Data.ctl"/>
			<Item Name="RANGE Meter Selector.ctl" Type="VI" URL="../../Range/Type Definitions/RANGE Meter Selector.ctl"/>
			<Item Name="RANGE Configuration File.vi" Type="VI" URL="../../Range/SubVIs/RANGE Configuration File.vi"/>
			<Item Name="RANGE Populate Configuration Data.vi" Type="VI" URL="../../Range/SubVIs/RANGE Populate Configuration Data.vi"/>
			<Item Name="RANGE Get COM Ports.vi" Type="VI" URL="../../Range/SubVIs/RANGE Get COM Ports.vi"/>
			<Item Name="UTILITY Custom VISA Name.vi" Type="VI" URL="../../Utility/UTILITY Custom VISA Name.vi"/>
			<Item Name="RANGE Parse Configuration Data.vi" Type="VI" URL="../../Range/SubVIs/RANGE Parse Configuration Data.vi"/>
			<Item Name="RANGE Accuracy At Zero.vi" Type="VI" URL="../../Range/SubVIs/RANGE Accuracy At Zero.vi"/>
			<Item Name="FMA1600A General Setup.vi" Type="VI" URL="../../../Drivers/Omega FMA-1600A Series Gas Flow Meter/SubVIs/FMA1600A General Setup.vi"/>
			<Item Name="FMA1600A Commands.ctl" Type="VI" URL="../../../Drivers/Omega FMA-1600A Series Gas Flow Meter/Type Definitions/FMA1600A Commands.ctl"/>
			<Item Name="FMA1600A Initialize.vi" Type="VI" URL="../../../Drivers/Omega FMA-1600A Series Gas Flow Meter/SubVIs/FMA1600A Initialize.vi"/>
			<Item Name="FMA1600A Send Receive.vi" Type="VI" URL="../../../Drivers/Omega FMA-1600A Series Gas Flow Meter/SubVIs/FMA1600A Send Receive.vi"/>
			<Item Name="FMA1600A Build Commands.vi" Type="VI" URL="../../../Drivers/Omega FMA-1600A Series Gas Flow Meter/SubVIs/FMA1600A Build Commands.vi"/>
			<Item Name="FMA1600A Parse Data.vi" Type="VI" URL="../../../Drivers/Omega FMA-1600A Series Gas Flow Meter/SubVIs/FMA1600A Parse Data.vi"/>
			<Item Name="FMA1600A Data.ctl" Type="VI" URL="../../../Drivers/Omega FMA-1600A Series Gas Flow Meter/Type Definitions/FMA1600A Data.ctl"/>
			<Item Name="UTILITY Agilent Scan List Permutation.vi" Type="VI" URL="../../Utility/UTILITY Agilent Scan List Permutation.vi"/>
			<Item Name="DOE Agilent Setup SUB.vi" Type="VI" URL="../../Washer DOE/Support VIs/DOE Agilent Setup SUB.vi"/>
			<Item Name="HCC Filter NonUsed Agilent Channels.vi" Type="VI" URL="../../Washer HCC/Washer HCC NEWFI/Support VIs/HCC Filter NonUsed Agilent Channels.vi"/>
			<Item Name="HCC Split Voltage and Current Agilent.vi" Type="VI" URL="../../Washer HCC/Washer HCC NEWFI/Support VIs/HCC Split Voltage and Current Agilent.vi"/>
			<Item Name="HCC Disable Station Agilent.vi" Type="VI" URL="../../Washer HCC/Washer HCC NEWFI/Support VIs/HCC Disable Station Agilent.vi"/>
			<Item Name="Terminate Draw Conditions.ctl" Type="VI" URL="../../Hybrid Water Heater/Support VIs/Draw Water Specific/Type Definitions/Terminate Draw Conditions.ctl"/>
			<Item Name="HEWH Start Conditions.ctl" Type="VI" URL="../../Hybrid Water Heater/Type Definitions/HEWH Start Conditions.ctl"/>
			<Item Name="Check Special Condtions.ctl" Type="VI" URL="../../Hybrid Water Heater/Support VIs/Draw Water Specific/Type Definitions/Check Special Condtions.ctl"/>
			<Item Name="HEWH Special Condition Check.ctl" Type="VI" URL="../../Hybrid Water Heater/Support VIs/Draw Water Specific/Type Definitions/HEWH Special Condition Check.ctl"/>
			<Item Name="HEWH Draw Flag ENUM.ctl" Type="VI" URL="../../Hybrid Water Heater/Type Definitions/HEWH Draw Flag ENUM.ctl"/>
			<Item Name="HEWH Specific DAQ.ctl" Type="VI" URL="../../Hybrid Water Heater/Type Definitions/HEWH Specific DAQ.ctl"/>
			<Item Name="RANGE Startup File.vi" Type="VI" URL="../../Range/SubVIs/RANGE Startup File.vi"/>
			<Item Name="FMA1600A Meter Accuracy Options.ctl" Type="VI" URL="../../../Drivers/Omega FMA-1600A Series Gas Flow Meter/Type Definitions/FMA1600A Meter Accuracy Options.ctl"/>
			<Item Name="RANGE Update Meter Types.vi" Type="VI" URL="../../Range/SubVIs/RANGE Update Meter Types.vi"/>
			<Item Name="RANGE Update Accuracy Settings.vi" Type="VI" URL="../../Range/SubVIs/RANGE Update Accuracy Settings.vi"/>
			<Item Name="FMA1600A Update Meter Accuracy.vi" Type="VI" URL="../../../Drivers/Omega FMA-1600A Series Gas Flow Meter/SubVIs/FMA1600A Update Meter Accuracy.vi"/>
			<Item Name="FMA1600A Meter Standard Accuracy.vi" Type="VI" URL="../../../Drivers/Omega FMA-1600A Series Gas Flow Meter/SubVIs/FMA1600A Meter Standard Accuracy.vi"/>
			<Item Name="FMA1600A General Send Receive.vi" Type="VI" URL="../../../Drivers/Omega FMA-1600A Series Gas Flow Meter/SubVIs/FMA1600A General Send Receive.vi"/>
			<Item Name="FMA1600A Bus Data Filter.vi" Type="VI" URL="../../../Drivers/Omega FMA-1600A Series Gas Flow Meter/SubVIs/FMA1600A Bus Data Filter.vi"/>
		</Item>
		<Item Name="Build Specifications" Type="Build">
			<Item Name="Dryer Performance Test" Type="EXE">
				<Property Name="App_INI_aliasGUID" Type="Str">{B7302F89-6797-4C38-BE69-D8766808F9A3}</Property>
				<Property Name="App_INI_GUID" Type="Str">{CF7FB531-575B-4405-B3B0-075F1C3BD899}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{1214153D-9FEF-4A94-A2DE-962D6668B19B}</Property>
				<Property Name="Bld_buildSpecDescription" Type="Str">1.0.0.298 - Fixed auto terminate
1.0.0.300 - Added three sig figs to RMC calculator and auto close on standby power
1.0.0.301 - Added manual voltage adjust to compensate for sense wire error
1.0.0.302 - Added event structure to manual adjust</Property>
				<Property Name="Bld_buildSpecName" Type="Str">Dryer Performance Test</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../build</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToProject</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{EB283D9D-02DF-455A-A013-B0FCE4709371}</Property>
				<Property Name="Bld_version.build" Type="Int">310</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">Dryer Performance Test.exe</Property>
				<Property Name="Destination[0].path" Type="Path">../build/Dryer Performance Test.exe</Property>
				<Property Name="Destination[0].path.type" Type="Str">relativeToProject</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../build/data</Property>
				<Property Name="Destination[1].path.type" Type="Str">relativeToProject</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Source[0].Container.applyProperties" Type="Bool">true</Property>
				<Property Name="Source[0].itemID" Type="Str">{205576CA-D393-4D78-BEAF-5697AC8A732F}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/Main exe/01 Dryer_Performance_SM.vi</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="Source[10].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[10].itemID" Type="Ref"></Property>
				<Property Name="Source[10].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[10].type" Type="Str">VI</Property>
				<Property Name="Source[11].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[11].itemID" Type="Ref"></Property>
				<Property Name="Source[11].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[11].type" Type="Str">VI</Property>
				<Property Name="Source[12].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[12].itemID" Type="Ref"></Property>
				<Property Name="Source[12].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[12].type" Type="Str">VI</Property>
				<Property Name="Source[13].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[13].itemID" Type="Ref"></Property>
				<Property Name="Source[13].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[13].type" Type="Str">VI</Property>
				<Property Name="Source[14].Container.applyProperties" Type="Bool">true</Property>
				<Property Name="Source[14].itemID" Type="Ref">/My Computer/Panels</Property>
				<Property Name="Source[14].properties[0].type" Type="Str">Run when opened</Property>
				<Property Name="Source[14].properties[0].value" Type="Bool">false</Property>
				<Property Name="Source[14].propertiesCount" Type="Int">1</Property>
				<Property Name="Source[14].type" Type="Str">Container</Property>
				<Property Name="Source[15].Container.applyProperties" Type="Bool">true</Property>
				<Property Name="Source[15].itemID" Type="Ref">/My Computer/Icons</Property>
				<Property Name="Source[15].type" Type="Str">Container</Property>
				<Property Name="Source[16].Container.applyProperties" Type="Bool">true</Property>
				<Property Name="Source[16].itemID" Type="Ref">/My Computer/Support Exe</Property>
				<Property Name="Source[16].type" Type="Str">Container</Property>
				<Property Name="Source[17].Container.applyProperties" Type="Bool">true</Property>
				<Property Name="Source[17].itemID" Type="Ref">/My Computer/Main exe</Property>
				<Property Name="Source[17].type" Type="Str">Container</Property>
				<Property Name="Source[18].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[18].itemID" Type="Ref">/My Computer/lvanlys.dll</Property>
				<Property Name="Source[2].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[2].itemID" Type="Ref"></Property>
				<Property Name="Source[2].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[2].type" Type="Str">VI</Property>
				<Property Name="Source[3].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[3].itemID" Type="Ref"></Property>
				<Property Name="Source[3].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[3].type" Type="Str">VI</Property>
				<Property Name="Source[4].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[4].itemID" Type="Ref"></Property>
				<Property Name="Source[4].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[4].type" Type="Str">VI</Property>
				<Property Name="Source[5].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[5].itemID" Type="Ref"></Property>
				<Property Name="Source[5].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[5].type" Type="Str">VI</Property>
				<Property Name="Source[6].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[6].itemID" Type="Ref"></Property>
				<Property Name="Source[6].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[6].type" Type="Str">VI</Property>
				<Property Name="Source[7].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[7].itemID" Type="Ref"></Property>
				<Property Name="Source[7].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[7].type" Type="Str">VI</Property>
				<Property Name="Source[8].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[8].itemID" Type="Ref"></Property>
				<Property Name="Source[8].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[8].type" Type="Str">VI</Property>
				<Property Name="Source[9].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[9].itemID" Type="Ref"></Property>
				<Property Name="Source[9].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[9].type" Type="Str">VI</Property>
				<Property Name="SourceCount" Type="Int">19</Property>
				<Property Name="TgtF_companyName" Type="Str">GE</Property>
				<Property Name="TgtF_fileDescription" Type="Str">Dryer Performance Test</Property>
				<Property Name="TgtF_internalName" Type="Str">Dryer Performance Test</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2011 GE</Property>
				<Property Name="TgtF_productName" Type="Str">Dryer Performance Test</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{513CA271-A395-4718-B1D3-23DF326970E5}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">Dryer Performance Test.exe</Property>
			</Item>
			<Item Name="DPT CDAQ Channel Test" Type="EXE">
				<Property Name="App_INI_aliasGUID" Type="Str">{AB1CDEA3-72DE-4B7A-B50E-895F354C68AC}</Property>
				<Property Name="App_INI_GUID" Type="Str">{488002AC-590C-497B-B4D1-1685B67326FF}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{1D3AB6FA-17FD-4118-98D2-D07B13C8A87F}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">DPT CDAQ Channel Test</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../build</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToProject</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{F5CFD165-76E9-48DA-A468-24193E53A70E}</Property>
				<Property Name="Bld_version.build" Type="Int">31</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">DPT CDAQ Channel Test.exe</Property>
				<Property Name="Destination[0].path" Type="Path">../build/DPT CDAQ Channel Test.exe</Property>
				<Property Name="Destination[0].path.type" Type="Str">relativeToProject</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../build/data</Property>
				<Property Name="Destination[1].path.type" Type="Str">relativeToProject</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Exe_iconItemID" Type="Ref">/My Computer/Icons/Channel-x.ico</Property>
				<Property Name="Source[0].itemID" Type="Str">{D0B3C252-1A3C-4873-88B3-D3E60503044F}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/Main exe/cDAQ Channel Tester.vi</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="SourceCount" Type="Int">2</Property>
				<Property Name="TgtF_companyName" Type="Str">GE</Property>
				<Property Name="TgtF_enableDebugging" Type="Bool">true</Property>
				<Property Name="TgtF_fileDescription" Type="Str">DPT CDAQ Channel Test</Property>
				<Property Name="TgtF_internalName" Type="Str">DPT CDAQ Channel Test</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2011 GE</Property>
				<Property Name="TgtF_productName" Type="Str">DPT CDAQ Channel Test</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{F258E379-E714-441E-A4DB-8C46746D7650}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">DPT CDAQ Channel Test.exe</Property>
			</Item>
			<Item Name="DPT Caller" Type="EXE">
				<Property Name="App_INI_aliasGUID" Type="Str">{A00CF638-C035-447A-8FF8-91634C5254F7}</Property>
				<Property Name="App_INI_GUID" Type="Str">{FE8C193B-7D53-4DE1-93D4-E852CD94662E}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{46797391-E2CD-4C0A-84B0-C11A4FD53D32}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">DPT Caller</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../build</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToProject</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{ECD1A049-C659-48B5-A04F-8DA03B33C955}</Property>
				<Property Name="Bld_targetDestDir" Type="Path"></Property>
				<Property Name="Bld_version.build" Type="Int">14</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">DPT Caller.exe</Property>
				<Property Name="Destination[0].path" Type="Path">../Dryer Performance/build/DPT Caller.exe</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../Dryer Performance/build/data</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Exe_iconItemID" Type="Ref"></Property>
				<Property Name="Source[0].itemID" Type="Str">{0608AD75-DD12-4560-A66E-665583BBB183}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref"></Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="SourceCount" Type="Int">2</Property>
				<Property Name="TgtF_companyName" Type="Str">GE</Property>
				<Property Name="TgtF_fileDescription" Type="Str">DPT Caller</Property>
				<Property Name="TgtF_internalName" Type="Str">DPT Caller</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2011 GE</Property>
				<Property Name="TgtF_productName" Type="Str">DPT Caller</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{DC90FAB6-9E40-4E84-95E2-346EEF9D9285}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">DPT Caller.exe</Property>
			</Item>
			<Item Name="DPT Configuration" Type="EXE">
				<Property Name="App_INI_aliasGUID" Type="Str">{6015A56D-3C22-4A60-8733-0997FF994861}</Property>
				<Property Name="App_INI_GUID" Type="Str">{A458B3C1-C8DC-45CF-BC2A-B15115B08FA9}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{E75BDB0D-CEF4-4643-AB78-A333B74BCAAB}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">DPT Configuration</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../build</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToProject</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{EB838A97-CF61-459A-A14D-2DB541F9ED31}</Property>
				<Property Name="Bld_targetDestDir" Type="Path"></Property>
				<Property Name="Bld_version.build" Type="Int">18</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">DPT Configuration.exe</Property>
				<Property Name="Destination[0].path" Type="Path">../Dryer Performance/build/DPT Configuration.exe</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../Dryer Performance/build/data</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Exe_iconItemID" Type="Ref"></Property>
				<Property Name="Source[0].itemID" Type="Str">{78F058BD-9156-4FC1-80E3-3366AB23ED1F}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref"></Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="SourceCount" Type="Int">2</Property>
				<Property Name="TgtF_companyName" Type="Str">GE</Property>
				<Property Name="TgtF_fileDescription" Type="Str">DPT Configuration</Property>
				<Property Name="TgtF_internalName" Type="Str">DPT Configuration</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2011 GE</Property>
				<Property Name="TgtF_productName" Type="Str">DPT Configuration</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{9A75D638-6350-48F2-BDA5-5D24F6D6E10B}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">DPT Configuration.exe</Property>
			</Item>
			<Item Name="Weight Monitor" Type="EXE">
				<Property Name="App_INI_aliasGUID" Type="Str">{D2168B5A-6ED1-4EA7-A55E-7E936D30360B}</Property>
				<Property Name="App_INI_GUID" Type="Str">{6847603B-97DA-478C-A761-428A18535E27}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{4B4A4195-3DE8-4707-B479-17A4046D3554}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">Weight Monitor</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../build</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToProject</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{31716514-D834-4FA0-BFFD-330AC08AE201}</Property>
				<Property Name="Bld_version.build" Type="Int">2</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">Weight Monitor.exe</Property>
				<Property Name="Destination[0].path" Type="Path">../build/Weight Monitor.exe</Property>
				<Property Name="Destination[0].path.type" Type="Str">relativeToProject</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../build/data</Property>
				<Property Name="Destination[1].path.type" Type="Str">relativeToProject</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Source[0].itemID" Type="Str">{60CF3506-FA32-4301-9974-F61B01267D5E}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/Support Exe/Weight Input.vi</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="SourceCount" Type="Int">2</Property>
				<Property Name="TgtF_companyName" Type="Str">GE</Property>
				<Property Name="TgtF_enableDebugging" Type="Bool">true</Property>
				<Property Name="TgtF_fileDescription" Type="Str">Weight Monitor</Property>
				<Property Name="TgtF_internalName" Type="Str">Weight Monitor</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2011 GE</Property>
				<Property Name="TgtF_productName" Type="Str">Weight Monitor</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{3A5EA111-A089-41D6-A5D1-BDB2F3455498}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">Weight Monitor.exe</Property>
			</Item>
			<Item Name=" Dryer Heat Volume" Type="EXE">
				<Property Name="App_INI_aliasGUID" Type="Str">{2DFE1E80-B2F7-44BA-8FA7-1F8634B9DB1A}</Property>
				<Property Name="App_INI_GUID" Type="Str">{1B5EC781-2BB2-4584-9661-2CD1CB0D198E}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
				<Property Name="App_winsec.description" Type="Str">http://www.GE.com</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{C55BB6C0-33D6-4DC4-8C40-C1E03A1E3E76}</Property>
				<Property Name="Bld_buildSpecName" Type="Str"> Dryer Heat Volume</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../build</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToProject</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{10855989-AF2E-47CB-8E8C-10EA71AF972E}</Property>
				<Property Name="Bld_targetDestDir" Type="Path"></Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str"> Dryer Heat Volume.exe</Property>
				<Property Name="Destination[0].path" Type="Path">../Dryer Performance/build/ Dryer Heat Volume.exe</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../Dryer Performance/build/data</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Exe_iconItemID" Type="Ref"></Property>
				<Property Name="Source[0].itemID" Type="Str">{FFDF1F96-ADA4-4C60-B1D3-FB1A796665FA}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref"></Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="SourceCount" Type="Int">2</Property>
				<Property Name="TgtF_companyName" Type="Str">GE</Property>
				<Property Name="TgtF_fileDescription" Type="Str"> Dryer Heat Volume</Property>
				<Property Name="TgtF_internalName" Type="Str"> Dryer Heat Volume</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2011 GE</Property>
				<Property Name="TgtF_productName" Type="Str"> Dryer Heat Volume</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{990739AD-416F-4760-8FF7-AE736A360584}</Property>
				<Property Name="TgtF_targetfileName" Type="Str"> Dryer Heat Volume.exe</Property>
			</Item>
			<Item Name="Agilnet Overnight" Type="EXE">
				<Property Name="App_INI_aliasGUID" Type="Str">{311CA4DA-4405-4359-9C80-47B34EB17B77}</Property>
				<Property Name="App_INI_GUID" Type="Str">{EE825034-5DE0-4DE8-BE06-AD844A6B92B0}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
				<Property Name="App_winsec.description" Type="Str">http://www.GE.com</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{A141B634-7D7E-46B9-88BB-E0C9B5C14145}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">Agilnet Overnight</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../build</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToProject</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{8A915BE3-3A6C-4884-BF4E-77DE63058BD2}</Property>
				<Property Name="Bld_targetDestDir" Type="Path"></Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">Agilnet Overnight.exe</Property>
				<Property Name="Destination[0].path" Type="Path">../Dryer Performance/build/Agilnet Overnight.exe</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../Dryer Performance/build/data</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Source[0].itemID" Type="Str">{0B7824A0-DE0C-4D55-B11A-B1BAF52C8ACE}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/Support Exe/Agilent Overnight Test.vi</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="SourceCount" Type="Int">2</Property>
				<Property Name="TgtF_companyName" Type="Str">GE</Property>
				<Property Name="TgtF_fileDescription" Type="Str">Agilnet Overnight</Property>
				<Property Name="TgtF_internalName" Type="Str">Agilnet Overnight</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2011 GE</Property>
				<Property Name="TgtF_productName" Type="Str">Agilnet Overnight</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{DDF69D2C-A2B2-4A1C-AA02-CE975669B9D8}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">Agilnet Overnight.exe</Property>
			</Item>
			<Item Name="Chroma Driver" Type="EXE">
				<Property Name="App_INI_aliasGUID" Type="Str">{83892B1A-8E57-4B60-947E-76AF8D9A2700}</Property>
				<Property Name="App_INI_GUID" Type="Str">{E0B78925-D8B3-4886-B0C2-5C75AD786F09}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
				<Property Name="App_winsec.description" Type="Str">http://www.GE.com</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{A2D86219-E239-4279-AE34-6B4BB82716F3}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">Chroma Driver</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../builds/NI_AB_PROJECTNAME/Chroma Driver</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToCommon</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{F77565B5-92F9-43F8-8E3D-7178F68DC0BF}</Property>
				<Property Name="Bld_targetDestDir" Type="Path"></Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">Chroma Driver.exe</Property>
				<Property Name="Destination[0].path" Type="Path">../builds/NI_AB_PROJECTNAME/Chroma Driver/Chroma Driver.exe</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../builds/NI_AB_PROJECTNAME/Chroma Driver/data</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Source[0].itemID" Type="Str">{3B866DA4-3E97-4BB2-92E3-7CB008603652}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/Instruments/Chroma 617xx/Chroma Driver GPIB-VISA-RW.vi</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="SourceCount" Type="Int">2</Property>
				<Property Name="TgtF_companyName" Type="Str">GE</Property>
				<Property Name="TgtF_fileDescription" Type="Str">Chroma Driver</Property>
				<Property Name="TgtF_internalName" Type="Str">Chroma Driver</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2011 GE</Property>
				<Property Name="TgtF_productName" Type="Str">Chroma Driver</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{8EC19F2C-4783-4C7E-BB9F-00641703E97B}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">Chroma Driver.exe</Property>
			</Item>
			<Item Name="Read Percision Scale" Type="EXE">
				<Property Name="App_INI_aliasGUID" Type="Str">{170D6615-07FC-4E7A-8150-E4BADE349192}</Property>
				<Property Name="App_INI_GUID" Type="Str">{6FBB1113-2684-44F9-AAB5-FA488F082117}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
				<Property Name="App_winsec.description" Type="Str">http://www.GE.com</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{6B14465F-75E6-4ACE-B48C-7CA073C86B6D}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">Read Percision Scale</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../build</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToProject</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{0C4EC591-E4FA-4424-B1F7-B80E07DA43B0}</Property>
				<Property Name="Bld_targetDestDir" Type="Path"></Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">Read Percision Scale.exe</Property>
				<Property Name="Destination[0].path" Type="Path">../Dryer Performance/build/Read Percision Scale.exe</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../Dryer Performance/build/data</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Source[0].itemID" Type="Str">{DD076B2B-B593-491D-AEC3-FF13776B2B22}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref"></Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="SourceCount" Type="Int">2</Property>
				<Property Name="TgtF_companyName" Type="Str">GE</Property>
				<Property Name="TgtF_fileDescription" Type="Str">Read Percision Scale</Property>
				<Property Name="TgtF_internalName" Type="Str">Read Percision Scale</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2012 GE</Property>
				<Property Name="TgtF_productName" Type="Str">Read Percision Scale</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{AF15D155-2D89-4A5D-BE18-0C8CD5F38986}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">Read Percision Scale.exe</Property>
			</Item>
			<Item Name="Agilent Fetch" Type="EXE">
				<Property Name="App_INI_aliasGUID" Type="Str">{71D4D571-A88F-44C8-B4D0-8C63CF47E083}</Property>
				<Property Name="App_INI_GUID" Type="Str">{291D804A-FDD6-4209-BD9E-8165BE4EE36A}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
				<Property Name="App_winsec.description" Type="Str">http://www.GE.com</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{6AAA5804-ACFD-474B-8EBD-BEF4B18EB631}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">Agilent Fetch</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../build</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToProject</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{5C511346-341C-44D4-B591-B3E5579F9565}</Property>
				<Property Name="Bld_targetDestDir" Type="Path"></Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">Agilent Fetch.exe</Property>
				<Property Name="Destination[0].path" Type="Path">../Dryer Performance/build/Agilent Fetch.exe</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../Dryer Performance/build/data</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Source[0].itemID" Type="Str">{EF471D0C-E66B-4AFD-A709-1126A31A133D}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref"></Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="SourceCount" Type="Int">2</Property>
				<Property Name="TgtF_companyName" Type="Str">GE</Property>
				<Property Name="TgtF_fileDescription" Type="Str">Agilent Fetch</Property>
				<Property Name="TgtF_internalName" Type="Str">Agilent Fetch</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2012 GE</Property>
				<Property Name="TgtF_productName" Type="Str">Agilent Fetch</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{47260789-B3FC-4344-8B0D-813B631CFFE0}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">Agilent Fetch.exe</Property>
			</Item>
			<Item Name="Nufi Dryer" Type="EXE">
				<Property Name="App_INI_aliasGUID" Type="Str">{C207D467-E54E-4F12-A06A-E2A5D1BA39F8}</Property>
				<Property Name="App_INI_GUID" Type="Str">{4BACA4FD-C008-42AD-8B64-8ADFE6C08F03}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{390209AB-D5F8-49C2-9B36-987A576A4A93}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">Nufi Dryer</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../build</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToProject</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{681A8155-5444-441B-A7C9-9F7CAEA5072B}</Property>
				<Property Name="Bld_targetDestDir" Type="Path"></Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">Nufi Dryer.exe</Property>
				<Property Name="Destination[0].path" Type="Path">../Dryer Performance/build/Nufi Dryer.exe</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../Dryer Performance/build/data</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Source[0].itemID" Type="Str">{2742A992-83FF-4692-A8DA-960C1372FC0C}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref"></Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="Source[2].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[2].itemID" Type="Ref"></Property>
				<Property Name="Source[2].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[3].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[3].itemID" Type="Ref"></Property>
				<Property Name="Source[3].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[4].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[4].itemID" Type="Ref"></Property>
				<Property Name="Source[4].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[5].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[5].itemID" Type="Ref"></Property>
				<Property Name="Source[5].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[6].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[6].itemID" Type="Ref"></Property>
				<Property Name="Source[6].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[7].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[7].itemID" Type="Ref"></Property>
				<Property Name="Source[7].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[8].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[8].itemID" Type="Ref"></Property>
				<Property Name="Source[8].sourceInclusion" Type="Str">Include</Property>
				<Property Name="SourceCount" Type="Int">9</Property>
				<Property Name="TgtF_companyName" Type="Str">GE</Property>
				<Property Name="TgtF_fileDescription" Type="Str">Nufi Dryer</Property>
				<Property Name="TgtF_internalName" Type="Str">Nufi Dryer</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2012 GE</Property>
				<Property Name="TgtF_productName" Type="Str">Nufi Dryer</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{222FE6B8-B963-4396-AA53-34EB323D6689}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">Nufi Dryer.exe</Property>
			</Item>
			<Item Name="Read Power" Type="EXE">
				<Property Name="App_INI_aliasGUID" Type="Str">{409222A5-7FFE-43F3-86A3-40DB533699B8}</Property>
				<Property Name="App_INI_GUID" Type="Str">{DC96E0DF-0271-42E2-B267-277662EE91EB}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
				<Property Name="App_winsec.description" Type="Str">http://www.GE.com</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{EB302656-8A7F-4E55-BCA8-30C35F5B298E}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">Read Power</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../build</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToProject</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{D4CB818D-5945-429C-A1CA-D1DF33004694}</Property>
				<Property Name="Bld_targetDestDir" Type="Path"></Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">Read Power.exe</Property>
				<Property Name="Destination[0].path" Type="Path">../Dryer Performance/build/Read Power.exe</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../Dryer Performance/build/data</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Source[0].itemID" Type="Str">{E2F3555A-D6BE-40DA-8103-C422D1F54F87}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/Support VIs/WT500 Read Power.vi</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="SourceCount" Type="Int">2</Property>
				<Property Name="TgtF_companyName" Type="Str">GE</Property>
				<Property Name="TgtF_fileDescription" Type="Str">Read Power</Property>
				<Property Name="TgtF_internalName" Type="Str">Read Power</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2012 GE</Property>
				<Property Name="TgtF_productName" Type="Str">Read Power</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{7B35D1CF-5054-4581-85EA-48D4B6135C6A}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">Read Power.exe</Property>
			</Item>
			<Item Name="Calibration" Type="EXE">
				<Property Name="App_copyErrors" Type="Bool">true</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{83ECE01D-60B6-4F6A-BAD1-5FFEC3D522F7}</Property>
				<Property Name="App_INI_GUID" Type="Str">{98037DF7-8B9B-4026-AFE3-EE046867EC74}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{3A77B59D-9236-4279-96FF-E4F611CE8A05}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">Calibration</Property>
				<Property Name="Bld_excludeInlineSubVIs" Type="Bool">true</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../builds/NI_AB_PROJECTNAME/Calibration</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToCommon</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{B43946F5-607E-4AFB-9FF7-44D17C73A24F}</Property>
				<Property Name="Bld_version.build" Type="Int">1</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">Calibration.exe</Property>
				<Property Name="Destination[0].path" Type="Path">../builds/NI_AB_PROJECTNAME/Calibration/Calibration.exe</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../builds/NI_AB_PROJECTNAME/Calibration/data</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Exe_iconItemID" Type="Ref"></Property>
				<Property Name="Source[0].itemID" Type="Str">{EC4C3173-B59B-40DB-8732-8C427A88623B}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/Main exe/Calibration.vi</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="Source[2].Container.applyProperties" Type="Bool">true</Property>
				<Property Name="Source[2].itemID" Type="Ref">/My Computer/Panels</Property>
				<Property Name="Source[2].type" Type="Str">Container</Property>
				<Property Name="SourceCount" Type="Int">3</Property>
				<Property Name="TgtF_companyName" Type="Str">General Electric</Property>
				<Property Name="TgtF_fileDescription" Type="Str">Calibration</Property>
				<Property Name="TgtF_internalName" Type="Str">Calibration</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2013 General Electric</Property>
				<Property Name="TgtF_productName" Type="Str">Calibration</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{D550DD5C-323B-4D3E-AD55-4C3B4064CCDE}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">Calibration.exe</Property>
			</Item>
			<Item Name="Dryer Performance Installer" Type="Installer">
				<Property Name="Destination[0].name" Type="Str">Dryer Performance Project</Property>
				<Property Name="Destination[0].parent" Type="Str">{3912416A-D2E5-411B-AFEE-B63654D690C0}</Property>
				<Property Name="Destination[0].tag" Type="Str">{F3274085-68BB-4926-9867-54B480D68ECA}</Property>
				<Property Name="Destination[0].type" Type="Str">userFolder</Property>
				<Property Name="DestinationCount" Type="Int">1</Property>
				<Property Name="DistPart[0].flavorID" Type="Str">_full_</Property>
				<Property Name="DistPart[0].productID" Type="Str">{459982AB-7E96-44F0-982D-0A4B9B9D0263}</Property>
				<Property Name="DistPart[0].productName" Type="Str">NI-DAQmx Core Runtime 9.8</Property>
				<Property Name="DistPart[0].upgradeCode" Type="Str">{923C9CD5-A0D8-4147-9A8D-998780E30763}</Property>
				<Property Name="DistPart[1].flavorID" Type="Str">DefaultFull</Property>
				<Property Name="DistPart[1].productID" Type="Str">{448569AE-EE10-456F-B3A6-CA1D862E2E9C}</Property>
				<Property Name="DistPart[1].productName" Type="Str">NI LabVIEW Runtime 2016</Property>
				<Property Name="DistPart[1].SoftDep[0].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[1].SoftDep[0].productName" Type="Str">NI ActiveX Container</Property>
				<Property Name="DistPart[1].SoftDep[0].upgradeCode" Type="Str">{1038A887-23E1-4289-B0BD-0C4B83C6BA21}</Property>
				<Property Name="DistPart[1].SoftDep[1].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[1].SoftDep[1].productName" Type="Str">NI Logos 5.8</Property>
				<Property Name="DistPart[1].SoftDep[1].upgradeCode" Type="Str">{5E4A4CE3-4D06-11D4-8B22-006008C16337}</Property>
				<Property Name="DistPart[1].SoftDep[2].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[1].SoftDep[2].productName" Type="Str">NI TDM Streaming 16.0</Property>
				<Property Name="DistPart[1].SoftDep[2].upgradeCode" Type="Str">{4CD11BE6-6BB7-4082-8A27-C13771BC309B}</Property>
				<Property Name="DistPart[1].SoftDep[3].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[1].SoftDep[3].productName" Type="Str">NI VC2008MSMs</Property>
				<Property Name="DistPart[1].SoftDep[3].upgradeCode" Type="Str">{FDA3F8BB-BAA9-45D7-8DC7-22E1F5C76315}</Property>
				<Property Name="DistPart[1].SoftDep[4].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[1].SoftDep[4].productName" Type="Str">NI VC2010MSMs</Property>
				<Property Name="DistPart[1].SoftDep[4].upgradeCode" Type="Str">{EFBA6F9E-F934-4BD7-AC51-60CCA480489C}</Property>
				<Property Name="DistPart[1].SoftDep[5].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[1].SoftDep[5].productName" Type="Str">NI Error Reporting 2016</Property>
				<Property Name="DistPart[1].SoftDep[5].upgradeCode" Type="Str">{42E818C6-2B08-4DE7-BD91-B0FD704C119A}</Property>
				<Property Name="DistPart[1].SoftDepCount" Type="Int">6</Property>
				<Property Name="DistPart[1].upgradeCode" Type="Str">{E7DBF016-365A-40B6-9526-B4D0B4830F51}</Property>
				<Property Name="DistPartCount" Type="Int">2</Property>
				<Property Name="INST_author" Type="Str">General Electric</Property>
				<Property Name="INST_autoIncrement" Type="Bool">true</Property>
				<Property Name="INST_buildLocation" Type="Path">../Dryer Performance/build/Dryer Performace Installer</Property>
				<Property Name="INST_buildLocation.type" Type="Str">relativeToCommon</Property>
				<Property Name="INST_buildSpecName" Type="Str">Dryer Performance Installer</Property>
				<Property Name="INST_defaultDir" Type="Str">{F3274085-68BB-4926-9867-54B480D68ECA}</Property>
				<Property Name="INST_productName" Type="Str">Dryer Performance Project</Property>
				<Property Name="INST_productVersion" Type="Str">1.0.2</Property>
				<Property Name="InstSpecBitness" Type="Str">32-bit</Property>
				<Property Name="InstSpecVersion" Type="Str">16008010</Property>
				<Property Name="MSI_arpCompany" Type="Str">General Electric</Property>
				<Property Name="MSI_autoselectDrivers" Type="Bool">true</Property>
				<Property Name="MSI_distID" Type="Str">{F06E5737-11D7-49A7-B5A2-AC065E7C1674}</Property>
				<Property Name="MSI_osCheck" Type="Int">0</Property>
				<Property Name="MSI_upgradeCode" Type="Str">{72CBA71B-9BC2-49ED-9E43-CF46F5385A71}</Property>
				<Property Name="RegDest[0].dirName" Type="Str">Software</Property>
				<Property Name="RegDest[0].dirTag" Type="Str">{DDFAFC8B-E728-4AC8-96DE-B920EBB97A86}</Property>
				<Property Name="RegDest[0].parentTag" Type="Str">2</Property>
				<Property Name="RegDestCount" Type="Int">1</Property>
				<Property Name="Source[0].dest" Type="Str">{F3274085-68BB-4926-9867-54B480D68ECA}</Property>
				<Property Name="Source[0].File[0].dest" Type="Str">{F3274085-68BB-4926-9867-54B480D68ECA}</Property>
				<Property Name="Source[0].File[0].name" Type="Str">Dryer Performance Test.exe</Property>
				<Property Name="Source[0].File[0].Shortcut[0].destIndex" Type="Int">0</Property>
				<Property Name="Source[0].File[0].Shortcut[0].name" Type="Str">Dryer Performance Test</Property>
				<Property Name="Source[0].File[0].Shortcut[0].subDir" Type="Str">Dryer Performance Project</Property>
				<Property Name="Source[0].File[0].ShortcutCount" Type="Int">1</Property>
				<Property Name="Source[0].File[0].tag" Type="Str">{513CA271-A395-4718-B1D3-23DF326970E5}</Property>
				<Property Name="Source[0].FileCount" Type="Int">1</Property>
				<Property Name="Source[0].name" Type="Str">Dryer Performance Test</Property>
				<Property Name="Source[0].tag" Type="Ref">/My Computer/Build Specifications/Dryer Performance Test</Property>
				<Property Name="Source[0].type" Type="Str">EXE</Property>
				<Property Name="SourceCount" Type="Int">1</Property>
			</Item>
		</Item>
	</Item>
</Project>
