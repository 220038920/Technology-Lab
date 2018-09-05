<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="16008000">
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
		<Item Name="Documentation" Type="Folder" URL="../Documentation">
			<Property Name="NI.DISK" Type="Bool">true</Property>
		</Item>
		<Item Name="Instruments" Type="Folder">
			<Item Name="Yokogawa MW100" Type="Folder">
				<Item Name="Type Definitions" Type="Folder">
					<Item Name="HEWH MW100 Channel Numbers.ctl" Type="VI" URL="../../MW100/Type Definitions/HEWH MW100 Channel Numbers.ctl"/>
					<Item Name="HEWH Solenoid Valve Status.ctl" Type="VI" URL="../../MW100/Type Definitions/HEWH Solenoid Valve Status.ctl"/>
				</Item>
				<Item Name="HEWH Reset MW100.vi" Type="VI" URL="../../MW100/HEWH Reset MW100.vi"/>
				<Item Name="MW100 General ReBoot.vi" Type="VI" URL="../../MW100/MW100 General ReBoot.vi"/>
				<Item Name="MW100 General Start.vi" Type="VI" URL="../../MW100/MW100 General Start.vi"/>
				<Item Name="YKMW100 Clear Error Display.vi" Type="VI" URL="../../../../../Drivers/Yokogawa MW100/Main/YKMW100 Clear Error Display.vi"/>
				<Item Name="YKMW100 Clear Output Buffer.vi" Type="VI" URL="../../../../../Drivers/Yokogawa MW100/Main/YKMW100 Clear Output Buffer.vi"/>
				<Item Name="YKMW100 Close.vi" Type="VI" URL="../../../../../Drivers/Yokogawa MW100/YKMW100.llb/YKMW100 Close.vi"/>
				<Item Name="YKMW100 Computation Control.vi" Type="VI" URL="../../../../../Drivers/Yokogawa MW100/Main/YKMW100 Computation Control.vi"/>
				<Item Name="YKMW100 Convert Response Type.vi" Type="VI" URL="../../../../../Drivers/Yokogawa MW100/YKMW100U.llb/YKMW100 Convert Response Type.vi"/>
				<Item Name="YKMW100 Initialize.vi" Type="VI" URL="../../../../../Drivers/Yokogawa MW100/YKMW100.llb/YKMW100 Initialize.vi"/>
				<Item Name="YKMW100 Login.vi" Type="VI" URL="../../../../../Drivers/Yokogawa MW100/YKMW100U.llb/YKMW100 Login.vi"/>
				<Item Name="YKMW100 Logout.vi" Type="VI" URL="../../../../../Drivers/Yokogawa MW100/YKMW100U.llb/YKMW100 Logout.vi"/>
				<Item Name="YKMW100 Mode Control.vi" Type="VI" URL="../../../../../Drivers/Yokogawa MW100/Main/YKMW100 Mode Control.vi"/>
				<Item Name="YKMW100 Output AO.vi" Type="VI" URL="../../../../../Drivers/Yokogawa MW100/YKMW100.llb/YKMW100 Output AO.vi"/>
				<Item Name="YKMW100 Read Data.vi" Type="VI" URL="../../../../../Drivers/Yokogawa MW100/YKMW100U.llb/YKMW100 Read Data.vi"/>
				<Item Name="YKMW100 Receive String.vi" Type="VI" URL="../../../../../Drivers/Yokogawa MW100/YKMW100.llb/YKMW100 Receive String.vi"/>
				<Item Name="YKMW100 Reset.vi" Type="VI" URL="../../../../../Drivers/Yokogawa MW100/YKMW100.llb/YKMW100 Reset.vi"/>
				<Item Name="YKMW100 Response Check.vi" Type="VI" URL="../../../../../Drivers/Yokogawa MW100/YKMW100.llb/YKMW100 Response Check.vi"/>
				<Item Name="YKMW100 Send Message and Log.vi" Type="VI" URL="../../../../../Drivers/Yokogawa MW100/Main/YKMW100 Send Message and Log.vi"/>
				<Item Name="YKMW100 Send Message.vi" Type="VI" URL="../../../../../Drivers/Yokogawa MW100/YKMW100.llb/YKMW100 Send Message.vi"/>
				<Item Name="YKMW100 Set Command Error.vi" Type="VI" URL="../../../../../Drivers/Yokogawa MW100/YKMW100U.llb/YKMW100 Set Command Error.vi"/>
			</Item>
		</Item>
		<Item Name="Main" Type="Folder" URL="../Main">
			<Property Name="NI.DISK" Type="Bool">true</Property>
		</Item>
		<Item Name="SubVIs" Type="Folder" URL="../SubVIs">
			<Property Name="NI.DISK" Type="Bool">true</Property>
		</Item>
		<Item Name="Type Definitions" Type="Folder" URL="../Type Definitions">
			<Property Name="NI.DISK" Type="Bool">true</Property>
		</Item>
		<Item Name="UTILITY" Type="Folder">
			<Item Name="UTILITY Aquire Semaphore.vi" Type="VI" URL="../../../../Utility/UTILITY Aquire Semaphore.vi"/>
			<Item Name="UTILITY Array Get 1D Column From 2D.vi" Type="VI" URL="../../../../Utility/UTILITY Array Get 1D Column From 2D.vi"/>
			<Item Name="UTILITY Common PID Adjuster.vi" Type="VI" URL="../../../../Utility/UTILITY Common PID Adjuster.vi"/>
			<Item Name="UTILITY Delay mS.vi" Type="VI" URL="../../../../Utility/UTILITY Delay mS.vi"/>
			<Item Name="UTILITY Fuzzy Logic Scale.vi" Type="VI" URL="../../../../Utility/UTILITY Fuzzy Logic Scale.vi"/>
			<Item Name="UTILITY Local.vi" Type="VI" URL="../../../../Utility/UTILITY Local.vi"/>
			<Item Name="UTILITY PID Correction Loop Check.vi" Type="VI" URL="../../../../Utility/UTILITY PID Correction Loop Check.vi"/>
			<Item Name="UTILITY Release Semaphore.vi" Type="VI" URL="../../../../Utility/UTILITY Release Semaphore.vi"/>
			<Item Name="UTILITY Simple PID.vi" Type="VI" URL="../../../../Utility/UTILITY Simple PID.vi"/>
		</Item>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="Acquire Semaphore.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/Acquire Semaphore.vi"/>
				<Item Name="Clear Errors.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Clear Errors.vi"/>
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
				<Item Name="lvpidtkt.dll" Type="Document" URL="/&lt;vilib&gt;/addons/control/pid/lvpidtkt.dll"/>
				<Item Name="NI_AALPro.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/NI_AALPro.lvlib"/>
				<Item Name="NI_Gmath.lvlib" Type="Library" URL="/&lt;vilib&gt;/gmath/NI_Gmath.lvlib"/>
				<Item Name="NI_PID__prctrl compat.lvlib" Type="Library" URL="/&lt;vilib&gt;/addons/control/pid/NI_PID__prctrl compat.lvlib"/>
				<Item Name="NI_PID_pid.lvlib" Type="Library" URL="/&lt;vilib&gt;/addons/control/pid/NI_PID_pid.lvlib"/>
				<Item Name="Not A Semaphore.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/Not A Semaphore.vi"/>
				<Item Name="Release Semaphore.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/Release Semaphore.vi"/>
				<Item Name="Semaphore RefNum" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/Semaphore RefNum"/>
				<Item Name="Semaphore Refnum Core.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/Semaphore Refnum Core.ctl"/>
				<Item Name="Trim Whitespace.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Trim Whitespace.vi"/>
				<Item Name="whitespace.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/whitespace.ctl"/>
			</Item>
			<Item Name="HEWH Normally Closed Valve Control.ctl" Type="VI" URL="../../../Type Definitions/HEWH Normally Closed Valve Control.ctl"/>
			<Item Name="HEWH Normally Open Valve Control.ctl" Type="VI" URL="../../../Type Definitions/HEWH Normally Open Valve Control.ctl"/>
			<Item Name="lvanlys.dll" Type="Document" URL="/&lt;resource&gt;/lvanlys.dll"/>
		</Item>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
</Project>
