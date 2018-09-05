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
		<Item Name="Panels" Type="Folder" URL="../Panels">
			<Property Name="NI.DISK" Type="Bool">true</Property>
		</Item>
		<Item Name="Type Definitions" Type="Folder" URL="../Type Definitions">
			<Property Name="NI.DISK" Type="Bool">true</Property>
		</Item>
		<Item Name="Utility" Type="Folder">
			<Item Name="Calibration" Type="Folder" URL="../../Utility/Calibration">
				<Property Name="NI.DISK" Type="Bool">true</Property>
			</Item>
			<Item Name="Save File" Type="Folder" URL="../../Utility/Save File">
				<Property Name="NI.DISK" Type="Bool">true</Property>
			</Item>
			<Item Name="Custom Pallet Controls" Type="Folder">
				<Item Name="CVS" Type="Folder">
					<Item Name="Entries" Type="Document" URL="../../Utility/Custom Pallet Controls/CVS/Entries"/>
					<Item Name="Entries.Extra" Type="Document" URL="../../Utility/Custom Pallet Controls/CVS/Entries.Extra"/>
					<Item Name="Entries.Extra.Old" Type="Document" URL="../../Utility/Custom Pallet Controls/CVS/Entries.Extra.Old"/>
					<Item Name="Entries.Old" Type="Document" URL="../../Utility/Custom Pallet Controls/CVS/Entries.Old"/>
					<Item Name="Repository" Type="Document" URL="../../Utility/Custom Pallet Controls/CVS/Repository"/>
					<Item Name="Root" Type="Document" URL="../../Utility/Custom Pallet Controls/CVS/Root"/>
				</Item>
				<Item Name="Custom Controls.mnu" Type="Document" URL="../../Utility/Custom Pallet Controls/Custom Controls.mnu"/>
				<Item Name="Custom Pallet Forward.ctl" Type="VI" URL="../../Utility/Custom Pallet Controls/Custom Pallet Forward.ctl"/>
				<Item Name="Custom Pallet DBL.ctl" Type="VI" URL="../../Utility/Custom Pallet Controls/Custom Pallet DBL.ctl"/>
				<Item Name="Custom Pallet Number.ctl" Type="VI" URL="../../Utility/Custom Pallet Controls/Custom Pallet Number.ctl"/>
				<Item Name="Custom Pallet String.ctl" Type="VI" URL="../../Utility/Custom Pallet Controls/Custom Pallet String.ctl"/>
			</Item>
			<Item Name="Type Definitions" Type="Folder">
				<Item Name="UTILITY Date and Time.ctl" Type="VI" URL="../../Utility/Type Definitions/UTILITY Date and Time.ctl"/>
				<Item Name="UTILITY TC Coefficients.ctl" Type="VI" URL="../../Utility/Type Definitions/UTILITY TC Coefficients.ctl"/>
				<Item Name="UTILITY Power Inputs Control.ctl" Type="VI" URL="../../Utility/Type Definitions/UTILITY Power Inputs Control.ctl"/>
				<Item Name="UTILITY Power Analyzer.ctl" Type="VI" URL="../../Utility/Type Definitions/UTILITY Power Analyzer.ctl"/>
				<Item Name="UTILITY Default File Create.ctl" Type="VI" URL="../../Utility/Type Definitions/UTILITY Default File Create.ctl"/>
			</Item>
			<Item Name="GEA2 Commands" Type="Folder" URL="../../Utility/GEA2 Commands">
				<Property Name="NI.DISK" Type="Bool">true</Property>
			</Item>
			<Item Name="UTILITY Delay mS.vi" Type="VI" URL="../../Utility/UTILITY Delay mS.vi"/>
			<Item Name="UTILITY Counter.vi" Type="VI" URL="../../Utility/UTILITY Counter.vi"/>
			<Item Name="UTILITY E-Time.vi" Type="VI" URL="../../Utility/UTILITY E-Time.vi"/>
			<Item Name="UTILITY Create Nested Directories.vi" Type="VI" URL="../../Utility/UTILITY Create Nested Directories.vi"/>
			<Item Name="UTILITY Error Bool Add Message.vi" Type="VI" URL="../../Utility/UTILITY Error Bool Add Message.vi"/>
			<Item Name="UTILITY Local.vi" Type="VI" URL="../../Utility/UTILITY Local.vi"/>
			<Item Name="UTILITY Array Get 1D String Column From 2D.vi" Type="VI" URL="../../Utility/UTILITY Array Get 1D String Column From 2D.vi"/>
			<Item Name="UTILITY Array Get 1D Row From 2D String.vi" Type="VI" URL="../../Utility/UTILITY Array Get 1D Row From 2D String.vi"/>
			<Item Name="UTILITY This VIs Path.vi" Type="VI" URL="../../Utility/UTILITY This VIs Path.vi"/>
			<Item Name="UTILITY U8 Array to String.vi" Type="VI" URL="../../Utility/UTILITY U8 Array to String.vi"/>
			<Item Name="UTILITY Delete Empty String Cells.vi" Type="VI" URL="../../Utility/UTILITY Delete Empty String Cells.vi"/>
			<Item Name="UTILITY Get Excel Data From Worksheet.vi" Type="VI" URL="../../Utility/UTILITY Get Excel Data From Worksheet.vi"/>
			<Item Name="UTILITY Type Conv Seconds Time String.vi" Type="VI" URL="../../Utility/UTILITY Type Conv Seconds Time String.vi"/>
			<Item Name="UTILITY Log String to Spreadsheet.vi" Type="VI" URL="../../Utility/UTILITY Log String to Spreadsheet.vi"/>
			<Item Name="UTILITY IP and Computer Name.vi" Type="VI" URL="../../Utility/UTILITY IP and Computer Name.vi"/>
			<Item Name="UTILITY Date String Days.vi" Type="VI" URL="../../Utility/UTILITY Date String Days.vi"/>
			<Item Name="UTILTIY Remove Blank Rows.vi" Type="VI" URL="../../Utility/UTILTIY Remove Blank Rows.vi"/>
			<Item Name="UTILITY Com Chan Type Conversion.vi" Type="VI" URL="../../Utility/UTILITY Com Chan Type Conversion.vi"/>
			<Item Name="UTILITY Save Data.vi" Type="VI" URL="../../Utility/UTILITY Save Data.vi"/>
			<Item Name="UTILITY Write Header.vi" Type="VI" URL="../../Utility/UTILITY Write Header.vi"/>
			<Item Name="UTILITY Release Semaphore.vi" Type="VI" URL="../../Utility/UTILITY Release Semaphore.vi"/>
			<Item Name="LV70DateRecToTimeStamp.vi" Type="VI" URL="../../Utility/_oldvers.llb/LV70DateRecToTimeStamp.vi"/>
			<Item Name="UTILITY Convert String to TimeStamp.vi" Type="VI" URL="../../Utility/UTILITY Convert String to TimeStamp.vi"/>
			<Item Name="UTILITY Array to String Array.vi" Type="VI" URL="../../Utility/UTILITY Array to String Array.vi"/>
			<Item Name="UTILITY Create Default File.vi" Type="VI" URL="../../Utility/UTILITY Create Default File.vi"/>
			<Item Name="UTILITY Convert Hex String to Array.vi" Type="VI" URL="../../Utility/UTILITY Convert Hex String to Array.vi"/>
			<Item Name="UTILITY Aquire Semaphore.vi" Type="VI" URL="../../Utility/UTILITY Aquire Semaphore.vi"/>
			<Item Name="UTILITY 1D DBL to 1D String.vi" Type="VI" URL="../../Utility/UTILITY 1D DBL to 1D String.vi"/>
			<Item Name="UTILITY Delete Empty String Cells 2D.vi" Type="VI" URL="../../Utility/UTILITY Delete Empty String Cells 2D.vi"/>
			<Item Name="UTILITY 1D String to 1D DBL.vi" Type="VI" URL="../../Utility/UTILITY 1D String to 1D DBL.vi"/>
			<Item Name="UTILITY Convert String to Time.vi" Type="VI" URL="../../Utility/UTILITY Convert String to Time.vi"/>
			<Item Name="DOE Agilent Setup SUB.vi" Type="VI" URL="../../Washer DOE/Support VIs/DOE Agilent Setup SUB.vi"/>
			<Item Name="UTILITY Agilent Scan List Permutation.vi" Type="VI" URL="../../Utility/UTILITY Agilent Scan List Permutation.vi"/>
			<Item Name="UTILITY String to Array.vi" Type="VI" URL="../../Utility/UTILITY String to Array.vi"/>
			<Item Name="UTILITY Integral.vi" Type="VI" URL="../../Utility/UTILITY Integral.vi"/>
			<Item Name="UTILITY Custom VISA Name.vi" Type="VI" URL="../../Utility/UTILITY Custom VISA Name.vi"/>
		</Item>
		<Item Name="Support VIs" Type="Folder" URL="../Support VIs">
			<Property Name="NI.DISK" Type="Bool">true</Property>
		</Item>
		<Item Name="Instruments" Type="Folder">
			<Item Name="Agilent 34972" Type="Folder" URL="../../../Drivers/Agilent 34972">
				<Property Name="NI.DISK" Type="Bool">true</Property>
			</Item>
			<Item Name="NI USB 6008" Type="Folder" URL="../Instruments/NI USB 6008">
				<Property Name="NI.DISK" Type="Bool">true</Property>
			</Item>
			<Item Name="Omega FMA-1600A Series Gas Flow Meter" Type="Folder" URL="../../../Drivers/Omega FMA-1600A Series Gas Flow Meter">
				<Property Name="NI.DISK" Type="Bool">true</Property>
			</Item>
		</Item>
		<Item Name="Globals" Type="Folder" URL="../Globals">
			<Property Name="NI.DISK" Type="Bool">true</Property>
		</Item>
		<Item Name="Documentation" Type="Folder" URL="../Documentation">
			<Property Name="NI.DISK" Type="Bool">true</Property>
		</Item>
		<Item Name="Type Definitions (Other) Pulled From Save" Type="Folder">
			<Item Name="HCC" Type="Folder">
				<Item Name="ERD_Always_Show.ctl" Type="VI" URL="../../Washer HCC/Washer HCC NEWFI/Washer Soft Load Box/type defs/ERD_Always_Show.ctl"/>
				<Item Name="Redundant.ctl" Type="VI" URL="../../Washer HCC/Washer HCC NEWFI/Washer Soft Load Box/type defs/Redundant.ctl"/>
				<Item Name="Algorithms.ctl" Type="VI" URL="../../Washer HCC/Washer HCC NEWFI/Washer Soft Load Box/type defs/Algorithms.ctl"/>
				<Item Name="Red_Micro_Parse.vi" Type="VI" URL="../../Washer HCC/Washer HCC NEWFI/Washer Soft Load Box/subVIs/Red_Micro_Parse.vi"/>
				<Item Name="ATC_Data.ctl" Type="VI" URL="../../Washer HCC/Washer HCC NEWFI/Washer Soft Load Box/type defs/ATC_Data.ctl"/>
				<Item Name="Version.ctl" Type="VI" URL="../../Washer HCC/Washer HCC NEWFI/Washer Soft Load Box/type defs/Version.ctl"/>
				<Item Name="ViperHawk Data.ctl" Type="VI" URL="../../Washer HCC/Washer HCC NEWFI/Type Definitions/ViperHawk/ViperHawk Data.ctl"/>
				<Item Name="ViperHawk Diagnostic Data.ctl" Type="VI" URL="../../Washer HCC/Washer HCC NEWFI/Type Definitions/ViperHawk/ViperHawk Diagnostic Data.ctl"/>
				<Item Name="ViperHawk Search Control.ctl" Type="VI" URL="../../Washer HCC/Washer HCC NEWFI/Type Definitions/ViperHawk/ViperHawk Search Control.ctl"/>
				<Item Name="HCC Filename Setup.ctl" Type="VI" URL="../../Washer HCC/Washer HCC NEWFI/Type Definitions/HCC Filename Setup.ctl"/>
				<Item Name="HCC Read Write Display.vi" Type="VI" URL="../../Washer HCC/Washer HCC NEWFI/Support VIs/HCC Read Write Display.vi"/>
				<Item Name="HCC Compile Cluster.vi" Type="VI" URL="../../Washer HCC/Washer HCC NEWFI/Support VIs/HCC Compile Cluster.vi"/>
				<Item Name="HCC Compile Write Array.vi" Type="VI" URL="../../Washer HCC/Washer HCC NEWFI/Support VIs/HCC Compile Write Array.vi"/>
				<Item Name="HCC Filter NonUsed Agilent Channels.vi" Type="VI" URL="../../Washer HCC/Washer HCC NEWFI/Support VIs/HCC Filter NonUsed Agilent Channels.vi"/>
				<Item Name="HCC Split Voltage and Current Agilent.vi" Type="VI" URL="../../Washer HCC/Washer HCC NEWFI/Support VIs/HCC Split Voltage and Current Agilent.vi"/>
				<Item Name="HCC Disable Station Agilent.vi" Type="VI" URL="../../Washer HCC/Washer HCC NEWFI/Support VIs/HCC Disable Station Agilent.vi"/>
			</Item>
			<Item Name="HEWH" Type="Folder">
				<Item Name="HEWH Agilent Cluster.ctl" Type="VI" URL="../../Hybrid Water Heater/Type Definitions/HEWH Agilent Cluster.ctl"/>
				<Item Name="HEWH Output Information.ctl" Type="VI" URL="../../Hybrid Water Heater/Type Definitions/HEWH Output Information.ctl"/>
				<Item Name="HEWH Draw Pattern Setup.ctl" Type="VI" URL="../../Hybrid Water Heater/Type Definitions/HEWH Draw Pattern Setup.ctl"/>
				<Item Name="HEWH Power Data.ctl" Type="VI" URL="../../Hybrid Water Heater/Type Definitions/HEWH Power Data.ctl"/>
				<Item Name="HEWH PreDraw.ctl" Type="VI" URL="../../Hybrid Water Heater/Type Definitions/HEWH PreDraw.ctl"/>
				<Item Name="HEWH Termination Condition Cluster.ctl" Type="VI" URL="../../Hybrid Water Heater/Type Definitions/HEWH Termination Condition Cluster.ctl"/>
				<Item Name="HEWH Power Elements.ctl" Type="VI" URL="../../Hybrid Water Heater/Type Definitions/HEWH Power Elements.ctl"/>
				<Item Name="PRAT Test.ctl" Type="VI" URL="../../Hybrid Water Heater/Type Definitions/PRAT Test.ctl"/>
				<Item Name="Terminate Draw Conditions.ctl" Type="VI" URL="../../Hybrid Water Heater/Support VIs/Draw Water Specific/Type Definitions/Terminate Draw Conditions.ctl"/>
				<Item Name="HEWH Start Conditions.ctl" Type="VI" URL="../../Hybrid Water Heater/Type Definitions/HEWH Start Conditions.ctl"/>
				<Item Name="Check Special Condtions.ctl" Type="VI" URL="../../Hybrid Water Heater/Support VIs/Draw Water Specific/Type Definitions/Check Special Condtions.ctl"/>
				<Item Name="HEWH Special Condition Check.ctl" Type="VI" URL="../../Hybrid Water Heater/Support VIs/Draw Water Specific/Type Definitions/HEWH Special Condition Check.ctl"/>
				<Item Name="HEWH Draw Flag ENUM.ctl" Type="VI" URL="../../Hybrid Water Heater/Type Definitions/HEWH Draw Flag ENUM.ctl"/>
				<Item Name="HEWH Specific DAQ.ctl" Type="VI" URL="../../Hybrid Water Heater/Type Definitions/HEWH Specific DAQ.ctl"/>
				<Item Name="HEWH Calc and Calibration.ctl" Type="VI" URL="../../Hybrid Water Heater/Type Definitions/HEWH Calc and Calibration.ctl"/>
				<Item Name="Station ID Selector.ctl" Type="VI" URL="../../Hybrid Water Heater/Custom Instrument Control/MW100/Type Definitions/Station ID Selector.ctl"/>
				<Item Name="HEWH Hyperterminal.vi" Type="VI" URL="../../Hybrid Water Heater/Support VIs/HEWH Hyperterminal.vi"/>
				<Item Name="INTELLIFAUCET Tested Flowrate Scenarios.ctl" Type="VI" URL="../../Hybrid Water Heater/Custom Instrument Control/Intellifaucet/Type Definitions/INTELLIFAUCET Tested Flowrate Scenarios.ctl"/>
			</Item>
			<Item Name="Washer DOE" Type="Folder">
				<Item Name="GEA2.ctl" Type="VI" URL="../../Washer DOE/Configuration/GEA2.ctl"/>
				<Item Name="DOE Capacity Measurments.ctl" Type="VI" URL="../../Washer DOE/Type Definitions/DOE Capacity Measurments.ctl"/>
				<Item Name="DOE Main Control.ctl" Type="VI" URL="../../Washer DOE/Type Definitions/DOE Main Control.ctl"/>
				<Item Name="DOE Test Fixture Hardware.ctl" Type="VI" URL="../../Washer DOE/Type Definitions/DOE Test Fixture Hardware.ctl"/>
			</Item>
			<Item Name="Range" Type="Folder">
				<Item Name="RANGE Configuration File.vi" Type="VI" URL="../../Range/SubVIs/RANGE Configuration File.vi"/>
				<Item Name="RANGE Startup File.vi" Type="VI" URL="../../Range/SubVIs/RANGE Startup File.vi"/>
				<Item Name="RANGE Update Meter Types.vi" Type="VI" URL="../../Range/SubVIs/RANGE Update Meter Types.vi"/>
				<Item Name="RANGE Update Accuracy Settings.vi" Type="VI" URL="../../Range/SubVIs/RANGE Update Accuracy Settings.vi"/>
				<Item Name="RANGE Populate Configuration Data.vi" Type="VI" URL="../../Range/SubVIs/RANGE Populate Configuration Data.vi"/>
				<Item Name="RANGE Get COM Ports.vi" Type="VI" URL="../../Range/SubVIs/RANGE Get COM Ports.vi"/>
				<Item Name="RANGE Parse Configuration Data.vi" Type="VI" URL="../../Range/SubVIs/RANGE Parse Configuration Data.vi"/>
				<Item Name="RANGE Accuracy At Zero.vi" Type="VI" URL="../../Range/SubVIs/RANGE Accuracy At Zero.vi"/>
				<Item Name="RANGE DAQ Data Four Meters.ctl" Type="VI" URL="../../Range/Type Definitions/RANGE DAQ Data Four Meters.ctl"/>
				<Item Name="RANGE DAQ Data.ctl" Type="VI" URL="../../Range/Type Definitions/RANGE DAQ Data.ctl"/>
				<Item Name="RANGE GAS Data.ctl" Type="VI" URL="../../Range/Type Definitions/RANGE GAS Data.ctl"/>
				<Item Name="RANGE Panel Data.ctl" Type="VI" URL="../../Range/Type Definitions/RANGE Panel Data.ctl"/>
				<Item Name="RANGE Meter Selector.ctl" Type="VI" URL="../../Range/Type Definitions/RANGE Meter Selector.ctl"/>
				<Item Name="RANGE Zero Error Offset.vi" Type="VI" URL="../../Range/SubVIs/RANGE Zero Error Offset.vi"/>
			</Item>
		</Item>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="Parse State Queue__JKI_lib_State_Machine.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/State Machine/_JKI_lib_State_Machine.llb/Parse State Queue__JKI_lib_State_Machine.vi"/>
				<Item Name="Trim Whitespace.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Trim Whitespace.vi"/>
				<Item Name="whitespace.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/whitespace.ctl"/>
				<Item Name="Add State(s) to Queue__jki_lib_state_machine.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/State Machine/_JKI_lib_State_Machine.llb/Add State(s) to Queue__jki_lib_state_machine.vi"/>
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
				<Item Name="General Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler.vi"/>
				<Item Name="DialogType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogType.ctl"/>
				<Item Name="Clear Errors.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Clear Errors.vi"/>
				<Item Name="Unset Busy.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/cursorutil.llb/Unset Busy.vi"/>
				<Item Name="Set Busy.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/cursorutil.llb/Set Busy.vi"/>
				<Item Name="VISA Configure Serial Port" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Configure Serial Port"/>
				<Item Name="VISA Configure Serial Port (Instr).vi" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Configure Serial Port (Instr).vi"/>
				<Item Name="Write To Spreadsheet File.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Write To Spreadsheet File.vi"/>
				<Item Name="Write To Spreadsheet File (DBL).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Write To Spreadsheet File (DBL).vi"/>
				<Item Name="Write To Spreadsheet File (I64).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Write To Spreadsheet File (I64).vi"/>
				<Item Name="Write To Spreadsheet File (string).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Write To Spreadsheet File (string).vi"/>
				<Item Name="Check if File or Folder Exists.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Check if File or Folder Exists.vi"/>
				<Item Name="Read From Spreadsheet File.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read From Spreadsheet File.vi"/>
				<Item Name="Read From Spreadsheet File (DBL).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read From Spreadsheet File (DBL).vi"/>
				<Item Name="Read Lines From File.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read Lines From File.vi"/>
				<Item Name="Close File+.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Close File+.vi"/>
				<Item Name="Read File+ (string).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read File+ (string).vi"/>
				<Item Name="Open File+.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Open File+.vi"/>
				<Item Name="Read From Spreadsheet File (I64).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read From Spreadsheet File (I64).vi"/>
				<Item Name="Read From Spreadsheet File (string).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read From Spreadsheet File (string).vi"/>
				<Item Name="Obtain Semaphore Reference.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/Obtain Semaphore Reference.vi"/>
				<Item Name="Semaphore RefNum" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/Semaphore RefNum"/>
				<Item Name="Acquire Semaphore.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/Acquire Semaphore.vi"/>
				<Item Name="Release Semaphore.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/Release Semaphore.vi"/>
				<Item Name="System Exec.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/system.llb/System Exec.vi"/>
				<Item Name="DAQmx Clear Task.vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/task.llb/DAQmx Clear Task.vi"/>
				<Item Name="DAQmx Fill In Error Info.vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/miscellaneous.llb/DAQmx Fill In Error Info.vi"/>
				<Item Name="DAQmx Start Task.vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/task.llb/DAQmx Start Task.vi"/>
				<Item Name="DAQmx Create Virtual Channel.vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Virtual Channel.vi"/>
				<Item Name="DAQmx Create Channel (AI-Voltage-Basic).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Voltage-Basic).vi"/>
				<Item Name="DAQmx Rollback Channel If Error.vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Rollback Channel If Error.vi"/>
				<Item Name="DAQmx Create AI Channel (sub).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create AI Channel (sub).vi"/>
				<Item Name="DAQmx Create Channel (DO-Digital Output).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (DO-Digital Output).vi"/>
				<Item Name="DAQmx Read.vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read.vi"/>
				<Item Name="DAQmx Read (Analog 2D DBL NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Analog 2D DBL NChan NSamp).vi"/>
				<Item Name="DAQmx Read (Digital U8 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital U8 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Write.vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write.vi"/>
				<Item Name="DAQmx Write (Digital U8 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital U8 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Write (Digital U32 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital U32 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Timing.vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/timing.llb/DAQmx Timing.vi"/>
				<Item Name="DAQmx Timing (Sample Clock).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/timing.llb/DAQmx Timing (Sample Clock).vi"/>
				<Item Name="Search and Replace Pattern.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Search and Replace Pattern.vi"/>
				<Item Name="VISA Configure Serial Port (Serial Instr).vi" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Configure Serial Port (Serial Instr).vi"/>
				<Item Name="Three Button Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog.vi"/>
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
				<Item Name="DAQmx Read (Analog 1D Wfm NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Analog 1D Wfm NChan NSamp).vi"/>
				<Item Name="DAQmx Read (Analog 1D DBL 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Analog 1D DBL 1Chan NSamp).vi"/>
				<Item Name="DAQmx Read (Analog 1D DBL NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Analog 1D DBL NChan 1Samp).vi"/>
				<Item Name="DAQmx Read (Analog 1D Wfm NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Analog 1D Wfm NChan 1Samp).vi"/>
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
				<Item Name="DAQmx Read (Counter 1D Pulse Freq 1 Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Counter 1D Pulse Freq 1 Chan NSamp).vi"/>
				<Item Name="DAQmx Read (Counter 1D Pulse Ticks 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Counter 1D Pulse Ticks 1Chan NSamp).vi"/>
				<Item Name="DAQmx Read (Counter 1D Pulse Time 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Counter 1D Pulse Time 1Chan NSamp).vi"/>
				<Item Name="DAQmx Read (Counter Pulse Freq 1 Chan 1 Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Counter Pulse Freq 1 Chan 1 Samp).vi"/>
				<Item Name="DAQmx Read (Counter Pulse Ticks 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Counter Pulse Ticks 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Read (Counter Pulse Time 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Counter Pulse Time 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Write (Analog 1D DBL 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Analog 1D DBL 1Chan NSamp).vi"/>
				<Item Name="DAQmx Write (Analog 1D DBL NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Analog 1D DBL NChan 1Samp).vi"/>
				<Item Name="DAQmx Write (Analog 1D Wfm NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Analog 1D Wfm NChan 1Samp).vi"/>
				<Item Name="DAQmx Write (Analog 2D DBL NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Analog 2D DBL NChan NSamp).vi"/>
				<Item Name="DAQmx Write (Analog DBL 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Analog DBL 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Write (Analog Wfm 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Analog Wfm 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Write (Analog Wfm 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Analog Wfm 1Chan NSamp).vi"/>
				<Item Name="DAQmx Write (Digital 2D U32 NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital 2D U32 NChan NSamp).vi"/>
				<Item Name="DAQmx Write (Digital 2D U8 NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital 2D U8 NChan NSamp).vi"/>
				<Item Name="DAQmx Write (Digital 1D Bool 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital 1D Bool 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Write (Digital 1D U32 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital 1D U32 1Chan NSamp).vi"/>
				<Item Name="DAQmx Write (Digital 1D U8 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital 1D U8 1Chan NSamp).vi"/>
				<Item Name="DAQmx Write (Digital Bool 1Line 1Point).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital Bool 1Line 1Point).vi"/>
				<Item Name="DAQmx Write (Digital Wfm 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital Wfm 1Chan NSamp).vi"/>
				<Item Name="DWDT Uncompress Digital.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/DWDTOps.llb/DWDT Uncompress Digital.vi"/>
				<Item Name="DAQmx Write (Raw 1D I16).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Raw 1D I16).vi"/>
				<Item Name="DAQmx Write (Raw 1D I32).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Raw 1D I32).vi"/>
				<Item Name="DAQmx Write (Raw 1D I8).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Raw 1D I8).vi"/>
				<Item Name="DAQmx Write (Raw 1D U16).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Raw 1D U16).vi"/>
				<Item Name="DAQmx Write (Raw 1D U32).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Raw 1D U32).vi"/>
				<Item Name="DAQmx Write (Raw 1D U8).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Raw 1D U8).vi"/>
				<Item Name="DAQmx Write (Digital 1D Wfm NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital 1D Wfm NChan 1Samp).vi"/>
				<Item Name="DAQmx Write (Digital Wfm 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital Wfm 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Write (Analog 1D Wfm NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Analog 1D Wfm NChan NSamp).vi"/>
				<Item Name="DAQmx Write (Digital 1D Wfm NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital 1D Wfm NChan NSamp).vi"/>
				<Item Name="DAQmx Write (Digital 1D U32 NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital 1D U32 NChan 1Samp).vi"/>
				<Item Name="DAQmx Write (Digital 1D U8 NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital 1D U8 NChan 1Samp).vi"/>
				<Item Name="DAQmx Write (Digital 2D Bool NChan 1Samp NLine).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital 2D Bool NChan 1Samp NLine).vi"/>
				<Item Name="DAQmx Write (Digital 1D Bool NChan 1Samp 1Line).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital 1D Bool NChan 1Samp 1Line).vi"/>
				<Item Name="DAQmx Write (Analog 2D I16 NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Analog 2D I16 NChan NSamp).vi"/>
				<Item Name="DAQmx Write (Analog 2D U16 NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Analog 2D U16 NChan NSamp).vi"/>
				<Item Name="DAQmx Write (Counter Frequency 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Counter Frequency 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Write (Counter Ticks 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Counter Ticks 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Write (Counter Time 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Counter Time 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Write (Counter 1D Frequency NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Counter 1D Frequency NChan 1Samp).vi"/>
				<Item Name="DAQmx Write (Counter 1D Time NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Counter 1D Time NChan 1Samp).vi"/>
				<Item Name="DAQmx Write (Counter 1DTicks NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Counter 1DTicks NChan 1Samp).vi"/>
				<Item Name="DAQmx Write (Analog 2D I32 NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Analog 2D I32 NChan NSamp).vi"/>
				<Item Name="DAQmx Write (Digital U16 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital U16 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Write (Digital 1D U16 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital 1D U16 1Chan NSamp).vi"/>
				<Item Name="DAQmx Write (Digital 1D U16 NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital 1D U16 NChan 1Samp).vi"/>
				<Item Name="DAQmx Write (Digital 2D U16 NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital 2D U16 NChan NSamp).vi"/>
				<Item Name="DAQmx Write (Counter 1D Frequency 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Counter 1D Frequency 1Chan NSamp).vi"/>
				<Item Name="DAQmx Write (Counter 1D Ticks 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Counter 1D Ticks 1Chan NSamp).vi"/>
				<Item Name="DAQmx Write (Counter 1D Time 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Counter 1D Time 1Chan NSamp).vi"/>
				<Item Name="DAQmx Timing (Handshaking).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/timing.llb/DAQmx Timing (Handshaking).vi"/>
				<Item Name="DAQmx Timing (Implicit).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/timing.llb/DAQmx Timing (Implicit).vi"/>
				<Item Name="DAQmx Timing (Use Waveform).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/timing.llb/DAQmx Timing (Use Waveform).vi"/>
				<Item Name="DAQmx Timing (Change Detection).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/timing.llb/DAQmx Timing (Change Detection).vi"/>
				<Item Name="DAQmx Timing (Burst Import Clock).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/timing.llb/DAQmx Timing (Burst Import Clock).vi"/>
				<Item Name="DAQmx Timing (Burst Export Clock).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/timing.llb/DAQmx Timing (Burst Export Clock).vi"/>
				<Item Name="DAQmx Timing (Pipelined Sample Clock).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/timing.llb/DAQmx Timing (Pipelined Sample Clock).vi"/>
				<Item Name="DAQmx Create Channel (AI-Velocity-IEPE Sensor).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Velocity-IEPE Sensor).vi"/>
				<Item Name="DAQmx Create Channel (AI-Strain-Rosette Strain Gage).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Strain-Rosette Strain Gage).vi"/>
				<Item Name="DAQmx Create Strain Rosette AI Channels (sub).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Strain Rosette AI Channels (sub).vi"/>
				<Item Name="DTbl Digital Size.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/DTblOps.llb/DTbl Digital Size.vi"/>
				<Item Name="DTbl Uncompress Digital.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/DTblOps.llb/DTbl Uncompress Digital.vi"/>
				<Item Name="Semaphore Refnum Core.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/Semaphore Refnum Core.ctl"/>
				<Item Name="Not A Semaphore.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/Not A Semaphore.vi"/>
				<Item Name="Set Cursor (Icon Pict).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/cursorutil.llb/Set Cursor (Icon Pict).vi"/>
				<Item Name="Set Cursor (Cursor ID).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/cursorutil.llb/Set Cursor (Cursor ID).vi"/>
				<Item Name="Set Cursor.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/cursorutil.llb/Set Cursor.vi"/>
				<Item Name="LVBoundsTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVBoundsTypeDef.ctl"/>
				<Item Name="Get String Text Bounds.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Get String Text Bounds.vi"/>
				<Item Name="Get Text Rect.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Get Text Rect.vi"/>
				<Item Name="Convert property node font to graphics font.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Convert property node font to graphics font.vi"/>
				<Item Name="Longest Line Length in Pixels.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Longest Line Length in Pixels.vi"/>
				<Item Name="Three Button Dialog CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog CORE.vi"/>
				<Item Name="GetHelpDir.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetHelpDir.vi"/>
				<Item Name="BuildHelpPath.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/BuildHelpPath.vi"/>
				<Item Name="DialogTypeEnum.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogTypeEnum.ctl"/>
				<Item Name="Not Found Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Not Found Dialog.vi"/>
				<Item Name="Set Bold Text.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set Bold Text.vi"/>
				<Item Name="eventvkey.ctl" Type="VI" URL="/&lt;vilib&gt;/event_ctls.llb/eventvkey.ctl"/>
				<Item Name="ErrWarn.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/ErrWarn.ctl"/>
				<Item Name="Details Display Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Details Display Dialog.vi"/>
				<Item Name="Find Tag.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Find Tag.vi"/>
				<Item Name="Format Message String.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Format Message String.vi"/>
				<Item Name="Error Code Database.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Code Database.vi"/>
				<Item Name="GetRTHostConnectedProp.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetRTHostConnectedProp.vi"/>
				<Item Name="Set String Value.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set String Value.vi"/>
				<Item Name="TagReturnType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/TagReturnType.ctl"/>
				<Item Name="Check Special Tags.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Check Special Tags.vi"/>
				<Item Name="Find First Error.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Find First Error.vi"/>
				<Item Name="compatReadText.vi" Type="VI" URL="/&lt;vilib&gt;/_oldvers/_oldvers.llb/compatReadText.vi"/>
				<Item Name="NI_PackedLibraryUtility.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/LVLibp/NI_PackedLibraryUtility.lvlib"/>
				<Item Name="NI_FileType.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/lvfile.llb/NI_FileType.lvlib"/>
				<Item Name="GetNamedSemaphorePrefix.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/GetNamedSemaphorePrefix.vi"/>
				<Item Name="Write Spreadsheet String.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Write Spreadsheet String.vi"/>
				<Item Name="Validate Semaphore Size.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/Validate Semaphore Size.vi"/>
				<Item Name="AddNamedSemaphorePrefix.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/AddNamedSemaphorePrefix.vi"/>
				<Item Name="General Error Handler Core CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler Core CORE.vi"/>
				<Item Name="LVRectTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVRectTypeDef.ctl"/>
				<Item Name="subElapsedTime.vi" Type="VI" URL="/&lt;vilib&gt;/express/express execution control/ElapsedTimeBlock.llb/subElapsedTime.vi"/>
				<Item Name="FormatTime String.vi" Type="VI" URL="/&lt;vilib&gt;/express/express execution control/ElapsedTimeBlock.llb/FormatTime String.vi"/>
				<Item Name="Simple Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Simple Error Handler.vi"/>
				<Item Name="Space Constant.vi" Type="VI" URL="/&lt;vilib&gt;/dlg_ctls.llb/Space Constant.vi"/>
				<Item Name="LVDateTimeRec.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVDateTimeRec.ctl"/>
				<Item Name="FileVersionInformation.ctl" Type="VI" URL="/&lt;vilib&gt;/Platform/fileVersionInfo.llb/FileVersionInformation.ctl"/>
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
				<Item Name="FileVersionInfo.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/fileVersionInfo.llb/FileVersionInfo.vi"/>
				<Item Name="GetFileVersionInfoSize.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/fileVersionInfo.llb/GetFileVersionInfoSize.vi"/>
				<Item Name="BuildErrorSource.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/fileVersionInfo.llb/BuildErrorSource.vi"/>
				<Item Name="GetFileVersionInfo.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/fileVersionInfo.llb/GetFileVersionInfo.vi"/>
				<Item Name="VerQueryValue.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/fileVersionInfo.llb/VerQueryValue.vi"/>
				<Item Name="MoveMemory.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/fileVersionInfo.llb/MoveMemory.vi"/>
				<Item Name="FixedFileInfo_Struct.ctl" Type="VI" URL="/&lt;vilib&gt;/Platform/fileVersionInfo.llb/FixedFileInfo_Struct.ctl"/>
				<Item Name="NI_AALPro.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/NI_AALPro.lvlib"/>
				<Item Name="DAQmx Read (Counter 1D DBL NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Counter 1D DBL NChan 1Samp).vi"/>
				<Item Name="DAQmx Read (Counter 1D U32 NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Counter 1D U32 NChan 1Samp).vi"/>
				<Item Name="DAQmx Read (Counter 2D DBL NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Counter 2D DBL NChan NSamp).vi"/>
				<Item Name="DAQmx Read (Counter 2D U32 NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Counter 2D U32 NChan NSamp).vi"/>
				<Item Name="DAQmx Create Channel (CI-Duty Cycle).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-Duty Cycle).vi"/>
				<Item Name="DAQmx Create Channel (CI-Velocity-Angular).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-Velocity-Angular).vi"/>
				<Item Name="DAQmx Create Channel (CI-Velocity-Linear).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-Velocity-Linear).vi"/>
				<Item Name="VISA Open Access Mode.ctl" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Open Access Mode.ctl"/>
				<Item Name="Write Delimited Spreadsheet.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Write Delimited Spreadsheet.vi"/>
				<Item Name="Write Delimited Spreadsheet (DBL).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Write Delimited Spreadsheet (DBL).vi"/>
				<Item Name="Write Delimited Spreadsheet (I64).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Write Delimited Spreadsheet (I64).vi"/>
				<Item Name="Write Delimited Spreadsheet (string).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Write Delimited Spreadsheet (string).vi"/>
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
				<Item Name="Timestamp Subtract.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/TSOps.llb/Timestamp Subtract.vi"/>
				<Item Name="I128 Timestamp.ctl" Type="VI" URL="/&lt;vilib&gt;/Waveform/TSOps.llb/I128 Timestamp.ctl"/>
				<Item Name="DU64_U32SubtractWithBorrow.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/TSOps.llb/DU64_U32SubtractWithBorrow.vi"/>
				<Item Name="Check for Equality.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/WDTOps.llb/Check for Equality.vi"/>
				<Item Name="Read Delimited Spreadsheet.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read Delimited Spreadsheet.vi"/>
				<Item Name="Read Delimited Spreadsheet (DBL).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read Delimited Spreadsheet (DBL).vi"/>
				<Item Name="Read Lines From File (with error IO).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read Lines From File (with error IO).vi"/>
				<Item Name="Read Delimited Spreadsheet (I64).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read Delimited Spreadsheet (I64).vi"/>
				<Item Name="Read Delimited Spreadsheet (string).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read Delimited Spreadsheet (string).vi"/>
				<Item Name="VISA Flush IO Buffer Mask.ctl" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Flush IO Buffer Mask.ctl"/>
				<Item Name="LV70DateRecToTimeStamp.vi" Type="VI" URL="/&lt;vilib&gt;/_oldvers/_oldvers.llb/LV70DateRecToTimeStamp.vi"/>
			</Item>
			<Item Name="nilvaiu.dll" Type="Document" URL="nilvaiu.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="IND560 Configuration.ctl" Type="VI" URL="../../../Drivers/IND560 Scale Monitor/Type Definitions/IND560 Configuration.ctl"/>
			<Item Name="Advapi32.dll" Type="Document" URL="Advapi32.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="kernel32.dll" Type="Document" URL="kernel32.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="GEA2_Toolkit.lvlib" Type="Library" URL="../../Utility/LabVIEW GEA2 Toolkit v1.0.0.0/library/GEA2_Toolkit.lvlib"/>
			<Item Name="GeaCommunication.dll" Type="Document" URL="../../Utility/LabVIEW GEA2 Toolkit v1.0.0.0/Appliance.NET/GeaCommunication.dll"/>
			<Item Name="GeaCommunication.Usb.dll" Type="Document" URL="../../Utility/LabVIEW GEA2 Toolkit v1.0.0.0/Appliance.NET/GeaCommunication.Usb.dll"/>
			<Item Name="mscorlib" Type="VI" URL="mscorlib">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="System" Type="VI" URL="System">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="version.dll" Type="Document" URL="version.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="lvanlys.dll" Type="Document" URL="/&lt;resource&gt;/lvanlys.dll"/>
			<Item Name="HexStringToBoolean.vi" Type="VI" URL="../../Utility/LabVIEW GEA2 Toolkit v1.0.0.0/subVIs/HexStringToBoolean.vi"/>
			<Item Name="HCC Washer Types.ctl" Type="VI" URL="../../Washer HCC/Washer HCC NEWFI/Type Definitions/HCC Washer Types.ctl"/>
			<Item Name="Setra Main.vi" Type="VI" URL="../../../Drivers/Setra SuperCount 75lb/Setra Main.vi"/>
			<Item Name="Setra Commands.ctl" Type="VI" URL="../../../Drivers/Setra SuperCount 75lb/Type Definitions/Setra Commands.ctl"/>
			<Item Name="Setra Initialize.vi" Type="VI" URL="../../../Drivers/Setra SuperCount 75lb/SubVIs/Setra Initialize.vi"/>
			<Item Name="Setra Read Write.vi" Type="VI" URL="../../../Drivers/Setra SuperCount 75lb/SubVIs/Setra Read Write.vi"/>
			<Item Name="Setra Data Parse.vi" Type="VI" URL="../../../Drivers/Setra SuperCount 75lb/SubVIs/Setra Data Parse.vi"/>
			<Item Name="Setra Close.vi" Type="VI" URL="../../../Drivers/Setra SuperCount 75lb/SubVIs/Setra Close.vi"/>
			<Item Name="HEWH Assemble HEWH Diagnostics Data.vi" Type="VI" URL="../../Hybrid Water Heater/Support VIs/HEWH Assemble HEWH Diagnostics Data.vi"/>
			<Item Name="GSE 350 Main.vi" Type="VI" URL="../../../Drivers/GSE 350 Scale Display/GSE 350 Main.vi"/>
			<Item Name="GSE 350 Initialize.vi" Type="VI" URL="../../../Drivers/GSE 350 Scale Display/SubVIs/GSE 350 Initialize.vi"/>
			<Item Name="GSE 350 Send Receive.vi" Type="VI" URL="../../../Drivers/GSE 350 Scale Display/SubVIs/GSE 350 Send Receive.vi"/>
			<Item Name="GSE 350 Read Data.vi" Type="VI" URL="../../../Drivers/GSE 350 Scale Display/SubVIs/GSE 350 Read Data.vi"/>
			<Item Name="GSE 350 Build Full Data String.vi" Type="VI" URL="../../../Drivers/GSE 350 Scale Display/SubVIs/GSE 350 Build Full Data String.vi"/>
			<Item Name="GSE 350 Extract Negative Value.vi" Type="VI" URL="../../../Drivers/GSE 350 Scale Display/SubVIs/GSE 350 Extract Negative Value.vi"/>
			<Item Name="GSE 350 Parse Data Stream.vi" Type="VI" URL="../../../Drivers/GSE 350 Scale Display/SubVIs/GSE 350 Parse Data Stream.vi"/>
			<Item Name="GSE 350 Extract Component Data.vi" Type="VI" URL="../../../Drivers/GSE 350 Scale Display/SubVIs/GSE 350 Extract Component Data.vi"/>
			<Item Name="GSE 350 Close.vi" Type="VI" URL="../../../Drivers/GSE 350 Scale Display/SubVIs/GSE 350 Close.vi"/>
			<Item Name="WT500 Wiring Control.ctl" Type="VI" URL="../../../Drivers/Yokogawa WT500/Type Definitions/WT500 Wiring Control.ctl"/>
			<Item Name="WT500 IEC 2015 Setup.vi" Type="VI" URL="../../../Drivers/Yokogawa WT500/Main/WT500 IEC 2015 Setup.vi"/>
			<Item Name="YKWT500 Revision Query.vi" Type="VI" URL="../../../Drivers/Yokogawa WT500/LLBs/ykwt500.llb/YKWT500 Revision Query.vi"/>
			<Item Name="_YKWT500 Query.vi" Type="VI" URL="../../../Drivers/Yokogawa WT500/LLBs/_ykwt500.llb/_YKWT500 Query.vi"/>
			<Item Name="YKWT500 Error Query.vi" Type="VI" URL="../../../Drivers/Yokogawa WT500/LLBs/ykwt500.llb/YKWT500 Error Query.vi"/>
			<Item Name="WT500 General Setup.vi" Type="VI" URL="../../../Drivers/Yokogawa WT500/Main/WT500 General Setup.vi"/>
			<Item Name="WT500 Set Wiring.vi" Type="VI" URL="../../../Drivers/Yokogawa WT500/Main/WT500 Set Wiring.vi"/>
			<Item Name="YKWT500 Initialize.vi" Type="VI" URL="../../../Drivers/Yokogawa WT500/LLBs/ykwt500.llb/YKWT500 Initialize.vi"/>
			<Item Name="_YKWT500 Utility Default Instrument Setup.vi" Type="VI" URL="../../../Drivers/Yokogawa WT500/LLBs/_ykwt500.llb/_YKWT500 Utility Default Instrument Setup.vi"/>
			<Item Name="_YKWT500 Write.vi" Type="VI" URL="../../../Drivers/Yokogawa WT500/LLBs/_ykwt500.llb/_YKWT500 Write.vi"/>
			<Item Name="YKWT500 Reset.vi" Type="VI" URL="../../../Drivers/Yokogawa WT500/LLBs/ykwt500.llb/YKWT500 Reset.vi"/>
			<Item Name="YKWT500 Close.vi" Type="VI" URL="../../../Drivers/Yokogawa WT500/LLBs/ykwt500.llb/YKWT500 Close.vi"/>
			<Item Name="YKWT500 Start Stop Integration.vi" Type="VI" URL="../../../Drivers/Yokogawa WT500/LLBs/ykwt500.llb/YKWT500 Start Stop Integration.vi"/>
			<Item Name="YKWT500 Query Condition Status.vi" Type="VI" URL="../../../Drivers/Yokogawa WT500/LLBs/ykwt500.llb/YKWT500 Query Condition Status.vi"/>
			<Item Name="YKWT500 Configure Update Rate.vi" Type="VI" URL="../../../Drivers/Yokogawa WT500/LLBs/ykwt500.llb/YKWT500 Configure Update Rate.vi"/>
			<Item Name="YKWT500 Configure Wiring.vi" Type="VI" URL="../../../Drivers/Yokogawa WT500/LLBs/ykwt500.llb/YKWT500 Configure Wiring.vi"/>
			<Item Name="YKWT500 Query Element Type.vi" Type="VI" URL="../../../Drivers/Yokogawa WT500/LLBs/ykwt500.llb/YKWT500 Query Element Type.vi"/>
			<Item Name="YKWT500 Reset Integration.vi" Type="VI" URL="../../../Drivers/Yokogawa WT500/LLBs/ykwt500.llb/YKWT500 Reset Integration.vi"/>
			<Item Name="YKWT500 Configure Voltage.vi" Type="VI" URL="../../../Drivers/Yokogawa WT500/LLBs/ykwt500.llb/YKWT500 Configure Voltage.vi"/>
			<Item Name="YKWT500 Configure Current.vi" Type="VI" URL="../../../Drivers/Yokogawa WT500/LLBs/ykwt500.llb/YKWT500 Configure Current.vi"/>
			<Item Name="WT500 Configure Array Locations.vi" Type="VI" URL="../../../Drivers/Yokogawa WT500/Type Definitions/WT500 Configure Array Locations.vi"/>
			<Item Name="YKWT500 Configure Display Numeric Format.vi" Type="VI" URL="../../../Drivers/Yokogawa WT500/LLBs/ykwt500.llb/YKWT500 Configure Display Numeric Format.vi"/>
			<Item Name="YKWT500 Configure Display Format.vi" Type="VI" URL="../../../Drivers/Yokogawa WT500/LLBs/ykwt500.llb/YKWT500 Configure Display Format.vi"/>
			<Item Name="YKWT500 Configure Display Numeric.vi" Type="VI" URL="../../../Drivers/Yokogawa WT500/LLBs/ykwt500.llb/YKWT500 Configure Display Numeric.vi"/>
			<Item Name="YKWT500 Configure Numeric Item.vi" Type="VI" URL="../../../Drivers/Yokogawa WT500/LLBs/ykwt500.llb/YKWT500 Configure Numeric Item.vi"/>
			<Item Name="YKWT500 Configure Numeric Item (Set).vi" Type="VI" URL="../../../Drivers/Yokogawa WT500/LLBs/ykwt500.llb/YKWT500 Configure Numeric Item (Set).vi"/>
			<Item Name="YKWT500 Configure Numeric Item (Preset).vi" Type="VI" URL="../../../Drivers/Yokogawa WT500/LLBs/ykwt500.llb/YKWT500 Configure Numeric Item (Preset).vi"/>
			<Item Name="YKWT500 Configure Numeric Item (Delete).vi" Type="VI" URL="../../../Drivers/Yokogawa WT500/LLBs/ykwt500.llb/YKWT500 Configure Numeric Item (Delete).vi"/>
			<Item Name="YKWT500 Read Numeric.vi" Type="VI" URL="../../../Drivers/Yokogawa WT500/LLBs/ykwt500.llb/YKWT500 Read Numeric.vi"/>
			<Item Name="YKWT500 Read Numeric (Normal).vi" Type="VI" URL="../../../Drivers/Yokogawa WT500/LLBs/ykwt500.llb/YKWT500 Read Numeric (Normal).vi"/>
			<Item Name="YKWT500 Initiate.vi" Type="VI" URL="../../../Drivers/Yokogawa WT500/LLBs/ykwt500.llb/YKWT500 Initiate.vi"/>
			<Item Name="YKWT500 Wait for Acquisition Complete.vi" Type="VI" URL="../../../Drivers/Yokogawa WT500/LLBs/ykwt500.llb/YKWT500 Wait for Acquisition Complete.vi"/>
			<Item Name="YKWT500 Fetch Numeric (Normal).vi" Type="VI" URL="../../../Drivers/Yokogawa WT500/LLBs/ykwt500.llb/YKWT500 Fetch Numeric (Normal).vi"/>
			<Item Name="YKWT500 Read Numeric (Preset Normal).vi" Type="VI" URL="../../../Drivers/Yokogawa WT500/LLBs/ykwt500.llb/YKWT500 Read Numeric (Preset Normal).vi"/>
			<Item Name="YKWT500 Read Numeric (List).vi" Type="VI" URL="../../../Drivers/Yokogawa WT500/LLBs/ykwt500.llb/YKWT500 Read Numeric (List).vi"/>
			<Item Name="YKWT500 Fetch Numeric (List).vi" Type="VI" URL="../../../Drivers/Yokogawa WT500/LLBs/ykwt500.llb/YKWT500 Fetch Numeric (List).vi"/>
			<Item Name="_YKWT500 Query Number of List Order.vi" Type="VI" URL="../../../Drivers/Yokogawa WT500/LLBs/_ykwt500.llb/_YKWT500 Query Number of List Order.vi"/>
			<Item Name="YKWT500 Read Numeric (Preset List).vi" Type="VI" URL="../../../Drivers/Yokogawa WT500/LLBs/ykwt500.llb/YKWT500 Read Numeric (Preset List).vi"/>
			<Item Name="YKWT500 Configure Numeric List.vi" Type="VI" URL="../../../Drivers/Yokogawa WT500/LLBs/ykwt500.llb/YKWT500 Configure Numeric List.vi"/>
			<Item Name="YKWT500 Configure Numeric List (Set).vi" Type="VI" URL="../../../Drivers/Yokogawa WT500/LLBs/ykwt500.llb/YKWT500 Configure Numeric List (Set).vi"/>
			<Item Name="YKWT500 Configure Numeric List (Preset).vi" Type="VI" URL="../../../Drivers/Yokogawa WT500/LLBs/ykwt500.llb/YKWT500 Configure Numeric List (Preset).vi"/>
			<Item Name="YKWT500 Configure Numeric List (Delete).vi" Type="VI" URL="../../../Drivers/Yokogawa WT500/LLBs/ykwt500.llb/YKWT500 Configure Numeric List (Delete).vi"/>
			<Item Name="WT500 Get Power Data.vi" Type="VI" URL="../../../Drivers/Yokogawa WT500/Main/WT500 Get Power Data.vi"/>
			<Item Name="UTILITY Power Data.ctl" Type="VI" URL="../../Utility/Type Definitions/UTILITY Power Data.ctl"/>
			<Item Name="DOE Appliance Common.ctl" Type="VI" URL="../../Washer DOE/Type Definitions/DOE Appliance Common.ctl"/>
			<Item Name="DOE Dryer Standard.ctl" Type="VI" URL="../../Washer DOE/Type Definitions/DOE Dryer Standard.ctl"/>
			<Item Name="DOE Dryer RMC Calculation Equation.vi" Type="VI" URL="../../Washer DOE/Support VIs/DOE Dryer RMC Calculation Equation.vi"/>
			<Item Name="IND560 Serial Tester.vi" Type="VI" URL="../../../Drivers/IND560 Scale Monitor/IND560 Serial Tester.vi"/>
			<Item Name="IND560 Serial Initialize.vi" Type="VI" URL="../../../Drivers/IND560 Scale Monitor/Support VIs/IND560 Serial Initialize.vi"/>
			<Item Name="IND560 Serial Get Data.vi" Type="VI" URL="../../../Drivers/IND560 Scale Monitor/Support VIs/IND560 Serial Get Data.vi"/>
			<Item Name="IND560 Serial Scale Commands.ctl" Type="VI" URL="../../../Drivers/IND560 Scale Monitor/Type Definitions/IND560 Serial Scale Commands.ctl"/>
			<Item Name="IND560 Serial Read.vi" Type="VI" URL="../../../Drivers/IND560 Scale Monitor/Support VIs/IND560 Serial Read.vi"/>
			<Item Name="IND560 Serial FGV Filter.vi" Type="VI" URL="../../../Drivers/IND560 Scale Monitor/Support VIs/IND560 Serial FGV Filter.vi"/>
			<Item Name="IND560 Serial Parse.vi" Type="VI" URL="../../../Drivers/IND560 Scale Monitor/Support VIs/IND560 Serial Parse.vi"/>
			<Item Name="IND560 Serial Close.vi" Type="VI" URL="../../../Drivers/IND560 Scale Monitor/Support VIs/IND560 Serial Close.vi"/>
			<Item Name="RANGE Header Banks.vi" Type="VI" URL="../../Range/SubVIs/RANGE Header Banks.vi"/>
			<Item Name="Read Measurement Units.vi" Type="VI" URL="../../../Drivers/Alicat Gas Meter Driver/Sub-VIs/Data Collection/Read Measurement Units.vi"/>
			<Item Name="Read Software Version.vi" Type="VI" URL="../../../Drivers/Alicat Gas Meter Driver/Sub-VIs/Initialization/Read Software Version.vi"/>
			<Item Name="Read Data Format Arrays.vi" Type="VI" URL="../../../Drivers/Alicat Gas Meter Driver/Sub-VIs/Data Collection/Read Data Format Arrays.vi"/>
			<Item Name="Read Register.vi" Type="VI" URL="../../../Drivers/Alicat Gas Meter Driver/Sub-VIs/Utilities/Read Register.vi"/>
			<Item Name="Read Output Definitions and Controller Options.vi" Type="VI" URL="../../../Drivers/Alicat Gas Meter Driver/Sub-VIs/Settings/Read Output Definitions and Controller Options.vi"/>
			<Item Name="Legacy Detector.vi" Type="VI" URL="../../../Drivers/Alicat Gas Meter Driver/Sub-VIs/Device Information/Legacy Detector.vi"/>
			<Item Name="Read Version Info.vi" Type="VI" URL="../../../Drivers/Alicat Gas Meter Driver/Sub-VIs/Device Information/Read Version Info.vi"/>
			<Item Name="Read Totalizer Units and Decimals.vi" Type="VI" URL="../../../Drivers/Alicat Gas Meter Driver/Sub-VIs/Settings/Read Totalizer Units and Decimals.vi"/>
			<Item Name="Gas Select Lock Check.vi" Type="VI" URL="../../../Drivers/Alicat Gas Meter Driver/Sub-VIs/Validity Checks/Gas Select Lock Check.vi"/>
			<Item Name="RANGE Meter Selector 1-2.ctl" Type="VI" URL="../../Range/Type Definitions/RANGE Meter Selector 1-2.ctl"/>
			<Item Name="Standby Power Header.vi" Type="VI" URL="../../Utility/Standby Power/Supporting VIs/Standby Power Header.vi"/>
			<Item Name="HEWH RLT Delay Timer.vi" Type="VI" URL="../../Hybrid Water Heater/Support VIs/HEWH RLT Specific/HEWH RLT Delay Timer.vi"/>
		</Item>
		<Item Name="Build Specifications" Type="Build">
			<Item Name="Read All Agilent Sensors" Type="EXE">
				<Property Name="App_INI_aliasGUID" Type="Str">{3EF3E3C6-D21C-404A-BE2B-952A78B016FF}</Property>
				<Property Name="App_INI_GUID" Type="Str">{A788F201-4262-490E-8D83-BABA4FBE0DBE}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
				<Property Name="App_winsec.description" Type="Str">http://www.GE.com</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{143944BF-4BBC-4C4C-858D-3360E5CE5AFA}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">Read All Agilent Sensors</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../builds</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToProject</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{928B3F7E-0871-43B7-8C0D-2EAD47C474AC}</Property>
				<Property Name="Bld_targetDestDir" Type="Path"></Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">Read All Agilent Sensors.exe</Property>
				<Property Name="Destination[0].path" Type="Path">../Dryer Wilt/builds/Read All Agilent Sensors.exe</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../Dryer Wilt/builds/data</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Source[0].itemID" Type="Str">{B8ABB15E-0093-445F-92E4-B2FE499DF7B2}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref"></Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="SourceCount" Type="Int">2</Property>
				<Property Name="TgtF_companyName" Type="Str">GE</Property>
				<Property Name="TgtF_fileDescription" Type="Str">Read All Agilent Sensors</Property>
				<Property Name="TgtF_internalName" Type="Str">Read All Agilent Sensors</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2011 GE</Property>
				<Property Name="TgtF_productName" Type="Str">Read All Agilent Sensors</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{C2BB889A-D7F4-4ECE-A279-FAFF8A1A3048}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">Read All Agilent Sensors.exe</Property>
			</Item>
			<Item Name="Valve Test" Type="EXE">
				<Property Name="App_INI_aliasGUID" Type="Str">{DE330D4B-D053-413F-87A3-81470B15B93F}</Property>
				<Property Name="App_INI_GUID" Type="Str">{14261653-7C08-495D-A64B-3942E68DF31E}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
				<Property Name="App_winsec.description" Type="Str">http://www.GE.com</Property>
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{815A6D1D-4360-4591-8729-0C5D3CE5481D}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">Valve Test</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../builds</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToProject</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{4AED19F0-09C3-4FEF-805C-52F99E3B53A3}</Property>
				<Property Name="Bld_version.build" Type="Int">12</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">Valve Test.exe</Property>
				<Property Name="Destination[0].path" Type="Path">../builds/Valve Test.exe</Property>
				<Property Name="Destination[0].path.type" Type="Str">relativeToProject</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../builds/data</Property>
				<Property Name="Destination[1].path.type" Type="Str">relativeToProject</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Source[0].itemID" Type="Str">{37A9BCFF-2F99-4CC8-B388-61B93E28F1D9}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/Main/WILT Valve Test.vi</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="SourceCount" Type="Int">2</Property>
				<Property Name="TgtF_companyName" Type="Str">GE</Property>
				<Property Name="TgtF_fileDescription" Type="Str">Valve Test</Property>
				<Property Name="TgtF_internalName" Type="Str">Valve Test</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2011 GE</Property>
				<Property Name="TgtF_productName" Type="Str">Valve Test</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{6233A540-0F8C-4320-917B-C54474272CA9}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">Valve Test.exe</Property>
			</Item>
			<Item Name="Start Stop Dryer " Type="EXE">
				<Property Name="App_INI_aliasGUID" Type="Str">{11EF571C-B15C-4CD6-A8BB-0CC8E2EFF3CE}</Property>
				<Property Name="App_INI_GUID" Type="Str">{413DFBB0-0D62-4AAA-B497-2688722B681B}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
				<Property Name="App_winsec.description" Type="Str">http://www.GE.com</Property>
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{2BB7954B-B14C-4122-ADE3-546E9755786A}</Property>
				<Property Name="Bld_buildSpecDescription" Type="Str">Save currents
Call backup for read only data file at write.</Property>
				<Property Name="Bld_buildSpecName" Type="Str">Start Stop Dryer </Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../builds</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToProject</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{B1B7D553-AA2C-4F3E-92B3-8C1D82A3C76A}</Property>
				<Property Name="Bld_targetDestDir" Type="Path"></Property>
				<Property Name="Bld_version.build" Type="Int">6</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Bld_version.patch" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">Start Stop Dryer.exe</Property>
				<Property Name="Destination[0].path" Type="Path">../Dryer Wilt/builds/Start Stop Dryer.exe</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../Dryer Wilt/builds/data</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Source[0].itemID" Type="Str">{8D6950C9-3390-4B39-A25A-256922E41471}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref"></Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="Source[2].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[2].itemID" Type="Ref"></Property>
				<Property Name="Source[2].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[2].type" Type="Str">VI</Property>
				<Property Name="SourceCount" Type="Int">3</Property>
				<Property Name="TgtF_companyName" Type="Str">GE</Property>
				<Property Name="TgtF_fileDescription" Type="Str">Start Stop Dryer </Property>
				<Property Name="TgtF_internalName" Type="Str">Start Stop Dryer </Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2012 GE</Property>
				<Property Name="TgtF_productName" Type="Str">Start Stop Dryer </Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{A580C3F1-DA1F-45BD-A0B4-4F250EC80B20}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">Start Stop Dryer.exe</Property>
			</Item>
			<Item Name="WILT" Type="EXE">
				<Property Name="App_copyErrors" Type="Bool">true</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{299E78AA-5CC0-4122-B46E-BC4EDBB70490}</Property>
				<Property Name="App_INI_GUID" Type="Str">{95A83B6A-D390-4F43-B31B-F28D8BEA780D}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{BEB35A67-55CE-4AB4-B416-3F2115C65FDF}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">WILT</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../builds</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToProject</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{00FAD928-97A9-45A1-A6B1-39765618AB37}</Property>
				<Property Name="Bld_version.build" Type="Int">235</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">WILT.exe</Property>
				<Property Name="Destination[0].path" Type="Path">../builds/WILT.exe</Property>
				<Property Name="Destination[0].path.type" Type="Str">relativeToProject</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../builds/data</Property>
				<Property Name="Destination[1].path.type" Type="Str">relativeToProject</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Exe_iconItemID" Type="Ref">/My Computer/Documentation/reliability_JAZ_icon.ico</Property>
				<Property Name="Source[0].itemID" Type="Str">{1A165E3C-CD9A-4556-8DD9-89794D0FE93D}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/Utility/UTILITY Type Conv Seconds Time String.vi</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="Source[2].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[2].itemID" Type="Ref">/My Computer/Main/WILT.vi</Property>
				<Property Name="Source[2].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[2].type" Type="Str">VI</Property>
				<Property Name="SourceCount" Type="Int">3</Property>
				<Property Name="TgtF_companyName" Type="Str">General Electric</Property>
				<Property Name="TgtF_enableDebugging" Type="Bool">true</Property>
				<Property Name="TgtF_fileDescription" Type="Str">WILT</Property>
				<Property Name="TgtF_internalName" Type="Str">WILT</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2013 General Electric</Property>
				<Property Name="TgtF_productName" Type="Str">WILT</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{7303B471-7932-42A2-AC55-D5CBB651A6DE}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">WILT.exe</Property>
			</Item>
		</Item>
	</Item>
</Project>
