<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="14008000">
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
		<Item Name="GEA2 Commands" Type="Folder" URL="..">
			<Property Name="NI.DISK" Type="Bool">true</Property>
		</Item>
		<Item Name="UTILITY" Type="Folder">
			<Item Name="UTILITY Array to String Array.vi" Type="VI" URL="../../UTILITY Array to String Array.vi"/>
		</Item>
		<Item Name="Custom Pallet Controls" Type="Folder">
			<Item Name="Custom Pallet String.ctl" Type="VI" URL="../../Custom Pallet Controls/Custom Pallet String.ctl"/>
			<Item Name="Custom Pallet Forward.ctl" Type="VI" URL="../../Custom Pallet Controls/Custom Pallet Forward.ctl"/>
			<Item Name="Custom Pallet Number.ctl" Type="VI" URL="../../Custom Pallet Controls/Custom Pallet Number.ctl"/>
		</Item>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="Space Constant.vi" Type="VI" URL="/&lt;vilib&gt;/dlg_ctls.llb/Space Constant.vi"/>
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
				<Item Name="Clear Errors.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Clear Errors.vi"/>
				<Item Name="whitespace.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/whitespace.ctl"/>
				<Item Name="Trim Whitespace.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Trim Whitespace.vi"/>
				<Item Name="Check if File or Folder Exists.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Check if File or Folder Exists.vi"/>
				<Item Name="NI_FileType.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/lvfile.llb/NI_FileType.lvlib"/>
				<Item Name="NI_PackedLibraryUtility.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/LVLibp/NI_PackedLibraryUtility.lvlib"/>
				<Item Name="FormatTime String.vi" Type="VI" URL="/&lt;vilib&gt;/express/express execution control/ElapsedTimeBlock.llb/FormatTime String.vi"/>
				<Item Name="subElapsedTime.vi" Type="VI" URL="/&lt;vilib&gt;/express/express execution control/ElapsedTimeBlock.llb/subElapsedTime.vi"/>
			</Item>
			<Item Name="GeaCommunication.dll" Type="Document" URL="../../../../../../Automation/DLLs/PC Tools .NET/GeaCommunication.dll"/>
			<Item Name="mscorlib" Type="VI" URL="mscorlib">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="GeaCommunication.dll" Type="Document" URL="../../../../../../Automation/DLLs/Appliance .NET/GeaCommunication.dll"/>
			<Item Name="Programming.dll" Type="Document" URL="../../../../../../Automation/DLLs/PC Tools .NET/Programming.dll"/>
			<Item Name="GEA2 Serial Dryer Commands.ctl" Type="VI" URL="../../LabView GEA2 Toolkit Serial/Type Definitions/GEA2 Serial Dryer Commands.ctl"/>
			<Item Name="Button Status.ctl" Type="VI" URL="../../LabVIEW GEA2 Toolkit v2.0/type defs/Button Status.ctl"/>
			<Item Name="GEA2_Toolkit.lvlib" Type="Library" URL="../../Labview GEA2 Toolkit v2.1/library/GEA2_Toolkit.lvlib"/>
			<Item Name="UTILITY E-Time.vi" Type="VI" URL="../../UTILITY E-Time.vi"/>
		</Item>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
</Project>
