<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="23008000">
	<Property Name="NI.LV.All.SourceOnly" Type="Bool">false</Property>
	<Property Name="NI.Project.Description" Type="Str"></Property>
	<Item Name="My Computer" Type="My Computer">
		<Property Name="IOScan.Faults" Type="Str"></Property>
		<Property Name="IOScan.NetVarPeriod" Type="UInt">100</Property>
		<Property Name="IOScan.NetWatchdogEnabled" Type="Bool">false</Property>
		<Property Name="IOScan.Period" Type="UInt">10000</Property>
		<Property Name="IOScan.PowerupMode" Type="UInt">0</Property>
		<Property Name="IOScan.Priority" Type="UInt">9</Property>
		<Property Name="IOScan.ReportModeConflict" Type="Bool">true</Property>
		<Property Name="IOScan.StartEngineOnDeploy" Type="Bool">false</Property>
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
		<Item Name="Project Documentation" Type="Folder">
			<Item Name="Documentation Images" Type="Folder"/>
		</Item>
		<Item Name="Support VIs" Type="Folder">
			<Property Name="NI.SortType" Type="Int">3</Property>
		</Item>
		<Item Name="Type Definitions" Type="Folder"/>
		<Item Name="Acquisition" Type="Folder" URL="../Acquisition">
			<Property Name="NI.DISK" Type="Bool">true</Property>
		</Item>
		<Item Name="controls" Type="Folder" URL="../controls">
			<Property Name="NI.DISK" Type="Bool">true</Property>
		</Item>
		<Item Name="documentation" Type="Folder" URL="../documentation">
			<Property Name="NI.DISK" Type="Bool">true</Property>
		</Item>
		<Item Name="Logging" Type="Folder" URL="../Logging">
			<Property Name="NI.DISK" Type="Bool">true</Property>
		</Item>
		<Item Name="Modbus" Type="Folder" URL="../Modbus">
			<Property Name="NI.DISK" Type="Bool">true</Property>
		</Item>
		<Item Name="ReadingDataFile" Type="Folder" URL="../ReadingDataFile">
			<Property Name="NI.DISK" Type="Bool">true</Property>
		</Item>
		<Item Name="Settings" Type="Folder" URL="../Settings">
			<Property Name="NI.DISK" Type="Bool">true</Property>
		</Item>
		<Item Name="support" Type="Folder" URL="../support">
			<Property Name="NI.DISK" Type="Bool">true</Property>
		</Item>
		<Item Name="WritingDataFile" Type="Folder" URL="../WritingDataFile">
			<Property Name="NI.DISK" Type="Bool">true</Property>
		</Item>
		<Item Name="Utility" Type="Folder" URL="../Utility">
			<Property Name="NI.DISK" Type="Bool">true</Property>
		</Item>
		<Item Name="Drivers" Type="Folder">
			<Item Name="Alicat LabVIEW Drivers 2v1" Type="Folder">
				<Item Name="Example programs" Type="Folder">
					<Item Name="Alicat Dynamic Data Example.vi" Type="VI" URL="../Drivers/Alicat LabVIEW Drivers 2v1/Example programs/Alicat Dynamic Data Example.vi"/>
					<Item Name="Alicat Full Driver Example.vi" Type="VI" URL="../Drivers/Alicat LabVIEW Drivers 2v1/Example programs/Alicat Full Driver Example.vi"/>
					<Item Name="Alicat LDO FVIR Example.vi" Type="VI" URL="../Drivers/Alicat LabVIEW Drivers 2v1/Example programs/Alicat LDO FVIR Example.vi"/>
					<Item Name="Alicat Simple Terminal Interface.vi" Type="VI" URL="../Drivers/Alicat LabVIEW Drivers 2v1/Example programs/Alicat Simple Terminal Interface.vi"/>
					<Item Name="Alicat Simplified Driver Example.vi" Type="VI" URL="../Drivers/Alicat LabVIEW Drivers 2v1/Example programs/Alicat Simplified Driver Example.vi"/>
					<Item Name="Alicat Simplified Driver Example_Logging.vi" Type="VI" URL="../Drivers/Alicat LabVIEW Drivers 2v1/Example programs/Alicat Simplified Driver Example_Logging.vi"/>
					<Item Name="Alicat Simplified Driver Example_Multiple Devices with Setpoint.vi" Type="VI" URL="../Drivers/Alicat LabVIEW Drivers 2v1/Example programs/Alicat Simplified Driver Example_Multiple Devices with Setpoint.vi"/>
					<Item Name="Alicat Simplified Driver Example_Multiple Devices.vi" Type="VI" URL="../Drivers/Alicat LabVIEW Drivers 2v1/Example programs/Alicat Simplified Driver Example_Multiple Devices.vi"/>
					<Item Name="Alicat Simplified Driver Example_Setpoint.vi" Type="VI" URL="../Drivers/Alicat LabVIEW Drivers 2v1/Example programs/Alicat Simplified Driver Example_Setpoint.vi"/>
				</Item>
				<Item Name="Projects" Type="Folder">
					<Item Name="Alicat LabVIEW Drivers 2v1.aliases" Type="Document" URL="../Drivers/Alicat LabVIEW Drivers 2v1/Projects/Alicat LabVIEW Drivers 2v1.aliases"/>
					<Item Name="Alicat LabVIEW Drivers 2v1.lvlps" Type="Document" URL="../Drivers/Alicat LabVIEW Drivers 2v1/Projects/Alicat LabVIEW Drivers 2v1.lvlps"/>
					<Item Name="Alicat LabVIEW Drivers 2v1.lvproj" Type="Document" URL="../Drivers/Alicat LabVIEW Drivers 2v1/Projects/Alicat LabVIEW Drivers 2v1.lvproj"/>
				</Item>
				<Item Name="Sub-VIs" Type="Folder">
					<Item Name="Control Options" Type="Folder">
						<Item Name="Read Controllable Fullscale Values.vi" Type="VI" URL="../Drivers/Alicat LabVIEW Drivers 2v1/Sub-VIs/Control Options/Read Controllable Fullscale Values.vi"/>
						<Item Name="Read Controller Info.vi" Type="VI" URL="../Drivers/Alicat LabVIEW Drivers 2v1/Sub-VIs/Control Options/Read Controller Info.vi"/>
						<Item Name="Read PID Info.vi" Type="VI" URL="../Drivers/Alicat LabVIEW Drivers 2v1/Sub-VIs/Control Options/Read PID Info.vi"/>
						<Item Name="Write Controller Options.vi" Type="VI" URL="../Drivers/Alicat LabVIEW Drivers 2v1/Sub-VIs/Control Options/Write Controller Options.vi"/>
						<Item Name="Write PID Gains.vi" Type="VI" URL="../Drivers/Alicat LabVIEW Drivers 2v1/Sub-VIs/Control Options/Write PID Gains.vi"/>
						<Item Name="Write PID Settings.vi" Type="VI" URL="../Drivers/Alicat LabVIEW Drivers 2v1/Sub-VIs/Control Options/Write PID Settings.vi"/>
					</Item>
					<Item Name="Data Collection" Type="Folder">
						<Item Name="Calculate Gas Water Heater Energy.vi" Type="VI" URL="../Drivers/Alicat LabVIEW Drivers 2v1/Sub-VIs/Data Collection/Calculate Gas Water Heater Energy.vi"/>
						<Item Name="Get Data Frame.vi" Type="VI" URL="../Drivers/Alicat LabVIEW Drivers 2v1/Sub-VIs/Data Collection/Get Data Frame.vi"/>
						<Item Name="Parse Data Frame.vi" Type="VI" URL="../Drivers/Alicat LabVIEW Drivers 2v1/Sub-VIs/Data Collection/Parse Data Frame.vi"/>
						<Item Name="Read Data Format Arrays.vi" Type="VI" URL="../Drivers/Alicat LabVIEW Drivers 2v1/Sub-VIs/Data Collection/Read Data Format Arrays.vi"/>
						<Item Name="Read Dynamic Data Info.vi" Type="VI" URL="../Drivers/Alicat LabVIEW Drivers 2v1/Sub-VIs/Data Collection/Read Dynamic Data Info.vi"/>
						<Item Name="Read Dynamic Data Measurements.vi" Type="VI" URL="../Drivers/Alicat LabVIEW Drivers 2v1/Sub-VIs/Data Collection/Read Dynamic Data Measurements.vi"/>
						<Item Name="Read Measurement Format.vi" Type="VI" URL="../Drivers/Alicat LabVIEW Drivers 2v1/Sub-VIs/Data Collection/Read Measurement Format.vi"/>
						<Item Name="Read Measurement Units.vi" Type="VI" URL="../Drivers/Alicat LabVIEW Drivers 2v1/Sub-VIs/Data Collection/Read Measurement Units.vi"/>
						<Item Name="Read Measurements.vi" Type="VI" URL="../Drivers/Alicat LabVIEW Drivers 2v1/Sub-VIs/Data Collection/Read Measurements.vi"/>
						<Item Name="Write String Array Units.vi" Type="VI" URL="../Drivers/Alicat LabVIEW Drivers 2v1/Sub-VIs/Data Collection/Write String Array Units.vi"/>
					</Item>
					<Item Name="Data Logging" Type="Folder">
						<Item Name="Data Logging_Generate Data String.vi" Type="VI" URL="../Drivers/Alicat LabVIEW Drivers 2v1/Sub-VIs/Data Logging/Data Logging_Generate Data String.vi"/>
						<Item Name="Data Logging_Generate Header.vi" Type="VI" URL="../Drivers/Alicat LabVIEW Drivers 2v1/Sub-VIs/Data Logging/Data Logging_Generate Header.vi"/>
						<Item Name="Log Current Register Values.vi" Type="VI" URL="../Drivers/Alicat LabVIEW Drivers 2v1/Sub-VIs/Data Logging/Log Current Register Values.vi"/>
						<Item Name="Upload Register Log into Device.vi" Type="VI" URL="../Drivers/Alicat LabVIEW Drivers 2v1/Sub-VIs/Data Logging/Upload Register Log into Device.vi"/>
					</Item>
					<Item Name="Device Information" Type="Folder">
						<Item Name="Legacy Detector.vi" Type="VI" URL="../Drivers/Alicat LabVIEW Drivers 2v1/Sub-VIs/Device Information/Legacy Detector.vi"/>
						<Item Name="Read Decimal Places.vi" Type="VI" URL="../Drivers/Alicat LabVIEW Drivers 2v1/Sub-VIs/Device Information/Read Decimal Places.vi"/>
						<Item Name="Read Manufacturer Data.vi" Type="VI" URL="../Drivers/Alicat LabVIEW Drivers 2v1/Sub-VIs/Device Information/Read Manufacturer Data.vi"/>
						<Item Name="Read Model Number.vi" Type="VI" URL="../Drivers/Alicat LabVIEW Drivers 2v1/Sub-VIs/Device Information/Read Model Number.vi"/>
						<Item Name="Read Serial Number.vi" Type="VI" URL="../Drivers/Alicat LabVIEW Drivers 2v1/Sub-VIs/Device Information/Read Serial Number.vi"/>
						<Item Name="Read Version Info.vi" Type="VI" URL="../Drivers/Alicat LabVIEW Drivers 2v1/Sub-VIs/Device Information/Read Version Info.vi"/>
					</Item>
					<Item Name="Gas Selection" Type="Folder">
						<Item Name="Delete COMPOSER Gas Mix.vi" Type="VI" URL="../Drivers/Alicat LabVIEW Drivers 2v1/Sub-VIs/Gas Selection/Delete COMPOSER Gas Mix.vi"/>
						<Item Name="Read Current Gas Selection.vi" Type="VI" URL="../Drivers/Alicat LabVIEW Drivers 2v1/Sub-VIs/Gas Selection/Read Current Gas Selection.vi"/>
						<Item Name="Read Gas List.vi" Type="VI" URL="../Drivers/Alicat LabVIEW Drivers 2v1/Sub-VIs/Gas Selection/Read Gas List.vi"/>
						<Item Name="Write COMPOSER Gas Mix.vi" Type="VI" URL="../Drivers/Alicat LabVIEW Drivers 2v1/Sub-VIs/Gas Selection/Write COMPOSER Gas Mix.vi"/>
						<Item Name="Write Gas Selection.vi" Type="VI" URL="../Drivers/Alicat LabVIEW Drivers 2v1/Sub-VIs/Gas Selection/Write Gas Selection.vi"/>
					</Item>
					<Item Name="Initialization" Type="Folder">
						<Item Name="COM Port Initialization.vi" Type="VI" URL="../Drivers/Alicat LabVIEW Drivers 2v1/Sub-VIs/Initialization/COM Port Initialization.vi"/>
						<Item Name="Read Software Version.vi" Type="VI" URL="../Drivers/Alicat LabVIEW Drivers 2v1/Sub-VIs/Initialization/Read Software Version.vi"/>
					</Item>
					<Item Name="Setpoint" Type="Folder">
						<Item Name="Read Batch Setpoint.vi" Type="VI" URL="../Drivers/Alicat LabVIEW Drivers 2v1/Sub-VIs/Setpoint/Read Batch Setpoint.vi"/>
						<Item Name="Write Batch Setpoint.vi" Type="VI" URL="../Drivers/Alicat LabVIEW Drivers 2v1/Sub-VIs/Setpoint/Write Batch Setpoint.vi"/>
						<Item Name="Write SetPoint.vi" Type="VI" URL="../Drivers/Alicat LabVIEW Drivers 2v1/Sub-VIs/Setpoint/Write SetPoint.vi"/>
					</Item>
					<Item Name="Settings" Type="Folder">
						<Item Name="Read Output Definitions and Controller Options.vi" Type="VI" URL="../Drivers/Alicat LabVIEW Drivers 2v1/Sub-VIs/Settings/Read Output Definitions and Controller Options.vi"/>
						<Item Name="Read Power-up Settings and Special Control Range.vi" Type="VI" URL="../Drivers/Alicat LabVIEW Drivers 2v1/Sub-VIs/Settings/Read Power-up Settings and Special Control Range.vi"/>
						<Item Name="Read Tare Settings.vi" Type="VI" URL="../Drivers/Alicat LabVIEW Drivers 2v1/Sub-VIs/Settings/Read Tare Settings.vi"/>
						<Item Name="Read Totalizer Units and Decimals.vi" Type="VI" URL="../Drivers/Alicat LabVIEW Drivers 2v1/Sub-VIs/Settings/Read Totalizer Units and Decimals.vi"/>
						<Item Name="Write Data Frame Options.vi" Type="VI" URL="../Drivers/Alicat LabVIEW Drivers 2v1/Sub-VIs/Settings/Write Data Frame Options.vi"/>
						<Item Name="Write Power-up Settings.vi" Type="VI" URL="../Drivers/Alicat LabVIEW Drivers 2v1/Sub-VIs/Settings/Write Power-up Settings.vi"/>
						<Item Name="Write Tare Settings.vi" Type="VI" URL="../Drivers/Alicat LabVIEW Drivers 2v1/Sub-VIs/Settings/Write Tare Settings.vi"/>
					</Item>
					<Item Name="Tare Functions" Type="Folder">
						<Item Name="Reset Totalizer.vi" Type="VI" URL="../Drivers/Alicat LabVIEW Drivers 2v1/Sub-VIs/Tare Functions/Reset Totalizer.vi"/>
						<Item Name="Tare AP Sensor with Internal Barometer.vi" Type="VI" URL="../Drivers/Alicat LabVIEW Drivers 2v1/Sub-VIs/Tare Functions/Tare AP Sensor with Internal Barometer.vi"/>
						<Item Name="Tare Flow.vi" Type="VI" URL="../Drivers/Alicat LabVIEW Drivers 2v1/Sub-VIs/Tare Functions/Tare Flow.vi"/>
						<Item Name="Tare Pressure.vi" Type="VI" URL="../Drivers/Alicat LabVIEW Drivers 2v1/Sub-VIs/Tare Functions/Tare Pressure.vi"/>
					</Item>
					<Item Name="Utilities" Type="Folder">
						<Item Name="Change Baud or Unit ID.vi" Type="VI" URL="../Drivers/Alicat LabVIEW Drivers 2v1/Sub-VIs/Utilities/Change Baud or Unit ID.vi"/>
						<Item Name="Convert Time to H_M_S.vi" Type="VI" URL="../Drivers/Alicat LabVIEW Drivers 2v1/Sub-VIs/Utilities/Convert Time to H_M_S.vi"/>
						<Item Name="Lock or Unlock Front Panel.vi" Type="VI" URL="../Drivers/Alicat LabVIEW Drivers 2v1/Sub-VIs/Utilities/Lock or Unlock Front Panel.vi"/>
						<Item Name="Max_Min Check.vi" Type="VI" URL="../Drivers/Alicat LabVIEW Drivers 2v1/Sub-VIs/Utilities/Max_Min Check.vi"/>
						<Item Name="Read Register.vi" Type="VI" URL="../Drivers/Alicat LabVIEW Drivers 2v1/Sub-VIs/Utilities/Read Register.vi"/>
						<Item Name="Scale Adjustment Menu.vi" Type="VI" URL="../Drivers/Alicat LabVIEW Drivers 2v1/Sub-VIs/Utilities/Scale Adjustment Menu.vi"/>
						<Item Name="Send Command.vi" Type="VI" URL="../Drivers/Alicat LabVIEW Drivers 2v1/Sub-VIs/Utilities/Send Command.vi"/>
						<Item Name="Write Register.vi" Type="VI" URL="../Drivers/Alicat LabVIEW Drivers 2v1/Sub-VIs/Utilities/Write Register.vi"/>
					</Item>
					<Item Name="Validity Checks" Type="Folder">
						<Item Name="Batch Detect.vi" Type="VI" URL="../Drivers/Alicat LabVIEW Drivers 2v1/Sub-VIs/Validity Checks/Batch Detect.vi"/>
						<Item Name="Controller Select_Check Validity.vi" Type="VI" URL="../Drivers/Alicat LabVIEW Drivers 2v1/Sub-VIs/Validity Checks/Controller Select_Check Validity.vi"/>
						<Item Name="Data Logging_Check Validity.vi" Type="VI" URL="../Drivers/Alicat LabVIEW Drivers 2v1/Sub-VIs/Validity Checks/Data Logging_Check Validity.vi"/>
						<Item Name="Flow and Pressure Function Check.vi" Type="VI" URL="../Drivers/Alicat LabVIEW Drivers 2v1/Sub-VIs/Validity Checks/Flow and Pressure Function Check.vi"/>
						<Item Name="Gas Select Lock Check.vi" Type="VI" URL="../Drivers/Alicat LabVIEW Drivers 2v1/Sub-VIs/Validity Checks/Gas Select Lock Check.vi"/>
						<Item Name="Liquid Unit Detect.vi" Type="VI" URL="../Drivers/Alicat LabVIEW Drivers 2v1/Sub-VIs/Validity Checks/Liquid Unit Detect.vi"/>
					</Item>
					<Item Name="Version 1 Legacy Converters" Type="Folder">
						<Item Name="Measurements.ctl" Type="VI" URL="../Drivers/Alicat LabVIEW Drivers 2v1/Sub-VIs/Version 1 Legacy Converters/Measurements.ctl"/>
						<Item Name="Version 1_Batch Detect.vi" Type="VI" URL="../Drivers/Alicat LabVIEW Drivers 2v1/Sub-VIs/Version 1 Legacy Converters/Version 1_Batch Detect.vi"/>
						<Item Name="Version 1_Initialize.vi" Type="VI" URL="../Drivers/Alicat LabVIEW Drivers 2v1/Sub-VIs/Version 1 Legacy Converters/Version 1_Initialize.vi"/>
						<Item Name="Version 1_Legacy Detector.vi" Type="VI" URL="../Drivers/Alicat LabVIEW Drivers 2v1/Sub-VIs/Version 1 Legacy Converters/Version 1_Legacy Detector.vi"/>
						<Item Name="Version 1_Liquid Unit Detect.vi" Type="VI" URL="../Drivers/Alicat LabVIEW Drivers 2v1/Sub-VIs/Version 1 Legacy Converters/Version 1_Liquid Unit Detect.vi"/>
						<Item Name="Version 1_Peak Detector.vi" Type="VI" URL="../Drivers/Alicat LabVIEW Drivers 2v1/Sub-VIs/Version 1 Legacy Converters/Version 1_Peak Detector.vi"/>
						<Item Name="Version 1_Read Batch Setpoint.vi" Type="VI" URL="../Drivers/Alicat LabVIEW Drivers 2v1/Sub-VIs/Version 1 Legacy Converters/Version 1_Read Batch Setpoint.vi"/>
						<Item Name="Version 1_Read Decimal Places.vi" Type="VI" URL="../Drivers/Alicat LabVIEW Drivers 2v1/Sub-VIs/Version 1 Legacy Converters/Version 1_Read Decimal Places.vi"/>
						<Item Name="Version 1_Read Fullscale Values.vi" Type="VI" URL="../Drivers/Alicat LabVIEW Drivers 2v1/Sub-VIs/Version 1 Legacy Converters/Version 1_Read Fullscale Values.vi"/>
						<Item Name="Version 1_Read Measurement Format.vi" Type="VI" URL="../Drivers/Alicat LabVIEW Drivers 2v1/Sub-VIs/Version 1 Legacy Converters/Version 1_Read Measurement Format.vi"/>
						<Item Name="Version 1_Read Measurement Units.vi" Type="VI" URL="../Drivers/Alicat LabVIEW Drivers 2v1/Sub-VIs/Version 1 Legacy Converters/Version 1_Read Measurement Units.vi"/>
						<Item Name="Version 1_Read Measurements.vi" Type="VI" URL="../Drivers/Alicat LabVIEW Drivers 2v1/Sub-VIs/Version 1 Legacy Converters/Version 1_Read Measurements.vi"/>
						<Item Name="Version 1_Read Output Definitions.vi" Type="VI" URL="../Drivers/Alicat LabVIEW Drivers 2v1/Sub-VIs/Version 1 Legacy Converters/Version 1_Read Output Definitions.vi"/>
						<Item Name="Version 1_Read PID Settings.vi" Type="VI" URL="../Drivers/Alicat LabVIEW Drivers 2v1/Sub-VIs/Version 1 Legacy Converters/Version 1_Read PID Settings.vi"/>
						<Item Name="Version 1_Read Power-up Settings.vi" Type="VI" URL="../Drivers/Alicat LabVIEW Drivers 2v1/Sub-VIs/Version 1 Legacy Converters/Version 1_Read Power-up Settings.vi"/>
						<Item Name="Version 1_Read Register.vi" Type="VI" URL="../Drivers/Alicat LabVIEW Drivers 2v1/Sub-VIs/Version 1 Legacy Converters/Version 1_Read Register.vi"/>
						<Item Name="Version 1_Read Tare Settings.vi" Type="VI" URL="../Drivers/Alicat LabVIEW Drivers 2v1/Sub-VIs/Version 1 Legacy Converters/Version 1_Read Tare Settings.vi"/>
						<Item Name="Version 1_Read Totalizer Options.vi" Type="VI" URL="../Drivers/Alicat LabVIEW Drivers 2v1/Sub-VIs/Version 1 Legacy Converters/Version 1_Read Totalizer Options.vi"/>
						<Item Name="Version 1_Save Register Values.vi" Type="VI" URL="../Drivers/Alicat LabVIEW Drivers 2v1/Sub-VIs/Version 1 Legacy Converters/Version 1_Save Register Values.vi"/>
						<Item Name="Version 1_Write Batch SetPoint.vi" Type="VI" URL="../Drivers/Alicat LabVIEW Drivers 2v1/Sub-VIs/Version 1 Legacy Converters/Version 1_Write Batch SetPoint.vi"/>
						<Item Name="Version 1_Write Communication Settings.vi" Type="VI" URL="../Drivers/Alicat LabVIEW Drivers 2v1/Sub-VIs/Version 1 Legacy Converters/Version 1_Write Communication Settings.vi"/>
						<Item Name="Version 1_Write Output Definitions.vi" Type="VI" URL="../Drivers/Alicat LabVIEW Drivers 2v1/Sub-VIs/Version 1 Legacy Converters/Version 1_Write Output Definitions.vi"/>
						<Item Name="Version 1_Write PID Settings.vi" Type="VI" URL="../Drivers/Alicat LabVIEW Drivers 2v1/Sub-VIs/Version 1 Legacy Converters/Version 1_Write PID Settings.vi"/>
						<Item Name="Version 1_Write SetPoint.vi" Type="VI" URL="../Drivers/Alicat LabVIEW Drivers 2v1/Sub-VIs/Version 1 Legacy Converters/Version 1_Write SetPoint.vi"/>
						<Item Name="Version 1_Write Tare Settings.vi" Type="VI" URL="../Drivers/Alicat LabVIEW Drivers 2v1/Sub-VIs/Version 1 Legacy Converters/Version 1_Write Tare Settings.vi"/>
					</Item>
					<Item Name="Data Cluster.ctl" Type="VI" URL="../Drivers/Alicat LabVIEW Drivers 2v1/Sub-VIs/Data Cluster.ctl"/>
					<Item Name="Data Frame.ctl" Type="VI" URL="../Drivers/Alicat LabVIEW Drivers 2v1/Sub-VIs/Data Frame.ctl"/>
					<Item Name="FMA1600A Build Commands.vi" Type="VI" URL="../Drivers/Alicat LabVIEW Drivers 2v1/Sub-VIs/FMA1600A Build Commands.vi"/>
					<Item Name="FMA1600A Bus Data Filter.vi" Type="VI" URL="../Drivers/Alicat LabVIEW Drivers 2v1/Sub-VIs/FMA1600A Bus Data Filter.vi"/>
					<Item Name="FMA1600A Close.vi" Type="VI" URL="../Drivers/Alicat LabVIEW Drivers 2v1/Sub-VIs/FMA1600A Close.vi"/>
					<Item Name="FMA1600A General Send Receive.vi" Type="VI" URL="../Drivers/Alicat LabVIEW Drivers 2v1/Sub-VIs/FMA1600A General Send Receive.vi"/>
					<Item Name="FMA1600A General Setup.vi" Type="VI" URL="../Drivers/Alicat LabVIEW Drivers 2v1/Sub-VIs/FMA1600A General Setup.vi"/>
					<Item Name="FMA1600A Parse Data.vi" Type="VI" URL="../Drivers/Alicat LabVIEW Drivers 2v1/Sub-VIs/FMA1600A Parse Data.vi"/>
					<Item Name="FMA1600A Raw Serial Read Write.vi" Type="VI" URL="../Drivers/Alicat LabVIEW Drivers 2v1/Sub-VIs/FMA1600A Raw Serial Read Write.vi"/>
					<Item Name="FMA1600A Send Receive.vi" Type="VI" URL="../Drivers/Alicat LabVIEW Drivers 2v1/Sub-VIs/FMA1600A Send Receive.vi"/>
					<Item Name="Units of Measure.ctl" Type="VI" URL="../Drivers/Alicat LabVIEW Drivers 2v1/Sub-VIs/Units of Measure.ctl"/>
					<Item Name="Wait Message.ctl" Type="VI" URL="../Drivers/Alicat LabVIEW Drivers 2v1/Sub-VIs/Wait Message.ctl"/>
				</Item>
				<Item Name="Type Definitions" Type="Folder">
					<Item Name="FMA1600A Commands.ctl" Type="VI" URL="../Drivers/Alicat LabVIEW Drivers 2v1/Type Definitions/FMA1600A Commands.ctl"/>
					<Item Name="FMA1600A Data.ctl" Type="VI" URL="../Drivers/Alicat LabVIEW Drivers 2v1/Type Definitions/FMA1600A Data.ctl"/>
					<Item Name="FMA1600A Gas Type.ctl" Type="VI" URL="../Drivers/Alicat LabVIEW Drivers 2v1/Type Definitions/FMA1600A Gas Type.ctl"/>
					<Item Name="FMA1600A Units String.ctl" Type="VI" URL="../Drivers/Alicat LabVIEW Drivers 2v1/Type Definitions/FMA1600A Units String.ctl"/>
				</Item>
				<Item Name="Utility" Type="Folder">
					<Item Name="UTILITY Notifier.ctl" Type="VI" URL="../Drivers/Alicat LabVIEW Drivers 2v1/Utility/UTILITY Notifier.ctl"/>
					<Item Name="UTILITY String Notifier.vi" Type="VI" URL="../Drivers/Alicat LabVIEW Drivers 2v1/Utility/UTILITY String Notifier.vi"/>
				</Item>
				<Item Name="Alicat VI Tree.vi" Type="VI" URL="../Drivers/Alicat LabVIEW Drivers 2v1/Alicat VI Tree.vi"/>
			</Item>
			<Item Name="Inficon Transmitter" Type="Folder">
				<Item Name="Examples" Type="Folder">
					<Item Name="Inficon Basic Tester.vi" Type="VI" URL="../Drivers/Inficon Transmitter/Examples/Inficon Basic Tester.vi"/>
				</Item>
				<Item Name="SubVIs" Type="Folder">
					<Item Name="Inficon 16 Bit Data.vi" Type="VI" URL="../Drivers/Inficon Transmitter/SubVIs/Inficon 16 Bit Data.vi"/>
					<Item Name="Inficon 32 Bit Data.vi" Type="VI" URL="../Drivers/Inficon Transmitter/SubVIs/Inficon 32 Bit Data.vi"/>
					<Item Name="Inficon Hot Density Calculation.vi" Type="VI" URL="../Drivers/Inficon Transmitter/SubVIs/Inficon Hot Density Calculation.vi"/>
					<Item Name="Inficon Hot Water Calculation.vi" Type="VI" URL="../Drivers/Inficon Transmitter/SubVIs/Inficon Hot Water Calculation.vi"/>
					<Item Name="Inficon Reset Totalizers.vi" Type="VI" URL="../Drivers/Inficon Transmitter/SubVIs/Inficon Reset Totalizers.vi"/>
					<Item Name="Inficon Units.vi" Type="VI" URL="../Drivers/Inficon Transmitter/SubVIs/Inficon Units.vi"/>
				</Item>
				<Item Name="Type Definitions" Type="Folder">
					<Item Name="Inficon Data.ctl" Type="VI" URL="../Drivers/Inficon Transmitter/Type Definitions/Inficon Data.ctl"/>
					<Item Name="Inficon Modbus Addresses LP.ctl" Type="VI" URL="../Drivers/Inficon Transmitter/Type Definitions/Inficon Modbus Addresses LP.ctl"/>
					<Item Name="Inficon Modbus Addresses.ctl" Type="VI" URL="../Drivers/Inficon Transmitter/Type Definitions/Inficon Modbus Addresses.ctl"/>
					<Item Name="Inficon Modbus Write Coils.ctl" Type="VI" URL="../Drivers/Inficon Transmitter/Type Definitions/Inficon Modbus Write Coils.ctl"/>
				</Item>
				<Item Name="Utility" Type="Folder"/>
				<Item Name="Inficon Example.vi" Type="VI" URL="../Drivers/Inficon Transmitter/Inficon Example.vi"/>
				<Item Name="Inficon Transmitter.aliases" Type="Document" URL="../Drivers/Inficon Transmitter/Inficon Transmitter.aliases"/>
				<Item Name="Inficon Transmitter.lvlps" Type="Document" URL="../Drivers/Inficon Transmitter/Inficon Transmitter.lvlps"/>
				<Item Name="Inficon Transmitter.lvproj" Type="Document" URL="../Drivers/Inficon Transmitter/Inficon Transmitter.lvproj"/>
			</Item>
			<Item Name="Siemens Ultramat 23" Type="Folder">
				<Item Name="Example" Type="Folder">
					<Item Name="Basic Data Collection.vi" Type="VI" URL="../Drivers/Siemens Ultramat 23/Example/Basic Data Collection.vi"/>
					<Item Name="Monitor.vi" Type="VI" URL="../Drivers/Siemens Ultramat 23/Example/Monitor.vi"/>
					<Item Name="Ultramat 23 Get Data.vi" Type="VI" URL="../Drivers/Siemens Ultramat 23/Example/Ultramat 23 Get Data.vi"/>
					<Item Name="Ultramat 23 Initialize.vi" Type="VI" URL="../Drivers/Siemens Ultramat 23/Example/Ultramat 23 Initialize.vi"/>
				</Item>
				<Item Name="instr.lib" Type="Folder">
					<Item Name="Siemens ELAN" Type="Folder">
						<Item Name="Get Autocal Current Step.vi" Type="VI" URL="../Drivers/Siemens Ultramat 23/instr.lib/Siemens ELAN/Get Autocal Current Step.vi"/>
						<Item Name="Siemens ELAN.lvlib" Type="Library" URL="../Drivers/Siemens Ultramat 23/instr.lib/Siemens ELAN/Siemens ELAN.lvlib"/>
						<Item Name="State Enumeration.ctl" Type="VI" URL="../Drivers/Siemens Ultramat 23/instr.lib/Siemens ELAN/State Enumeration.ctl"/>
					</Item>
				</Item>
				<Item Name="SubVIs" Type="Folder">
					<Item Name="Ultramat 23 AFCO Calculations Sub.vi" Type="VI" URL="../Drivers/Siemens Ultramat 23/SubVIs/Ultramat 23 AFCO Calculations Sub.vi"/>
					<Item Name="Ultramat 23 AFCO Calculations.vi" Type="VI" URL="../Drivers/Siemens Ultramat 23/SubVIs/Ultramat 23 AFCO Calculations.vi"/>
					<Item Name="Ultramat 23 Create Data Array.vi" Type="VI" URL="../Drivers/Siemens Ultramat 23/SubVIs/Ultramat 23 Create Data Array.vi"/>
				</Item>
				<Item Name="Siemens Ultramat 23.aliases" Type="Document" URL="../Drivers/Siemens Ultramat 23/Siemens Ultramat 23.aliases"/>
				<Item Name="Siemens Ultramat 23.lvlps" Type="Document" URL="../Drivers/Siemens Ultramat 23/Siemens Ultramat 23.lvlps"/>
				<Item Name="Siemens Ultramat 23.lvproj" Type="Document" URL="../Drivers/Siemens Ultramat 23/Siemens Ultramat 23.lvproj"/>
			</Item>
			<Item Name="Unist Quantum" Type="Folder">
				<Item Name="Main" Type="Folder">
					<Item Name="Units Quantum Example.vi" Type="VI" URL="../Drivers/Unist Quantum/Main/Units Quantum Example.vi"/>
				</Item>
				<Item Name="SubVIs" Type="Folder">
					<Item Name="UNIST Clear Alarm.vi" Type="VI" URL="../Drivers/Unist Quantum/SubVIs/UNIST Clear Alarm.vi"/>
					<Item Name="UNIST COM Setup.vi" Type="VI" URL="../Drivers/Unist Quantum/SubVIs/UNIST COM Setup.vi"/>
					<Item Name="UNIST Get Active Job ID.vi" Type="VI" URL="../Drivers/Unist Quantum/SubVIs/UNIST Get Active Job ID.vi"/>
					<Item Name="UNIST Start Output.vi" Type="VI" URL="../Drivers/Unist Quantum/SubVIs/UNIST Start Output.vi"/>
				</Item>
				<Item Name="Type Definitions" Type="Folder">
					<Item Name="UNIST Fluid Rate.ctl" Type="VI" URL="../Drivers/Unist Quantum/Type Definitions/UNIST Fluid Rate.ctl"/>
				</Item>
				<Item Name="Unist Quantum.aliases" Type="Document" URL="../Drivers/Unist Quantum/Unist Quantum.aliases"/>
				<Item Name="Unist Quantum.lvlps" Type="Document" URL="../Drivers/Unist Quantum/Unist Quantum.lvlps"/>
				<Item Name="Unist Quantum.lvproj" Type="Document" URL="../Drivers/Unist Quantum/Unist Quantum.lvproj"/>
			</Item>
			<Item Name="Resideo Gas Valve" Type="Folder" URL="../../../Drivers/Resideo Gas Valve">
				<Property Name="NI.DISK" Type="Bool">true</Property>
			</Item>
		</Item>
		<Item Name="Gas_Rate" Type="Folder" URL="../Gas_Rate">
			<Property Name="NI.DISK" Type="Bool">true</Property>
		</Item>
		<Item Name="SRI8610C - GasChromatograph" Type="Folder" URL="../SRI8610C - GasChromatograph">
			<Property Name="NI.DISK" Type="Bool">true</Property>
		</Item>
		<Item Name="Macros" Type="Folder" URL="../Macros">
			<Property Name="NI.DISK" Type="Bool">true</Property>
		</Item>
		<Item Name="Main.vi" Type="VI" URL="../Main.vi"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="Application Directory.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Application Directory.vi"/>
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
				<Item Name="DialogType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogType.ctl"/>
				<Item Name="General Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler.vi"/>
				<Item Name="Simple Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Simple Error Handler.vi"/>
				<Item Name="Get File Extension.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Get File Extension.vi"/>
				<Item Name="Clear Errors.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Clear Errors.vi"/>
				<Item Name="NI_FileType.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/lvfile.llb/NI_FileType.lvlib"/>
				<Item Name="DialogTypeEnum.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogTypeEnum.ctl"/>
				<Item Name="General Error Handler Core CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler Core CORE.vi"/>
				<Item Name="whitespace.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/whitespace.ctl"/>
				<Item Name="Check Special Tags.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Check Special Tags.vi"/>
				<Item Name="TagReturnType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/TagReturnType.ctl"/>
				<Item Name="Set String Value.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set String Value.vi"/>
				<Item Name="GetRTHostConnectedProp.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetRTHostConnectedProp.vi"/>
				<Item Name="Error Code Database.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Code Database.vi"/>
				<Item Name="Trim Whitespace.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Trim Whitespace.vi"/>
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
				<Item Name="LVRectTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVRectTypeDef.ctl"/>
				<Item Name="Longest Line Length in Pixels.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Longest Line Length in Pixels.vi"/>
				<Item Name="Convert property node font to graphics font.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Convert property node font to graphics font.vi"/>
				<Item Name="Get Text Rect.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Get Text Rect.vi"/>
				<Item Name="Get String Text Bounds.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Get String Text Bounds.vi"/>
				<Item Name="LVBoundsTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVBoundsTypeDef.ctl"/>
				<Item Name="BuildHelpPath.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/BuildHelpPath.vi"/>
				<Item Name="GetHelpDir.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetHelpDir.vi"/>
				<Item Name="API Main.lvlib" Type="Library" URL="/&lt;vilib&gt;/NI/Modbus Library/API/Wrapper/API Main.lvlib"/>
				<Item Name="Device Data Model.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/Modbus Library/Data Model/Device Data Model.lvclass"/>
				<Item Name="Modbus Data Unit.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/Modbus Library/Modbus Data Unit/Modbus Data Unit.lvclass"/>
				<Item Name="Modbus Master.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/Modbus Library/API/Master/Modbus Master.lvclass"/>
				<Item Name="Network Master.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/Modbus Library/Network Protocol/Network Master/Network Master.lvclass"/>
				<Item Name="Network Protocol.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/Modbus Library/Network Protocol/Network Protocol.lvclass"/>
				<Item Name="Master Function Definition.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/Modbus Library/Master Function Definition/Master Function Definition.lvclass"/>
				<Item Name="Bits to Bytes.vi" Type="VI" URL="/&lt;vilib&gt;/NI/Modbus Library/Utility/Bits to Bytes.vi"/>
				<Item Name="U16s to Bytes.vi" Type="VI" URL="/&lt;vilib&gt;/NI/Modbus Library/Utility/U16s to Bytes.vi"/>
				<Item Name="Bytes to Bits.vi" Type="VI" URL="/&lt;vilib&gt;/NI/Modbus Library/Utility/Bytes to Bits.vi"/>
				<Item Name="Bytes to U16s.vi" Type="VI" URL="/&lt;vilib&gt;/NI/Modbus Library/Utility/Bytes to U16s.vi"/>
				<Item Name="Modbus API.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/Modbus Library/API/Modbus API.lvclass"/>
				<Item Name="Transmission Data Unit.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/Modbus Library/Transmission Data Unit/Transmission Data Unit.lvclass"/>
				<Item Name="Serial Data Unit.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/Modbus Library/Transmission Data Unit/Serial Interface/Serial Data Unit.lvclass"/>
				<Item Name="TCP Master.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/Modbus Library/Network Protocol/Network Master/TCP/TCP Master.lvclass"/>
				<Item Name="TCP Shared Components.lvlib" Type="Library" URL="/&lt;vilib&gt;/NI/Modbus Library/Network Protocol/TCP Shared Components/TCP Shared Components.lvlib"/>
				<Item Name="IP Data Unit.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/Modbus Library/Transmission Data Unit/IP/IP Data Unit.lvclass"/>
				<Item Name="Modbus Slave.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/Modbus Library/API/Slave/Modbus Slave.lvclass"/>
				<Item Name="Network Slave.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/Modbus Library/Network Protocol/Network Slave/Network Slave.lvclass"/>
				<Item Name="TCP Slave.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/Modbus Library/Network Protocol/Network Slave/TCP/TCP Slave.lvclass"/>
				<Item Name="Generate UUID.vi" Type="VI" URL="/&lt;vilib&gt;/NI/Modbus Library/Utility/Generate UUID.vi"/>
				<Item Name="Standard Data Model.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/Modbus Library/Data Model/Standard Data Model/Standard Data Model.lvclass"/>
				<Item Name="RTU Data Unit.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/Modbus Library/Transmission Data Unit/RTU/RTU Data Unit.lvclass"/>
				<Item Name="Serial Slave.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/Modbus Library/Network Protocol/Network Slave/Serial/Serial Slave.lvclass"/>
				<Item Name="VISA Flush IO Buffer Mask.ctl" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Flush IO Buffer Mask.ctl"/>
				<Item Name="Serial Shared Components.lvlib" Type="Library" URL="/&lt;vilib&gt;/NI/Modbus Library/Network Protocol/Serial Shared Components/Serial Shared Components.lvlib"/>
				<Item Name="Serial Master.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/Modbus Library/Network Protocol/Network Master/Serial/Serial Master.lvclass"/>
				<Item Name="ASCII Data Unit.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/Modbus Library/Transmission Data Unit/ASCII/ASCII Data Unit.lvclass"/>
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
				<Item Name="Modbus Slave Example.vi" Type="VI" URL="/&lt;vilib&gt;/NI/Modbus Library/Examples/Modbus Slave Example.vi"/>
				<Item Name="Write Delimited Spreadsheet.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Write Delimited Spreadsheet.vi"/>
				<Item Name="Write Delimited Spreadsheet (DBL).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Write Delimited Spreadsheet (DBL).vi"/>
				<Item Name="Write Spreadsheet String.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Write Spreadsheet String.vi"/>
				<Item Name="Write Delimited Spreadsheet (I64).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Write Delimited Spreadsheet (I64).vi"/>
				<Item Name="Write Delimited Spreadsheet (string).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Write Delimited Spreadsheet (string).vi"/>
				<Item Name="subSigGeneratorBlock.vi" Type="VI" URL="/&lt;vilib&gt;/express/express input/SimulateSignalBlock.llb/subSigGeneratorBlock.vi"/>
				<Item Name="Nearest Frequency for Block.vi" Type="VI" URL="/&lt;vilib&gt;/express/express input/SimulateSignalConfig.llb/Nearest Frequency for Block.vi"/>
				<Item Name="Nearest Freq in Int Cycles.vi" Type="VI" URL="/&lt;vilib&gt;/express/express input/SimulateSignalConfig.llb/Nearest Freq in Int Cycles.vi"/>
				<Item Name="subInternalTiming.vi" Type="VI" URL="/&lt;vilib&gt;/express/express input/SimulateSignalBlock.llb/subInternalTiming.vi"/>
				<Item Name="NI_MABase.lvlib" Type="Library" URL="/&lt;vilib&gt;/measure/NI_MABase.lvlib"/>
				<Item Name="NI_AALBase.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/NI_AALBase.lvlib"/>
				<Item Name="subShouldUseDefSigName.vi" Type="VI" URL="/&lt;vilib&gt;/express/express input/SimulateSignalBlock.llb/subShouldUseDefSigName.vi"/>
				<Item Name="sub2ShouldUseDefSigName.vi" Type="VI" URL="/&lt;vilib&gt;/express/express input/SimulateSignalBlock.llb/sub2ShouldUseDefSigName.vi"/>
				<Item Name="subGetSignalName.vi" Type="VI" URL="/&lt;vilib&gt;/express/express input/SimulateSignalBlock.llb/subGetSignalName.vi"/>
				<Item Name="ex_GenAddAttribs.vi" Type="VI" URL="/&lt;vilib&gt;/express/express input/SimulateSignalBlock.llb/ex_GenAddAttribs.vi"/>
				<Item Name="ex_WaveformAttribsPlus.ctl" Type="VI" URL="/&lt;vilib&gt;/express/express shared/transition.llb/ex_WaveformAttribsPlus.ctl"/>
				<Item Name="Timestamp Subtract.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/TSOps.llb/Timestamp Subtract.vi"/>
				<Item Name="I128 Timestamp.ctl" Type="VI" URL="/&lt;vilib&gt;/Waveform/TSOps.llb/I128 Timestamp.ctl"/>
				<Item Name="DU64_U32SubtractWithBorrow.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/TSOps.llb/DU64_U32SubtractWithBorrow.vi"/>
				<Item Name="ex_SetExpAttribsAndT0.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/transition.llb/ex_SetExpAttribsAndT0.vi"/>
				<Item Name="ex_WaveformAttribs.ctl" Type="VI" URL="/&lt;vilib&gt;/express/express shared/transition.llb/ex_WaveformAttribs.ctl"/>
				<Item Name="Timestamp Add.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/TSOps.llb/Timestamp Add.vi"/>
				<Item Name="DU64_U32AddWithOverflow.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/TSOps.llb/DU64_U32AddWithOverflow.vi"/>
				<Item Name="ex_SetAllExpressAttribs.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/transition.llb/ex_SetAllExpressAttribs.vi"/>
				<Item Name="Waveform Array To Dynamic.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/transition.llb/Waveform Array To Dynamic.vi"/>
				<Item Name="ex_CorrectErrorChain.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/ex_CorrectErrorChain.vi"/>
				<Item Name="Write to XML File.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/xml.llb/Write to XML File.vi"/>
				<Item Name="Write to XML File(string).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/xml.llb/Write to XML File(string).vi"/>
				<Item Name="Open_Create_Replace File.vi" Type="VI" URL="/&lt;vilib&gt;/_oldvers/_oldvers.llb/Open_Create_Replace File.vi"/>
				<Item Name="compatFileDialog.vi" Type="VI" URL="/&lt;vilib&gt;/_oldvers/_oldvers.llb/compatFileDialog.vi"/>
				<Item Name="compatOpenFileOperation.vi" Type="VI" URL="/&lt;vilib&gt;/_oldvers/_oldvers.llb/compatOpenFileOperation.vi"/>
				<Item Name="compatCalcOffset.vi" Type="VI" URL="/&lt;vilib&gt;/_oldvers/_oldvers.llb/compatCalcOffset.vi"/>
				<Item Name="Write to XML File(array).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/xml.llb/Write to XML File(array).vi"/>
				<Item Name="Dflt Data Dir.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Dflt Data Dir.vi"/>
				<Item Name="Check if File or Folder Exists.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Check if File or Folder Exists.vi"/>
				<Item Name="NI_PackedLibraryUtility.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/LVLibp/NI_PackedLibraryUtility.lvlib"/>
				<Item Name="Read From XML File.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/xml.llb/Read From XML File.vi"/>
				<Item Name="Read From XML File(array).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/xml.llb/Read From XML File(array).vi"/>
				<Item Name="ParseXMLFragments.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/xml.llb/ParseXMLFragments.vi"/>
				<Item Name="FindFirstTag.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/xml.llb/FindFirstTag.vi"/>
				<Item Name="FindEmptyElement.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/xml.llb/FindEmptyElement.vi"/>
				<Item Name="FindElement.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/xml.llb/FindElement.vi"/>
				<Item Name="FindMatchingCloseTag.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/xml.llb/FindMatchingCloseTag.vi"/>
				<Item Name="FindCloseTagByName.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/xml.llb/FindCloseTagByName.vi"/>
				<Item Name="FindElementStartByName.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/xml.llb/FindElementStartByName.vi"/>
				<Item Name="Read From XML File(string).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/xml.llb/Read From XML File(string).vi"/>
				<Item Name="VISA Configure Serial Port" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Configure Serial Port"/>
				<Item Name="VISA Configure Serial Port (Instr).vi" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Configure Serial Port (Instr).vi"/>
				<Item Name="VISA Configure Serial Port (Serial Instr).vi" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Configure Serial Port (Serial Instr).vi"/>
				<Item Name="Space Constant.vi" Type="VI" URL="/&lt;vilib&gt;/dlg_ctls.llb/Space Constant.vi"/>
				<Item Name="VISA Open Access Mode.ctl" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Open Access Mode.ctl"/>
				<Item Name="subElapsedTime.vi" Type="VI" URL="/&lt;vilib&gt;/express/express execution control/ElapsedTimeBlock.llb/subElapsedTime.vi"/>
				<Item Name="FormatTime String.vi" Type="VI" URL="/&lt;vilib&gt;/express/express execution control/ElapsedTimeBlock.llb/FormatTime String.vi"/>
				<Item Name="subDisplayMessage.vi" Type="VI" URL="/&lt;vilib&gt;/express/express output/DisplayMessageBlock.llb/subDisplayMessage.vi"/>
				<Item Name="Write To Spreadsheet File.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Write To Spreadsheet File.vi"/>
				<Item Name="Write To Spreadsheet File (DBL).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Write To Spreadsheet File (DBL).vi"/>
				<Item Name="Write To Spreadsheet File (I64).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Write To Spreadsheet File (I64).vi"/>
				<Item Name="Write To Spreadsheet File (string).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Write To Spreadsheet File (string).vi"/>
				<Item Name="subFile Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/express/express input/FileDialogBlock.llb/subFile Dialog.vi"/>
				<Item Name="Read From Spreadsheet File.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read From Spreadsheet File.vi"/>
				<Item Name="Read From Spreadsheet File (DBL).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read From Spreadsheet File (DBL).vi"/>
				<Item Name="Read Lines From File.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read Lines From File.vi"/>
				<Item Name="Read From Spreadsheet File (I64).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read From Spreadsheet File (I64).vi"/>
				<Item Name="Read From Spreadsheet File (string).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read From Spreadsheet File (string).vi"/>
				<Item Name="Add State(s) to Queue__JKI_lib_State_Machine.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/State Machine/_JKI_lib_State_Machine.llb/Add State(s) to Queue__JKI_lib_State_Machine.vi"/>
				<Item Name="Parse State Queue__JKI_lib_State_Machine.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/State Machine/_JKI_lib_State_Machine.llb/Parse State Queue__JKI_lib_State_Machine.vi"/>
				<Item Name="Unset Busy.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/cursorutil.llb/Unset Busy.vi"/>
				<Item Name="Set Cursor.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/cursorutil.llb/Set Cursor.vi"/>
				<Item Name="Set Cursor (Cursor ID).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/cursorutil.llb/Set Cursor (Cursor ID).vi"/>
				<Item Name="Set Cursor (Icon Pict).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/cursorutil.llb/Set Cursor (Icon Pict).vi"/>
				<Item Name="Set Busy.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/cursorutil.llb/Set Busy.vi"/>
				<Item Name="Create Directory Recursive.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Create Directory Recursive.vi"/>
				<Item Name="cfis_Replace Percent Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/cfis_Replace Percent Code.vi"/>
				<Item Name="cfis_Reverse Scan From String For Integer.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/cfis_Reverse Scan From String For Integer.vi"/>
				<Item Name="cfis_Get File Extension Without Changing Case.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/cfis_Get File Extension Without Changing Case.vi"/>
				<Item Name="cfis_Split File Path Into Three Parts.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/cfis_Split File Path Into Three Parts.vi"/>
				<Item Name="Create File with Incrementing Suffix.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Create File with Incrementing Suffix.vi"/>
				<Item Name="ex_Modify Signal Name.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/ex_Modify Signal Name.vi"/>
				<Item Name="ex_Modify Signals Names.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/ex_Modify Signals Names.vi"/>
				<Item Name="NI_AALPro.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/NI_AALPro.lvlib"/>
				<Item Name="NI_MAPro.lvlib" Type="Library" URL="/&lt;vilib&gt;/measure/NI_MAPro.lvlib"/>
				<Item Name="Dynamic To Waveform Array.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/transition.llb/Dynamic To Waveform Array.vi"/>
				<Item Name="ex_GetAllExpressAttribs.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/transition.llb/ex_GetAllExpressAttribs.vi"/>
				<Item Name="Express Waveform Components.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/transition.llb/Express Waveform Components.vi"/>
				<Item Name="ex_SmoothingDesign.vi" Type="VI" URL="/&lt;vilib&gt;/express/express analysis/FilterBlock.llb/ex_SmoothingDesign.vi"/>
				<Item Name="Check for Equality.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/WDTOps.llb/Check for Equality.vi"/>
				<Item Name="subFilter.vi" Type="VI" URL="/&lt;vilib&gt;/express/express analysis/FilterBlock.llb/subFilter.vi"/>
				<Item Name="NI_PtbyPt.lvlib" Type="Library" URL="/&lt;vilib&gt;/ptbypt/NI_PtbyPt.lvlib"/>
				<Item Name="LVDateTimeRec.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVDateTimeRec.ctl"/>
				<Item Name="Less Comparable.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Comparison/Less/Less Comparable/Less Comparable.lvclass"/>
				<Item Name="Less Functor.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Comparison/Less/Less Functor/Less Functor.lvclass"/>
				<Item Name="Less.vim" Type="VI" URL="/&lt;vilib&gt;/Comparison/Less.vim"/>
				<Item Name="Sort 1D Array Core.vim" Type="VI" URL="/&lt;vilib&gt;/Array/Helpers/Sort 1D Array Core.vim"/>
				<Item Name="Sort 1D Array.vim" Type="VI" URL="/&lt;vilib&gt;/Array/Sort 1D Array.vim"/>
				<Item Name="FileVersionInformation.ctl" Type="VI" URL="/&lt;vilib&gt;/Platform/fileVersionInfo.llb/FileVersionInformation.ctl"/>
				<Item Name="FileVersionInfo.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/fileVersionInfo.llb/FileVersionInfo.vi"/>
				<Item Name="GetFileVersionInfoSize.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/fileVersionInfo.llb/GetFileVersionInfoSize.vi"/>
				<Item Name="BuildErrorSource.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/fileVersionInfo.llb/BuildErrorSource.vi"/>
				<Item Name="GetFileVersionInfo.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/fileVersionInfo.llb/GetFileVersionInfo.vi"/>
				<Item Name="VerQueryValue.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/fileVersionInfo.llb/VerQueryValue.vi"/>
				<Item Name="MoveMemory.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/fileVersionInfo.llb/MoveMemory.vi"/>
				<Item Name="FixedFileInfo_Struct.ctl" Type="VI" URL="/&lt;vilib&gt;/Platform/fileVersionInfo.llb/FixedFileInfo_Struct.ctl"/>
				<Item Name="Trim Whitespace One-Sided.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Trim Whitespace One-Sided.vi"/>
			</Item>
			<Item Name="lvanlys.dll" Type="Document" URL="/&lt;resource&gt;/lvanlys.dll"/>
			<Item Name="version.dll" Type="Document" URL="version.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="kernel32.dll" Type="Document" URL="kernel32.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="Agilent 34970.lvlib" Type="Library" URL="../../../Drivers/Agilent 34972/Agilent 34970.lvlib"/>
			<Item Name="Agilent 34970 Read Continuous.vi" Type="VI" URL="../../../Drivers/Agilent 34972/Examples/Agilent 34970 Read Continuous.vi"/>
			<Item Name="UTILITY Counter.vi" Type="VI" URL="../../Utility/UTILITY Counter.vi"/>
			<Item Name="EnviraCom_Initialization.vi" Type="VI" URL="../../../Drivers/Resideo Power Vent Valve/EnviraCom Communication/SubVIs/EnviraCom_Initialization.vi"/>
			<Item Name="EnviraCom_ON_OFF.vi" Type="VI" URL="../../../Drivers/Resideo Power Vent Valve/EnviraCom Communication/SubVIs/EnviraCom_ON_OFF.vi"/>
		</Item>
		<Item Name="Build Specifications" Type="Build">
			<Item Name="GE Appliance - FVIR &amp; LDO" Type="EXE">
				<Property Name="App_copyErrors" Type="Bool">true</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{801E969B-989E-488A-915D-B68B3A16FD86}</Property>
				<Property Name="App_INI_GUID" Type="Str">{3A772712-C068-4189-92FA-0BD1DE7423EB}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
				<Property Name="App_serverType" Type="Int">0</Property>
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{A0CAE3EA-79F9-43C5-80B5-6AB0DA27A03E}</Property>
				<Property Name="Bld_buildSpecDescription" Type="Str">1.0.0.28 - Moving application to GitHub and off of lab PC
1.0.0.36 - Updating Vesta COMs to version 1.42
1.0.0.37 - Updating to manual flow control as default
1.0.0.38 - Disabling FVIR. Trying to reduce resources to fix LDO from resetting PC
1.0.0.41 - Disabled LDO Alicat, using manifold pressure sensor for actuation. Disabled Inficon, Disabled Vesta LDO
1.0.0.43 - Enabling everything. It now triggers based on manifold pressure. I have added a adjustement on flow rate that is dependant on the cycle counter. Some of the shorter cycles are experiecning lower outlet temps
1.0.0.44 - Adding Agilent 34972A to measure thermistor reading on PV water heater
1.0.0.46 - Adding continuous logging once you press start test. 
1.0.0.47 - Fixing the save routine to ignore saving if there is no file name
1.0.0.48 - Adding a Vesta Reconnect
1.0.0.53 - Fixing Differential when you set the water heater temperature with Vesta
1.0.0.54 - Starting to add plots. Adding 10 resistance measurements using the Agilent. Moved resistance readings from LDO to FV. 
1.0.0.55 - Adding File Path Visual to Main Screen
1.0.0.56 - Adding higher scan rate speed for FVIR and adding Enviracom for LDO
1.0.0.57 - Fixing Modbus Loop Rate
1.0.0.58 - Updating FVIR Intellifaucet Temp from 70 to 73. Need to included config file. Will do later</Property>
				<Property Name="Bld_buildSpecName" Type="Str">GE Appliance - FVIR &amp; LDO</Property>
				<Property Name="Bld_excludeInlineSubVIs" Type="Bool">true</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../builds/GE Appliance - FVIR &amp; LDO</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToCommon</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{14988FD7-1974-4075-A1B1-A43EDA48C9CB}</Property>
				<Property Name="Bld_version.build" Type="Int">60</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">GE Appliance - FVIR &amp; LDO.exe</Property>
				<Property Name="Destination[0].path" Type="Path">../builds/GE Appliance - FVIR &amp; LDO/GE Appliance - FVIR &amp; LDO.exe</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../builds/GE Appliance - FVIR &amp; LDO/data</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Source[0].itemID" Type="Str">{FD253ED6-AC6A-4CBB-9C8B-A5F1A80B7708}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/Main.vi</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="Source[2].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[2].itemID" Type="Ref">/My Computer/Modbus/Modbus.lvlib</Property>
				<Property Name="Source[2].Library.allowMissingMembers" Type="Bool">true</Property>
				<Property Name="Source[2].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[2].type" Type="Str">Library</Property>
				<Property Name="Source[3].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[3].itemID" Type="Ref">/My Computer/ReadingDataFile/ReadingDataFile.lvlib</Property>
				<Property Name="Source[3].Library.allowMissingMembers" Type="Bool">true</Property>
				<Property Name="Source[3].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[3].type" Type="Str">Library</Property>
				<Property Name="Source[4].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[4].itemID" Type="Ref">/My Computer/WritingDataFile/WritingDataFile.lvlib</Property>
				<Property Name="Source[4].Library.allowMissingMembers" Type="Bool">true</Property>
				<Property Name="Source[4].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[4].type" Type="Str">Library</Property>
				<Property Name="SourceCount" Type="Int">5</Property>
				<Property Name="TgtF_enableDebugging" Type="Bool">true</Property>
				<Property Name="TgtF_fileDescription" Type="Str">GE Appliance - FVIR &amp; LDO</Property>
				<Property Name="TgtF_internalName" Type="Str">GE Appliance - FVIR &amp; LDO</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2022 </Property>
				<Property Name="TgtF_productName" Type="Str">GE Appliance - FVIR &amp; LDO</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{01A9AC14-19D6-45D8-89AE-03D3CCEF1DFA}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">GE Appliance - FVIR &amp; LDO.exe</Property>
				<Property Name="TgtF_versionIndependent" Type="Bool">true</Property>
			</Item>
			<Item Name="GEA LDO and FVIR" Type="Installer">
				<Property Name="Destination[0].name" Type="Str">c:\FVIR LDO Test Software</Property>
				<Property Name="Destination[0].path" Type="Path">/c/FVIR LDO Test Software</Property>
				<Property Name="Destination[0].tag" Type="Str">{9A40CF0D-4DEB-434B-B4E2-4822C8DC5603}</Property>
				<Property Name="Destination[0].type" Type="Str">absFolder</Property>
				<Property Name="DestinationCount" Type="Int">1</Property>
				<Property Name="DistPart[0].flavorID" Type="Str">_full_</Property>
				<Property Name="DistPart[0].productID" Type="Str">{F19060DD-AA3B-4C3D-8E47-5792E36DFF3A}</Property>
				<Property Name="DistPart[0].productName" Type="Str">NI-488.2 Runtime 21.5</Property>
				<Property Name="DistPart[0].upgradeCode" Type="Str">{357F6618-C660-41A2-A185-5578CC876D1D}</Property>
				<Property Name="DistPart[1].flavorID" Type="Str">_deployment_</Property>
				<Property Name="DistPart[1].productID" Type="Str">{31B755F6-2A76-49DE-A454-4D6BD9D59470}</Property>
				<Property Name="DistPart[1].productName" Type="Str">NI-VISA Runtime 21.5</Property>
				<Property Name="DistPart[1].upgradeCode" Type="Str">{8627993A-3F66-483C-A562-0D3BA3F267B1}</Property>
				<Property Name="DistPart[2].flavorID" Type="Str">DefaultFull</Property>
				<Property Name="DistPart[2].productID" Type="Str">{7C216C83-85F9-4A5F-9938-2D839206554D}</Property>
				<Property Name="DistPart[2].productName" Type="Str">NI LabVIEW Runtime 2023 Q1</Property>
				<Property Name="DistPart[2].SoftDep[0].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[2].SoftDep[0].productName" Type="Str">NI ActiveX Container</Property>
				<Property Name="DistPart[2].SoftDep[0].upgradeCode" Type="Str">{1038A887-23E1-4289-B0BD-0C4B83C6BA21}</Property>
				<Property Name="DistPart[2].SoftDep[1].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[2].SoftDep[1].productName" Type="Str">NI Deployment Framework 2023</Property>
				<Property Name="DistPart[2].SoftDep[1].upgradeCode" Type="Str">{838942E4-B73C-492E-81A3-AA1E291FD0DC}</Property>
				<Property Name="DistPart[2].SoftDep[2].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[2].SoftDep[2].productName" Type="Str">NI Error Reporting 2020</Property>
				<Property Name="DistPart[2].SoftDep[2].upgradeCode" Type="Str">{42E818C6-2B08-4DE7-BD91-B0FD704C119A}</Property>
				<Property Name="DistPart[2].SoftDep[3].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[2].SoftDep[3].productName" Type="Str">NI Logos 23.1</Property>
				<Property Name="DistPart[2].SoftDep[3].upgradeCode" Type="Str">{5E4A4CE3-4D06-11D4-8B22-006008C16337}</Property>
				<Property Name="DistPart[2].SoftDep[4].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[2].SoftDep[4].productName" Type="Str">NI LabVIEW Web Server 2023</Property>
				<Property Name="DistPart[2].SoftDep[4].upgradeCode" Type="Str">{0960380B-EA86-4E0C-8B57-14CD8CCF2C15}</Property>
				<Property Name="DistPart[2].SoftDep[5].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[2].SoftDep[5].productName" Type="Str">NI mDNS Responder 23.0</Property>
				<Property Name="DistPart[2].SoftDep[5].upgradeCode" Type="Str">{9607874B-4BB3-42CB-B450-A2F5EF60BA3B}</Property>
				<Property Name="DistPart[2].SoftDep[6].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[2].SoftDep[6].productName" Type="Str">Math Kernel Libraries 2017</Property>
				<Property Name="DistPart[2].SoftDep[6].upgradeCode" Type="Str">{699C1AC5-2CF2-4745-9674-B19536EBA8A3}</Property>
				<Property Name="DistPart[2].SoftDep[7].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[2].SoftDep[7].productName" Type="Str">Math Kernel Libraries 2020</Property>
				<Property Name="DistPart[2].SoftDep[7].upgradeCode" Type="Str">{9872BBBA-FB96-42A4-80A2-9605AC5CBCF1}</Property>
				<Property Name="DistPart[2].SoftDep[8].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[2].SoftDep[8].productName" Type="Str">NI VC2015 Runtime</Property>
				<Property Name="DistPart[2].SoftDep[8].upgradeCode" Type="Str">{D42E7BAE-6589-4570-B6A3-3E28889392E7}</Property>
				<Property Name="DistPart[2].SoftDep[9].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[2].SoftDep[9].productName" Type="Str">NI TDM Streaming 23.1</Property>
				<Property Name="DistPart[2].SoftDep[9].upgradeCode" Type="Str">{4CD11BE6-6BB7-4082-8A27-C13771BC309B}</Property>
				<Property Name="DistPart[2].SoftDepCount" Type="Int">10</Property>
				<Property Name="DistPart[2].upgradeCode" Type="Str">{A3DD8CEA-07BB-3EB5-A026-4AB75BDFF807}</Property>
				<Property Name="DistPartCount" Type="Int">3</Property>
				<Property Name="INST_author" Type="Str">GE Appliances, a Haier Company</Property>
				<Property Name="INST_autoIncrement" Type="Bool">true</Property>
				<Property Name="INST_buildLocation" Type="Path">../builds/GEA LDO and FVIR/GEA LDO and FVIR</Property>
				<Property Name="INST_buildLocation.type" Type="Str">relativeToCommon</Property>
				<Property Name="INST_buildSpecName" Type="Str">GEA LDO and FVIR</Property>
				<Property Name="INST_defaultDir" Type="Str">{9A40CF0D-4DEB-434B-B4E2-4822C8DC5603}</Property>
				<Property Name="INST_installerName" Type="Str">install.exe</Property>
				<Property Name="INST_productName" Type="Str">GEA LDO and FVIR</Property>
				<Property Name="INST_productVersion" Type="Str">1.0.3</Property>
				<Property Name="InstSpecBitness" Type="Str">32-bit</Property>
				<Property Name="InstSpecVersion" Type="Str">23108276</Property>
				<Property Name="MSI_arpCompany" Type="Str">GE Appliances, a Haier Company</Property>
				<Property Name="MSI_autoselectDrivers" Type="Bool">true</Property>
				<Property Name="MSI_distID" Type="Str">{FFCDDD3D-45AA-4E2E-A9DE-B912D0767B82}</Property>
				<Property Name="MSI_hideNonRuntimes" Type="Bool">true</Property>
				<Property Name="MSI_osCheck" Type="Int">0</Property>
				<Property Name="MSI_upgradeCode" Type="Str">{3AB8E0E5-9BE3-4332-B09B-480ADE284C98}</Property>
				<Property Name="MSI_windowTitle" Type="Str">LDO and FVIR Installer</Property>
				<Property Name="RegDest[0].dirName" Type="Str">Software</Property>
				<Property Name="RegDest[0].dirTag" Type="Str">{DDFAFC8B-E728-4AC8-96DE-B920EBB97A86}</Property>
				<Property Name="RegDest[0].parentTag" Type="Str">2</Property>
				<Property Name="RegDestCount" Type="Int">1</Property>
				<Property Name="Source[0].dest" Type="Str">{9A40CF0D-4DEB-434B-B4E2-4822C8DC5603}</Property>
				<Property Name="Source[0].File[0].dest" Type="Str">{9A40CF0D-4DEB-434B-B4E2-4822C8DC5603}</Property>
				<Property Name="Source[0].File[0].name" Type="Str">GE Appliance - FVIR &amp; LDO.exe</Property>
				<Property Name="Source[0].File[0].Shortcut[0].destIndex" Type="Int">1</Property>
				<Property Name="Source[0].File[0].Shortcut[0].name" Type="Str">GE Appliance - FVIR &amp; LDO</Property>
				<Property Name="Source[0].File[0].Shortcut[0].subDir" Type="Str"></Property>
				<Property Name="Source[0].File[0].ShortcutCount" Type="Int">1</Property>
				<Property Name="Source[0].File[0].tag" Type="Str">{01A9AC14-19D6-45D8-89AE-03D3CCEF1DFA}</Property>
				<Property Name="Source[0].FileCount" Type="Int">1</Property>
				<Property Name="Source[0].name" Type="Str">GE Appliance - FVIR &amp; LDO</Property>
				<Property Name="Source[0].tag" Type="Ref">/My Computer/Build Specifications/GE Appliance - FVIR &amp; LDO</Property>
				<Property Name="Source[0].type" Type="Str">EXE</Property>
				<Property Name="SourceCount" Type="Int">1</Property>
			</Item>
			<Item Name="GasMeterTester" Type="EXE">
				<Property Name="App_copyErrors" Type="Bool">true</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{32730142-1DE8-4991-B22D-9FE85C86ED50}</Property>
				<Property Name="App_INI_GUID" Type="Str">{4F5AF2F5-F64B-4679-AD27-82FC3948A255}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
				<Property Name="App_serverType" Type="Int">0</Property>
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{1E4A6546-E347-4EA1-AD43-DF55D2FE1854}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">GasMeterTester</Property>
				<Property Name="Bld_excludeInlineSubVIs" Type="Bool">true</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../builds/NI_AB_PROJECTNAME/GasMeterTester</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToCommon</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{971B8671-9DCD-4C1F-972B-C3AAF5D85085}</Property>
				<Property Name="Bld_version.build" Type="Int">1</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">GasMeterTester.exe</Property>
				<Property Name="Destination[0].path" Type="Path">../builds/NI_AB_PROJECTNAME/GasMeterTester/GasMeterTester.exe</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../builds/NI_AB_PROJECTNAME/GasMeterTester/data</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Source[0].itemID" Type="Str">{259CF7D7-D83C-4158-94A4-395F56275D91}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref"></Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="SourceCount" Type="Int">2</Property>
				<Property Name="TgtF_companyName" Type="Str">GE Appliances, a Haier Company</Property>
				<Property Name="TgtF_enableDebugging" Type="Bool">true</Property>
				<Property Name="TgtF_fileDescription" Type="Str">GasMeterTester</Property>
				<Property Name="TgtF_internalName" Type="Str">GasMeterTester</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2022 GE Appliances, a Haier Company</Property>
				<Property Name="TgtF_productName" Type="Str">GasMeterTester</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{97C5CA7D-1FE3-4A49-94CE-4405030826DA}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">GasMeterTester.exe</Property>
				<Property Name="TgtF_versionIndependent" Type="Bool">true</Property>
			</Item>
		</Item>
	</Item>
</Project>
