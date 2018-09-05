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
		<Item Name="FMA1600A Main.vi" Type="VI" URL="../FMA1600A Main.vi"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="BuildHelpPath.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/BuildHelpPath.vi"/>
				<Item Name="Check Special Tags.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Check Special Tags.vi"/>
				<Item Name="Clear Errors.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Clear Errors.vi"/>
				<Item Name="Convert property node font to graphics font.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Convert property node font to graphics font.vi"/>
				<Item Name="Details Display Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Details Display Dialog.vi"/>
				<Item Name="DialogType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogType.ctl"/>
				<Item Name="DialogTypeEnum.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogTypeEnum.ctl"/>
				<Item Name="Error Code Database.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Code Database.vi"/>
				<Item Name="ErrWarn.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/ErrWarn.ctl"/>
				<Item Name="eventvkey.ctl" Type="VI" URL="/&lt;vilib&gt;/event_ctls.llb/eventvkey.ctl"/>
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
				<Item Name="NI_AALPro.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/NI_AALPro.lvlib"/>
				<Item Name="Not Found Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Not Found Dialog.vi"/>
				<Item Name="Search and Replace Pattern.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Search and Replace Pattern.vi"/>
				<Item Name="Set Bold Text.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set Bold Text.vi"/>
				<Item Name="Set String Value.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set String Value.vi"/>
				<Item Name="Space Constant.vi" Type="VI" URL="/&lt;vilib&gt;/dlg_ctls.llb/Space Constant.vi"/>
				<Item Name="TagReturnType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/TagReturnType.ctl"/>
				<Item Name="Three Button Dialog CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog CORE.vi"/>
				<Item Name="Three Button Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog.vi"/>
				<Item Name="Trim Whitespace.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Trim Whitespace.vi"/>
				<Item Name="VISA Configure Serial Port" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Configure Serial Port"/>
				<Item Name="VISA Configure Serial Port (Instr).vi" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Configure Serial Port (Instr).vi"/>
				<Item Name="VISA Configure Serial Port (Serial Instr).vi" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Configure Serial Port (Serial Instr).vi"/>
				<Item Name="VISA Flush IO Buffer Mask.ctl" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Flush IO Buffer Mask.ctl"/>
				<Item Name="VISA Open Access Mode.ctl" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Open Access Mode.ctl"/>
				<Item Name="whitespace.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/whitespace.ctl"/>
				<Item Name="Write Spreadsheet String.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Write Spreadsheet String.vi"/>
				<Item Name="Write To Spreadsheet File (DBL).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Write To Spreadsheet File (DBL).vi"/>
				<Item Name="Write To Spreadsheet File (I64).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Write To Spreadsheet File (I64).vi"/>
				<Item Name="Write To Spreadsheet File (string).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Write To Spreadsheet File (string).vi"/>
				<Item Name="Write To Spreadsheet File.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Write To Spreadsheet File.vi"/>
			</Item>
			<Item Name="_YKWT500 Query Number of List Order.vi" Type="VI" URL="../../Yokogawa WT500/LLBs/_ykwt500.llb/_YKWT500 Query Number of List Order.vi"/>
			<Item Name="_YKWT500 Query.vi" Type="VI" URL="../../Yokogawa WT500/LLBs/_ykwt500.llb/_YKWT500 Query.vi"/>
			<Item Name="_YKWT500 Utility Default Instrument Setup.vi" Type="VI" URL="../../Yokogawa WT500/LLBs/_ykwt500.llb/_YKWT500 Utility Default Instrument Setup.vi"/>
			<Item Name="_YKWT500 Write.vi" Type="VI" URL="../../Yokogawa WT500/LLBs/_ykwt500.llb/_YKWT500 Write.vi"/>
			<Item Name="Gas Select Lock Check.vi" Type="VI" URL="../../Alicat Gas Meter Driver/Sub-VIs/Validity Checks/Gas Select Lock Check.vi"/>
			<Item Name="Legacy Detector.vi" Type="VI" URL="../../Alicat Gas Meter Driver/Sub-VIs/Device Information/Legacy Detector.vi"/>
			<Item Name="lvanlys.dll" Type="Document" URL="/&lt;resource&gt;/lvanlys.dll"/>
			<Item Name="RANGE DAQ Data Four Meters.ctl" Type="VI" URL="../../../Trunk/Range/Type Definitions/RANGE DAQ Data Four Meters.ctl"/>
			<Item Name="RANGE DAQ Data.ctl" Type="VI" URL="../../../Trunk/Range/Type Definitions/RANGE DAQ Data.ctl"/>
			<Item Name="RANGE GAS Data.ctl" Type="VI" URL="../../../Trunk/Range/Type Definitions/RANGE GAS Data.ctl"/>
			<Item Name="RANGE Header Banks.vi" Type="VI" URL="../../../Trunk/Range/SubVIs/RANGE Header Banks.vi"/>
			<Item Name="RANGE Meter Selector 1-2.ctl" Type="VI" URL="../../../Trunk/Range/Type Definitions/RANGE Meter Selector 1-2.ctl"/>
			<Item Name="RANGE Panel Data.ctl" Type="VI" URL="../../../Trunk/Range/Type Definitions/RANGE Panel Data.ctl"/>
			<Item Name="RANGE Zero Error Offset.vi" Type="VI" URL="../../../Trunk/Range/SubVIs/RANGE Zero Error Offset.vi"/>
			<Item Name="Read Data Format Arrays.vi" Type="VI" URL="../../Alicat Gas Meter Driver/Sub-VIs/Data Collection/Read Data Format Arrays.vi"/>
			<Item Name="Read Measurement Units.vi" Type="VI" URL="../../Alicat Gas Meter Driver/Sub-VIs/Data Collection/Read Measurement Units.vi"/>
			<Item Name="Read Output Definitions and Controller Options.vi" Type="VI" URL="../../Alicat Gas Meter Driver/Sub-VIs/Settings/Read Output Definitions and Controller Options.vi"/>
			<Item Name="Read Register.vi" Type="VI" URL="../../Alicat Gas Meter Driver/Sub-VIs/Utilities/Read Register.vi"/>
			<Item Name="Read Software Version.vi" Type="VI" URL="../../Alicat Gas Meter Driver/Sub-VIs/Initialization/Read Software Version.vi"/>
			<Item Name="Read Totalizer Units and Decimals.vi" Type="VI" URL="../../Alicat Gas Meter Driver/Sub-VIs/Settings/Read Totalizer Units and Decimals.vi"/>
			<Item Name="Read Version Info.vi" Type="VI" URL="../../Alicat Gas Meter Driver/Sub-VIs/Device Information/Read Version Info.vi"/>
			<Item Name="Standby Power Header.vi" Type="VI" URL="../../../Trunk/Utility/Standby Power/Supporting VIs/Standby Power Header.vi"/>
			<Item Name="UTILITY Delay mS.vi" Type="VI" URL="../../../Trunk/Utility/UTILITY Delay mS.vi"/>
			<Item Name="UTILITY Integral.vi" Type="VI" URL="../../../Trunk/Utility/UTILITY Integral.vi"/>
			<Item Name="UTILITY Power Data.ctl" Type="VI" URL="../../../Trunk/Utility/Type Definitions/UTILITY Power Data.ctl"/>
			<Item Name="WT500 Configure Array Locations.vi" Type="VI" URL="../../Yokogawa WT500/Type Definitions/WT500 Configure Array Locations.vi"/>
			<Item Name="WT500 General Setup.vi" Type="VI" URL="../../Yokogawa WT500/Main/WT500 General Setup.vi"/>
			<Item Name="WT500 Get Power Data.vi" Type="VI" URL="../../Yokogawa WT500/Main/WT500 Get Power Data.vi"/>
			<Item Name="WT500 IEC 2015 Setup.vi" Type="VI" URL="../../Yokogawa WT500/Main/WT500 IEC 2015 Setup.vi"/>
			<Item Name="WT500 Set Wiring.vi" Type="VI" URL="../../Yokogawa WT500/Main/WT500 Set Wiring.vi"/>
			<Item Name="WT500 Wiring Control.ctl" Type="VI" URL="../../Yokogawa WT500/Type Definitions/WT500 Wiring Control.ctl"/>
			<Item Name="YKWT500 Close.vi" Type="VI" URL="../../Yokogawa WT500/LLBs/ykwt500.llb/YKWT500 Close.vi"/>
			<Item Name="YKWT500 Configure Current.vi" Type="VI" URL="../../Yokogawa WT500/LLBs/ykwt500.llb/YKWT500 Configure Current.vi"/>
			<Item Name="YKWT500 Configure Display Format.vi" Type="VI" URL="../../Yokogawa WT500/LLBs/ykwt500.llb/YKWT500 Configure Display Format.vi"/>
			<Item Name="YKWT500 Configure Display Numeric Format.vi" Type="VI" URL="../../Yokogawa WT500/LLBs/ykwt500.llb/YKWT500 Configure Display Numeric Format.vi"/>
			<Item Name="YKWT500 Configure Display Numeric.vi" Type="VI" URL="../../Yokogawa WT500/LLBs/ykwt500.llb/YKWT500 Configure Display Numeric.vi"/>
			<Item Name="YKWT500 Configure Numeric Item (Delete).vi" Type="VI" URL="../../Yokogawa WT500/LLBs/ykwt500.llb/YKWT500 Configure Numeric Item (Delete).vi"/>
			<Item Name="YKWT500 Configure Numeric Item (Preset).vi" Type="VI" URL="../../Yokogawa WT500/LLBs/ykwt500.llb/YKWT500 Configure Numeric Item (Preset).vi"/>
			<Item Name="YKWT500 Configure Numeric Item (Set).vi" Type="VI" URL="../../Yokogawa WT500/LLBs/ykwt500.llb/YKWT500 Configure Numeric Item (Set).vi"/>
			<Item Name="YKWT500 Configure Numeric Item.vi" Type="VI" URL="../../Yokogawa WT500/LLBs/ykwt500.llb/YKWT500 Configure Numeric Item.vi"/>
			<Item Name="YKWT500 Configure Numeric List (Delete).vi" Type="VI" URL="../../Yokogawa WT500/LLBs/ykwt500.llb/YKWT500 Configure Numeric List (Delete).vi"/>
			<Item Name="YKWT500 Configure Numeric List (Preset).vi" Type="VI" URL="../../Yokogawa WT500/LLBs/ykwt500.llb/YKWT500 Configure Numeric List (Preset).vi"/>
			<Item Name="YKWT500 Configure Numeric List (Set).vi" Type="VI" URL="../../Yokogawa WT500/LLBs/ykwt500.llb/YKWT500 Configure Numeric List (Set).vi"/>
			<Item Name="YKWT500 Configure Numeric List.vi" Type="VI" URL="../../Yokogawa WT500/LLBs/ykwt500.llb/YKWT500 Configure Numeric List.vi"/>
			<Item Name="YKWT500 Configure Update Rate.vi" Type="VI" URL="../../Yokogawa WT500/LLBs/ykwt500.llb/YKWT500 Configure Update Rate.vi"/>
			<Item Name="YKWT500 Configure Voltage.vi" Type="VI" URL="../../Yokogawa WT500/LLBs/ykwt500.llb/YKWT500 Configure Voltage.vi"/>
			<Item Name="YKWT500 Configure Wiring.vi" Type="VI" URL="../../Yokogawa WT500/LLBs/ykwt500.llb/YKWT500 Configure Wiring.vi"/>
			<Item Name="YKWT500 Error Query.vi" Type="VI" URL="../../Yokogawa WT500/LLBs/ykwt500.llb/YKWT500 Error Query.vi"/>
			<Item Name="YKWT500 Fetch Numeric (List).vi" Type="VI" URL="../../Yokogawa WT500/LLBs/ykwt500.llb/YKWT500 Fetch Numeric (List).vi"/>
			<Item Name="YKWT500 Fetch Numeric (Normal).vi" Type="VI" URL="../../Yokogawa WT500/LLBs/ykwt500.llb/YKWT500 Fetch Numeric (Normal).vi"/>
			<Item Name="YKWT500 Initialize.vi" Type="VI" URL="../../Yokogawa WT500/LLBs/ykwt500.llb/YKWT500 Initialize.vi"/>
			<Item Name="YKWT500 Initiate.vi" Type="VI" URL="../../Yokogawa WT500/LLBs/ykwt500.llb/YKWT500 Initiate.vi"/>
			<Item Name="YKWT500 Query Condition Status.vi" Type="VI" URL="../../Yokogawa WT500/LLBs/ykwt500.llb/YKWT500 Query Condition Status.vi"/>
			<Item Name="YKWT500 Query Element Type.vi" Type="VI" URL="../../Yokogawa WT500/LLBs/ykwt500.llb/YKWT500 Query Element Type.vi"/>
			<Item Name="YKWT500 Read Numeric (List).vi" Type="VI" URL="../../Yokogawa WT500/LLBs/ykwt500.llb/YKWT500 Read Numeric (List).vi"/>
			<Item Name="YKWT500 Read Numeric (Normal).vi" Type="VI" URL="../../Yokogawa WT500/LLBs/ykwt500.llb/YKWT500 Read Numeric (Normal).vi"/>
			<Item Name="YKWT500 Read Numeric (Preset List).vi" Type="VI" URL="../../Yokogawa WT500/LLBs/ykwt500.llb/YKWT500 Read Numeric (Preset List).vi"/>
			<Item Name="YKWT500 Read Numeric (Preset Normal).vi" Type="VI" URL="../../Yokogawa WT500/LLBs/ykwt500.llb/YKWT500 Read Numeric (Preset Normal).vi"/>
			<Item Name="YKWT500 Read Numeric.vi" Type="VI" URL="../../Yokogawa WT500/LLBs/ykwt500.llb/YKWT500 Read Numeric.vi"/>
			<Item Name="YKWT500 Reset Integration.vi" Type="VI" URL="../../Yokogawa WT500/LLBs/ykwt500.llb/YKWT500 Reset Integration.vi"/>
			<Item Name="YKWT500 Reset.vi" Type="VI" URL="../../Yokogawa WT500/LLBs/ykwt500.llb/YKWT500 Reset.vi"/>
			<Item Name="YKWT500 Revision Query.vi" Type="VI" URL="../../Yokogawa WT500/LLBs/ykwt500.llb/YKWT500 Revision Query.vi"/>
			<Item Name="YKWT500 Start Stop Integration.vi" Type="VI" URL="../../Yokogawa WT500/LLBs/ykwt500.llb/YKWT500 Start Stop Integration.vi"/>
			<Item Name="YKWT500 Wait for Acquisition Complete.vi" Type="VI" URL="../../Yokogawa WT500/LLBs/ykwt500.llb/YKWT500 Wait for Acquisition Complete.vi"/>
		</Item>
		<Item Name="Build Specifications" Type="Build">
			<Item Name="FMA1600A Gas Meter" Type="EXE">
				<Property Name="App_copyErrors" Type="Bool">true</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{AC69D7FD-1ACE-48AD-AC76-529FC36E0E4C}</Property>
				<Property Name="App_INI_GUID" Type="Str">{44A0CD6E-E1F7-4047-98D0-EF96E2A8C55D}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{01F2AA67-E6E4-4AF2-9B25-B10660D49CEC}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">FMA1600A Gas Meter</Property>
				<Property Name="Bld_excludeInlineSubVIs" Type="Bool">true</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../builds/NI_AB_PROJECTNAME/FMA1600A Gas Meter</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToCommon</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{9CD01ED7-46C8-45B1-9880-4504CB44A600}</Property>
				<Property Name="Bld_version.build" Type="Int">6</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">FMA1600A Gas Meter.exe</Property>
				<Property Name="Destination[0].path" Type="Path">../builds/NI_AB_PROJECTNAME/FMA1600A Gas Meter/FMA1600A Gas Meter.exe</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../builds/NI_AB_PROJECTNAME/FMA1600A Gas Meter/data</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Source[0].itemID" Type="Str">{630ED9B8-5B74-4C22-8612-1DD185465BA1}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/FMA1600A Main.vi</Property>
				<Property Name="Source[1].properties[0].type" Type="Str">Run when opened</Property>
				<Property Name="Source[1].properties[0].value" Type="Bool">false</Property>
				<Property Name="Source[1].propertiesCount" Type="Int">1</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="Source[2].Container.applyProperties" Type="Bool">true</Property>
				<Property Name="Source[2].Container.depDestIndex" Type="Int">0</Property>
				<Property Name="Source[2].itemID" Type="Ref">/My Computer/Documentation</Property>
				<Property Name="Source[2].properties[0].type" Type="Str">Run when opened</Property>
				<Property Name="Source[2].properties[0].value" Type="Bool">false</Property>
				<Property Name="Source[2].propertiesCount" Type="Int">1</Property>
				<Property Name="Source[2].type" Type="Str">Container</Property>
				<Property Name="SourceCount" Type="Int">3</Property>
				<Property Name="TgtF_companyName" Type="Str">General Electric</Property>
				<Property Name="TgtF_enableDebugging" Type="Bool">true</Property>
				<Property Name="TgtF_fileDescription" Type="Str">FMA1600A Gas Meter</Property>
				<Property Name="TgtF_internalName" Type="Str">FMA1600A Gas Meter</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2016 General Electric</Property>
				<Property Name="TgtF_productName" Type="Str">FMA1600A Gas Meter</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{F020673C-98CD-4BFB-8DDF-E5FA891B5AE9}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">FMA1600A Gas Meter.exe</Property>
			</Item>
		</Item>
	</Item>
</Project>
