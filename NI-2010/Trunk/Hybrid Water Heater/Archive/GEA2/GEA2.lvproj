<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="9008000">
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
		<Item Name="GEA2.vi" Type="VI" URL="../GEA2.vi"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="GEA2 Interface.dll" Type="Document" URL="../GEA2 Interface.dll"/>
		</Item>
		<Item Name="Build Specifications" Type="Build">
			<Item Name="GEA2" Type="EXE">
				<Property Name="App_applicationGUID" Type="Str">{549CA260-6147-47C4-AD78-71BD3A96B535}</Property>
				<Property Name="App_applicationName" Type="Str">GEA2.exe</Property>
				<Property Name="App_companyName" Type="Str">GE</Property>
				<Property Name="App_fileDescription" Type="Str">GEA2</Property>
				<Property Name="App_fileVersion.major" Type="Int">1</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{DDC7C2D7-3FF2-411D-B26B-2AF5DDDAC8C3}</Property>
				<Property Name="App_INI_GUID" Type="Str">{430D5235-5754-4ABE-B1BA-C63842FB577E}</Property>
				<Property Name="App_internalName" Type="Str">GEA2</Property>
				<Property Name="App_legalCopyright" Type="Str">Copyright © 2011 GE</Property>
				<Property Name="App_productName" Type="Str">GEA2</Property>
				<Property Name="App_winsec.description" Type="Str">http://www.GE.com</Property>
				<Property Name="Bld_buildSpecName" Type="Str">GEA2</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Destination[0].destName" Type="Str">GEA2.exe</Property>
				<Property Name="Destination[0].path" Type="Path">../NI_AB_PROJECTNAME/Builds/GEA2.exe</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../NI_AB_PROJECTNAME/Builds/data</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Source[0].itemID" Type="Str">{91B55D3A-944F-4E9C-9E21-7294BAD7B0FC}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/GEA2.vi</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="SourceCount" Type="Int">2</Property>
			</Item>
		</Item>
	</Item>
</Project>
