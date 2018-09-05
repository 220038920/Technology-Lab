! --------------------------------------------------------------------------
! Intertek Test Room Data Collection System
! --------------------------------------------------------------------------
!
!    Descr    : LOGGER test
!    File    : LOGGER.CMD
!    Rev    : 1.0
!    By    : Mark Hooks
!    Date    : 20-Jun-95

! --------------------- Main test loop -----------------------

	! Sequence file changed
	If ("{SSeqLoad}" = "Y") & {ASettings} & {PSeqStep} = -1 Then
		If ("{SSeqFile}" <> "") Then
			Sequencer {SSeqFile}.csv
			Log loaded sequence {SSeqFile}.csv
			Sequencer
		Endif
	Endif
	
	! Test was restarted so restart sequence
	If {ATestTime} = 0 & {PSeqStep} = -1 Then	
		Include DoorSeqInit
	Endif
		
	If {ATestTime} > ({pSeqTmr} + {PSeqTime}) & {PSeqStep} <> -1 & {SSeqManual_Right} = 0 Then
		Set 0 {PDoorStatus} = 0

    ! -- Check to open cab ---
		If {PSeqCab} Then
			If {PCabTotal} = 0 Then
				Trend Interval 10	! Set fast trend interval to catch events
			Endif

			Log Open Cab for {pSeqCab}
			Math 0 {PCabDoor#} = {pSeqCab} - 2		
			Math 0 {PCabTotal} = {PCabTotal} + 1
			Math {PDoorStatus} = {PDoorStatus} + 1
		Endif

		! -- Check to open Frz door ---
		If {PSeqFrz} Then
			Log Open Frz for {pSeqFrz}
			Math 0 {PFrzDoor#} = {pSeqFrz} - 2
			Math 0 {PFrzTotal} = {PFrzTotal} + 1
			Math 0 {PDoorStatus} = {PDoorStatus} + 2
		Endif

    ! -- Check to open Slide ---
		If {PSeqSlide} Then
			Log Open Slide for {pSeqSlide}
			Math 0 {PSlideDoor#} = {pSeqSlide} - 2		
			Math 0 {PSlideTotal} = {PSlideTotal} + 1
			Math {PDoorStatus} = {PDoorStatus} + 3
		Endif
		Sequencer
		Set {PSeqTmr} = {ATestTime}
		If {PSeqStep} = -1 Then
			Log Reached end of sequence file
			! Tell what time tomorrow the opening will happen
			If {SSeqStart_Right} = -1 Then
				Set 0 {PNextOpen} = {PFirstOpen}
			Else
				Math 0 {PNextOpen} = {SSeqStart_Right}*3600	! Absolute time
			Endif
		Else
			Math 0 {PNextOpen} = {ATime_Raw}+{PSeqTime}	! Absolute time		
		Endif
		Math 0 {PLastOpen} = {ATime_Raw}
		
		Plot Change {PDoorStatus}
	Else
		Set {PDoorStatus} = 0
	Endif
	
	! Manual overrides
	If {SSeqManual_Right} = 2 Then	
		Set 0 {PFrzDoor#} = 30
	ElseIf {SSeqManual_Right} = 3 Then	
		Set 0 {PCabDoor#} = 30
	ElseIf {SSeqManual_Right} = 4 Then	
		Set 0 {PSlideDoor#} = 30
	ElseIf {SSeqManual_Right} = 5 Then	
		Set 0 {PCabDoor#} = 30
		Set 0 {PFrzDoor#} = 30
		Set 0 {PSlideDoor#} = 30
	Endif



