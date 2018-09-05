<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="14008000">
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
		<Item Name="Common" Type="Folder">
			<Item Name="Custom Controls" Type="Folder">
				<Item Name="Pass-Fail.ctl" Type="VI" URL="../../Custom Controls/Pass-Fail.ctl"/>
			</Item>
			<Item Name="GExplorer Support" Type="Folder">
				<Item Name="subVIs" Type="Folder">
					<Item Name="GExplorer_Queue_GEA2.vi" Type="VI" URL="../../GExplorer Support/subVIs/GExplorer_Queue_GEA2.vi"/>
				</Item>
				<Item Name="typedefs" Type="Folder">
					<Item Name="GExplorer_Data_Cluster.ctl" Type="VI" URL="../../GExplorer Support/typedefs/GExplorer_Data_Cluster.ctl"/>
				</Item>
			</Item>
			<Item Name="String Manipulation" Type="Folder">
				<Item Name="Reverse_Message_Hex_String.vi" Type="VI" URL="../../String Manipulation/Reverse_Message_Hex_String.vi"/>
				<Item Name="String Remove All Spaces.vi" Type="VI" URL="../../String Manipulation/String Remove All Spaces.vi"/>
			</Item>
		</Item>
		<Item Name="GEA2 Script" Type="Folder" URL="..">
			<Property Name="NI.DISK" Type="Bool">true</Property>
		</Item>
		<Item Name="PC Tools .NET" Type="Folder"/>
		<Item Name="LabVIEW_GEA2_Toolkit.lvlibp" Type="LVLibp" URL="../../LabVIEW GEA2 Toolkit/LabVIEW_GEA2_Toolkit.lvlibp">
			<Item Name="advanced" Type="Folder">
				<Item Name="GEA2 Initialize Multiple Devices.vi" Type="VI" URL="../../LabVIEW GEA2 Toolkit/LabVIEW_GEA2_Toolkit.lvlibp/advanced/GEA2 Initialize Multiple Devices.vi"/>
				<Item Name="GEA2 Message Event Handler.vi" Type="VI" URL="../../LabVIEW GEA2 Toolkit/LabVIEW_GEA2_Toolkit.lvlibp/advanced/GEA2 Message Event Handler.vi"/>
				<Item Name="GEA2 Read Message with Events.vi" Type="VI" URL="../../LabVIEW GEA2 Toolkit/LabVIEW_GEA2_Toolkit.lvlibp/advanced/GEA2 Read Message with Events.vi"/>
				<Item Name="GEA2 Register for Events.vi" Type="VI" URL="../../LabVIEW GEA2 Toolkit/LabVIEW_GEA2_Toolkit.lvlibp/advanced/GEA2 Register for Events.vi"/>
				<Item Name="GEA2 Register for Multiple Events.vi" Type="VI" URL="../../LabVIEW GEA2 Toolkit/LabVIEW_GEA2_Toolkit.lvlibp/advanced/GEA2 Register for Multiple Events.vi"/>
			</Item>
			<Item Name="core" Type="Folder">
				<Item Name="GEA2 Flash APL.vi" Type="VI" URL="../../LabVIEW GEA2 Toolkit/LabVIEW_GEA2_Toolkit.lvlibp/core/GEA2 Flash APL.vi"/>
				<Item Name="GEA2 Initialize.vi" Type="VI" URL="../../LabVIEW GEA2 Toolkit/LabVIEW_GEA2_Toolkit.lvlibp/core/GEA2 Initialize.vi"/>
				<Item Name="GEA2 Read and Update ERD.vi" Type="VI" URL="../../LabVIEW GEA2 Toolkit/LabVIEW_GEA2_Toolkit.lvlibp/core/GEA2 Read and Update ERD.vi"/>
				<Item Name="GEA2 Read and Update Message.vi" Type="VI" URL="../../LabVIEW GEA2 Toolkit/LabVIEW_GEA2_Toolkit.lvlibp/core/GEA2 Read and Update Message.vi"/>
				<Item Name="GEA2 Read ERD Multiple Messages.vi" Type="VI" URL="../../LabVIEW GEA2 Toolkit/LabVIEW_GEA2_Toolkit.lvlibp/core/GEA2 Read ERD Multiple Messages.vi"/>
				<Item Name="GEA2 Read ERD.vi" Type="VI" URL="../../LabVIEW GEA2 Toolkit/LabVIEW_GEA2_Toolkit.lvlibp/core/GEA2 Read ERD.vi"/>
				<Item Name="GEA2 Read Message.vi" Type="VI" URL="../../LabVIEW GEA2 Toolkit/LabVIEW_GEA2_Toolkit.lvlibp/core/GEA2 Read Message.vi"/>
				<Item Name="GEA2 Register Source Address.vi" Type="VI" URL="../../LabVIEW GEA2 Toolkit/LabVIEW_GEA2_Toolkit.lvlibp/core/GEA2 Register Source Address.vi"/>
				<Item Name="GEA2 Send and Receive Message.vi" Type="VI" URL="../../LabVIEW GEA2 Toolkit/LabVIEW_GEA2_Toolkit.lvlibp/core/GEA2 Send and Receive Message.vi"/>
				<Item Name="GEA2 Send Message.vi" Type="VI" URL="../../LabVIEW GEA2 Toolkit/LabVIEW_GEA2_Toolkit.lvlibp/core/GEA2 Send Message.vi"/>
				<Item Name="GEA2 Stop.vi" Type="VI" URL="../../LabVIEW GEA2 Toolkit/LabVIEW_GEA2_Toolkit.lvlibp/core/GEA2 Stop.vi"/>
				<Item Name="GEA2 Write ERD Multiple Messages.vi" Type="VI" URL="../../LabVIEW GEA2 Toolkit/LabVIEW_GEA2_Toolkit.lvlibp/core/GEA2 Write ERD Multiple Messages.vi"/>
				<Item Name="GEA2 Write ERD.vi" Type="VI" URL="../../LabVIEW GEA2 Toolkit/LabVIEW_GEA2_Toolkit.lvlibp/core/GEA2 Write ERD.vi"/>
			</Item>
			<Item Name="subVIs" Type="Folder">
				<Item Name="Convert Hex String to Array.vi" Type="VI" URL="../../LabVIEW GEA2 Toolkit/LabVIEW_GEA2_Toolkit.lvlibp/subVIs/Convert Hex String to Array.vi"/>
				<Item Name="Convert Read ERD List to Message.vi" Type="VI" URL="../../LabVIEW GEA2 Toolkit/LabVIEW_GEA2_Toolkit.lvlibp/subVIs/Convert Read ERD List to Message.vi"/>
				<Item Name="Convert Write ERD List to Message.vi" Type="VI" URL="../../LabVIEW GEA2 Toolkit/LabVIEW_GEA2_Toolkit.lvlibp/subVIs/Convert Write ERD List to Message.vi"/>
				<Item Name="Converted Data to Raw.vi" Type="VI" URL="../../LabVIEW GEA2 Toolkit/LabVIEW_GEA2_Toolkit.lvlibp/subVIs/Converted Data to Raw.vi"/>
				<Item Name="Data to List.vi" Type="VI" URL="../../LabVIEW GEA2 Toolkit/LabVIEW_GEA2_Toolkit.lvlibp/subVIs/Data to List.vi"/>
				<Item Name="GEA2MessageFormatter.vi" Type="VI" URL="../../LabVIEW GEA2 Toolkit/LabVIEW_GEA2_Toolkit.lvlibp/subVIs/GEA2MessageFormatter.vi"/>
				<Item Name="Parse Data Out.vi" Type="VI" URL="../../LabVIEW GEA2 Toolkit/LabVIEW_GEA2_Toolkit.lvlibp/subVIs/Parse Data Out.vi"/>
				<Item Name="Parse ERD Read Expected Data.vi" Type="VI" URL="../../LabVIEW GEA2 Toolkit/LabVIEW_GEA2_Toolkit.lvlibp/subVIs/Parse ERD Read Expected Data.vi"/>
				<Item Name="Parse ERD Read Results.vi" Type="VI" URL="../../LabVIEW GEA2 Toolkit/LabVIEW_GEA2_Toolkit.lvlibp/subVIs/Parse ERD Read Results.vi"/>
				<Item Name="Parse ERD Write Expected Data.vi" Type="VI" URL="../../LabVIEW GEA2 Toolkit/LabVIEW_GEA2_Toolkit.lvlibp/subVIs/Parse ERD Write Expected Data.vi"/>
				<Item Name="Update Message Data.vi" Type="VI" URL="../../LabVIEW GEA2 Toolkit/LabVIEW_GEA2_Toolkit.lvlibp/subVIs/Update Message Data.vi"/>
			</Item>
			<Item Name="type defs" Type="Folder">
				<Item Name="Data In.ctl" Type="VI" URL="../../LabVIEW GEA2 Toolkit/LabVIEW_GEA2_Toolkit.lvlibp/type defs/Data In.ctl"/>
				<Item Name="Data Out.ctl" Type="VI" URL="../../LabVIEW GEA2 Toolkit/LabVIEW_GEA2_Toolkit.lvlibp/type defs/Data Out.ctl"/>
				<Item Name="ERD Read Data In.ctl" Type="VI" URL="../../LabVIEW GEA2 Toolkit/LabVIEW_GEA2_Toolkit.lvlibp/type defs/ERD Read Data In.ctl"/>
				<Item Name="ERD Read Data Out.ctl" Type="VI" URL="../../LabVIEW GEA2 Toolkit/LabVIEW_GEA2_Toolkit.lvlibp/type defs/ERD Read Data Out.ctl"/>
				<Item Name="ERD Write Data In.ctl" Type="VI" URL="../../LabVIEW GEA2 Toolkit/LabVIEW_GEA2_Toolkit.lvlibp/type defs/ERD Write Data In.ctl"/>
				<Item Name="Source_Destination.ctl" Type="VI" URL="../../LabVIEW GEA2 Toolkit/LabVIEW_GEA2_Toolkit.lvlibp/type defs/Source_Destination.ctl"/>
			</Item>
			<Item Name="utilities" Type="Folder">
				<Item Name="DLL Download.vi" Type="VI" URL="../../LabVIEW GEA2 Toolkit/LabVIEW_GEA2_Toolkit.lvlibp/utilities/DLL Download.vi"/>
			</Item>
			<Item Name="Check if File or Folder Exists.vi" Type="VI" URL="../../LabVIEW GEA2 Toolkit/LabVIEW_GEA2_Toolkit.lvlibp/1abvi3w/vi.lib/Utility/libraryn.llb/Check if File or Folder Exists.vi"/>
			<Item Name="Clear Errors.vi" Type="VI" URL="../../LabVIEW GEA2 Toolkit/LabVIEW_GEA2_Toolkit.lvlibp/1abvi3w/vi.lib/Utility/error.llb/Clear Errors.vi"/>
			<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="../../LabVIEW GEA2 Toolkit/LabVIEW_GEA2_Toolkit.lvlibp/1abvi3w/vi.lib/Utility/error.llb/Error Cluster From Error Code.vi"/>
			<Item Name="NI_FileType.lvlib" Type="Library" URL="../../LabVIEW GEA2 Toolkit/LabVIEW_GEA2_Toolkit.lvlibp/1abvi3w/vi.lib/Utility/lvfile.llb/NI_FileType.lvlib"/>
			<Item Name="NI_PackedLibraryUtility.lvlib" Type="Library" URL="../../LabVIEW GEA2 Toolkit/LabVIEW_GEA2_Toolkit.lvlibp/1abvi3w/vi.lib/Utility/LVLibp/NI_PackedLibraryUtility.lvlib"/>
			<Item Name="Space Constant.vi" Type="VI" URL="../../LabVIEW GEA2 Toolkit/LabVIEW_GEA2_Toolkit.lvlibp/1abvi3w/vi.lib/dlg_ctls.llb/Space Constant.vi"/>
			<Item Name="Trim Whitespace.vi" Type="VI" URL="../../LabVIEW GEA2 Toolkit/LabVIEW_GEA2_Toolkit.lvlibp/1abvi3w/vi.lib/Utility/error.llb/Trim Whitespace.vi"/>
			<Item Name="whitespace.ctl" Type="VI" URL="../../LabVIEW GEA2 Toolkit/LabVIEW_GEA2_Toolkit.lvlibp/1abvi3w/vi.lib/Utility/error.llb/whitespace.ctl"/>
		</Item>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="Check if File or Folder Exists.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Check if File or Folder Exists.vi"/>
				<Item Name="Clear Errors.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Clear Errors.vi"/>
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
				<Item Name="List Directory and LLBs.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/List Directory and LLBs.vi"/>
				<Item Name="NI_FileType.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/lvfile.llb/NI_FileType.lvlib"/>
				<Item Name="NI_PackedLibraryUtility.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/LVLibp/NI_PackedLibraryUtility.lvlib"/>
				<Item Name="Recursive File List.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Recursive File List.vi"/>
				<Item Name="Space Constant.vi" Type="VI" URL="/&lt;vilib&gt;/dlg_ctls.llb/Space Constant.vi"/>
				<Item Name="subTimeDelay.vi" Type="VI" URL="/&lt;vilib&gt;/express/express execution control/TimeDelayBlock.llb/subTimeDelay.vi"/>
				<Item Name="Trim Whitespace.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Trim Whitespace.vi"/>
				<Item Name="whitespace.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/whitespace.ctl"/>
			</Item>
			<Item Name="GeaCommunication.dll" Type="Document" URL="/C/Automation/DLLs/Appliance .NET/GeaCommunication.dll"/>
			<Item Name="mscorlib" Type="VI" URL="mscorlib">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="Programming.dll" Type="Document" URL="/C/Automation/DLLs/Appliance .NET/Programming.dll"/>
		</Item>
		<Item Name="Build Specifications" Type="Build">
			<Item Name="GEA2 Script Test" Type="EXE">
				<Property Name="App_copyErrors" Type="Bool">true</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{D4A39F30-CB9E-4B8E-A998-1A10E7A329EE}</Property>
				<Property Name="App_INI_GUID" Type="Str">{026AC31B-D2AE-46F2-BAB7-3215E8E59BDF}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{EAB597FE-6E6B-4299-BECE-9AB105923E66}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">GEA2 Script Test</Property>
				<Property Name="Bld_excludeInlineSubVIs" Type="Bool">true</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../build</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToProject</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{39F6AA30-D88A-4248-9307-240F32BDD154}</Property>
				<Property Name="Bld_version.build" Type="Int">3</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">GEA2 Script Test.exe</Property>
				<Property Name="Destination[0].path" Type="Path">../build/GEA2 Script Test.exe</Property>
				<Property Name="Destination[0].path.type" Type="Str">relativeToProject</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../build/data</Property>
				<Property Name="Destination[1].path.type" Type="Str">relativeToProject</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Source[0].itemID" Type="Str">{4996D666-04F8-46A2-ADF0-C9277CD8B34C}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref"></Property>
				<Property Name="Source[1].properties[0].type" Type="Str">Run when opened</Property>
				<Property Name="Source[1].properties[0].value" Type="Bool">false</Property>
				<Property Name="Source[1].propertiesCount" Type="Int">1</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="SourceCount" Type="Int">2</Property>
				<Property Name="TgtF_companyName" Type="Str">General Electric</Property>
				<Property Name="TgtF_fileDescription" Type="Str">GEA2 Script Test</Property>
				<Property Name="TgtF_internalName" Type="Str">GEA2 Script Test</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2014 General Electric</Property>
				<Property Name="TgtF_productName" Type="Str">GEA2 Script Test</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{B4C16B03-F167-40FD-A9AD-4BEDE2FD4F96}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">GEA2 Script Test.exe</Property>
			</Item>
		</Item>
	</Item>
</Project>
