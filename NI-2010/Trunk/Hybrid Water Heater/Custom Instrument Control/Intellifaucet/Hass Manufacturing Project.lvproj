<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="19008000">
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
		<Item Name="Instruments" Type="Folder">
			<Item Name="Yokogawa MW100" Type="Folder">
				<Item Name="Type Definitions" Type="Folder">
					<Item Name="HEWH MW100 Channel Numbers.ctl" Type="VI" URL="../../MW100/Type Definitions/HEWH MW100 Channel Numbers.ctl"/>
					<Item Name="HEWH Solenoid Valve Status.ctl" Type="VI" URL="../../MW100/Type Definitions/HEWH Solenoid Valve Status.ctl"/>
				</Item>
				<Item Name="HEWH Reset MW100.vi" Type="VI" URL="../../MW100/HEWH Reset MW100.vi"/>
				<Item Name="MW100 General ReBoot.vi" Type="VI" URL="../../MW100/MW100 General ReBoot.vi"/>
				<Item Name="MW100 General Start.vi" Type="VI" URL="../../MW100/MW100 General Start.vi"/>
				<Item Name="YKMW100 Clear Error Display.vi" Type="VI" URL="../../../../../Drivers/Yokogawa MW100/Main/YKMW100 Clear Error Display.vi"/>
				<Item Name="YKMW100 Clear Output Buffer.vi" Type="VI" URL="../../../../../Drivers/Yokogawa MW100/Main/YKMW100 Clear Output Buffer.vi"/>
				<Item Name="YKMW100 Close.vi" Type="VI" URL="../../../../../Drivers/Yokogawa MW100/YKMW100.llb/YKMW100 Close.vi"/>
				<Item Name="YKMW100 Computation Control.vi" Type="VI" URL="../../../../../Drivers/Yokogawa MW100/Main/YKMW100 Computation Control.vi"/>
				<Item Name="YKMW100 Convert Response Type.vi" Type="VI" URL="../../../../../Drivers/Yokogawa MW100/YKMW100U.llb/YKMW100 Convert Response Type.vi"/>
				<Item Name="YKMW100 Initialize.vi" Type="VI" URL="../../../../../Drivers/Yokogawa MW100/YKMW100.llb/YKMW100 Initialize.vi"/>
				<Item Name="YKMW100 Login.vi" Type="VI" URL="../../../../../Drivers/Yokogawa MW100/YKMW100U.llb/YKMW100 Login.vi"/>
				<Item Name="YKMW100 Logout.vi" Type="VI" URL="../../../../../Drivers/Yokogawa MW100/YKMW100U.llb/YKMW100 Logout.vi"/>
				<Item Name="YKMW100 Mode Control.vi" Type="VI" URL="../../../../../Drivers/Yokogawa MW100/Main/YKMW100 Mode Control.vi"/>
				<Item Name="YKMW100 Output AO.vi" Type="VI" URL="../../../../../Drivers/Yokogawa MW100/YKMW100.llb/YKMW100 Output AO.vi"/>
				<Item Name="YKMW100 Read Data.vi" Type="VI" URL="../../../../../Drivers/Yokogawa MW100/YKMW100U.llb/YKMW100 Read Data.vi"/>
				<Item Name="YKMW100 Receive String.vi" Type="VI" URL="../../../../../Drivers/Yokogawa MW100/YKMW100.llb/YKMW100 Receive String.vi"/>
				<Item Name="YKMW100 Reset.vi" Type="VI" URL="../../../../../Drivers/Yokogawa MW100/YKMW100.llb/YKMW100 Reset.vi"/>
				<Item Name="YKMW100 Response Check.vi" Type="VI" URL="../../../../../Drivers/Yokogawa MW100/YKMW100.llb/YKMW100 Response Check.vi"/>
				<Item Name="YKMW100 Send Message and Log.vi" Type="VI" URL="../../../../../Drivers/Yokogawa MW100/Main/YKMW100 Send Message and Log.vi"/>
				<Item Name="YKMW100 Send Message.vi" Type="VI" URL="../../../../../Drivers/Yokogawa MW100/YKMW100.llb/YKMW100 Send Message.vi"/>
				<Item Name="YKMW100 Set Command Error.vi" Type="VI" URL="../../../../../Drivers/Yokogawa MW100/YKMW100U.llb/YKMW100 Set Command Error.vi"/>
			</Item>
		</Item>
		<Item Name="Main" Type="Folder" URL="../Main">
			<Property Name="NI.DISK" Type="Bool">true</Property>
		</Item>
		<Item Name="SubVIs" Type="Folder" URL="../SubVIs">
			<Property Name="NI.DISK" Type="Bool">true</Property>
		</Item>
		<Item Name="Type Definitions" Type="Folder" URL="../Type Definitions">
			<Property Name="NI.DISK" Type="Bool">true</Property>
		</Item>
		<Item Name="UTILITY" Type="Folder">
			<Item Name="UTILITY Aquire Semaphore.vi" Type="VI" URL="../../../../Utility/UTILITY Aquire Semaphore.vi"/>
			<Item Name="UTILITY Array Get 1D Column From 2D.vi" Type="VI" URL="../../../../Utility/UTILITY Array Get 1D Column From 2D.vi"/>
			<Item Name="UTILITY Common PID Adjuster.vi" Type="VI" URL="../../../../Utility/UTILITY Common PID Adjuster.vi"/>
			<Item Name="UTILITY Delay mS.vi" Type="VI" URL="../../../../Utility/UTILITY Delay mS.vi"/>
			<Item Name="UTILITY Fuzzy Logic Scale.vi" Type="VI" URL="../../../../Utility/UTILITY Fuzzy Logic Scale.vi"/>
			<Item Name="UTILITY Local.vi" Type="VI" URL="../../../../Utility/UTILITY Local.vi"/>
			<Item Name="UTILITY PID Correction Loop Check.vi" Type="VI" URL="../../../../Utility/UTILITY PID Correction Loop Check.vi"/>
			<Item Name="UTILITY Release Semaphore.vi" Type="VI" URL="../../../../Utility/UTILITY Release Semaphore.vi"/>
			<Item Name="UTILITY Simple PID.vi" Type="VI" URL="../../../../Utility/UTILITY Simple PID.vi"/>
		</Item>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="Acquire Semaphore.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/Acquire Semaphore.vi"/>
				<Item Name="Add State(s) to Queue__jki_lib_state_machine.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/State Machine/_JKI_lib_State_Machine.llb/Add State(s) to Queue__jki_lib_state_machine.vi"/>
				<Item Name="BuildHelpPath.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/BuildHelpPath.vi"/>
				<Item Name="Check Special Tags.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Check Special Tags.vi"/>
				<Item Name="Clear Errors.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Clear Errors.vi"/>
				<Item Name="Convert property node font to graphics font.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Convert property node font to graphics font.vi"/>
				<Item Name="Details Display Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Details Display Dialog.vi"/>
				<Item Name="DialogType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogType.ctl"/>
				<Item Name="DialogTypeEnum.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogTypeEnum.ctl"/>
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
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
				<Item Name="lvpidtkt.dll" Type="Document" URL="/&lt;vilib&gt;/addons/control/pid/lvpidtkt.dll"/>
				<Item Name="LVRectTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVRectTypeDef.ctl"/>
				<Item Name="NI_AALPro.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/NI_AALPro.lvlib"/>
				<Item Name="NI_Gmath.lvlib" Type="Library" URL="/&lt;vilib&gt;/gmath/NI_Gmath.lvlib"/>
				<Item Name="NI_PID__prctrl compat.lvlib" Type="Library" URL="/&lt;vilib&gt;/addons/control/pid/NI_PID__prctrl compat.lvlib"/>
				<Item Name="NI_PID_pid.lvlib" Type="Library" URL="/&lt;vilib&gt;/addons/control/pid/NI_PID_pid.lvlib"/>
				<Item Name="Not A Semaphore.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/Not A Semaphore.vi"/>
				<Item Name="Not Found Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Not Found Dialog.vi"/>
				<Item Name="Parse State Queue__JKI_lib_State_Machine.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/State Machine/_JKI_lib_State_Machine.llb/Parse State Queue__JKI_lib_State_Machine.vi"/>
				<Item Name="Release Semaphore.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/Release Semaphore.vi"/>
				<Item Name="Search and Replace Pattern.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Search and Replace Pattern.vi"/>
				<Item Name="Semaphore RefNum" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/Semaphore RefNum"/>
				<Item Name="Semaphore Refnum Core.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/Semaphore Refnum Core.ctl"/>
				<Item Name="Set Bold Text.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set Bold Text.vi"/>
				<Item Name="Set Busy.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/cursorutil.llb/Set Busy.vi"/>
				<Item Name="Set Cursor (Cursor ID).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/cursorutil.llb/Set Cursor (Cursor ID).vi"/>
				<Item Name="Set Cursor (Icon Pict).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/cursorutil.llb/Set Cursor (Icon Pict).vi"/>
				<Item Name="Set Cursor.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/cursorutil.llb/Set Cursor.vi"/>
				<Item Name="Set String Value.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set String Value.vi"/>
				<Item Name="Space Constant.vi" Type="VI" URL="/&lt;vilib&gt;/dlg_ctls.llb/Space Constant.vi"/>
				<Item Name="TagReturnType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/TagReturnType.ctl"/>
				<Item Name="Three Button Dialog CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog CORE.vi"/>
				<Item Name="Three Button Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog.vi"/>
				<Item Name="Trim Whitespace.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Trim Whitespace.vi"/>
				<Item Name="Unset Busy.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/cursorutil.llb/Unset Busy.vi"/>
				<Item Name="whitespace.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/whitespace.ctl"/>
			</Item>
			<Item Name="Data Cluster.ctl" Type="VI" URL="../../../../../Drivers/Alicat Gas Meter Driver/Sub-VIs/Data Cluster.ctl"/>
			<Item Name="Data Frame.ctl" Type="VI" URL="../../../../../Drivers/Alicat Gas Meter Driver/Sub-VIs/Data Frame.ctl"/>
			<Item Name="DOE Test Fixture Hardware.ctl" Type="VI" URL="../../../../Washer DOE/Type Definitions/DOE Test Fixture Hardware.ctl"/>
			<Item Name="FMA1600A COM Ports.ctl" Type="VI" URL="../../../../../Drivers/Omega FMA-1600A Series Gas Flow Meter/Type Definitions/FMA1600A COM Ports.ctl"/>
			<Item Name="FMA1600A Units String.ctl" Type="VI" URL="../../../../../Drivers/Omega FMA-1600A Series Gas Flow Meter/Type Definitions/FMA1600A Units String.ctl"/>
			<Item Name="HEWH Agilent Cluster.ctl" Type="VI" URL="../../../Type Definitions/HEWH Agilent Cluster.ctl"/>
			<Item Name="HEWH Intellifaucet Temp Equation.vi" Type="VI" URL="../../../Support VIs/HEWH Intellifaucet Temp Equation.vi"/>
			<Item Name="HEWH Module 4 Relay Status.ctl" Type="VI" URL="../../MW100/Type Definitions/HEWH Module 4 Relay Status.ctl"/>
			<Item Name="HEWH Normally Closed Valve Control.ctl" Type="VI" URL="../../../Type Definitions/HEWH Normally Closed Valve Control.ctl"/>
			<Item Name="HEWH Normally Open Valve Control.ctl" Type="VI" URL="../../../Type Definitions/HEWH Normally Open Valve Control.ctl"/>
			<Item Name="HEWH Purge Draw.ctl" Type="VI" URL="../../../Type Definitions/HEWH Purge Draw.ctl"/>
			<Item Name="IND560 Configuration.ctl" Type="VI" URL="../../../../../Drivers/IND560 Scale Monitor/Type Definitions/IND560 Configuration.ctl"/>
			<Item Name="lvanlys.dll" Type="Document" URL="/&lt;resource&gt;/lvanlys.dll"/>
			<Item Name="Units of Measure.ctl" Type="VI" URL="../../../../../Drivers/Alicat Gas Meter Driver/Sub-VIs/Units of Measure.ctl"/>
			<Item Name="UTILITY Power Inputs Control.ctl" Type="VI" URL="../../../../Utility/Type Definitions/UTILITY Power Inputs Control.ctl"/>
			<Item Name="UTILITY TC Coefficients.ctl" Type="VI" URL="../../../../Utility/Type Definitions/UTILITY TC Coefficients.ctl"/>
			<Item Name="YKMW100 Determine Power Relay Status.vi" Type="VI" URL="../../../../../Drivers/Yokogawa MW100/Main/YKMW100 Determine Power Relay Status.vi"/>
			<Item Name="YKMW100 Error Message.vi" Type="VI" URL="../../../../../Drivers/Yokogawa MW100/YKMW100.llb/YKMW100 Error Message.vi"/>
			<Item Name="YKMW100 Module Filter.vi" Type="VI" URL="../../../../../Drivers/Yokogawa MW100/Main/YKMW100 Module Filter.vi"/>
			<Item Name="YKMW100 Receive String-clear buff.vi" Type="VI" URL="../../../../../Drivers/Yokogawa MW100/Main/YKMW100 Receive String-clear buff.vi"/>
			<Item Name="YKMW100 VF0 Relay Status.vi" Type="VI" URL="../../MW100/Support VIs/YKMW100 VF0 Relay Status.vi"/>
		</Item>
		<Item Name="Build Specifications" Type="Build">
			<Item Name="INTELLIFAUCET Main" Type="EXE">
				<Property Name="App_copyErrors" Type="Bool">true</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{907B13F5-5449-4BF9-BF37-2B0CF1B8BCC0}</Property>
				<Property Name="App_INI_GUID" Type="Str">{B88D9A50-80F1-4CE7-B699-80349B16EB43}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{7244BAE4-871F-45C8-A5CB-F2FA2ACF3A86}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">INTELLIFAUCET Main</Property>
				<Property Name="Bld_excludeInlineSubVIs" Type="Bool">true</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../builds/NI_AB_PROJECTNAME/INTELLIFAUCET Main</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToCommon</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{5AECE979-706B-4E56-A723-70FA34133B25}</Property>
				<Property Name="Bld_version.build" Type="Int">10</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">Intellifaucet Main.exe</Property>
				<Property Name="Destination[0].path" Type="Path">../builds/NI_AB_PROJECTNAME/INTELLIFAUCET Main/Intellifaucet Main.exe</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../builds/NI_AB_PROJECTNAME/INTELLIFAUCET Main/data</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Source[0].itemID" Type="Str">{2D27A19D-5F8D-44BF-958C-306BBB8FF0B7}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/Main/INTELLIFAUCET Main.vi</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="SourceCount" Type="Int">2</Property>
				<Property Name="TgtF_companyName" Type="Str">GE Appliances, a Haier Company</Property>
				<Property Name="TgtF_enableDebugging" Type="Bool">true</Property>
				<Property Name="TgtF_fileDescription" Type="Str">INTELLIFAUCET Main</Property>
				<Property Name="TgtF_internalName" Type="Str">INTELLIFAUCET Main</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2021 GE Appliances, a Haier Company</Property>
				<Property Name="TgtF_productName" Type="Str">INTELLIFAUCET Main</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{772D2FCE-2C62-4334-ADEC-8F7E2FD9FBED}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">Intellifaucet Main.exe</Property>
				<Property Name="TgtF_versionIndependent" Type="Bool">true</Property>
			</Item>
		</Item>
	</Item>
</Project>
