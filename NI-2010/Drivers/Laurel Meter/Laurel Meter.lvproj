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
		<Item Name="SubVIs" Type="Folder" URL="../SubVIs">
			<Property Name="NI.DISK" Type="Bool">true</Property>
		</Item>
		<Item Name="Type Definitions" Type="Folder" URL="../Type Definitions">
			<Property Name="NI.DISK" Type="Bool">true</Property>
		</Item>
		<Item Name="Documentation" Type="Folder" URL="../Documentation">
			<Property Name="NI.DISK" Type="Bool">true</Property>
		</Item>
		<Item Name="Utility" Type="Folder">
			<Item Name="Type Definitions" Type="Folder">
				<Item Name="DOE Front Panel Meters.ctl" Type="VI" URL="../../../Trunk/Washer DOE/Type Definitions/DOE Front Panel Meters.ctl"/>
				<Item Name="UTILITY Power Data.ctl" Type="VI" URL="../../../Trunk/Utility/Type Definitions/UTILITY Power Data.ctl"/>
			</Item>
			<Item Name="UTILITY Array Get 1D String Column From 2D.vi" Type="VI" URL="../../../Trunk/Utility/UTILITY Array Get 1D String Column From 2D.vi"/>
			<Item Name="UTILITY E-Time.vi" Type="VI" URL="../../../Trunk/Utility/UTILITY E-Time.vi"/>
			<Item Name="UTILITY Power Inputs Control.ctl" Type="VI" URL="../../../Trunk/Utility/Type Definitions/UTILITY Power Inputs Control.ctl"/>
			<Item Name="UTILITY TC Coefficients.ctl" Type="VI" URL="../../../Trunk/Utility/Type Definitions/UTILITY TC Coefficients.ctl"/>
		</Item>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="Clear Errors.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Clear Errors.vi"/>
				<Item Name="FormatTime String.vi" Type="VI" URL="/&lt;vilib&gt;/express/express execution control/ElapsedTimeBlock.llb/FormatTime String.vi"/>
				<Item Name="NI_AALPro.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/NI_AALPro.lvlib"/>
				<Item Name="NI_PtbyPt.lvlib" Type="Library" URL="/&lt;vilib&gt;/ptbypt/NI_PtbyPt.lvlib"/>
				<Item Name="Space Constant.vi" Type="VI" URL="/&lt;vilib&gt;/dlg_ctls.llb/Space Constant.vi"/>
				<Item Name="subElapsedTime.vi" Type="VI" URL="/&lt;vilib&gt;/express/express execution control/ElapsedTimeBlock.llb/subElapsedTime.vi"/>
				<Item Name="Trim Whitespace.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Trim Whitespace.vi"/>
				<Item Name="VISA Open Access Mode.ctl" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Open Access Mode.ctl"/>
				<Item Name="whitespace.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/whitespace.ctl"/>
			</Item>
			<Item Name="DOE Calculate Rinse Gallons.vi" Type="VI" URL="../../../Trunk/Washer DOE/Support VIs/DOE Calculate Rinse Gallons.vi"/>
			<Item Name="DOE Test Fixture Hardware.ctl" Type="VI" URL="../../../Trunk/Washer DOE/Type Definitions/DOE Test Fixture Hardware.ctl"/>
			<Item Name="FMA1600A COM Ports.ctl" Type="VI" URL="../../Omega FMA-1600A Series Gas Flow Meter/Type Definitions/FMA1600A COM Ports.ctl"/>
			<Item Name="FMA1600A Gas Data.ctl" Type="VI" URL="../../Omega FMA-1600A Series Gas Flow Meter/Type Definitions/FMA1600A Gas Data.ctl"/>
			<Item Name="FMA1600A Gas Type.ctl" Type="VI" URL="../../Omega FMA-1600A Series Gas Flow Meter/Type Definitions/FMA1600A Gas Type.ctl"/>
			<Item Name="HEWH Agilent Cluster.ctl" Type="VI" URL="../../../Trunk/Hybrid Water Heater/Type Definitions/HEWH Agilent Cluster.ctl"/>
			<Item Name="IND560 Configuration.ctl" Type="VI" URL="../../IND560 Scale Monitor/Type Definitions/IND560 Configuration.ctl"/>
			<Item Name="lvanlys.dll" Type="Document" URL="/&lt;resource&gt;/lvanlys.dll"/>
			<Item Name="RANGE Meter Selector 1-2.ctl" Type="VI" URL="../../../Trunk/Range/Type Definitions/RANGE Meter Selector 1-2.ctl"/>
			<Item Name="RANGE Meter Selector.ctl" Type="VI" URL="../../../Trunk/Range/Type Definitions/RANGE Meter Selector.ctl"/>
			<Item Name="Standby Power Main Data.ctl" Type="VI" URL="../../../Trunk/Utility/Standby Power/Type Definitions/Standby Power Main Data.ctl"/>
			<Item Name="UTILITY Delay mS.vi" Type="VI" URL="../../../Trunk/Utility/UTILITY Delay mS.vi"/>
		</Item>
		<Item Name="Build Specifications" Type="Build">
			<Item Name="Laurel Collect Continuous" Type="EXE">
				<Property Name="App_copyErrors" Type="Bool">true</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{D86C5FF2-CEAE-48BF-A0A8-E3302863E597}</Property>
				<Property Name="App_INI_GUID" Type="Str">{3D942097-40A1-44E9-A685-5BC7425E9B2B}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{D2852BEB-FCD4-4B06-820C-9ADC37A5C3F0}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">Laurel Collect Continuous</Property>
				<Property Name="Bld_excludeInlineSubVIs" Type="Bool">true</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../builds/NI_AB_PROJECTNAME/Laurel Collect Continuous</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToCommon</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{4FCCE32C-483D-4340-8B19-0D11BC3C2259}</Property>
				<Property Name="Bld_version.build" Type="Int">1</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">Laurel Electronics.exe</Property>
				<Property Name="Destination[0].path" Type="Path">../builds/NI_AB_PROJECTNAME/Laurel Collect Continuous/Laurel Electronics.exe</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../builds/NI_AB_PROJECTNAME/Laurel Collect Continuous/data</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Source[0].itemID" Type="Str">{A435A2E9-AC36-42B2-9CAA-160F48974AD3}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/Main/Laurel Collect Continuous.vi</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="SourceCount" Type="Int">2</Property>
				<Property Name="TgtF_companyName" Type="Str">General Electric</Property>
				<Property Name="TgtF_enableDebugging" Type="Bool">true</Property>
				<Property Name="TgtF_fileDescription" Type="Str">Laurel Collect Continuous</Property>
				<Property Name="TgtF_internalName" Type="Str">Laurel Collect Continuous</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2015 General Electric</Property>
				<Property Name="TgtF_productName" Type="Str">Laurel Collect Continuous</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{14FAABB0-7834-46F4-A368-8A845419CC87}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">Laurel Electronics.exe</Property>
			</Item>
			<Item Name="Laurel StandAlone TCP" Type="EXE">
				<Property Name="App_copyErrors" Type="Bool">true</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{0FFEE993-8211-4BA6-A330-0C9FC8CE5393}</Property>
				<Property Name="App_INI_GUID" Type="Str">{237A6AEA-3677-4C60-BA61-5B4E32BA8A6F}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{E95A9669-F6F4-40A2-AD2E-0246C5414611}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">Laurel StandAlone TCP</Property>
				<Property Name="Bld_excludeInlineSubVIs" Type="Bool">true</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../builds/NI_AB_PROJECTNAME/Laurel StandAlone TCP</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToCommon</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{9A0FEF4D-9D18-4703-A31C-27EE8231EC6F}</Property>
				<Property Name="Bld_version.build" Type="Int">5</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">Manual Laurel Meter.exe</Property>
				<Property Name="Destination[0].path" Type="Path">../builds/NI_AB_PROJECTNAME/Laurel StandAlone TCP/Manual Laurel Meter.exe</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../builds/NI_AB_PROJECTNAME/Laurel StandAlone TCP/data</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Source[0].itemID" Type="Str">{2E7EC2B0-0A62-494C-9480-10E8F5079BE8}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/Main/Laurel StandAlone TCP.vi</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="SourceCount" Type="Int">2</Property>
				<Property Name="TgtF_companyName" Type="Str">General Electric</Property>
				<Property Name="TgtF_enableDebugging" Type="Bool">true</Property>
				<Property Name="TgtF_fileDescription" Type="Str">Laurel StandAlone TCP</Property>
				<Property Name="TgtF_internalName" Type="Str">Laurel StandAlone TCP</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2016 General Electric</Property>
				<Property Name="TgtF_productName" Type="Str">Laurel StandAlone TCP</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{D0952CF0-F14E-4F07-8A28-468BDBED8CF7}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">Manual Laurel Meter.exe</Property>
			</Item>
		</Item>
	</Item>
</Project>
