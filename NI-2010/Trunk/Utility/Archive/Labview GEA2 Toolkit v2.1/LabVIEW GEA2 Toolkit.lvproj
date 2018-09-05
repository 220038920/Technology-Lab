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
		<Item Name="examples" Type="Folder">
			<Item Name="Flash APL Example.vi" Type="VI" URL="../examples/Flash APL Example.vi"/>
			<Item Name="Read and Update ERD Example.vi" Type="VI" URL="../examples/Read and Update ERD Example.vi"/>
			<Item Name="Read and Update Message Example.vi" Type="VI" URL="../examples/Read and Update Message Example.vi"/>
			<Item Name="Read ERD Example.vi" Type="VI" URL="../examples/Read ERD Example.vi"/>
			<Item Name="Read ERD Multiple Message Example.vi" Type="VI" URL="../examples/Read ERD Multiple Message Example.vi"/>
			<Item Name="Read Example With Events (advanced).vi" Type="VI" URL="../examples/Read Example With Events (advanced).vi"/>
			<Item Name="Read Example.vi" Type="VI" URL="../examples/Read Example.vi"/>
			<Item Name="Send and Receive Example.vi" Type="VI" URL="../examples/Send and Receive Example.vi"/>
			<Item Name="Send Example.vi" Type="VI" URL="../examples/Send Example.vi"/>
			<Item Name="Write ERD Example.vi" Type="VI" URL="../examples/Write ERD Example.vi"/>
			<Item Name="Write ERD Multiple Message Example.vi" Type="VI" URL="../examples/Write ERD Multiple Message Example.vi"/>
		</Item>
		<Item Name="PC Tools .NET" Type="Folder" URL="../../../../../../Automation/DLLs/PC Tools .NET">
			<Property Name="NI.DISK" Type="Bool">true</Property>
		</Item>
		<Item Name="GEA2_Toolkit.lvlib" Type="Library" URL="../library/GEA2_Toolkit.lvlib"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="Check if File or Folder Exists.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Check if File or Folder Exists.vi"/>
				<Item Name="Clear Errors.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Clear Errors.vi"/>
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
				<Item Name="NI_FileType.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/lvfile.llb/NI_FileType.lvlib"/>
				<Item Name="NI_PackedLibraryUtility.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/LVLibp/NI_PackedLibraryUtility.lvlib"/>
				<Item Name="Space Constant.vi" Type="VI" URL="/&lt;vilib&gt;/dlg_ctls.llb/Space Constant.vi"/>
				<Item Name="Trim Whitespace.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Trim Whitespace.vi"/>
				<Item Name="whitespace.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/whitespace.ctl"/>
			</Item>
			<Item Name="GeaCommunication.dll" Type="Document" URL="../../../../../../Automation/DLLs/Appliance .NET/GeaCommunication.dll"/>
			<Item Name="mscorlib" Type="VI" URL="mscorlib">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
		</Item>
		<Item Name="Build Specifications" Type="Build">
			<Item Name="Send and Receive Example" Type="EXE">
				<Property Name="App_copyErrors" Type="Bool">true</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{3558911A-0718-467D-941F-C71F8AC903E1}</Property>
				<Property Name="App_INI_GUID" Type="Str">{7C1C6166-BCAD-4852-BB5B-811B55A7A183}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{08B4B92F-688B-4457-BE14-11378965D8E1}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">Send and Receive Example</Property>
				<Property Name="Bld_excludeInlineSubVIs" Type="Bool">true</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../builds/NI_AB_PROJECTNAME/Send and Receive Example</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToCommon</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{5DBDF520-A62F-4EA1-86DB-004ACAC480D8}</Property>
				<Property Name="Bld_version.build" Type="Int">1</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">Send and Receive Example.exe</Property>
				<Property Name="Destination[0].path" Type="Path">../builds/NI_AB_PROJECTNAME/Send and Receive Example/Send and Receive Example.exe</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../builds/NI_AB_PROJECTNAME/Send and Receive Example/data</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Source[0].itemID" Type="Str">{2C25FDEB-DD70-4258-9619-ECFB02E69DA5}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/examples/Send and Receive Example.vi</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="SourceCount" Type="Int">2</Property>
				<Property Name="TgtF_companyName" Type="Str">General Electric</Property>
				<Property Name="TgtF_fileDescription" Type="Str">Send and Receive Example</Property>
				<Property Name="TgtF_internalName" Type="Str">Send and Receive Example</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2015 General Electric</Property>
				<Property Name="TgtF_productName" Type="Str">Send and Receive Example</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{9EBA2AFA-C2BC-4C33-AA51-4ED41D0C6344}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">Send and Receive Example.exe</Property>
			</Item>
		</Item>
	</Item>
</Project>
