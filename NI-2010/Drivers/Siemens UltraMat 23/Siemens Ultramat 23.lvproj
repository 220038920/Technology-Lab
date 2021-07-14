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
		<Item Name="Example" Type="Folder">
			<Item Name="ELAN Monitor.aliases" Type="Document" URL="../Example/ELAN Monitor.aliases"/>
			<Item Name="ELAN Monitor.lvlps" Type="Document" URL="../Example/ELAN Monitor.lvlps"/>
			<Item Name="ELAN Monitor.lvproj" Type="Document" URL="../Example/ELAN Monitor.lvproj"/>
			<Item Name="Monitor.vi" Type="VI" URL="../Example/Monitor.vi"/>
			<Item Name="Ultramat 23 Get Data.vi" Type="VI" URL="../Example/Ultramat 23 Get Data.vi"/>
			<Item Name="Ultramat 23 Initialize.vi" Type="VI" URL="../Example/Ultramat 23 Initialize.vi"/>
		</Item>
		<Item Name="instr.lib" Type="Folder">
			<Item Name="Siemens ELAN" Type="Folder">
				<Item Name="ELAN Monitor.aliases" Type="Document" URL="../instr.lib/Siemens ELAN/ELAN Monitor.aliases"/>
				<Item Name="ELAN Monitor.lvlps" Type="Document" URL="../instr.lib/Siemens ELAN/ELAN Monitor.lvlps"/>
				<Item Name="ELAN Monitor.lvproj" Type="Document" URL="../instr.lib/Siemens ELAN/ELAN Monitor.lvproj"/>
				<Item Name="Get Autocal Current Step.vi" Type="VI" URL="../instr.lib/Siemens ELAN/Get Autocal Current Step.vi"/>
				<Item Name="Measured value.ctl" Type="VI" URL="../instr.lib/Siemens ELAN/Measured value.ctl"/>
				<Item Name="Siemens ELAN.lvlib" Type="Library" URL="../instr.lib/Siemens ELAN/Siemens ELAN.lvlib"/>
				<Item Name="siemens_logo_009999_FFFFFF.gif" Type="Document" URL="../instr.lib/Siemens ELAN/siemens_logo_009999_FFFFFF.gif"/>
				<Item Name="State Enumeration.ctl" Type="VI" URL="../instr.lib/Siemens ELAN/State Enumeration.ctl"/>
				<Item Name="vssver2.scc" Type="Document" URL="../instr.lib/Siemens ELAN/vssver2.scc"/>
			</Item>
		</Item>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="Ultramat 23 AFCO Calculations Sub.vi" Type="VI" URL="../SubVIs/Ultramat 23 AFCO Calculations Sub.vi"/>
			<Item Name="Ultramat 23 AFCO Calculations.vi" Type="VI" URL="../SubVIs/Ultramat 23 AFCO Calculations.vi"/>
			<Item Name="Ultramat 23 Create Data Array.vi" Type="VI" URL="../SubVIs/Ultramat 23 Create Data Array.vi"/>
		</Item>
		<Item Name="Build Specifications" Type="Build">
			<Item Name="My Application" Type="EXE">
				<Property Name="App_copyErrors" Type="Bool">true</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{E26399BC-6E44-4C3B-8531-04D1176F23A0}</Property>
				<Property Name="App_INI_GUID" Type="Str">{D3D89CC1-C214-4231-84AA-79569B6AF5AD}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{3ECB59AB-682C-40F7-82C4-133A2A0683E8}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">My Application</Property>
				<Property Name="Bld_excludeInlineSubVIs" Type="Bool">true</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../builds/NI_AB_PROJECTNAME/My Application</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToCommon</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{B1579E5D-BFDD-4ED0-A6AD-768336B545AC}</Property>
				<Property Name="Bld_version.build" Type="Int">1</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">Ultramat 23.exe</Property>
				<Property Name="Destination[0].path" Type="Path">../builds/NI_AB_PROJECTNAME/My Application/Ultramat 23.exe</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../builds/NI_AB_PROJECTNAME/My Application/data</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Source[0].itemID" Type="Str">{AE9915BF-B498-493D-AC77-9F14D13D35E1}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/Example/Monitor.vi</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="SourceCount" Type="Int">2</Property>
				<Property Name="TgtF_companyName" Type="Str">GE Appliances, a Haier Company</Property>
				<Property Name="TgtF_enableDebugging" Type="Bool">true</Property>
				<Property Name="TgtF_fileDescription" Type="Str">My Application</Property>
				<Property Name="TgtF_internalName" Type="Str">My Application</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2020 GE Appliances, a Haier Company</Property>
				<Property Name="TgtF_productName" Type="Str">My Application</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{F0FDCDCF-3A5A-46D5-8D74-A3D9E13FA85E}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">Ultramat 23.exe</Property>
				<Property Name="TgtF_versionIndependent" Type="Bool">true</Property>
			</Item>
		</Item>
	</Item>
</Project>
