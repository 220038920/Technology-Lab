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
				<Item Name="State Machine.vi" Type="VI" URL="../instr.lib/Siemens ELAN/State Machine.vi"/>
				<Item Name="vssver2.scc" Type="Document" URL="../instr.lib/Siemens ELAN/vssver2.scc"/>
			</Item>
		</Item>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="Ultramat 23 AFCO Calculations Sub.vi" Type="VI" URL="../SubVIs/Ultramat 23 AFCO Calculations Sub.vi"/>
			<Item Name="Ultramat 23 AFCO Calculations.vi" Type="VI" URL="../SubVIs/Ultramat 23 AFCO Calculations.vi"/>
			<Item Name="Ultramat 23 Create Data Array.vi" Type="VI" URL="../SubVIs/Ultramat 23 Create Data Array.vi"/>
		</Item>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
</Project>
