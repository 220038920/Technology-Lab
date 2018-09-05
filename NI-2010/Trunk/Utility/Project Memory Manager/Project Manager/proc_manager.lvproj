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
		<Item Name="TaskManager.vi" Type="VI" URL="../TaskManager.vi"/>
		<Item Name="get_proc_andIDs.vi" Type="VI" URL="../get_proc_andIDs.vi"/>
		<Item Name="proc_memory.vi" Type="VI" URL="../proc_memory.vi"/>
		<Item Name="emptyProcess.vi" Type="VI" URL="../emptyProcess.vi"/>
		<Item Name="wtsapi32.dll" Type="Document" URL="../wtsapi32.dll"/>
		<Item Name="psapi.dll" Type="Document" URL="../psapi.dll"/>
		<Item Name="processHandles.dll" Type="Document" URL="../processHandles.dll"/>
		<Item Name="icon.ico" Type="Document" URL="../icon.ico"/>
		<Item Name="CPUload.vi" Type="VI" URL="../CPUload.vi"/>
		<Item Name="Kill Task.vi" Type="VI" URL="../Kill Task.vi"/>
		<Item Name="Refresh Memory.vi" Type="VI" URL="../Refresh Memory.vi"/>
		<Item Name="HCC Search For UnUsed Stations.vi" Type="VI" URL="../../../../Washer HCC/Washer HCC NEWFI/Support VIs/HCC Search For UnUsed Stations.vi"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="System Exec.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/system.llb/System Exec.vi"/>
			</Item>
		</Item>
		<Item Name="Build Specifications" Type="Build">
			<Item Name="TaskManager" Type="EXE">
				<Property Name="App_copyErrors" Type="Bool">true</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{0025133E-7E44-4297-8B51-59AE80A640BA}</Property>
				<Property Name="App_INI_GUID" Type="Str">{EF0199F7-207D-45AE-BA8C-4FAE1364064F}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{A5F55C6F-31A0-4E4C-A5E7-B36622AE2B2F}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">TaskManager</Property>
				<Property Name="Bld_excludeInlineSubVIs" Type="Bool">true</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../builds/NI_AB_PROJECTNAME/TaskManager</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToCommon</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{29888653-4697-40BD-A00C-D28A00A95D3E}</Property>
				<Property Name="Bld_version.build" Type="Int">1</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">TaskManager.exe</Property>
				<Property Name="Destination[0].path" Type="Path">../builds/NI_AB_PROJECTNAME/TaskManager/TaskManager.exe</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../builds/NI_AB_PROJECTNAME/TaskManager/data</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Source[0].itemID" Type="Str">{E27EB925-3598-4D17-8B5C-75C467D605A5}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/TaskManager.vi</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="SourceCount" Type="Int">2</Property>
				<Property Name="TgtF_companyName" Type="Str">General Electric</Property>
				<Property Name="TgtF_fileDescription" Type="Str">TaskManager</Property>
				<Property Name="TgtF_internalName" Type="Str">TaskManager</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2015 General Electric</Property>
				<Property Name="TgtF_productName" Type="Str">TaskManager</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{5FF32711-D50C-4D4F-88CA-FD2D1F0CAB44}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">TaskManager.exe</Property>
			</Item>
		</Item>
	</Item>
</Project>
