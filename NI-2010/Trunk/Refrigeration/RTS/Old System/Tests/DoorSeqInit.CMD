! --------------------------------------------------------------------------
! Intertek Test Room Data Collection System
! --------------------------------------------------------------------------
!
!    Descr    : LOGGER test
!    File    : LOGGER.CMD
!    Rev    : 1.0
!    By    : Mark Hooks
!    Date    : 20-Jun-95

Point DoorSeq
Set 0 {PSeqTmr} = 0
Set 0 {PSeqFrz} = 0
Set 0 {PSeqCab} = 0
Set 0 {PSeqSlide} = 0
Set 0 {PDoorEnable} = 1
! --------------------- Main test loop -----------------------

If ("{SSeqFile}" <> "") Then
	Sequencer {ASystemPath}tests\{SSeqFile}.csv
	Log loaded sequence {ASystemPath}tests\{SSeqFile}.csv
	Sequencer
	If {SSeqStart_Right} = -1 Then
		Math 0 {PSeqTmr} = {ATestTime}+60
		Math 0 {PNextOpen} = {ATime_Raw}+60	! Absolute time
		Math 0 {PFirstOpen} = {ATime_Raw}+60	! Store first opening for later
	Else
						! 8.5 * 3600          -  6 * 3600 (if 6 am start)
		Math 0 {PSeqTmr} = {SSeqStart_Right}*3600 - {ATime_Raw} 	! Test Time
		
		Math 0 {PNextOpen} = {SSeqStart_Right}*3600	! Absolute time
	Endif
	Log Next Open at HMS[{PNextOpen}], TestTime HMS[{PSeqTmr}]
	Set 0 {PFrzTotal} = 0
	Set 0 {PCabTotal} = 0
	Set 0 {PSlideTotal} = 0

Endif
	

