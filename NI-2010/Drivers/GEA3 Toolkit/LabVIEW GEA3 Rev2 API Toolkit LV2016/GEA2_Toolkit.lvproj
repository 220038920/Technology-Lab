<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="20008000">
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
		<Item Name="GEA3 DLL Source" Type="Folder">
			<Item Name="CommandLine.dll" Type="Document" URL="../../GEA3 DLL Source/CommandLine.dll"/>
			<Item Name="Encoding.dll" Type="Document" URL="../../GEA3 DLL Source/Encoding.dll"/>
			<Item Name="ErdCommunication.Controls.dll" Type="Document" URL="../../GEA3 DLL Source/ErdCommunication.Controls.dll"/>
			<Item Name="ErdCommunication.dll" Type="Document" URL="../../GEA3 DLL Source/ErdCommunication.dll"/>
			<Item Name="GadLayer.dll" Type="Document" URL="../../GEA3 DLL Source/GadLayer.dll"/>
			<Item Name="Gea3Packets.dll" Type="Document" URL="../../GEA3 DLL Source/Gea3Packets.dll"/>
			<Item Name="GeaCommunication.Controls.dll" Type="Document" URL="../../GEA3 DLL Source/GeaCommunication.Controls.dll"/>
			<Item Name="GeaCommunication.dll" Type="Document" URL="../../GEA3 DLL Source/GeaCommunication.dll"/>
			<Item Name="Logging.dll" Type="Document" URL="../../GEA3 DLL Source/Logging.dll"/>
			<Item Name="Microsoft.Dynamic.dll" Type="Document" URL="../../GEA3 DLL Source/Microsoft.Dynamic.dll"/>
			<Item Name="Microsoft.Scripting.AspNet.dll" Type="Document" URL="../../GEA3 DLL Source/Microsoft.Scripting.AspNet.dll"/>
			<Item Name="Microsoft.Scripting.dll" Type="Document" URL="../../GEA3 DLL Source/Microsoft.Scripting.dll"/>
			<Item Name="Microsoft.Scripting.Metadata.dll" Type="Document" URL="../../GEA3 DLL Source/Microsoft.Scripting.Metadata.dll"/>
			<Item Name="Programming.dll" Type="Document" URL="../../GEA3 DLL Source/Programming.dll"/>
			<Item Name="SuperBeanPacketLayer.dll" Type="Document" URL="../../GEA3 DLL Source/SuperBeanPacketLayer.dll"/>
			<Item Name="Timing.dll" Type="Document" URL="../../GEA3 DLL Source/Timing.dll"/>
			<Item Name="UiUtilities.dll" Type="Document" URL="../../GEA3 DLL Source/UiUtilities.dll"/>
			<Item Name="UsbGeaAdapter.dll" Type="Document" URL="../../GEA3 DLL Source/UsbGeaAdapter.dll"/>
			<Item Name="UsbHid.dll" Type="Document" URL="../../GEA3 DLL Source/UsbHid.dll"/>
			<Item Name="UsbSerialPort.dll" Type="Document" URL="../../GEA3 DLL Source/UsbSerialPort.dll"/>
			<Item Name="Utilities.dll" Type="Document" URL="../../GEA3 DLL Source/Utilities.dll"/>
			<Item Name="XInclude.dll" Type="Document" URL="../../GEA3 DLL Source/XInclude.dll"/>
			<Item Name="XPointer.dll" Type="Document" URL="../../GEA3 DLL Source/XPointer.dll"/>
		</Item>
		<Item Name="Icons" Type="Folder" URL="../../Icons">
			<Property Name="NI.DISK" Type="Bool">true</Property>
		</Item>
		<Item Name="Water Heating Specific" Type="Folder" URL="../Water Heating Specific">
			<Property Name="NI.DISK" Type="Bool">true</Property>
		</Item>
		<Item Name="Zoneline" Type="Folder">
			<Item Name="Outside Fan PWM Control.vi" Type="VI" URL="../Zoneline/Outside Fan PWM Control.vi"/>
		</Item>
		<Item Name="EMV Flow Stop Detection.ctl" Type="VI" URL="../type defs/EMV Flow Stop Detection.ctl"/>
		<Item Name="GEA2_Toolkit.lvlib" Type="Library" URL="../library/GEA2_Toolkit.lvlib"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="Clear Errors.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Clear Errors.vi"/>
				<Item Name="Close File+.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Close File+.vi"/>
				<Item Name="compatReadText.vi" Type="VI" URL="/&lt;vilib&gt;/_oldvers/_oldvers.llb/compatReadText.vi"/>
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
				<Item Name="Find First Error.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Find First Error.vi"/>
				<Item Name="FormatTime String.vi" Type="VI" URL="/&lt;vilib&gt;/express/express execution control/ElapsedTimeBlock.llb/FormatTime String.vi"/>
				<Item Name="NI_AALBase.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/NI_AALBase.lvlib"/>
				<Item Name="NI_AALPro.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/NI_AALPro.lvlib"/>
				<Item Name="NI_PtbyPt.lvlib" Type="Library" URL="/&lt;vilib&gt;/ptbypt/NI_PtbyPt.lvlib"/>
				<Item Name="Open File+.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Open File+.vi"/>
				<Item Name="Read Delimited Spreadsheet (DBL).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read Delimited Spreadsheet (DBL).vi"/>
				<Item Name="Read Delimited Spreadsheet (I64).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read Delimited Spreadsheet (I64).vi"/>
				<Item Name="Read Delimited Spreadsheet (string).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read Delimited Spreadsheet (string).vi"/>
				<Item Name="Read Delimited Spreadsheet.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read Delimited Spreadsheet.vi"/>
				<Item Name="Read File+ (string).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read File+ (string).vi"/>
				<Item Name="Read Lines From File (with error IO).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read Lines From File (with error IO).vi"/>
				<Item Name="Space Constant.vi" Type="VI" URL="/&lt;vilib&gt;/dlg_ctls.llb/Space Constant.vi"/>
				<Item Name="subElapsedTime.vi" Type="VI" URL="/&lt;vilib&gt;/express/express execution control/ElapsedTimeBlock.llb/subElapsedTime.vi"/>
				<Item Name="Trim Whitespace.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Trim Whitespace.vi"/>
				<Item Name="whitespace.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/whitespace.ctl"/>
			</Item>
			<Item Name="Custom Pallet String.ctl" Type="VI" URL="../../../../Trunk/Utility/Custom Pallet Controls/Custom Pallet String.ctl"/>
			<Item Name="FT_Get_Device_Info.vi" Type="VI" URL="../FTDI/subVIs/FT_Get_Device_Info.vi"/>
			<Item Name="FT_Open_Device_By_Index.vi" Type="VI" URL="../FTDI/subVIs/FT_Open_Device_By_Index.vi"/>
			<Item Name="FTD2XX.dll" Type="Document" URL="FTD2XX.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="HEWH Decision Logic Cutout Cutin.vi" Type="VI" URL="../../../../Trunk/Hybrid Water Heater/Support VIs/HEWH Decision Logic Cutout Cutin.vi"/>
			<Item Name="HEWH RLT Check Cutout Delay.vi" Type="VI" URL="../../../../Trunk/Hybrid Water Heater/Support VIs/HEWH RLT Specific/HEWH RLT Check Cutout Delay.vi"/>
			<Item Name="HEWH RLT Cutout Checker Pulse Logic.vi" Type="VI" URL="../../../../Trunk/Hybrid Water Heater/Support VIs/HEWH RLT Cutout Checker Pulse Logic.vi"/>
			<Item Name="HEWH RLT Cutout Delay Message.vi" Type="VI" URL="../../../../Trunk/Hybrid Water Heater/Support VIs/HEWH RLT Specific/HEWH RLT Cutout Delay Message.vi"/>
			<Item Name="HEWH RLT Delay Timer.vi" Type="VI" URL="../../../../Trunk/Hybrid Water Heater/Support VIs/HEWH RLT Specific/HEWH RLT Delay Timer.vi"/>
			<Item Name="lvanlys.dll" Type="Document" URL="/&lt;resource&gt;/lvanlys.dll"/>
			<Item Name="mscorlib" Type="VI" URL="mscorlib">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="UTILITY E-Time.vi" Type="VI" URL="../../../../Trunk/Utility/UTILITY E-Time.vi"/>
			<Item Name="UTILITY Notifier.ctl" Type="VI" URL="../../../../Trunk/Utility/Type Definitions/UTILITY Notifier.ctl"/>
			<Item Name="UTILITY String Notifier.vi" Type="VI" URL="../../../../Trunk/Utility/UTILITY String Notifier.vi"/>
		</Item>
		<Item Name="Build Specifications" Type="Build">
			<Item Name="GEA3 EMV Draw Trigger Development" Type="EXE">
				<Property Name="App_copyErrors" Type="Bool">true</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{37E6D6BC-CF6B-4FF1-B57D-E239246E8FA2}</Property>
				<Property Name="App_INI_GUID" Type="Str">{A6A438FB-CCC9-4617-8112-14DA0E7E60C1}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
				<Property Name="App_serverType" Type="Int">1</Property>
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{3D206B48-AC8D-4AE8-95DF-AE622A9B9C65}</Property>
				<Property Name="Bld_buildSpecDescription" Type="Str">Rev 1.0.0.0 - Initial Release</Property>
				<Property Name="Bld_buildSpecName" Type="Str">GEA3 EMV Draw Trigger Development</Property>
				<Property Name="Bld_excludeInlineSubVIs" Type="Bool">true</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../builds/NI_AB_PROJECTNAME/GEA3 EMV Draw Trigger Development</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToCommon</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{26B219C0-7674-4F25-AEA0-9E33F4638BAC}</Property>
				<Property Name="Bld_version.build" Type="Int">1</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">EMV Development.exe</Property>
				<Property Name="Destination[0].path" Type="Path">../builds/NI_AB_PROJECTNAME/GEA3 EMV Draw Trigger Development/EMV Development.exe</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../builds/NI_AB_PROJECTNAME/GEA3 EMV Draw Trigger Development/data</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Exe_iconItemID" Type="Ref">/My Computer/Icons/EMV.ico</Property>
				<Property Name="Source[0].itemID" Type="Str">{7572F8FB-8D15-47F3-9BF1-31FC3ED7BE8E}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/Water Heating Specific/GEA3 EMV Draw Trigger Development.vi</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="Source[2].Container.applyInclusion" Type="Bool">true</Property>
				<Property Name="Source[2].Container.applyProperties" Type="Bool">true</Property>
				<Property Name="Source[2].Container.depDestIndex" Type="Int">0</Property>
				<Property Name="Source[2].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[2].itemID" Type="Ref">/My Computer/GEA3 DLL Source</Property>
				<Property Name="Source[2].properties[0].type" Type="Str">Run when opened</Property>
				<Property Name="Source[2].properties[0].value" Type="Bool">false</Property>
				<Property Name="Source[2].propertiesCount" Type="Int">1</Property>
				<Property Name="Source[2].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[2].type" Type="Str">Container</Property>
				<Property Name="Source[3].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[3].itemID" Type="Ref">/My Computer/GEA2_Toolkit.lvlib</Property>
				<Property Name="Source[3].Library.allowMissingMembers" Type="Bool">true</Property>
				<Property Name="Source[3].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[3].type" Type="Str">Library</Property>
				<Property Name="SourceCount" Type="Int">4</Property>
				<Property Name="TgtF_companyName" Type="Str">GE Appliances, a Haier company</Property>
				<Property Name="TgtF_enableDebugging" Type="Bool">true</Property>
				<Property Name="TgtF_fileDescription" Type="Str">GEA3 EMV Draw Trigger Development</Property>
				<Property Name="TgtF_internalName" Type="Str">GEA3 EMV Draw Trigger Development</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2019 GE Appliances, a Haier company</Property>
				<Property Name="TgtF_productName" Type="Str">GEA3 EMV Draw Trigger Development</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{67D54A09-8CDF-4A5F-A631-8CA59A196EDA}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">EMV Development.exe</Property>
			</Item>
			<Item Name="GEA3 HEWH Example" Type="EXE">
				<Property Name="App_copyErrors" Type="Bool">true</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{C89BCB3D-0CBE-4917-9BA4-2ADB74E1F34F}</Property>
				<Property Name="App_INI_GUID" Type="Str">{BEA72908-9B0C-4743-8EB9-167FDB2CCA77}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
				<Property Name="App_serverType" Type="Int">1</Property>
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{AB936598-D81A-4161-B0E4-FB131C218D8E}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">GEA3 HEWH Example</Property>
				<Property Name="Bld_excludeInlineSubVIs" Type="Bool">true</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../builds/NI_AB_PROJECTNAME/GEA3 HEWH Example</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToCommon</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{D7137EF3-07FE-4EDA-8470-D6296936265F}</Property>
				<Property Name="Bld_version.build" Type="Int">12</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">GEA Example.exe</Property>
				<Property Name="Destination[0].path" Type="Path">../builds/NI_AB_PROJECTNAME/GEA3 HEWH Example/GEA Example.exe</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../builds/NI_AB_PROJECTNAME/GEA3 HEWH Example/data</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Source[0].itemID" Type="Str">{B4194055-FE7A-4B13-B9D7-AB646A4DFCF7}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/Water Heating Specific/GEA3 HEWH Example.vi</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="Source[2].Container.applyInclusion" Type="Bool">true</Property>
				<Property Name="Source[2].Container.depDestIndex" Type="Int">0</Property>
				<Property Name="Source[2].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[2].itemID" Type="Ref">/My Computer/GEA3 DLL Source</Property>
				<Property Name="Source[2].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[2].type" Type="Str">Container</Property>
				<Property Name="SourceCount" Type="Int">3</Property>
				<Property Name="TgtF_companyName" Type="Str">GE Appliances, a Haier company</Property>
				<Property Name="TgtF_fileDescription" Type="Str">GEA3 HEWH Example</Property>
				<Property Name="TgtF_internalName" Type="Str">GEA3 HEWH Example</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2019 GE Appliances, a Haier company</Property>
				<Property Name="TgtF_productName" Type="Str">GEA3 HEWH Example</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{4307CCEA-8A27-4CA2-B6C2-E309AA36D035}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">GEA Example.exe</Property>
			</Item>
			<Item Name="Get GEA3 Serial Number" Type="EXE">
				<Property Name="App_copyErrors" Type="Bool">true</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{D264A53B-DB0C-40F7-9982-A19F542B807B}</Property>
				<Property Name="App_INI_GUID" Type="Str">{5A003D21-73C8-4607-8FCD-DFA0E6D64DD8}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
				<Property Name="App_serverType" Type="Int">1</Property>
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{C196E5CE-9489-411B-A305-93C8DC7E8F9E}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">Get GEA3 Serial Number</Property>
				<Property Name="Bld_excludeInlineSubVIs" Type="Bool">true</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../builds/NI_AB_PROJECTNAME/Get GEA3 Serial Number</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToCommon</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{EB32D1FE-3E0C-4DDA-AF10-7FCA97E53FDB}</Property>
				<Property Name="Bld_version.build" Type="Int">1</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">GEA3 Serial Number Utility.exe</Property>
				<Property Name="Destination[0].path" Type="Path">../builds/NI_AB_PROJECTNAME/Get GEA3 Serial Number/GEA3 Serial Number Utility.exe</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../builds/NI_AB_PROJECTNAME/Get GEA3 Serial Number/data</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Source[0].itemID" Type="Str">{A728EE69-BF8C-435E-8493-D3F5523CD072}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/GEA2_Toolkit.lvlib/FTDI/Get GEA3 Serial Number.vi</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="Source[2].Container.applyInclusion" Type="Bool">true</Property>
				<Property Name="Source[2].Container.depDestIndex" Type="Int">0</Property>
				<Property Name="Source[2].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[2].itemID" Type="Ref">/My Computer/GEA3 DLL Source</Property>
				<Property Name="Source[2].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[2].type" Type="Str">Container</Property>
				<Property Name="SourceCount" Type="Int">3</Property>
				<Property Name="TgtF_companyName" Type="Str">GE Appliances, a Haier Company</Property>
				<Property Name="TgtF_enableDebugging" Type="Bool">true</Property>
				<Property Name="TgtF_fileDescription" Type="Str">Get GEA3 Serial Number</Property>
				<Property Name="TgtF_internalName" Type="Str">Get GEA3 Serial Number</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2020 GE Appliances, a Haier Company</Property>
				<Property Name="TgtF_productName" Type="Str">Get GEA3 Serial Number</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{B6A3E96A-C48E-4728-8B99-E117DFFD62C0}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">GEA3 Serial Number Utility.exe</Property>
				<Property Name="TgtF_versionIndependent" Type="Bool">true</Property>
			</Item>
			<Item Name="LabVIEW GEA2 Toolkit" Type="Packed Library">
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{F4F69843-370B-4095-A146-82B9B7C96773}</Property>
				<Property Name="Bld_buildSpecDescription" Type="Str">LabVIEW GEA2 Toolkit
Paul Cason
Chris Osborne</Property>
				<Property Name="Bld_buildSpecName" Type="Str">LabVIEW GEA2 Toolkit</Property>
				<Property Name="Bld_excludeInlineSubVIs" Type="Bool">true</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">/C/Automation</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{76AE4BDF-A341-4CD6-9BDC-FA56C05A8431}</Property>
				<Property Name="Bld_version.build" Type="Int">135</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">LabVIEW_GEA2_Toolkit.lvlibp</Property>
				<Property Name="Destination[0].path" Type="Path">/C/Automation/LabVIEW_GEA2_Toolkit.lvlibp</Property>
				<Property Name="Destination[0].path.type" Type="Str">&lt;none&gt;</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">/Q/Common/DLLs/GEA3</Property>
				<Property Name="Destination[1].path.type" Type="Str">&lt;none&gt;</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="PackedLib_callersAdapt" Type="Bool">true</Property>
				<Property Name="Source[0].itemID" Type="Str">{C6B54011-D138-4977-8D73-F1D4E6742BFA}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/GEA2_Toolkit.lvlib</Property>
				<Property Name="Source[1].Library.allowMissingMembers" Type="Bool">true</Property>
				<Property Name="Source[1].Library.atomicCopy" Type="Bool">true</Property>
				<Property Name="Source[1].Library.LVLIBPtopLevel" Type="Bool">true</Property>
				<Property Name="Source[1].preventRename" Type="Bool">true</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">Library</Property>
				<Property Name="Source[2].Container.applyInclusion" Type="Bool">true</Property>
				<Property Name="Source[2].Container.depDestIndex" Type="Int">0</Property>
				<Property Name="Source[2].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[2].itemID" Type="Ref">/My Computer/GEA3 DLL Source</Property>
				<Property Name="Source[2].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[2].type" Type="Str">Container</Property>
				<Property Name="SourceCount" Type="Int">3</Property>
				<Property Name="TgtF_companyName" Type="Str">General Electric</Property>
				<Property Name="TgtF_enableDebugging" Type="Bool">true</Property>
				<Property Name="TgtF_fileDescription" Type="Str">LabVIEW GEA2 Toolkit
Paul Cason
Chris Osborne</Property>
				<Property Name="TgtF_internalName" Type="Str">LabVIEW GEA2 Toolkit</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2014 General Electric</Property>
				<Property Name="TgtF_productName" Type="Str">LabVIEW GEA2 Toolkit</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{C0284407-C753-42AA-AD41-425BFE70CE23}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">LabVIEW_GEA2_Toolkit.lvlibp</Property>
			</Item>
			<Item Name="LabVIEW GEA2 Toolkit (Debug Disabled)" Type="Packed Library">
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{B05D107C-CD46-4DBD-BC7B-9E8F78399013}</Property>
				<Property Name="Bld_buildSpecDescription" Type="Str">LabVIEW GEA2 Toolkit
Paul Cason
Chris Osborne</Property>
				<Property Name="Bld_buildSpecName" Type="Str">LabVIEW GEA2 Toolkit (Debug Disabled)</Property>
				<Property Name="Bld_excludeInlineSubVIs" Type="Bool">true</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">/C/Automation</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{871108AF-9829-4B55-8AD7-D0A76D9601F4}</Property>
				<Property Name="Bld_version.build" Type="Int">50</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">LabVIEW_GEA2_Toolkit.lvlibp</Property>
				<Property Name="Destination[0].path" Type="Path">/C/Automation/LabVIEW_GEA2_Toolkit.lvlibp</Property>
				<Property Name="Destination[0].path.type" Type="Str">&lt;none&gt;</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">/C/Automation/DLLs/PC Dot Net</Property>
				<Property Name="Destination[1].path.type" Type="Str">&lt;none&gt;</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="PackedLib_callersAdapt" Type="Bool">true</Property>
				<Property Name="Source[0].itemID" Type="Str">{4C8B57CD-8E38-4D4F-AA8D-74997B9F4D51}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/GEA2_Toolkit.lvlib</Property>
				<Property Name="Source[1].Library.allowMissingMembers" Type="Bool">true</Property>
				<Property Name="Source[1].Library.atomicCopy" Type="Bool">true</Property>
				<Property Name="Source[1].Library.LVLIBPtopLevel" Type="Bool">true</Property>
				<Property Name="Source[1].preventRename" Type="Bool">true</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">Library</Property>
				<Property Name="Source[2].Container.applyInclusion" Type="Bool">true</Property>
				<Property Name="Source[2].Container.depDestIndex" Type="Int">0</Property>
				<Property Name="Source[2].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[2].itemID" Type="Ref">/My Computer/GEA3 DLL Source</Property>
				<Property Name="Source[2].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[2].type" Type="Str">Container</Property>
				<Property Name="SourceCount" Type="Int">3</Property>
				<Property Name="TgtF_companyName" Type="Str">General Electric</Property>
				<Property Name="TgtF_fileDescription" Type="Str">LabVIEW GEA2 Toolkit
Paul Cason
Chris Osborne</Property>
				<Property Name="TgtF_internalName" Type="Str">LabVIEW GEA2 Toolkit</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2014 General Electric</Property>
				<Property Name="TgtF_productName" Type="Str">LabVIEW GEA2 Toolkit</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{DC306244-CEC8-4B16-A57E-0DAA1703C079}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">LabVIEW_GEA2_Toolkit.lvlibp</Property>
			</Item>
		</Item>
	</Item>
</Project>
