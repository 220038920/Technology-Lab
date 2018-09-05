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
		<Item Name="Chroma 617xx Library" Type="Folder">
			<Item Name="chr6x Fetch Voltage.vi" Type="VI" URL="../CHR617XX.llb/chr6x Fetch Voltage.vi"/>
			<Item Name="chr617xx Close.vi" Type="VI" URL="../CHR617XX.llb/chr617xx Close.vi"/>
			<Item Name="chr617xx Error Message.vi" Type="VI" URL="../CHR617XX.llb/chr617xx Error Message.vi"/>
			<Item Name="chr617xx Error-Query.vi" Type="VI" URL="../CHR617XX.llb/chr617xx Error-Query.vi"/>
			<Item Name="chr617xx Fetch All Current.vi" Type="VI" URL="../CHR617XX.llb/chr617xx Fetch All Current.vi"/>
			<Item Name="chr617xx Fetch All Voltage.vi" Type="VI" URL="../CHR617XX.llb/chr617xx Fetch All Voltage.vi"/>
			<Item Name="chr617xx Fetch Current.vi" Type="VI" URL="../CHR617XX.llb/chr617xx Fetch Current.vi"/>
			<Item Name="chr617xx Fetch Frequency.vi" Type="VI" URL="../CHR617XX.llb/chr617xx Fetch Frequency.vi"/>
			<Item Name="chr617xx Fetch Interharm Frequency.vi" Type="VI" URL="../CHR617XX.llb/chr617xx Fetch Interharm Frequency.vi"/>
			<Item Name="chr617xx Fetch Power.vi" Type="VI" URL="../CHR617XX.llb/chr617xx Fetch Power.vi"/>
			<Item Name="chr617xx Fetch Voltage.vi" Type="VI" URL="../CHR617XX.llb/chr617xx Fetch Voltage.vi"/>
			<Item Name="chr617xx Get Interharm trigger state.vi" Type="VI" URL="../CHR617XX.llb/chr617xx Get Interharm trigger state.vi"/>
			<Item Name="chr617xx Get Next Coercion Record.vi" Type="VI" URL="../CHR617XX.llb/chr617xx Get Next Coercion Record.vi"/>
			<Item Name="chr617xx GET OUTPUT MODE.vi" Type="VI" URL="../CHR617XX.llb/chr617xx GET OUTPUT MODE.vi"/>
			<Item Name="chr617xx GET TRIGGER STATE.vi" Type="VI" URL="../CHR617XX.llb/chr617xx GET TRIGGER STATE.vi"/>
			<Item Name="chr617xx GET VALID SEQUENCE.vi" Type="VI" URL="../CHR617XX.llb/chr617xx GET VALID SEQUENCE.vi"/>
			<Item Name="chr617xx Init Interface.vi" Type="VI" URL="../CHR617XX.llb/chr617xx Init Interface.vi"/>
			<Item Name="chr617xx Initialize With Options.vi" Type="VI" URL="../CHR617XX.llb/chr617xx Initialize With Options.vi"/>
			<Item Name="chr617xx Initialize.vi" Type="VI" URL="../CHR617XX.llb/chr617xx Initialize.vi"/>
			<Item Name="chr617xx IVI Error Converter.vi" Type="VI" URL="../CHR617XX.llb/chr617xx IVI Error Converter.vi"/>
			<Item Name="chr617xx Measure All Current.vi" Type="VI" URL="../CHR617XX.llb/chr617xx Measure All Current.vi"/>
			<Item Name="chr617xx Measure All Voltage.vi" Type="VI" URL="../CHR617XX.llb/chr617xx Measure All Voltage.vi"/>
			<Item Name="chr617xx Measure Current.vi" Type="VI" URL="../CHR617XX.llb/chr617xx Measure Current.vi"/>
			<Item Name="chr617xx Measure Frequency.vi" Type="VI" URL="../CHR617XX.llb/chr617xx Measure Frequency.vi"/>
			<Item Name="chr617xx Measure Interharm Frequency.vi" Type="VI" URL="../CHR617XX.llb/chr617xx Measure Interharm Frequency.vi"/>
			<Item Name="chr617xx Measure Power.vi" Type="VI" URL="../CHR617XX.llb/chr617xx Measure Power.vi"/>
			<Item Name="chr617xx Measure Voltage.vi" Type="VI" URL="../CHR617XX.llb/chr617xx Measure Voltage.vi"/>
			<Item Name="chr617xx On/Off Relay.vi" Type="VI" URL="../CHR617XX.llb/chr617xx On/Off Relay.vi"/>
			<Item Name="chr617xx On/Off State.vi" Type="VI" URL="../CHR617XX.llb/chr617xx On/Off State.vi"/>
			<Item Name="chr617xx Protection Clear.vi" Type="VI" URL="../CHR617XX.llb/chr617xx Protection Clear.vi"/>
			<Item Name="chr617xx Query AC Slew Rate.vi" Type="VI" URL="../CHR617XX.llb/chr617xx Query AC Slew Rate.vi"/>
			<Item Name="chr617xx Query All/None Couple.vi" Type="VI" URL="../CHR617XX.llb/chr617xx Query All/None Couple.vi"/>
			<Item Name="chr617xx Query Curr Delay.vi" Type="VI" URL="../CHR617XX.llb/chr617xx Query Curr Delay.vi"/>
			<Item Name="chr617xx Query Curr Limit.vi" Type="VI" URL="../CHR617XX.llb/chr617xx Query Curr Limit.vi"/>
			<Item Name="chr617xx Query DC Slew Rate.vi" Type="VI" URL="../CHR617XX.llb/chr617xx Query DC Slew Rate.vi"/>
			<Item Name="chr617xx Query Ext/Inhibit/Coupling Ctrl.vi" Type="VI" URL="../CHR617XX.llb/chr617xx Query Ext/Inhibit/Coupling Ctrl.vi"/>
			<Item Name="chr617xx Query Inrush Curr.vi" Type="VI" URL="../CHR617XX.llb/chr617xx Query Inrush Curr.vi"/>
			<Item Name="chr617xx Query N/S Select.vi" Type="VI" URL="../CHR617XX.llb/chr617xx Query N/S Select.vi"/>
			<Item Name="chr617xx Query On/Off Relay.vi" Type="VI" URL="../CHR617XX.llb/chr617xx Query On/Off Relay.vi"/>
			<Item Name="chr617xx Query On/Off State.vi" Type="VI" URL="../CHR617XX.llb/chr617xx Query On/Off State.vi"/>
			<Item Name="chr617xx Query Open/Close Angle.vi" Type="VI" URL="../CHR617XX.llb/chr617xx Query Open/Close Angle.vi"/>
			<Item Name="chr617xx Query Oper.Ev.Enable Register.vi" Type="VI" URL="../CHR617XX.llb/chr617xx Query Oper.Ev.Enable Register.vi"/>
			<Item Name="chr617xx Query Oper.Event Register.vi" Type="VI" URL="../CHR617XX.llb/chr617xx Query Oper.Event Register.vi"/>
			<Item Name="chr617xx Query Output Volt.vi" Type="VI" URL="../CHR617XX.llb/chr617xx Query Output Volt.vi"/>
			<Item Name="chr617xx Query Ques.Condition Register.vi" Type="VI" URL="../CHR617XX.llb/chr617xx Query Ques.Condition Register.vi"/>
			<Item Name="chr617xx Query Ques.Enable Register.vi" Type="VI" URL="../CHR617XX.llb/chr617xx Query Ques.Enable Register.vi"/>
			<Item Name="chr617xx Query Ques.Evnet Register.vi" Type="VI" URL="../CHR617XX.llb/chr617xx Query Ques.Evnet Register.vi"/>
			<Item Name="chr617xx Query Ques.NTR Register.vi" Type="VI" URL="../CHR617XX.llb/chr617xx Query Ques.NTR Register.vi"/>
			<Item Name="chr617xx Query Ques.PTR Register.vi" Type="VI" URL="../CHR617XX.llb/chr617xx Query Ques.PTR Register.vi"/>
			<Item Name="chr617xx Query SHAPE.vi" Type="VI" URL="../CHR617XX.llb/chr617xx Query SHAPE.vi"/>
			<Item Name="chr617xx Query Slave Phase.vi" Type="VI" URL="../CHR617XX.llb/chr617xx Query Slave Phase.vi"/>
			<Item Name="chr617xx Query Vac Limit.vi" Type="VI" URL="../CHR617XX.llb/chr617xx Query Vac Limit.vi"/>
			<Item Name="chr617xx Query Vdc Limit.vi" Type="VI" URL="../CHR617XX.llb/chr617xx Query Vdc Limit.vi"/>
			<Item Name="chr617xx Query Volt Range.vi" Type="VI" URL="../CHR617XX.llb/chr617xx Query Volt Range.vi"/>
			<Item Name="chr617xx Read Instrument Data.vi" Type="VI" URL="../CHR617XX.llb/chr617xx Read Instrument Data.vi"/>
			<Item Name="chr617xx Reset.vi" Type="VI" URL="../CHR617XX.llb/chr617xx Reset.vi"/>
			<Item Name="chr617xx Revision Query.vi" Type="VI" URL="../CHR617XX.llb/chr617xx Revision Query.vi"/>
			<Item Name="chr617xx Self-Test.vi" Type="VI" URL="../CHR617XX.llb/chr617xx Self-Test.vi"/>
			<Item Name="chr617xx Set AC Slew Rate.vi" Type="VI" URL="../CHR617XX.llb/chr617xx Set AC Slew Rate.vi"/>
			<Item Name="chr617xx Set All/None Couple.vi" Type="VI" URL="../CHR617XX.llb/chr617xx Set All/None Couple.vi"/>
			<Item Name="chr617xx Set Curr Delay.vi" Type="VI" URL="../CHR617XX.llb/chr617xx Set Curr Delay.vi"/>
			<Item Name="chr617xx Set Curr Limit.vi" Type="VI" URL="../CHR617XX.llb/chr617xx Set Curr Limit.vi"/>
			<Item Name="chr617xx Set DC Slew Rate.vi" Type="VI" URL="../CHR617XX.llb/chr617xx Set DC Slew Rate.vi"/>
			<Item Name="chr617xx Set Ext/Inhibit/Coupling Ctrl.vi" Type="VI" URL="../CHR617XX.llb/chr617xx Set Ext/Inhibit/Coupling Ctrl.vi"/>
			<Item Name="chr617xx Set Ferquency.vi" Type="VI" URL="../CHR617XX.llb/chr617xx Set Ferquency.vi"/>
			<Item Name="chr617xx Set Inrush Curr.vi" Type="VI" URL="../CHR617XX.llb/chr617xx Set Inrush Curr.vi"/>
			<Item Name="chr617xx Set Interharm Dwell Time.vi" Type="VI" URL="../CHR617XX.llb/chr617xx Set Interharm Dwell Time.vi"/>
			<Item Name="chr617xx Set Interharm Freq of End.vi" Type="VI" URL="../CHR617XX.llb/chr617xx Set Interharm Freq of End.vi"/>
			<Item Name="chr617xx Set Interharm Freq of Start.vi" Type="VI" URL="../CHR617XX.llb/chr617xx Set Interharm Freq of Start.vi"/>
			<Item Name="chr617xx Set Interharm Level.vi" Type="VI" URL="../CHR617XX.llb/chr617xx Set Interharm Level.vi"/>
			<Item Name="chr617xx Set Interharm Mode.vi" Type="VI" URL="../CHR617XX.llb/chr617xx Set Interharm Mode.vi"/>
			<Item Name="chr617xx Set Interharm trigger state.vi" Type="VI" URL="../CHR617XX.llb/chr617xx Set Interharm trigger state.vi"/>
			<Item Name="chr617xx SET LIST COUPLE.vi" Type="VI" URL="../CHR617XX.llb/chr617xx SET LIST COUPLE.vi"/>
			<Item Name="chr617xx SET LIST DRAW.vi" Type="VI" URL="../CHR617XX.llb/chr617xx SET LIST DRAW.vi"/>
			<Item Name="chr617xx Set N/S Select.vi" Type="VI" URL="../CHR617XX.llb/chr617xx Set N/S Select.vi"/>
			<Item Name="chr617xx Set Open/Close Angle.vi" Type="VI" URL="../CHR617XX.llb/chr617xx Set Open/Close Angle.vi"/>
			<Item Name="chr617xx Set Oper.Ev.Enable Register.vi" Type="VI" URL="../CHR617XX.llb/chr617xx Set Oper.Ev.Enable Register.vi"/>
			<Item Name="chr617xx SET OUTPUT MODE.vi" Type="VI" URL="../CHR617XX.llb/chr617xx SET OUTPUT MODE.vi"/>
			<Item Name="chr617xx Set Pulse AC Voltage.vi" Type="VI" URL="../CHR617XX.llb/chr617xx Set Pulse AC Voltage.vi"/>
			<Item Name="chr617xx Set Pulse Count.vi" Type="VI" URL="../CHR617XX.llb/chr617xx Set Pulse Count.vi"/>
			<Item Name="chr617xx Set Pulse DC Voltage.vi" Type="VI" URL="../CHR617XX.llb/chr617xx Set Pulse DC Voltage.vi"/>
			<Item Name="chr617xx Set Pulse Duty Cycle.vi" Type="VI" URL="../CHR617XX.llb/chr617xx Set Pulse Duty Cycle.vi"/>
			<Item Name="chr617xx Set Pulse Frequency.vi" Type="VI" URL="../CHR617XX.llb/chr617xx Set Pulse Frequency.vi"/>
			<Item Name="chr617xx Set Pulse Period.vi" Type="VI" URL="../CHR617XX.llb/chr617xx Set Pulse Period.vi"/>
			<Item Name="chr617xx Set Pulse Shape.vi" Type="VI" URL="../CHR617XX.llb/chr617xx Set Pulse Shape.vi"/>
			<Item Name="chr617xx Set Pulse Start Phase Angle.vi" Type="VI" URL="../CHR617XX.llb/chr617xx Set Pulse Start Phase Angle.vi"/>
			<Item Name="chr617xx Set Ques.Enable Register.vi" Type="VI" URL="../CHR617XX.llb/chr617xx Set Ques.Enable Register.vi"/>
			<Item Name="chr617xx Set Ques.NTR Register.vi" Type="VI" URL="../CHR617XX.llb/chr617xx Set Ques.NTR Register.vi"/>
			<Item Name="chr617xx Set Ques.PTR Register.vi" Type="VI" URL="../CHR617XX.llb/chr617xx Set Ques.PTR Register.vi"/>
			<Item Name="chr617xx Set Remote Mode(only RS232).vi" Type="VI" URL="../CHR617XX.llb/chr617xx Set Remote Mode(only RS232).vi"/>
			<Item Name="chr617xx SET SHAPE.vi" Type="VI" URL="../CHR617XX.llb/chr617xx SET SHAPE.vi"/>
			<Item Name="chr617xx Set Slave Phase.vi" Type="VI" URL="../CHR617XX.llb/chr617xx Set Slave Phase.vi"/>
			<Item Name="chr617xx Set Step AC Voltage.vi" Type="VI" URL="../CHR617XX.llb/chr617xx Set Step AC Voltage.vi"/>
			<Item Name="chr617xx Set Step Count.vi" Type="VI" URL="../CHR617XX.llb/chr617xx Set Step Count.vi"/>
			<Item Name="chr617xx Set Step DC Voltage.vi" Type="VI" URL="../CHR617XX.llb/chr617xx Set Step DC Voltage.vi"/>
			<Item Name="chr617xx Set Step delta Frequecy.vi" Type="VI" URL="../CHR617XX.llb/chr617xx Set Step delta Frequecy.vi"/>
			<Item Name="chr617xx Set Step delta Vac.vi" Type="VI" URL="../CHR617XX.llb/chr617xx Set Step delta Vac.vi"/>
			<Item Name="chr617xx Set Step delta Vdc.vi" Type="VI" URL="../CHR617XX.llb/chr617xx Set Step delta Vdc.vi"/>
			<Item Name="chr617xx Set Step Dwell Time.vi" Type="VI" URL="../CHR617XX.llb/chr617xx Set Step Dwell Time.vi"/>
			<Item Name="chr617xx Set Step Frequency.vi" Type="VI" URL="../CHR617XX.llb/chr617xx Set Step Frequency.vi"/>
			<Item Name="chr617xx Set Step Shape.vi" Type="VI" URL="../CHR617XX.llb/chr617xx Set Step Shape.vi"/>
			<Item Name="chr617xx Set Step Start Phase Angle.vi" Type="VI" URL="../CHR617XX.llb/chr617xx Set Step Start Phase Angle.vi"/>
			<Item Name="chr617xx SET TRIGGER STATE.vi" Type="VI" URL="../CHR617XX.llb/chr617xx SET TRIGGER STATE.vi"/>
			<Item Name="chr617xx Set Vac Limit.vi" Type="VI" URL="../CHR617XX.llb/chr617xx Set Vac Limit.vi"/>
			<Item Name="chr617xx Set Vac Output.vi" Type="VI" URL="../CHR617XX.llb/chr617xx Set Vac Output.vi"/>
			<Item Name="chr617xx Set Vdc Limit.vi" Type="VI" URL="../CHR617XX.llb/chr617xx Set Vdc Limit.vi"/>
			<Item Name="chr617xx Set Vdc Output.vi" Type="VI" URL="../CHR617XX.llb/chr617xx Set Vdc Output.vi"/>
			<Item Name="chr617xx Set Volt Range.vi" Type="VI" URL="../CHR617XX.llb/chr617xx Set Volt Range.vi"/>
			<Item Name="chr617xx SET WAVEFORM A PARAMETER.vi" Type="VI" URL="../CHR617XX.llb/chr617xx SET WAVEFORM A PARAMETER.vi"/>
			<Item Name="chr617xx SET WAVEFORM B PARAMETER.vi" Type="VI" URL="../CHR617XX.llb/chr617xx SET WAVEFORM B PARAMETER.vi"/>
			<Item Name="chr617xx Trace Waveform.vi" Type="VI" URL="../CHR617XX.llb/chr617xx Trace Waveform.vi"/>
			<Item Name="chr617xx Write Instrument Data.vi" Type="VI" URL="../CHR617XX.llb/chr617xx Write Instrument Data.vi"/>
			<Item Name="Chroma 61700 series Getting Start.vi" Type="VI" URL="../CHR617XX.llb/Chroma 61700 series Getting Start.vi"/>
		</Item>
		<Item Name="Type Definition" Type="Folder" URL="../Type Definition">
			<Property Name="NI.DISK" Type="Bool">true</Property>
		</Item>
		<Item Name="Documentation" Type="Folder" URL="../Documentation">
			<Property Name="NI.DISK" Type="Bool">true</Property>
		</Item>
		<Item Name="Utility" Type="Folder">
			<Item Name="Type Definitions" Type="Folder">
				<Item Name="Custom Pallet DBL.ctl" Type="VI" URL="../../../Trunk/Utility/Custom Pallet Controls/Custom Pallet DBL.ctl"/>
				<Item Name="Custom Pallet Forward.ctl" Type="VI" URL="../../../Trunk/Utility/Custom Pallet Controls/Custom Pallet Forward.ctl"/>
			</Item>
		</Item>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="IVI Error Message Builder.vi" Type="VI" URL="/&lt;vilib&gt;/errclust.llb/IVI Error Message Builder.vi"/>
				<Item Name="VISA Open Access Mode.ctl" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Open Access Mode.ctl"/>
				<Item Name="Space Constant.vi" Type="VI" URL="/&lt;vilib&gt;/dlg_ctls.llb/Space Constant.vi"/>
				<Item Name="whitespace.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/whitespace.ctl"/>
				<Item Name="Trim Whitespace.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Trim Whitespace.vi"/>
				<Item Name="Parse State Queue__jki_lib_state_machine.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/State Machine/_JKI_lib_State_Machine.llb/Parse State Queue__jki_lib_state_machine.vi"/>
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
				<Item Name="Set Cursor (Icon Pict).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/cursorutil.llb/Set Cursor (Icon Pict).vi"/>
				<Item Name="Set Cursor (Cursor ID).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/cursorutil.llb/Set Cursor (Cursor ID).vi"/>
				<Item Name="Set Cursor.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/cursorutil.llb/Set Cursor.vi"/>
				<Item Name="Set Busy.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/cursorutil.llb/Set Busy.vi"/>
				<Item Name="Unset Busy.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/cursorutil.llb/Unset Busy.vi"/>
				<Item Name="GetHelpDir.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetHelpDir.vi"/>
				<Item Name="BuildHelpPath.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/BuildHelpPath.vi"/>
				<Item Name="LVBoundsTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVBoundsTypeDef.ctl"/>
				<Item Name="Get String Text Bounds.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Get String Text Bounds.vi"/>
				<Item Name="Get Text Rect.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Get Text Rect.vi"/>
				<Item Name="Convert property node font to graphics font.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Convert property node font to graphics font.vi"/>
				<Item Name="Longest Line Length in Pixels.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Longest Line Length in Pixels.vi"/>
				<Item Name="LVRectTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVRectTypeDef.ctl"/>
				<Item Name="Three Button Dialog CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog CORE.vi"/>
				<Item Name="Three Button Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog.vi"/>
				<Item Name="DialogTypeEnum.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogTypeEnum.ctl"/>
				<Item Name="Not Found Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Not Found Dialog.vi"/>
				<Item Name="Set Bold Text.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set Bold Text.vi"/>
				<Item Name="Clear Errors.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Clear Errors.vi"/>
				<Item Name="eventvkey.ctl" Type="VI" URL="/&lt;vilib&gt;/event_ctls.llb/eventvkey.ctl"/>
				<Item Name="TagReturnType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/TagReturnType.ctl"/>
				<Item Name="ErrWarn.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/ErrWarn.ctl"/>
				<Item Name="Details Display Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Details Display Dialog.vi"/>
				<Item Name="Search and Replace Pattern.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Search and Replace Pattern.vi"/>
				<Item Name="Find Tag.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Find Tag.vi"/>
				<Item Name="Format Message String.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Format Message String.vi"/>
				<Item Name="Error Code Database.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Code Database.vi"/>
				<Item Name="GetRTHostConnectedProp.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetRTHostConnectedProp.vi"/>
				<Item Name="Set String Value.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set String Value.vi"/>
				<Item Name="Check Special Tags.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Check Special Tags.vi"/>
				<Item Name="General Error Handler Core CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler Core CORE.vi"/>
				<Item Name="DialogType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogType.ctl"/>
				<Item Name="General Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler.vi"/>
				<Item Name="Add State(s) to Queue__jki_lib_state_machine.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/State Machine/_JKI_lib_State_Machine.llb/Add State(s) to Queue__jki_lib_state_machine.vi"/>
			</Item>
			<Item Name="chr617xx.dll" Type="Document" URL="../chr617xx.dll"/>
		</Item>
		<Item Name="Build Specifications" Type="Build">
			<Item Name="CHROMA Getting Started Main" Type="EXE">
				<Property Name="App_copyErrors" Type="Bool">true</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{EE5FAECB-DC0F-49BF-A506-0650167B248C}</Property>
				<Property Name="App_INI_GUID" Type="Str">{4907958B-C869-475F-948C-AD8D85A51BBC}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{BEC45BFF-37F2-4159-8394-3C22B86172CA}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">CHROMA Getting Started Main</Property>
				<Property Name="Bld_excludeInlineSubVIs" Type="Bool">true</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../builds/NI_AB_PROJECTNAME/CHROMA Getting Started Main</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToCommon</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{490AD5E5-BE92-4EE3-B884-1B2DCC8B0FB6}</Property>
				<Property Name="Bld_version.build" Type="Int">14</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">Chroma Driver Stand Alone.exe</Property>
				<Property Name="Destination[0].path" Type="Path">../builds/NI_AB_PROJECTNAME/CHROMA Getting Started Main/Chroma Driver Stand Alone.exe</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../builds/NI_AB_PROJECTNAME/CHROMA Getting Started Main/data</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Source[0].itemID" Type="Str">{91E5261A-14C0-421C-8162-4413C22710E5}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/Main/CHROMA Getting Started Main.vi</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="SourceCount" Type="Int">2</Property>
				<Property Name="TgtF_companyName" Type="Str">General Electric</Property>
				<Property Name="TgtF_enableDebugging" Type="Bool">true</Property>
				<Property Name="TgtF_fileDescription" Type="Str">CHROMA Getting Started Main</Property>
				<Property Name="TgtF_internalName" Type="Str">CHROMA Getting Started Main</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2016 General Electric</Property>
				<Property Name="TgtF_productName" Type="Str">CHROMA Getting Started Main</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{A672A85B-82D4-4614-8016-3BD9F4AA621A}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">Chroma Driver Stand Alone.exe</Property>
			</Item>
		</Item>
	</Item>
</Project>
