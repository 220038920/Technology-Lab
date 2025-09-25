<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="23008000">
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
		<Item Name="Viasala Indigo 520" Type="Folder" URL="..">
			<Property Name="NI.DISK" Type="Bool">true</Property>
		</Item>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="Add State(s) to Queue__jki_lib_state_machine.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/State Machine/_JKI_lib_State_Machine.llb/Add State(s) to Queue__jki_lib_state_machine.vi"/>
				<Item Name="API Main.lvlib" Type="Library" URL="/&lt;vilib&gt;/NI/Modbus Library/API/Wrapper/API Main.lvlib"/>
				<Item Name="ASCII Data Unit.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/Modbus Library/Transmission Data Unit/ASCII/ASCII Data Unit.lvclass"/>
				<Item Name="Bits to Bytes.vi" Type="VI" URL="/&lt;vilib&gt;/NI/Modbus Library/Utility/Bits to Bytes.vi"/>
				<Item Name="BuildHelpPath.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/BuildHelpPath.vi"/>
				<Item Name="Bytes to Bits.vi" Type="VI" URL="/&lt;vilib&gt;/NI/Modbus Library/Utility/Bytes to Bits.vi"/>
				<Item Name="Bytes to U16s.vi" Type="VI" URL="/&lt;vilib&gt;/NI/Modbus Library/Utility/Bytes to U16s.vi"/>
				<Item Name="Check for Equality.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/WDTOps.llb/Check for Equality.vi"/>
				<Item Name="Check Special Tags.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Check Special Tags.vi"/>
				<Item Name="Clear Errors.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Clear Errors.vi"/>
				<Item Name="Convert property node font to graphics font.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Convert property node font to graphics font.vi"/>
				<Item Name="Details Display Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Details Display Dialog.vi"/>
				<Item Name="Device Data Model.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/Modbus Library/Data Model/Device Data Model.lvclass"/>
				<Item Name="DialogType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogType.ctl"/>
				<Item Name="DialogTypeEnum.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogTypeEnum.ctl"/>
				<Item Name="DU64_U32SubtractWithBorrow.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/TSOps.llb/DU64_U32SubtractWithBorrow.vi"/>
				<Item Name="Dynamic To Waveform Array.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/transition.llb/Dynamic To Waveform Array.vi"/>
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
				<Item Name="Error Code Database.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Code Database.vi"/>
				<Item Name="ErrWarn.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/ErrWarn.ctl"/>
				<Item Name="eventvkey.ctl" Type="VI" URL="/&lt;vilib&gt;/event_ctls.llb/eventvkey.ctl"/>
				<Item Name="ex_CorrectErrorChain.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/ex_CorrectErrorChain.vi"/>
				<Item Name="ex_GetAllExpressAttribs.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/transition.llb/ex_GetAllExpressAttribs.vi"/>
				<Item Name="ex_Modify Signal Name.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/ex_Modify Signal Name.vi"/>
				<Item Name="ex_Modify Signals Names.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/ex_Modify Signals Names.vi"/>
				<Item Name="ex_SmoothingDesign.vi" Type="VI" URL="/&lt;vilib&gt;/express/express analysis/FilterBlock.llb/ex_SmoothingDesign.vi"/>
				<Item Name="ex_WaveformAttribs.ctl" Type="VI" URL="/&lt;vilib&gt;/express/express shared/transition.llb/ex_WaveformAttribs.ctl"/>
				<Item Name="Express Waveform Components.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/transition.llb/Express Waveform Components.vi"/>
				<Item Name="Find Tag.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Find Tag.vi"/>
				<Item Name="Format Message String.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Format Message String.vi"/>
				<Item Name="General Error Handler Core CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler Core CORE.vi"/>
				<Item Name="General Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler.vi"/>
				<Item Name="Generate UUID.vi" Type="VI" URL="/&lt;vilib&gt;/NI/Modbus Library/Utility/Generate UUID.vi"/>
				<Item Name="Get String Text Bounds.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Get String Text Bounds.vi"/>
				<Item Name="Get Text Rect.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Get Text Rect.vi"/>
				<Item Name="GetHelpDir.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetHelpDir.vi"/>
				<Item Name="GetRTHostConnectedProp.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetRTHostConnectedProp.vi"/>
				<Item Name="I128 Timestamp.ctl" Type="VI" URL="/&lt;vilib&gt;/Waveform/TSOps.llb/I128 Timestamp.ctl"/>
				<Item Name="IP Data Unit.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/Modbus Library/Transmission Data Unit/IP/IP Data Unit.lvclass"/>
				<Item Name="Longest Line Length in Pixels.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Longest Line Length in Pixels.vi"/>
				<Item Name="LVBoundsTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVBoundsTypeDef.ctl"/>
				<Item Name="LVRectTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVRectTypeDef.ctl"/>
				<Item Name="Master Function Definition.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/Modbus Library/Master Function Definition/Master Function Definition.lvclass"/>
				<Item Name="Modbus API.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/Modbus Library/API/Modbus API.lvclass"/>
				<Item Name="Modbus Data Unit.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/Modbus Library/Modbus Data Unit/Modbus Data Unit.lvclass"/>
				<Item Name="Modbus Master.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/Modbus Library/API/Master/Modbus Master.lvclass"/>
				<Item Name="Modbus Slave.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/Modbus Library/API/Slave/Modbus Slave.lvclass"/>
				<Item Name="Network Master.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/Modbus Library/Network Protocol/Network Master/Network Master.lvclass"/>
				<Item Name="Network Protocol.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/Modbus Library/Network Protocol/Network Protocol.lvclass"/>
				<Item Name="Network Slave.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/Modbus Library/Network Protocol/Network Slave/Network Slave.lvclass"/>
				<Item Name="NI_AALBase.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/NI_AALBase.lvlib"/>
				<Item Name="NI_AALPro.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/NI_AALPro.lvlib"/>
				<Item Name="NI_MABase.lvlib" Type="Library" URL="/&lt;vilib&gt;/measure/NI_MABase.lvlib"/>
				<Item Name="NI_MAPro.lvlib" Type="Library" URL="/&lt;vilib&gt;/measure/NI_MAPro.lvlib"/>
				<Item Name="Not Found Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Not Found Dialog.vi"/>
				<Item Name="Parse State Queue__JKI_lib_State_Machine.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/State Machine/_JKI_lib_State_Machine.llb/Parse State Queue__JKI_lib_State_Machine.vi"/>
				<Item Name="RTU Data Unit.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/Modbus Library/Transmission Data Unit/RTU/RTU Data Unit.lvclass"/>
				<Item Name="Search and Replace Pattern.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Search and Replace Pattern.vi"/>
				<Item Name="Serial Data Unit.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/Modbus Library/Transmission Data Unit/Serial Interface/Serial Data Unit.lvclass"/>
				<Item Name="Serial Master.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/Modbus Library/Network Protocol/Network Master/Serial/Serial Master.lvclass"/>
				<Item Name="Serial Shared Components.lvlib" Type="Library" URL="/&lt;vilib&gt;/NI/Modbus Library/Network Protocol/Serial Shared Components/Serial Shared Components.lvlib"/>
				<Item Name="Serial Slave.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/Modbus Library/Network Protocol/Network Slave/Serial/Serial Slave.lvclass"/>
				<Item Name="Set Bold Text.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set Bold Text.vi"/>
				<Item Name="Set Busy.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/cursorutil.llb/Set Busy.vi"/>
				<Item Name="Set Cursor (Cursor ID).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/cursorutil.llb/Set Cursor (Cursor ID).vi"/>
				<Item Name="Set Cursor (Icon Pict).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/cursorutil.llb/Set Cursor (Icon Pict).vi"/>
				<Item Name="Set Cursor.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/cursorutil.llb/Set Cursor.vi"/>
				<Item Name="Set String Value.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set String Value.vi"/>
				<Item Name="Standard Data Model.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/Modbus Library/Data Model/Standard Data Model/Standard Data Model.lvclass"/>
				<Item Name="subFilter.vi" Type="VI" URL="/&lt;vilib&gt;/express/express analysis/FilterBlock.llb/subFilter.vi"/>
				<Item Name="TagReturnType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/TagReturnType.ctl"/>
				<Item Name="TCP Master.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/Modbus Library/Network Protocol/Network Master/TCP/TCP Master.lvclass"/>
				<Item Name="TCP Shared Components.lvlib" Type="Library" URL="/&lt;vilib&gt;/NI/Modbus Library/Network Protocol/TCP Shared Components/TCP Shared Components.lvlib"/>
				<Item Name="TCP Slave.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/Modbus Library/Network Protocol/Network Slave/TCP/TCP Slave.lvclass"/>
				<Item Name="Three Button Dialog CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog CORE.vi"/>
				<Item Name="Three Button Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog.vi"/>
				<Item Name="Timestamp Subtract.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/TSOps.llb/Timestamp Subtract.vi"/>
				<Item Name="Transmission Data Unit.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/Modbus Library/Transmission Data Unit/Transmission Data Unit.lvclass"/>
				<Item Name="Trim Whitespace One-Sided.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Trim Whitespace One-Sided.vi"/>
				<Item Name="Trim Whitespace.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Trim Whitespace.vi"/>
				<Item Name="U16s to Bytes.vi" Type="VI" URL="/&lt;vilib&gt;/NI/Modbus Library/Utility/U16s to Bytes.vi"/>
				<Item Name="Unset Busy.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/cursorutil.llb/Unset Busy.vi"/>
				<Item Name="VISA Flush IO Buffer Mask.ctl" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Flush IO Buffer Mask.ctl"/>
				<Item Name="whitespace.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/whitespace.ctl"/>
			</Item>
			<Item Name="lvanlys.dll" Type="Document" URL="/&lt;resource&gt;/lvanlys.dll"/>
			<Item Name="UTILITY Modbus 32bit Number Combine.vi" Type="VI" URL="../../../Trunk/Utility/UTILITY Modbus 32bit Number Combine.vi"/>
		</Item>
		<Item Name="Build Specifications" Type="Build">
			<Item Name="TESynC GUI" Type="EXE">
				<Property Name="App_copyErrors" Type="Bool">true</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{A464AA28-3E99-4841-BFF9-B1BB222EB98F}</Property>
				<Property Name="App_INI_GUID" Type="Str">{2E1AF3AE-B7ED-470A-A4D1-2029FCC78AD4}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
				<Property Name="App_serverType" Type="Int">1</Property>
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{7F50ED3E-1DB1-4E63-9F6E-4CEFECCED157}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">TESynC GUI</Property>
				<Property Name="Bld_excludeInlineSubVIs" Type="Bool">true</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../builds/NI_AB_PROJECTNAME/TESynC GUI</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToCommon</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{4F497E1D-A8C1-462D-8F2B-9FC43E52AEBF}</Property>
				<Property Name="Bld_version.build" Type="Int">2</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">TESynC_GUI.exe</Property>
				<Property Name="Destination[0].path" Type="Path">../builds/NI_AB_PROJECTNAME/TESynC GUI/TESynC_GUI.exe</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../builds/NI_AB_PROJECTNAME/TESynC GUI/data</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Source[0].itemID" Type="Str">{AB322057-F6BF-4E2C-A83B-3DBD1DBC4053}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/Tidal Engineering/TESynC_1_1.llb/TESynC GUI.vi</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="SourceCount" Type="Int">2</Property>
				<Property Name="TgtF_companyName" Type="Str">GE Appliances, a Haier Company</Property>
				<Property Name="TgtF_enableDebugging" Type="Bool">true</Property>
				<Property Name="TgtF_fileDescription" Type="Str">TESynC GUI</Property>
				<Property Name="TgtF_internalName" Type="Str">TESynC GUI</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2022 GE Appliances, a Haier Company</Property>
				<Property Name="TgtF_productName" Type="Str">TESynC GUI</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{41A22856-0A31-4533-AD23-C8501D8B8785}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">TESynC_GUI.exe</Property>
				<Property Name="TgtF_versionIndependent" Type="Bool">true</Property>
			</Item>
			<Item Name="TESynC Initialize" Type="EXE">
				<Property Name="App_copyErrors" Type="Bool">true</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{FE80C894-FA2F-4FC1-9BE3-27A23ADE3529}</Property>
				<Property Name="App_INI_GUID" Type="Str">{120DED56-B65E-4F68-987A-B60D48296F80}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
				<Property Name="App_serverType" Type="Int">0</Property>
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{6FA0ACFB-0DE9-4AA1-A59E-DCAD4F16ECD3}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">TESynC Initialize</Property>
				<Property Name="Bld_excludeInlineSubVIs" Type="Bool">true</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../builds/NI_AB_PROJECTNAME/TESynC Initialize</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToCommon</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{8433EA6D-583B-4932-975B-A98F24D7E3A2}</Property>
				<Property Name="Bld_version.build" Type="Int">1</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">Application.exe</Property>
				<Property Name="Destination[0].path" Type="Path">../builds/NI_AB_PROJECTNAME/TESynC Initialize/Application.exe</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../builds/NI_AB_PROJECTNAME/TESynC Initialize/data</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Source[0].itemID" Type="Str">{687AE646-20FE-449D-AF46-1AF853463AB0}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/Tidal Engineering/TESynC_1_1.llb/TESynC Initialize.vi</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="SourceCount" Type="Int">2</Property>
				<Property Name="TgtF_companyName" Type="Str">GE Appliances, a Haier Company</Property>
				<Property Name="TgtF_enableDebugging" Type="Bool">true</Property>
				<Property Name="TgtF_fileDescription" Type="Str">TESynC Initialize</Property>
				<Property Name="TgtF_internalName" Type="Str">TESynC Initialize</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2024 GE Appliances, a Haier Company</Property>
				<Property Name="TgtF_productName" Type="Str">TESynC Initialize</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{4E033F5E-8C05-4D7A-9319-14FB224D9AA1}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">Application.exe</Property>
				<Property Name="TgtF_versionIndependent" Type="Bool">true</Property>
			</Item>
			<Item Name="Viasala Indigo 520 Modbus Example" Type="EXE">
				<Property Name="App_copyErrors" Type="Bool">true</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{50631A73-7751-45D3-88E8-B0D2470828FE}</Property>
				<Property Name="App_INI_GUID" Type="Str">{0C39C6F2-0E5C-490A-A74C-8DB3B9BA4F92}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
				<Property Name="App_serverType" Type="Int">0</Property>
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{CD4BE6C2-DA53-4B28-B0CE-D09806CA1BD0}</Property>
				<Property Name="Bld_buildSpecDescription" Type="Str">1.0.0.1 - Adding IP address to the read statement. This was a bug</Property>
				<Property Name="Bld_buildSpecName" Type="Str">Viasala Indigo 520 Modbus Example</Property>
				<Property Name="Bld_excludeInlineSubVIs" Type="Bool">true</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../builds/NI_AB_PROJECTNAME/Viasala Indigo 520 Modbus Example</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToCommon</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{329F50E0-D325-48A1-B677-FD2E9029A48E}</Property>
				<Property Name="Bld_version.build" Type="Int">3</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">Viasala Modbus Example.exe</Property>
				<Property Name="Destination[0].path" Type="Path">../builds/NI_AB_PROJECTNAME/Viasala Indigo 520 Modbus Example/Viasala Modbus Example.exe</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../builds/NI_AB_PROJECTNAME/Viasala Indigo 520 Modbus Example/data</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Exe_actXinfo_enumCLSID[0]" Type="Str">{6478E89B-3909-459E-BBCF-3BE4828AA1F1}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[1]" Type="Str">{86620ABA-D627-4601-811B-CA51EDF91DAB}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[10]" Type="Str">{6CF81EEA-BB8F-4238-94C6-A017CDE0ECA4}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[11]" Type="Str">{4BC478CD-4657-45D6-8A85-A74356A597C3}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[12]" Type="Str">{B9F7DA51-1050-4FA9-A643-A2D58E908A6D}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[13]" Type="Str">{953B7038-99B9-488F-A1F6-246205E97705}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[14]" Type="Str">{8A789BEA-B32D-42AD-81DF-AF6BD69FD576}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[15]" Type="Str">{4E46E12B-2AD7-4036-97DB-DC1DE339AEFB}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[16]" Type="Str">{2D8D4076-B804-442F-B93B-3AE871F50314}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[2]" Type="Str">{97789177-E90F-40B4-A3F4-544076FEF6F4}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[3]" Type="Str">{A1CAD0D4-1B66-4A08-B628-C54F550C214B}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[4]" Type="Str">{32070E0A-A383-4372-8545-1C0D345E4ECC}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[5]" Type="Str">{2F8D147E-DC45-4F7A-A03E-27D5B7077F53}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[6]" Type="Str">{B4C29058-5758-42B2-8D8C-D2FFC3391C3C}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[7]" Type="Str">{9021D4EB-3AB9-45AF-AEA5-15E2DE3135CF}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[8]" Type="Str">{1080D107-F671-43B5-8851-C3E43ECB10D6}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[9]" Type="Str">{3AF8583E-ABB1-4108-BC67-CF94973E13FC}</Property>
				<Property Name="Exe_actXinfo_enumCLSIDsCount" Type="Int">17</Property>
				<Property Name="Exe_actXinfo_majorVersion" Type="Int">5</Property>
				<Property Name="Exe_actXinfo_minorVersion" Type="Int">5</Property>
				<Property Name="Exe_actXinfo_objCLSID[0]" Type="Str">{4B573CCD-32A3-4750-BA80-3A7453091E81}</Property>
				<Property Name="Exe_actXinfo_objCLSID[1]" Type="Str">{4FD3D928-45E3-4C91-B06F-9889D9EE9488}</Property>
				<Property Name="Exe_actXinfo_objCLSID[10]" Type="Str">{A63E1036-D41F-4D96-8D47-040D717B7C19}</Property>
				<Property Name="Exe_actXinfo_objCLSID[11]" Type="Str">{37F5862C-3C6A-4E77-B7A4-71F4B51234E8}</Property>
				<Property Name="Exe_actXinfo_objCLSID[12]" Type="Str">{3BA916D7-AA61-4D6D-AADB-184DA4B2E738}</Property>
				<Property Name="Exe_actXinfo_objCLSID[13]" Type="Str">{4DCF0FF1-EE7C-4FC8-980E-B80C7E7A6FAA}</Property>
				<Property Name="Exe_actXinfo_objCLSID[2]" Type="Str">{A3ADDD72-1A83-4789-A3C6-36478C256E37}</Property>
				<Property Name="Exe_actXinfo_objCLSID[3]" Type="Str">{04AEDC64-3DBA-4058-A3D6-6F8B431711A1}</Property>
				<Property Name="Exe_actXinfo_objCLSID[4]" Type="Str">{A612F3AA-6337-4C9D-9C7B-340C18EA60F0}</Property>
				<Property Name="Exe_actXinfo_objCLSID[5]" Type="Str">{2FB32114-11DC-420A-8D5E-872DC7AF2751}</Property>
				<Property Name="Exe_actXinfo_objCLSID[6]" Type="Str">{67C4AF6A-7929-49BF-B15A-8EE299381F73}</Property>
				<Property Name="Exe_actXinfo_objCLSID[7]" Type="Str">{A19C3225-4E3C-47CE-BB61-A0E54E58B16A}</Property>
				<Property Name="Exe_actXinfo_objCLSID[8]" Type="Str">{14B51FC9-C03F-47EC-BB1D-DC61C1C7FDBF}</Property>
				<Property Name="Exe_actXinfo_objCLSID[9]" Type="Str">{CEFA4EC7-8A9D-4984-925D-F8886A9CE05C}</Property>
				<Property Name="Exe_actXinfo_objCLSIDsCount" Type="Int">14</Property>
				<Property Name="Exe_actXinfo_progIDPrefix" Type="Str">ViasalaModbusExample</Property>
				<Property Name="Exe_actXServerName" Type="Str">ViasalaModbusExample</Property>
				<Property Name="Exe_actXServerNameGUID" Type="Str">{6184E2AA-B3AD-4705-B9B3-07E75E07A88C}</Property>
				<Property Name="Source[0].itemID" Type="Str">{267E39CB-B2D3-407A-B45C-30E96982DEE3}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/Viasala Indigo 520/Viasala Indigo 520 Modbus Example.vi</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="SourceCount" Type="Int">2</Property>
				<Property Name="TgtF_companyName" Type="Str">GE Appliances, a Haier Company</Property>
				<Property Name="TgtF_enableDebugging" Type="Bool">true</Property>
				<Property Name="TgtF_fileDescription" Type="Str">Viasala Indigo 520 Modbus Example</Property>
				<Property Name="TgtF_internalName" Type="Str">Viasala Indigo 520 Modbus Example</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2024 GE Appliances, a Haier Company</Property>
				<Property Name="TgtF_productName" Type="Str">Viasala Indigo 520 Modbus Example</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{2F22358E-F9D8-4B5A-94C4-3EFB64FEAFD2}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">Viasala Modbus Example.exe</Property>
				<Property Name="TgtF_versionIndependent" Type="Bool">true</Property>
			</Item>
		</Item>
	</Item>
</Project>
