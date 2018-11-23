! Name of package being compiled: Main
! 
! Symbols from runtime.s
	.import	_putString
	.import	_heapInitialize
	.import	_heapAlloc
	.import	_heapFree
	.import	_IsKindOf
	.import	_RestoreCatchStack
	.import	_PerformThrow
	.import	_runtimeErrorOverflow
	.import	_runtimeErrorZeroDivide
	.import	_runtimeErrorNullPointer
	.import	_runtimeErrorUninitializedObject
	.import	_runtimeErrorWrongObject
	.import	_runtimeErrorWrongObject2
	.import	_runtimeErrorWrongObject3
	.import	_runtimeErrorBadObjectSize
	.import	_runtimeErrorDifferentArraySizes
	.import	_runtimeErrorWrongArraySize
	.import	_runtimeErrorUninitializedArray
	.import	_runtimeErrorBadArrayIndex
	.import	_runtimeErrorNullPointerDuringCall
	.import	_runtimeErrorArrayCountNotPositive
	.import	_runtimeErrorRestoreCatchStackError
	.text
! ErrorDecls
	.import	_Error_P_System_UncaughtThrowError
	.align
! Functions imported from other packages
	.import	print
	.import	printInt
	.import	printHex
	.import	printChar
	.import	printBool
	.import	_P_System_MemoryEqual
	.import	_P_System_StrEqual
	.import	_P_System_StrCopy
	.import	_P_System_StrCmp
	.import	_P_System_Min
	.import	_P_System_Max
	.import	_P_System_printIntVar
	.import	_P_System_printHexVar
	.import	_P_System_printBoolVar
	.import	_P_System_printCharVar
	.import	_P_System_printPtr
	.import	_P_System_nl
	.import	_P_System_PrintMemory
	.import	Cleari
	.import	Seti
	.import	Wait
	.import	RuntimeExit
	.import	getCatchStack
	.import	MemoryZero
	.import	MemoryCopy
	.import	_P_System_KPLSystemInitialize
	.import	_P_System_KPLMemoryAlloc
	.import	_P_System_KPLMemoryFree
	.import	_P_System_KPLUncaughtThrow
	.import	_P_System_KPLIsKindOf
	.import	_P_System_KPLSystemError
	.import	_P_BitMap_TestBitMap
	.import	_P_Kernel_TimerInterruptHandler
	.import	_P_Kernel_DiskInterruptHandler
	.import	_P_Kernel_SerialInterruptHandler
	.import	_P_Kernel_IllegalInstructionHandler
	.import	_P_Kernel_ArithmeticExceptionHandler
	.import	_P_Kernel_AddressExceptionHandler
	.import	_P_Kernel_PageInvalidExceptionHandler
	.import	_P_Kernel_PageReadonlyExceptionHandler
	.import	_P_Kernel_PrivilegedInstructionHandler
	.import	_P_Kernel_AlignmentExceptionHandler
	.import	_P_Kernel_SyscallTrapHandler
	.import	_P_Kernel_Handle_Sys_Fork
	.import	_P_Kernel_Handle_Sys_Yield
	.import	_P_Kernel_Handle_Sys_Exec
	.import	_P_Kernel_Handle_Sys_Join
	.import	_P_Kernel_Handle_Sys_Exit
	.import	_P_Kernel_Handle_Sys_Create
	.import	_P_Kernel_Handle_Sys_Open
	.import	_P_Kernel_Handle_Sys_Read
	.import	_P_Kernel_Handle_Sys_Write
	.import	_P_Kernel_Handle_Sys_Seek
	.import	_P_Kernel_Handle_Sys_Close
	.import	_P_Kernel_Handle_Sys_Shutdown
	.import	_P_Kernel_InitializeScheduler
	.import	_P_Kernel_Run
	.import	_P_Kernel_PrintReadyList
	.import	_P_Kernel_ThreadStartMain
	.import	_P_Kernel_ThreadFinish
	.import	_P_Kernel_FatalError_ThreadVersion
	.import	_P_Kernel_SetInterruptsTo
	.import	_P_Kernel_ProcessFinish
	.import	Switch
	.import	ThreadStartUp
	.import	GetOldUserPCFromSystemStack
	.import	LoadPageTableRegs
	.import	SaveUserRegs
	.import	RestoreUserRegs
	.import	BecomeUserThread
! Externally visible functions in this package
	.export	_mainEntry
	.export	main
! The following class and its methods are from other packages
	.import	_P_System_Object
! The following class and its methods are from other packages
	.import	_P_BitMap_BitMap
! The following class and its methods are from other packages
	.import	_P_List_List
! The following class and its methods are from other packages
	.import	_P_List_Listable
! The following class and its methods are from other packages
	.import	_P_Kernel_Semaphore
! The following class and its methods are from other packages
	.import	_P_Kernel_Mutex
! The following class and its methods are from other packages
	.import	_P_Kernel_Condition
! The following class and its methods are from other packages
	.import	_P_Kernel_HoareMutex
! The following class and its methods are from other packages
	.import	_P_Kernel_HoareCondition
! The following class and its methods are from other packages
	.import	_P_Kernel_TestHoareSemantic
! The following class and its methods are from other packages
	.import	_P_Kernel_Thread
! The following class and its methods are from other packages
	.import	_P_Kernel_ThreadManager
! The following class and its methods are from other packages
	.import	_P_Kernel_ProcessControlBlock
! The following class and its methods are from other packages
	.import	_P_Kernel_ProcessManager
! The following class and its methods are from other packages
	.import	_P_Kernel_ProcessManagerHoareSemantic
! The following class and its methods are from other packages
	.import	_P_Kernel_FrameManager
! The following class and its methods are from other packages
	.import	_P_Kernel_AddrSpace
! The following interfaces are from other packages
! The following interfaces are from this package
! Globals imported from other packages
	.import	_P_System_FatalError
	.import	_P_Kernel_readyList
	.import	_P_Kernel_currentThread
	.import	_P_Kernel_mainThread
	.import	_P_Kernel_idleThread
	.import	_P_Kernel_threadsToBeDestroyed
	.import	_P_Kernel_currentInterruptStatus
	.import	_P_Kernel_processManager
	.import	_P_Kernel_threadManager
	.import	_P_Kernel_frameManager
	.import	_P_Kernel_testHoareSemantic
	.import	_P_Kernel_processManagerHoareSemantic
! Global variables in this package
	.data
_Global_uniqueNumberLock:
! Static object
	.word	_P_Kernel_Mutex
	.word	0
	.word	0
	.word	0
	.word	0
_Global_nextUnique:
	.word	0x00000001		! decimal value = 1
_Global_allDone:
! Static object
	.word	_P_Kernel_Semaphore
	.word	0
	.word	0
	.word	0
	.word	0
_Global_freeze:
! Static object
	.word	_P_Kernel_Semaphore
	.word	0
	.word	0
	.word	0
	.word	0
_Global_allDone2:
! Static object
	.word	_P_Kernel_Semaphore
	.word	0
	.word	0
	.word	0
	.word	0
_Global_histogram:
! Static array
	.word	27		! number of elements
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.align
	.align
! String constants
_StringConst_32:
	.word	31			! length
	.ascii	"Concurrency control failure (2)"
	.align
_StringConst_31:
	.word	74			! length
	.ascii	"\n\n***** PROCESS-MANAGER-HOARE-SEMANTIC TEST COMPLETED SUCCESSFULLY *****\n\n"
	.align
_StringConst_30:
	.word	31			! length
	.ascii	"Concurrency control failure (1)"
	.align
_StringConst_29:
	.word	31			! length
	.ascii	"TestProcessManagerHoareSemantic"
	.align
_StringConst_28:
	.word	53			! length
	.ascii	"\n\n*****  PROCESS-MANAGER-HOARE-SEMANTIC TEST  *****\n\n"
	.align
_StringConst_27:
	.word	31			! length
	.ascii	"Concurrency control failure (2)"
	.align
_StringConst_26:
	.word	63			! length
	.ascii	"\n\n***** TEST FOR HOARE SEMANTIC  COMPLETED SUCCESSFULLY *****\n\n"
	.align
_StringConst_25:
	.word	31			! length
	.ascii	"Concurrency control failure (1)"
	.align
_StringConst_24:
	.word	20			! length
	.ascii	"TestForHoareSemantic"
	.align
_StringConst_23:
	.word	37			! length
	.ascii	"\n\n*****  HOARE SEMANTIC TEST  *****\n\n"
	.align
_StringConst_22:
	.word	49			! length
	.ascii	"Data corruption, indicating that frame was shared"
	.align
_StringConst_21:
	.word	35			! length
	.ascii	"Bad frame number in some addr space"
	.align
_StringConst_20:
	.word	32			! length
	.ascii	"addrSpace.numberOfPages is wrong"
	.align
_StringConst_19:
	.word	43			! length
	.ascii	"Problems with bits in some page table entry"
	.align
_StringConst_18:
	.word	35			! length
	.ascii	"Bad frame number in some addr space"
	.align
_StringConst_17:
	.word	32			! length
	.ascii	"addrSpace.numberOfPages is wrong"
	.align
_StringConst_16:
	.word	57			! length
	.ascii	"\n\n***** FRAME-MANAGER TEST COMPLETED SUCCESSFULLY *****\n\n"
	.align
_StringConst_15:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_14:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_13:
	.word	66			! length
	.ascii	"\n\nHere is a histogram showing how many times each frame was used:\n"
	.align
_StringConst_12:
	.word	16			! length
	.ascii	"TestFrameManager"
	.align
_StringConst_11:
	.word	36			! length
	.ascii	"\n\n*****  FRAME-MANAGER TEST  *****\n\n"
	.align
_StringConst_10:
	.word	31			! length
	.ascii	"Concurrency control failure (2)"
	.align
_StringConst_9:
	.word	59			! length
	.ascii	"\n\n***** PROCESS-MANAGER TEST COMPLETED SUCCESSFULLY *****\n\n"
	.align
_StringConst_8:
	.word	31			! length
	.ascii	"Concurrency control failure (1)"
	.align
_StringConst_7:
	.word	18			! length
	.ascii	"TestProcessManager"
	.align
_StringConst_6:
	.word	38			! length
	.ascii	"\n\n*****  PROCESS-MANAGER TEST  *****\n\n"
	.align
_StringConst_5:
	.word	31			! length
	.ascii	"Concurrency control failure (2)"
	.align
_StringConst_4:
	.word	58			! length
	.ascii	"\n\n***** THREAD-MANAGER TEST COMPLETED SUCCESSFULLY *****\n\n"
	.align
_StringConst_3:
	.word	31			! length
	.ascii	"Concurrency control failure (1)"
	.align
_StringConst_2:
	.word	17			! length
	.ascii	"TestThreadManager"
	.align
_StringConst_1:
	.word	37			! length
	.ascii	"\n\n*****  THREAD-MANAGER TEST  *****\n\n"
	.align
	.text
! 
! =====  MAIN ENTRY POINT  =====
! 
_mainEntry:
	set	_packageName,r2		! Get CheckVersion started
	set	0xeb2db4a8,r3		! .  hashVal = -349326168
	call	_CheckVersion_P_Main_	! .
	cmp	r1,0			! .
	be	_Label_46		! .
	ret				! .
_Label_46:				! .
	call	_heapInitialize
	jmp	main
! 
! Source Filename and Package Name
! 
_sourceFileName:
	.ascii	"Main.c\0"
_packageName:
	.ascii	"Main\0"
	.align
!
! CheckVersion
!
!     This routine is passed:
!       r2 = ptr to the name of the 'using' package
!       r3 = the expected hashVal for 'used' package (myPackage)
!     It prints an error message if the expected hashVal is not correct
!     It then checks all the packages that 'myPackage' uses.
!
!     This routine returns:
!       r1:  0=No problems, 1=Problems
!
!     Registers modified: r1-r4
!
_CheckVersion_P_Main_:
	.export	_CheckVersion_P_Main_
	set	0xeb2db4a8,r4		! myHashVal = -349326168
	cmp	r3,r4
	be	_Label_47
	set	_CVMess1,r1
	call	_putString
	mov	r2,r1			! print using package
	call	_putString
	set	_CVMess2,r1
	call	_putString
	set	_packageName,r1		! print myPackage
	call	_putString
	set	_CVMess3,r1
	call	_putString
	set	_packageName,r1		! print myPackage
	call	_putString
	set	_CVMess4,r1
	call	_putString
	mov	r2,r1			! print using package
	call	_putString
	set	_CVMess5,r1
	call	_putString
	set	_packageName,r1		! print myPackage
	call	_putString
	set	_CVMess6,r1
	call	_putString
	mov	1,r1
	ret	
_Label_47:
	mov	0,r1
! Make sure _P_System_ has hash value 0x9e9d23b6 (decimal -1633868874)
	set	_packageName,r2
	set	0x9e9d23b6,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_48
! Make sure _P_BitMap_ has hash value 0xa596b1b5 (decimal -1516850763)
	set	_packageName,r2
	set	0xa596b1b5,r3
	call	_CheckVersion_P_BitMap_
	.import	_CheckVersion_P_BitMap_
	cmp	r1,0
	bne	_Label_48
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_48
! Make sure _P_Kernel_ has hash value 0x5e5dad69 (decimal 1583197545)
	set	_packageName,r2
	set	0x5e5dad69,r3
	call	_CheckVersion_P_Kernel_
	.import	_CheckVersion_P_Kernel_
	cmp	r1,0
	bne	_Label_48
_Label_48:
	ret
_CVMess1:	.ascii	"\nVERSION CONSISTENCY ERROR: Package '\0"
_CVMess2:	.ascii	"' uses package '\0"
_CVMess3:	.ascii	"'.  Whenever a header file is modified, all packages that use that package (directly or indirectly) must be recompiled.  The header file for '\0"
_CVMess4:	.ascii	"' has been changed since '\0"
_CVMess5:	.ascii	"' was compiled last.  Please recompile all packages that depend on '\0"
_CVMess6:	.ascii	"'.\n\n\0"
	.align
! 
! ===============  FUNCTION main  ===============
! 
main:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor_main,r1
	push	r1
	mov	12,r1
_Label_692:
	push	r0
	sub	r1,1,r1
	bne	_Label_692
	mov	7,r13		! source line 7
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	17,r13		! source line 17
	mov	"\0\0SE",r10
!   _temp_49 = &_Global_uniqueNumberLock
	set	_Global_uniqueNumberLock,r1
	store	r1,[r14+-52]
!   Send message Init
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	20,r13		! source line 20
	mov	"\0\0CA",r10
	call	_P_Kernel_InitializeScheduler
! ASSIGNMENT STATEMENT...
	mov	23,r13		! source line 23
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_processManager = zeros  (sizeInBytes=1316)
	set	_P_Kernel_processManager,r4
	mov	329,r3
_Label_693:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_693
!   _P_Kernel_processManager = _P_Kernel_ProcessManager
	set	_P_Kernel_ProcessManager,r1
	set	_P_Kernel_processManager,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	24,r13		! source line 24
	mov	"\0\0SE",r10
!   _temp_51 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-44]
!   Send message Init
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	27,r13		! source line 27
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_threadManager = zeros  (sizeInBytes=41696)
	set	_P_Kernel_threadManager,r4
	mov	10424,r3
_Label_694:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_694
!   _P_Kernel_threadManager = _P_Kernel_ThreadManager
	set	_P_Kernel_ThreadManager,r1
	set	_P_Kernel_threadManager,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	28,r13		! source line 28
	mov	"\0\0SE",r10
!   _temp_53 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-36]
!   Send message Init
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	31,r13		! source line 31
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_frameManager = zeros  (sizeInBytes=56)
	set	_P_Kernel_frameManager,r4
	mov	14,r3
_Label_695:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_695
!   _P_Kernel_frameManager = _P_Kernel_FrameManager
	set	_P_Kernel_FrameManager,r1
	set	_P_Kernel_frameManager,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	32,r13		! source line 32
	mov	"\0\0SE",r10
!   _temp_55 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-28]
!   Send message Init
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	35,r13		! source line 35
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_testHoareSemantic = zeros  (sizeInBytes=41716)
	set	_P_Kernel_testHoareSemantic,r4
	mov	10429,r3
_Label_696:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_696
!   _P_Kernel_testHoareSemantic = _P_Kernel_TestHoareSemantic
	set	_P_Kernel_TestHoareSemantic,r1
	set	_P_Kernel_testHoareSemantic,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	36,r13		! source line 36
	mov	"\0\0SE",r10
!   _temp_57 = &_P_Kernel_testHoareSemantic
	set	_P_Kernel_testHoareSemantic,r1
	store	r1,[r14+-20]
!   Send message Init
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	39,r13		! source line 39
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_processManagerHoareSemantic = zeros  (sizeInBytes=1356)
	set	_P_Kernel_processManagerHoareSemantic,r4
	mov	339,r3
_Label_697:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_697
!   _P_Kernel_processManagerHoareSemantic = _P_Kernel_ProcessManagerHoareSemantic
	set	_P_Kernel_ProcessManagerHoareSemantic,r1
	set	_P_Kernel_processManagerHoareSemantic,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	40,r13		! source line 40
	mov	"\0\0SE",r10
!   _temp_59 = &_P_Kernel_processManagerHoareSemantic
	set	_P_Kernel_processManagerHoareSemantic,r1
	store	r1,[r14+-12]
!   Send message Init
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	141,r13		! source line 141
	mov	"\0\0CA",r10
	call	_function_44_RunThreadManagerTests
! CALL STATEMENT...
!   Call the function
	mov	142,r13		! source line 142
	mov	"\0\0CA",r10
	call	_function_42_RunProcessManagerTests
! CALL STATEMENT...
!   Call the function
	mov	143,r13		! source line 143
	mov	"\0\0CA",r10
	call	_function_40_RunFrameManagerTests
! CALL STATEMENT...
!   Call the function
	mov	144,r13		! source line 144
	mov	"\0\0CA",r10
	call	_function_36_RunHoareSemanticTests
! CALL STATEMENT...
!   Call the function
	mov	145,r13		! source line 145
	mov	"\0\0CA",r10
	call	_function_34_RunProcessManagerHoareSemanticTests
! CALL STATEMENT...
!   Call the function
	mov	146,r13		! source line 146
	mov	"\0\0CE",r10
	call	RuntimeExit
! RETURN STATEMENT...
	mov	146,r13		! source line 146
	mov	"\0\0RE",r10
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor_main:
	.word	_sourceFileName
	.word	_Label_60
	.word	0		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_61
	.word	-12
	.word	4
	.word	_Label_62
	.word	-16
	.word	4
	.word	_Label_63
	.word	-20
	.word	4
	.word	_Label_64
	.word	-24
	.word	4
	.word	_Label_65
	.word	-28
	.word	4
	.word	_Label_66
	.word	-32
	.word	4
	.word	_Label_67
	.word	-36
	.word	4
	.word	_Label_68
	.word	-40
	.word	4
	.word	_Label_69
	.word	-44
	.word	4
	.word	_Label_70
	.word	-48
	.word	4
	.word	_Label_71
	.word	-52
	.word	4
	.word	0
_Label_60:
	.ascii	"main\0"
	.align
_Label_61:
	.byte	'?'
	.ascii	"_temp_59\0"
	.align
_Label_62:
	.byte	'?'
	.ascii	"_temp_58\0"
	.align
_Label_63:
	.byte	'?'
	.ascii	"_temp_57\0"
	.align
_Label_64:
	.byte	'?'
	.ascii	"_temp_56\0"
	.align
_Label_65:
	.byte	'?'
	.ascii	"_temp_55\0"
	.align
_Label_66:
	.byte	'?'
	.ascii	"_temp_54\0"
	.align
_Label_67:
	.byte	'?'
	.ascii	"_temp_53\0"
	.align
_Label_68:
	.byte	'?'
	.ascii	"_temp_52\0"
	.align
_Label_69:
	.byte	'?'
	.ascii	"_temp_51\0"
	.align
_Label_70:
	.byte	'?'
	.ascii	"_temp_50\0"
	.align
_Label_71:
	.byte	'?'
	.ascii	"_temp_49\0"
	.align
! 
! ===============  FUNCTION GetUniqueNumber  ===============
! 
_function_45_GetUniqueNumber:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_45_GetUniqueNumber,r1
	push	r1
	mov	4,r1
_Label_698:
	push	r0
	sub	r1,1,r1
	bne	_Label_698
	mov	162,r13		! source line 162
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	164,r13		! source line 164
	mov	"\0\0SE",r10
!   _temp_72 = &_Global_uniqueNumberLock
	set	_Global_uniqueNumberLock,r1
	store	r1,[r14+-16]
!   Send message Lock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	165,r13		! source line 165
	mov	"\0\0AS",r10
!   i = _Global_nextUnique		(4 bytes)
	set	_Global_nextUnique,r1
	load	[r1],r1
	store	r1,[r14+-20]
! ASSIGNMENT STATEMENT...
	mov	166,r13		! source line 166
	mov	"\0\0AS",r10
!   _Global_nextUnique = _Global_nextUnique + count		(int)
	set	_Global_nextUnique,r1
	load	[r1],r1
	load	[r14+8],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	set	_Global_nextUnique,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	167,r13		! source line 167
	mov	"\0\0SE",r10
!   _temp_73 = &_Global_uniqueNumberLock
	set	_Global_uniqueNumberLock,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	168,r13		! source line 168
	mov	"\0\0RE",r10
!   ReturnResult: i  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+8]
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_45_GetUniqueNumber:
	.word	_sourceFileName
	.word	_Label_74
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_75
	.word	8
	.word	4
	.word	_Label_76
	.word	-12
	.word	4
	.word	_Label_77
	.word	-16
	.word	4
	.word	_Label_78
	.word	-20
	.word	4
	.word	0
_Label_74:
	.ascii	"GetUniqueNumber\0"
	.align
_Label_75:
	.byte	'I'
	.ascii	"count\0"
	.align
_Label_76:
	.byte	'?'
	.ascii	"_temp_73\0"
	.align
_Label_77:
	.byte	'?'
	.ascii	"_temp_72\0"
	.align
_Label_78:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  FUNCTION RunThreadManagerTests  ===============
! 
_function_44_RunThreadManagerTests:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_44_RunThreadManagerTests,r1
	push	r1
	mov	21,r1
_Label_699:
	push	r0
	sub	r1,1,r1
	bne	_Label_699
	mov	199,r13		! source line 199
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	203,r13		! source line 203
	mov	"\0\0SE",r10
!   _temp_79 = &_Global_allDone
	set	_Global_allDone,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	204,r13		! source line 204
	mov	"\0\0SE",r10
!   _temp_80 = &_Global_freeze
	set	_Global_freeze,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	205,r13		! source line 205
	mov	"\0\0SE",r10
!   _temp_81 = &_Global_uniqueNumberLock
	set	_Global_uniqueNumberLock,r1
	store	r1,[r14+-64]
!   Send message Init
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	206,r13		! source line 206
	mov	"\0\0AS",r10
!   _Global_nextUnique = 1		(4 bytes)
	mov	1,r1
	set	_Global_nextUnique,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_82 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_82  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	208,r13		! source line 208
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	210,r13		! source line 210
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_87 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-56]
!   Calculate and save the FOR-LOOP ending value
!   _temp_88 = 20		(4 bytes)
	mov	20,r1
	store	r1,[r14+-52]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_87  (sizeInBytes=4)
	load	[r14+-56],r1
	store	r1,[r14+-76]
_Label_83:
!   Perform the FOR-LOOP termination test
!   if i > _temp_88 then goto _Label_86		
	load	[r14+-76],r1
	load	[r14+-52],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_86
_Label_84:
	mov	210,r13		! source line 210
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	211,r13		! source line 211
	mov	"\0\0AS",r10
!   ALLOC CLASS Constructor...
!   Call alloc...
	mov	4164,r1
	store	r1,[r14+-48]
!   th = alloc (_temp_89)
	load	[r14+-48],r1
	call	_heapAlloc
	store	r1,[r14+-80]
!   ZeroMemory: *th = zeros  (sizeInBytes=4164)
	load	[r14+-80],r4
	mov	1041,r3
_Label_700:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_700
!   *th = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	load	[r14+-80],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	212,r13		! source line 212
	mov	"\0\0SE",r10
!   _temp_91 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-40]
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_91  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	213,r13		! source line 213
	mov	"\0\0SE",r10
!   _temp_92 = _function_43_TestThreadManager
	set	_function_43_TestThreadManager,r1
	store	r1,[r14+-36]
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_92  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=i  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_85:
!   i = i + 1
	load	[r14+-76],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-76]
	jmp	_Label_83
! END FOR
_Label_86:
! FOR STATEMENT...
	mov	218,r13		! source line 218
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_97 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-32]
!   Calculate and save the FOR-LOOP ending value
!   _temp_98 = 20		(4 bytes)
	mov	20,r1
	store	r1,[r14+-28]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_97  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+-76]
_Label_93:
!   Perform the FOR-LOOP termination test
!   if i > _temp_98 then goto _Label_96		
	load	[r14+-76],r1
	load	[r14+-28],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_96
_Label_94:
	mov	218,r13		! source line 218
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	219,r13		! source line 219
	mov	"\0\0SE",r10
!   _temp_99 = &_Global_allDone
	set	_Global_allDone,r1
	store	r1,[r14+-24]
!   Send message Down
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_95:
!   i = i + 1
	load	[r14+-76],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-76]
	jmp	_Label_93
! END FOR
_Label_96:
! IF STATEMENT...
	mov	222,r13		! source line 222
	mov	"\0\0IF",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	222,r13		! source line 222
	mov	"\0\0CA",r10
	call	_function_45_GetUniqueNumber
!   Retrieve Result: targetName=_temp_102  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   if _temp_102 == 401 then goto _Label_101		(int)
	load	[r14+-20],r1
	mov	401,r2
	cmp	r1,r2
	be	_Label_101
!	jmp	_Label_100
_Label_100:
! THEN...
	mov	223,r13		! source line 223
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_103 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_103  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	223,r13		! source line 223
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_101:
! CALL STATEMENT...
!   _temp_104 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_104  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	225,r13		! source line 225
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	225,r13		! source line 225
	mov	"\0\0RE",r10
	add	r15,88,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_44_RunThreadManagerTests:
	.word	_sourceFileName
	.word	_Label_105
	.word	0		! total size of parameters
	.word	84		! frame size = 84
	.word	_Label_106
	.word	-12
	.word	4
	.word	_Label_107
	.word	-16
	.word	4
	.word	_Label_108
	.word	-20
	.word	4
	.word	_Label_109
	.word	-24
	.word	4
	.word	_Label_110
	.word	-28
	.word	4
	.word	_Label_111
	.word	-32
	.word	4
	.word	_Label_112
	.word	-36
	.word	4
	.word	_Label_113
	.word	-40
	.word	4
	.word	_Label_114
	.word	-44
	.word	4
	.word	_Label_115
	.word	-48
	.word	4
	.word	_Label_116
	.word	-52
	.word	4
	.word	_Label_117
	.word	-56
	.word	4
	.word	_Label_118
	.word	-60
	.word	4
	.word	_Label_119
	.word	-64
	.word	4
	.word	_Label_120
	.word	-68
	.word	4
	.word	_Label_121
	.word	-72
	.word	4
	.word	_Label_122
	.word	-76
	.word	4
	.word	_Label_123
	.word	-80
	.word	4
	.word	0
_Label_105:
	.ascii	"RunThreadManagerTests\0"
	.align
_Label_106:
	.byte	'?'
	.ascii	"_temp_104\0"
	.align
_Label_107:
	.byte	'?'
	.ascii	"_temp_103\0"
	.align
_Label_108:
	.byte	'?'
	.ascii	"_temp_102\0"
	.align
_Label_109:
	.byte	'?'
	.ascii	"_temp_99\0"
	.align
_Label_110:
	.byte	'?'
	.ascii	"_temp_98\0"
	.align
_Label_111:
	.byte	'?'
	.ascii	"_temp_97\0"
	.align
_Label_112:
	.byte	'?'
	.ascii	"_temp_92\0"
	.align
_Label_113:
	.byte	'?'
	.ascii	"_temp_91\0"
	.align
_Label_114:
	.byte	'?'
	.ascii	"_temp_90\0"
	.align
_Label_115:
	.byte	'?'
	.ascii	"_temp_89\0"
	.align
_Label_116:
	.byte	'?'
	.ascii	"_temp_88\0"
	.align
_Label_117:
	.byte	'?'
	.ascii	"_temp_87\0"
	.align
_Label_118:
	.byte	'?'
	.ascii	"_temp_82\0"
	.align
_Label_119:
	.byte	'?'
	.ascii	"_temp_81\0"
	.align
_Label_120:
	.byte	'?'
	.ascii	"_temp_80\0"
	.align
_Label_121:
	.byte	'?'
	.ascii	"_temp_79\0"
	.align
_Label_122:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_123:
	.byte	'P'
	.ascii	"th\0"
	.align
! 
! ===============  FUNCTION TestThreadManager  ===============
! 
_function_43_TestThreadManager:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_43_TestThreadManager,r1
	push	r1
	mov	22,r1
_Label_701:
	push	r0
	sub	r1,1,r1
	bne	_Label_701
	mov	237,r13		! source line 237
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! FOR STATEMENT...
	mov	241,r13		! source line 241
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_128 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-72]
!   Calculate and save the FOR-LOOP ending value
!   _temp_129 = 20		(4 bytes)
	mov	20,r1
	store	r1,[r14+-68]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_128  (sizeInBytes=4)
	load	[r14+-72],r1
	store	r1,[r14+-76]
_Label_124:
!   Perform the FOR-LOOP termination test
!   if i > _temp_129 then goto _Label_127		
	load	[r14+-76],r1
	load	[r14+-68],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_127
_Label_125:
	mov	241,r13		! source line 241
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=myID  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	242,r13		! source line 242
	mov	"\0\0CE",r10
	call	printInt
! ASSIGNMENT STATEMENT...
	mov	243,r13		! source line 243
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	243,r13		! source line 243
	mov	"\0\0CA",r10
	call	_function_45_GetUniqueNumber
!   Retrieve Result: targetName=e  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
! ASSIGNMENT STATEMENT...
	mov	244,r13		! source line 244
	mov	"\0\0AS",r10
	mov	244,r13		! source line 244
	mov	"\0\0SE",r10
!   _temp_130 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-64]
!   Send message GetANewThread
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=th  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-88]
! ASSIGNMENT STATEMENT...
	mov	245,r13		! source line 245
	mov	"\0\0AS",r10
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-88],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_131 = th + 12
	load	[r14+-88],r1
	add	r1,12,r1
	store	r1,[r14+-60]
!   Move address of _temp_131 [0 ] into _temp_132
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-60],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-56]
!   Data Move: *_temp_132 = e  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r14+-56],r2
	store	r1,[r2]
! FOR STATEMENT...
	mov	246,r13		! source line 246
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_137 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-52]
!   Calculate and save the FOR-LOOP ending value
!   _temp_138 = 10 + i		(int)
	mov	10,r1
	load	[r14+-76],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Initialize FOR-LOOP index variable
!   Data Move: j = _temp_137  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+-80]
_Label_133:
!   Perform the FOR-LOOP termination test
!   if j > _temp_138 then goto _Label_136		
	load	[r14+-80],r1
	load	[r14+-48],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_136
_Label_134:
	mov	246,r13		! source line 246
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	247,r13		! source line 247
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_135:
!   j = j + 1
	load	[r14+-80],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
	jmp	_Label_133
! END FOR
_Label_136:
! IF STATEMENT...
	mov	249,r13		! source line 249
	mov	"\0\0IF",r10
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-88],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_142 = th + 12
	load	[r14+-88],r1
	add	r1,12,r1
	store	r1,[r14+-40]
!   Move address of _temp_142 [0 ] into _temp_143
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-40],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-36]
!   Data Move: _temp_141 = *_temp_143  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   if e == _temp_141 then goto _Label_140		(int)
	load	[r14+-84],r1
	load	[r14+-44],r2
	cmp	r1,r2
	be	_Label_140
!	jmp	_Label_139
_Label_139:
! THEN...
	mov	250,r13		! source line 250
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_144 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_144  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	250,r13		! source line 250
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_140:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=46  sizeInBytes=1
	mov	46,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	252,r13		! source line 252
	mov	"\0\0CE",r10
	call	printChar
! SEND STATEMENT...
	mov	253,r13		! source line 253
	mov	"\0\0SE",r10
!   _temp_145 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=th  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+4]
!   Send message FreeThread
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! FOR STATEMENT...
	mov	254,r13		! source line 254
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_150 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_151 = 10 - i		(int)
	mov	10,r1
	load	[r14+-76],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: j = _temp_150  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-80]
_Label_146:
!   Perform the FOR-LOOP termination test
!   if j > _temp_151 then goto _Label_149		
	load	[r14+-80],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_149
_Label_147:
	mov	254,r13		! source line 254
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	255,r13		! source line 255
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_148:
!   j = j + 1
	load	[r14+-80],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
	jmp	_Label_146
! END FOR
_Label_149:
!   Increment the FOR-LOOP index variable and jump back
_Label_126:
!   i = i + 1
	load	[r14+-76],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-76]
	jmp	_Label_124
! END FOR
_Label_127:
! SEND STATEMENT...
	mov	258,r13		! source line 258
	mov	"\0\0SE",r10
!   _temp_152 = &_Global_allDone
	set	_Global_allDone,r1
	store	r1,[r14+-16]
!   Send message Up
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	259,r13		! source line 259
	mov	"\0\0SE",r10
!   _temp_153 = &_Global_freeze
	set	_Global_freeze,r1
	store	r1,[r14+-12]
!   Send message Down
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	259,r13		! source line 259
	mov	"\0\0RE",r10
	add	r15,92,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_43_TestThreadManager:
	.word	_sourceFileName
	.word	_Label_154
	.word	4		! total size of parameters
	.word	88		! frame size = 88
	.word	_Label_155
	.word	8
	.word	4
	.word	_Label_156
	.word	-12
	.word	4
	.word	_Label_157
	.word	-16
	.word	4
	.word	_Label_158
	.word	-20
	.word	4
	.word	_Label_159
	.word	-24
	.word	4
	.word	_Label_160
	.word	-28
	.word	4
	.word	_Label_161
	.word	-32
	.word	4
	.word	_Label_162
	.word	-36
	.word	4
	.word	_Label_163
	.word	-40
	.word	4
	.word	_Label_164
	.word	-44
	.word	4
	.word	_Label_165
	.word	-48
	.word	4
	.word	_Label_166
	.word	-52
	.word	4
	.word	_Label_167
	.word	-56
	.word	4
	.word	_Label_168
	.word	-60
	.word	4
	.word	_Label_169
	.word	-64
	.word	4
	.word	_Label_170
	.word	-68
	.word	4
	.word	_Label_171
	.word	-72
	.word	4
	.word	_Label_172
	.word	-76
	.word	4
	.word	_Label_173
	.word	-80
	.word	4
	.word	_Label_174
	.word	-84
	.word	4
	.word	_Label_175
	.word	-88
	.word	4
	.word	0
_Label_154:
	.ascii	"TestThreadManager\0"
	.align
_Label_155:
	.byte	'I'
	.ascii	"myID\0"
	.align
_Label_156:
	.byte	'?'
	.ascii	"_temp_153\0"
	.align
_Label_157:
	.byte	'?'
	.ascii	"_temp_152\0"
	.align
_Label_158:
	.byte	'?'
	.ascii	"_temp_151\0"
	.align
_Label_159:
	.byte	'?'
	.ascii	"_temp_150\0"
	.align
_Label_160:
	.byte	'?'
	.ascii	"_temp_145\0"
	.align
_Label_161:
	.byte	'?'
	.ascii	"_temp_144\0"
	.align
_Label_162:
	.byte	'?'
	.ascii	"_temp_143\0"
	.align
_Label_163:
	.byte	'?'
	.ascii	"_temp_142\0"
	.align
_Label_164:
	.byte	'?'
	.ascii	"_temp_141\0"
	.align
_Label_165:
	.byte	'?'
	.ascii	"_temp_138\0"
	.align
_Label_166:
	.byte	'?'
	.ascii	"_temp_137\0"
	.align
_Label_167:
	.byte	'?'
	.ascii	"_temp_132\0"
	.align
_Label_168:
	.byte	'?'
	.ascii	"_temp_131\0"
	.align
_Label_169:
	.byte	'?'
	.ascii	"_temp_130\0"
	.align
_Label_170:
	.byte	'?'
	.ascii	"_temp_129\0"
	.align
_Label_171:
	.byte	'?'
	.ascii	"_temp_128\0"
	.align
_Label_172:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_173:
	.byte	'I'
	.ascii	"j\0"
	.align
_Label_174:
	.byte	'I'
	.ascii	"e\0"
	.align
_Label_175:
	.byte	'P'
	.ascii	"th\0"
	.align
! 
! ===============  FUNCTION RunProcessManagerTests  ===============
! 
_function_42_RunProcessManagerTests:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_42_RunProcessManagerTests,r1
	push	r1
	mov	21,r1
_Label_702:
	push	r0
	sub	r1,1,r1
	bne	_Label_702
	mov	279,r13		! source line 279
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	283,r13		! source line 283
	mov	"\0\0SE",r10
!   _temp_176 = &_Global_allDone
	set	_Global_allDone,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	284,r13		! source line 284
	mov	"\0\0SE",r10
!   _temp_177 = &_Global_freeze
	set	_Global_freeze,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	285,r13		! source line 285
	mov	"\0\0SE",r10
!   _temp_178 = &_Global_uniqueNumberLock
	set	_Global_uniqueNumberLock,r1
	store	r1,[r14+-64]
!   Send message Init
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	286,r13		! source line 286
	mov	"\0\0AS",r10
!   _Global_nextUnique = 1		(4 bytes)
	mov	1,r1
	set	_Global_nextUnique,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_179 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_179  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	288,r13		! source line 288
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	290,r13		! source line 290
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_184 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-56]
!   Calculate and save the FOR-LOOP ending value
!   _temp_185 = 20		(4 bytes)
	mov	20,r1
	store	r1,[r14+-52]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_184  (sizeInBytes=4)
	load	[r14+-56],r1
	store	r1,[r14+-76]
_Label_180:
!   Perform the FOR-LOOP termination test
!   if i > _temp_185 then goto _Label_183		
	load	[r14+-76],r1
	load	[r14+-52],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_183
_Label_181:
	mov	290,r13		! source line 290
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	291,r13		! source line 291
	mov	"\0\0AS",r10
!   ALLOC CLASS Constructor...
!   Call alloc...
	mov	4164,r1
	store	r1,[r14+-48]
!   th = alloc (_temp_186)
	load	[r14+-48],r1
	call	_heapAlloc
	store	r1,[r14+-80]
!   ZeroMemory: *th = zeros  (sizeInBytes=4164)
	load	[r14+-80],r4
	mov	1041,r3
_Label_703:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_703
!   *th = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	load	[r14+-80],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	292,r13		! source line 292
	mov	"\0\0SE",r10
!   _temp_188 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-40]
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_188  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	293,r13		! source line 293
	mov	"\0\0SE",r10
!   _temp_189 = _function_41_TestProcessManager
	set	_function_41_TestProcessManager,r1
	store	r1,[r14+-36]
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_189  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=i  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_182:
!   i = i + 1
	load	[r14+-76],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-76]
	jmp	_Label_180
! END FOR
_Label_183:
! FOR STATEMENT...
	mov	298,r13		! source line 298
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_194 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-32]
!   Calculate and save the FOR-LOOP ending value
!   _temp_195 = 20		(4 bytes)
	mov	20,r1
	store	r1,[r14+-28]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_194  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+-76]
_Label_190:
!   Perform the FOR-LOOP termination test
!   if i > _temp_195 then goto _Label_193		
	load	[r14+-76],r1
	load	[r14+-28],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_193
_Label_191:
	mov	298,r13		! source line 298
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	299,r13		! source line 299
	mov	"\0\0SE",r10
!   _temp_196 = &_Global_allDone
	set	_Global_allDone,r1
	store	r1,[r14+-24]
!   Send message Down
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_192:
!   i = i + 1
	load	[r14+-76],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-76]
	jmp	_Label_190
! END FOR
_Label_193:
! IF STATEMENT...
	mov	302,r13		! source line 302
	mov	"\0\0IF",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	302,r13		! source line 302
	mov	"\0\0CA",r10
	call	_function_45_GetUniqueNumber
!   Retrieve Result: targetName=_temp_199  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   if _temp_199 == 401 then goto _Label_198		(int)
	load	[r14+-20],r1
	mov	401,r2
	cmp	r1,r2
	be	_Label_198
!	jmp	_Label_197
_Label_197:
! THEN...
	mov	303,r13		! source line 303
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_200 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_200  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	303,r13		! source line 303
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_198:
! CALL STATEMENT...
!   _temp_201 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_201  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	305,r13		! source line 305
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	305,r13		! source line 305
	mov	"\0\0RE",r10
	add	r15,88,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_42_RunProcessManagerTests:
	.word	_sourceFileName
	.word	_Label_202
	.word	0		! total size of parameters
	.word	84		! frame size = 84
	.word	_Label_203
	.word	-12
	.word	4
	.word	_Label_204
	.word	-16
	.word	4
	.word	_Label_205
	.word	-20
	.word	4
	.word	_Label_206
	.word	-24
	.word	4
	.word	_Label_207
	.word	-28
	.word	4
	.word	_Label_208
	.word	-32
	.word	4
	.word	_Label_209
	.word	-36
	.word	4
	.word	_Label_210
	.word	-40
	.word	4
	.word	_Label_211
	.word	-44
	.word	4
	.word	_Label_212
	.word	-48
	.word	4
	.word	_Label_213
	.word	-52
	.word	4
	.word	_Label_214
	.word	-56
	.word	4
	.word	_Label_215
	.word	-60
	.word	4
	.word	_Label_216
	.word	-64
	.word	4
	.word	_Label_217
	.word	-68
	.word	4
	.word	_Label_218
	.word	-72
	.word	4
	.word	_Label_219
	.word	-76
	.word	4
	.word	_Label_220
	.word	-80
	.word	4
	.word	0
_Label_202:
	.ascii	"RunProcessManagerTests\0"
	.align
_Label_203:
	.byte	'?'
	.ascii	"_temp_201\0"
	.align
_Label_204:
	.byte	'?'
	.ascii	"_temp_200\0"
	.align
_Label_205:
	.byte	'?'
	.ascii	"_temp_199\0"
	.align
_Label_206:
	.byte	'?'
	.ascii	"_temp_196\0"
	.align
_Label_207:
	.byte	'?'
	.ascii	"_temp_195\0"
	.align
_Label_208:
	.byte	'?'
	.ascii	"_temp_194\0"
	.align
_Label_209:
	.byte	'?'
	.ascii	"_temp_189\0"
	.align
_Label_210:
	.byte	'?'
	.ascii	"_temp_188\0"
	.align
_Label_211:
	.byte	'?'
	.ascii	"_temp_187\0"
	.align
_Label_212:
	.byte	'?'
	.ascii	"_temp_186\0"
	.align
_Label_213:
	.byte	'?'
	.ascii	"_temp_185\0"
	.align
_Label_214:
	.byte	'?'
	.ascii	"_temp_184\0"
	.align
_Label_215:
	.byte	'?'
	.ascii	"_temp_179\0"
	.align
_Label_216:
	.byte	'?'
	.ascii	"_temp_178\0"
	.align
_Label_217:
	.byte	'?'
	.ascii	"_temp_177\0"
	.align
_Label_218:
	.byte	'?'
	.ascii	"_temp_176\0"
	.align
_Label_219:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_220:
	.byte	'P'
	.ascii	"th\0"
	.align
! 
! ===============  FUNCTION TestProcessManager  ===============
! 
_function_41_TestProcessManager:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_41_TestProcessManager,r1
	push	r1
	mov	20,r1
_Label_704:
	push	r0
	sub	r1,1,r1
	bne	_Label_704
	mov	318,r13		! source line 318
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! FOR STATEMENT...
	mov	322,r13		! source line 322
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_225 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_226 = 20		(4 bytes)
	mov	20,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_225  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-68]
_Label_221:
!   Perform the FOR-LOOP termination test
!   if i > _temp_226 then goto _Label_224		
	load	[r14+-68],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_224
_Label_222:
	mov	322,r13		! source line 322
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=myID  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	323,r13		! source line 323
	mov	"\0\0CE",r10
	call	printInt
! ASSIGNMENT STATEMENT...
	mov	324,r13		! source line 324
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	324,r13		! source line 324
	mov	"\0\0CA",r10
	call	_function_45_GetUniqueNumber
!   Retrieve Result: targetName=e  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-76]
! ASSIGNMENT STATEMENT...
	mov	325,r13		! source line 325
	mov	"\0\0AS",r10
	mov	325,r13		! source line 325
	mov	"\0\0SE",r10
!   _temp_227 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-56]
!   Send message GetANewProcess
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=pcb  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! ASSIGNMENT STATEMENT...
	mov	326,r13		! source line 326
	mov	"\0\0AS",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_228 = pcb + 28
	load	[r14+-80],r1
	add	r1,28,r1
	store	r1,[r14+-52]
!   Data Move: *_temp_228 = e  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r14+-52],r2
	store	r1,[r2]
! FOR STATEMENT...
	mov	327,r13		! source line 327
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_233 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_234 = 10 + i		(int)
	mov	10,r1
	load	[r14+-68],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: j = _temp_233  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-72]
_Label_229:
!   Perform the FOR-LOOP termination test
!   if j > _temp_234 then goto _Label_232		
	load	[r14+-72],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_232
_Label_230:
	mov	327,r13		! source line 327
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	328,r13		! source line 328
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_231:
!   j = j + 1
	load	[r14+-72],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
	jmp	_Label_229
! END FOR
_Label_232:
! IF STATEMENT...
	mov	330,r13		! source line 330
	mov	"\0\0IF",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_238 = pcb + 28
	load	[r14+-80],r1
	add	r1,28,r1
	store	r1,[r14+-36]
!   Data Move: _temp_237 = *_temp_238  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if e == _temp_237 then goto _Label_236		(int)
	load	[r14+-76],r1
	load	[r14+-40],r2
	cmp	r1,r2
	be	_Label_236
!	jmp	_Label_235
_Label_235:
! THEN...
	mov	331,r13		! source line 331
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_239 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_239  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	331,r13		! source line 331
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_236:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=46  sizeInBytes=1
	mov	46,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	333,r13		! source line 333
	mov	"\0\0CE",r10
	call	printChar
! SEND STATEMENT...
	mov	334,r13		! source line 334
	mov	"\0\0SE",r10
!   _temp_240 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=pcb  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+4]
!   Send message FreeProcess
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! FOR STATEMENT...
	mov	335,r13		! source line 335
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_245 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_246 = 10 - i		(int)
	mov	10,r1
	load	[r14+-68],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: j = _temp_245  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-72]
_Label_241:
!   Perform the FOR-LOOP termination test
!   if j > _temp_246 then goto _Label_244		
	load	[r14+-72],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_244
_Label_242:
	mov	335,r13		! source line 335
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	336,r13		! source line 336
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_243:
!   j = j + 1
	load	[r14+-72],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
	jmp	_Label_241
! END FOR
_Label_244:
!   Increment the FOR-LOOP index variable and jump back
_Label_223:
!   i = i + 1
	load	[r14+-68],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-68]
	jmp	_Label_221
! END FOR
_Label_224:
! SEND STATEMENT...
	mov	339,r13		! source line 339
	mov	"\0\0SE",r10
!   _temp_247 = &_Global_allDone
	set	_Global_allDone,r1
	store	r1,[r14+-16]
!   Send message Up
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	340,r13		! source line 340
	mov	"\0\0SE",r10
!   _temp_248 = &_Global_freeze
	set	_Global_freeze,r1
	store	r1,[r14+-12]
!   Send message Down
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	340,r13		! source line 340
	mov	"\0\0RE",r10
	add	r15,84,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_41_TestProcessManager:
	.word	_sourceFileName
	.word	_Label_249
	.word	4		! total size of parameters
	.word	80		! frame size = 80
	.word	_Label_250
	.word	8
	.word	4
	.word	_Label_251
	.word	-12
	.word	4
	.word	_Label_252
	.word	-16
	.word	4
	.word	_Label_253
	.word	-20
	.word	4
	.word	_Label_254
	.word	-24
	.word	4
	.word	_Label_255
	.word	-28
	.word	4
	.word	_Label_256
	.word	-32
	.word	4
	.word	_Label_257
	.word	-36
	.word	4
	.word	_Label_258
	.word	-40
	.word	4
	.word	_Label_259
	.word	-44
	.word	4
	.word	_Label_260
	.word	-48
	.word	4
	.word	_Label_261
	.word	-52
	.word	4
	.word	_Label_262
	.word	-56
	.word	4
	.word	_Label_263
	.word	-60
	.word	4
	.word	_Label_264
	.word	-64
	.word	4
	.word	_Label_265
	.word	-68
	.word	4
	.word	_Label_266
	.word	-72
	.word	4
	.word	_Label_267
	.word	-76
	.word	4
	.word	_Label_268
	.word	-80
	.word	4
	.word	0
_Label_249:
	.ascii	"TestProcessManager\0"
	.align
_Label_250:
	.byte	'I'
	.ascii	"myID\0"
	.align
_Label_251:
	.byte	'?'
	.ascii	"_temp_248\0"
	.align
_Label_252:
	.byte	'?'
	.ascii	"_temp_247\0"
	.align
_Label_253:
	.byte	'?'
	.ascii	"_temp_246\0"
	.align
_Label_254:
	.byte	'?'
	.ascii	"_temp_245\0"
	.align
_Label_255:
	.byte	'?'
	.ascii	"_temp_240\0"
	.align
_Label_256:
	.byte	'?'
	.ascii	"_temp_239\0"
	.align
_Label_257:
	.byte	'?'
	.ascii	"_temp_238\0"
	.align
_Label_258:
	.byte	'?'
	.ascii	"_temp_237\0"
	.align
_Label_259:
	.byte	'?'
	.ascii	"_temp_234\0"
	.align
_Label_260:
	.byte	'?'
	.ascii	"_temp_233\0"
	.align
_Label_261:
	.byte	'?'
	.ascii	"_temp_228\0"
	.align
_Label_262:
	.byte	'?'
	.ascii	"_temp_227\0"
	.align
_Label_263:
	.byte	'?'
	.ascii	"_temp_226\0"
	.align
_Label_264:
	.byte	'?'
	.ascii	"_temp_225\0"
	.align
_Label_265:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_266:
	.byte	'I'
	.ascii	"j\0"
	.align
_Label_267:
	.byte	'I'
	.ascii	"e\0"
	.align
_Label_268:
	.byte	'P'
	.ascii	"pcb\0"
	.align
! 
! ===============  FUNCTION RunFrameManagerTests  ===============
! 
_function_40_RunFrameManagerTests:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_40_RunFrameManagerTests,r1
	push	r1
	mov	28,r1
_Label_705:
	push	r0
	sub	r1,1,r1
	bne	_Label_705
	mov	361,r13		! source line 361
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	365,r13		! source line 365
	mov	"\0\0SE",r10
!   _temp_269 = &_Global_allDone2
	set	_Global_allDone2,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	366,r13		! source line 366
	mov	"\0\0SE",r10
!   _temp_270 = &_Global_freeze
	set	_Global_freeze,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-92],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! CALL STATEMENT...
!   _temp_271 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_271  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	368,r13		! source line 368
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	370,r13		! source line 370
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_276 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-84]
!   Calculate and save the FOR-LOOP ending value
!   _temp_277 = 10		(4 bytes)
	mov	10,r1
	store	r1,[r14+-80]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_276  (sizeInBytes=4)
	load	[r14+-84],r1
	store	r1,[r14+-100]
_Label_272:
!   Perform the FOR-LOOP termination test
!   if i > _temp_277 then goto _Label_275		
	load	[r14+-100],r1
	load	[r14+-80],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_275
_Label_273:
	mov	370,r13		! source line 370
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	371,r13		! source line 371
	mov	"\0\0AS",r10
!   ALLOC CLASS Constructor...
!   Call alloc...
	mov	4164,r1
	store	r1,[r14+-76]
!   th = alloc (_temp_278)
	load	[r14+-76],r1
	call	_heapAlloc
	store	r1,[r14+-108]
!   ZeroMemory: *th = zeros  (sizeInBytes=4164)
	load	[r14+-108],r4
	mov	1041,r3
_Label_706:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_706
!   *th = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	load	[r14+-108],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	372,r13		! source line 372
	mov	"\0\0SE",r10
!   _temp_280 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-68]
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_280  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-108],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	373,r13		! source line 373
	mov	"\0\0SE",r10
!   _temp_281 = _function_39_TestFrameManager
	set	_function_39_TestFrameManager,r1
	store	r1,[r14+-64]
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_281  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=i  sizeInBytes=4
	load	[r14+-100],r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-108],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_274:
!   i = i + 1
	load	[r14+-100],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-100]
	jmp	_Label_272
! END FOR
_Label_275:
! FOR STATEMENT...
	mov	378,r13		! source line 378
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_286 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-60]
!   Calculate and save the FOR-LOOP ending value
!   _temp_287 = 10		(4 bytes)
	mov	10,r1
	store	r1,[r14+-56]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_286  (sizeInBytes=4)
	load	[r14+-60],r1
	store	r1,[r14+-100]
_Label_282:
!   Perform the FOR-LOOP termination test
!   if i > _temp_287 then goto _Label_285		
	load	[r14+-100],r1
	load	[r14+-56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_285
_Label_283:
	mov	378,r13		! source line 378
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	379,r13		! source line 379
	mov	"\0\0SE",r10
!   _temp_288 = &_Global_allDone2
	set	_Global_allDone2,r1
	store	r1,[r14+-52]
!   Send message Down
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_284:
!   i = i + 1
	load	[r14+-100],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-100]
	jmp	_Label_282
! END FOR
_Label_285:
! CALL STATEMENT...
!   _temp_289 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_289  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	382,r13		! source line 382
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	383,r13		! source line 383
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_294 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_295 = 26		(4 bytes)
	mov	26,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_294  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-100]
_Label_290:
!   Perform the FOR-LOOP termination test
!   if i > _temp_295 then goto _Label_293		
	load	[r14+-100],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_293
_Label_291:
	mov	383,r13		! source line 383
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_296 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_296  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	384,r13		! source line 384
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-100],r1
	store	r1,[r15+0]
!   Call the function
	mov	385,r13		! source line 385
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_297 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_297  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	386,r13		! source line 386
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	387,r13		! source line 387
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_302 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-28]
!   Calculate and save the FOR-LOOP ending value
!   _temp_304 = &_Global_histogram
	set	_Global_histogram,r1
	store	r1,[r14+-20]
!   Move address of _temp_304 [i ] into _temp_305
!     make sure index expr is >= 0
	load	[r14+-100],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_303 = *_temp_305  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Initialize FOR-LOOP index variable
!   Data Move: j = _temp_302  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+-104]
_Label_298:
!   Perform the FOR-LOOP termination test
!   if j > _temp_303 then goto _Label_301		
	load	[r14+-104],r1
	load	[r14+-24],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_301
_Label_299:
	mov	387,r13		! source line 387
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=42  sizeInBytes=1
	mov	42,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	388,r13		! source line 388
	mov	"\0\0CE",r10
	call	printChar
!   Increment the FOR-LOOP index variable and jump back
_Label_300:
!   j = j + 1
	load	[r14+-104],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-104]
	jmp	_Label_298
! END FOR
_Label_301:
! CALL STATEMENT...
!   Call the function
	mov	390,r13		! source line 390
	mov	"\0\0CA",r10
	call	_P_System_nl
!   Increment the FOR-LOOP index variable and jump back
_Label_292:
!   i = i + 1
	load	[r14+-100],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-100]
	jmp	_Label_290
! END FOR
_Label_293:
! CALL STATEMENT...
!   _temp_306 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_306  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	393,r13		! source line 393
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	393,r13		! source line 393
	mov	"\0\0RE",r10
	add	r15,116,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_40_RunFrameManagerTests:
	.word	_sourceFileName
	.word	_Label_307
	.word	0		! total size of parameters
	.word	112		! frame size = 112
	.word	_Label_308
	.word	-12
	.word	4
	.word	_Label_309
	.word	-16
	.word	4
	.word	_Label_310
	.word	-20
	.word	4
	.word	_Label_311
	.word	-24
	.word	4
	.word	_Label_312
	.word	-28
	.word	4
	.word	_Label_313
	.word	-32
	.word	4
	.word	_Label_314
	.word	-36
	.word	4
	.word	_Label_315
	.word	-40
	.word	4
	.word	_Label_316
	.word	-44
	.word	4
	.word	_Label_317
	.word	-48
	.word	4
	.word	_Label_318
	.word	-52
	.word	4
	.word	_Label_319
	.word	-56
	.word	4
	.word	_Label_320
	.word	-60
	.word	4
	.word	_Label_321
	.word	-64
	.word	4
	.word	_Label_322
	.word	-68
	.word	4
	.word	_Label_323
	.word	-72
	.word	4
	.word	_Label_324
	.word	-76
	.word	4
	.word	_Label_325
	.word	-80
	.word	4
	.word	_Label_326
	.word	-84
	.word	4
	.word	_Label_327
	.word	-88
	.word	4
	.word	_Label_328
	.word	-92
	.word	4
	.word	_Label_329
	.word	-96
	.word	4
	.word	_Label_330
	.word	-100
	.word	4
	.word	_Label_331
	.word	-104
	.word	4
	.word	_Label_332
	.word	-108
	.word	4
	.word	0
_Label_307:
	.ascii	"RunFrameManagerTests\0"
	.align
_Label_308:
	.byte	'?'
	.ascii	"_temp_306\0"
	.align
_Label_309:
	.byte	'?'
	.ascii	"_temp_305\0"
	.align
_Label_310:
	.byte	'?'
	.ascii	"_temp_304\0"
	.align
_Label_311:
	.byte	'?'
	.ascii	"_temp_303\0"
	.align
_Label_312:
	.byte	'?'
	.ascii	"_temp_302\0"
	.align
_Label_313:
	.byte	'?'
	.ascii	"_temp_297\0"
	.align
_Label_314:
	.byte	'?'
	.ascii	"_temp_296\0"
	.align
_Label_315:
	.byte	'?'
	.ascii	"_temp_295\0"
	.align
_Label_316:
	.byte	'?'
	.ascii	"_temp_294\0"
	.align
_Label_317:
	.byte	'?'
	.ascii	"_temp_289\0"
	.align
_Label_318:
	.byte	'?'
	.ascii	"_temp_288\0"
	.align
_Label_319:
	.byte	'?'
	.ascii	"_temp_287\0"
	.align
_Label_320:
	.byte	'?'
	.ascii	"_temp_286\0"
	.align
_Label_321:
	.byte	'?'
	.ascii	"_temp_281\0"
	.align
_Label_322:
	.byte	'?'
	.ascii	"_temp_280\0"
	.align
_Label_323:
	.byte	'?'
	.ascii	"_temp_279\0"
	.align
_Label_324:
	.byte	'?'
	.ascii	"_temp_278\0"
	.align
_Label_325:
	.byte	'?'
	.ascii	"_temp_277\0"
	.align
_Label_326:
	.byte	'?'
	.ascii	"_temp_276\0"
	.align
_Label_327:
	.byte	'?'
	.ascii	"_temp_271\0"
	.align
_Label_328:
	.byte	'?'
	.ascii	"_temp_270\0"
	.align
_Label_329:
	.byte	'?'
	.ascii	"_temp_269\0"
	.align
_Label_330:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_331:
	.byte	'I'
	.ascii	"j\0"
	.align
_Label_332:
	.byte	'P'
	.ascii	"th\0"
	.align
! 
! ===============  FUNCTION TestFrameManager  ===============
! 
_function_39_TestFrameManager:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_39_TestFrameManager,r1
	push	r1
	mov	30,r1
_Label_707:
	push	r0
	sub	r1,1,r1
	bne	_Label_707
	mov	417,r13		! source line 417
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	421,r13		! source line 421
	mov	"\0\0AS",r10
	mov	421,r13		! source line 421
	mov	"\0\0SE",r10
!   _temp_333 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-96]
!   Send message GetANewProcess
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=pcb  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-116]
! FOR STATEMENT...
	mov	422,r13		! source line 422
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_338 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-92]
!   Calculate and save the FOR-LOOP ending value
!   _temp_339 = 5		(4 bytes)
	mov	5,r1
	store	r1,[r14+-88]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_338  (sizeInBytes=4)
	load	[r14+-92],r1
	store	r1,[r14+-100]
_Label_334:
!   Perform the FOR-LOOP termination test
!   if i > _temp_339 then goto _Label_337		
	load	[r14+-100],r1
	load	[r14+-88],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_337
_Label_335:
	mov	422,r13		! source line 422
	mov	"\0\0FB",r10
! FOR STATEMENT...
	mov	423,r13		! source line 423
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_344 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-84]
!   Calculate and save the FOR-LOOP ending value
!   _temp_345 = 19		(4 bytes)
	mov	19,r1
	store	r1,[r14+-80]
!   Initialize FOR-LOOP index variable
!   Data Move: sz = _temp_344  (sizeInBytes=4)
	load	[r14+-84],r1
	store	r1,[r14+-112]
_Label_340:
!   Perform the FOR-LOOP termination test
!   if sz > _temp_345 then goto _Label_343		
	load	[r14+-112],r1
	load	[r14+-80],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_343
_Label_341:
	mov	423,r13		! source line 423
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=myID  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	424,r13		! source line 424
	mov	"\0\0CE",r10
	call	printInt
! ASSIGNMENT STATEMENT...
	mov	425,r13		! source line 425
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=sz  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	425,r13		! source line 425
	mov	"\0\0CA",r10
	call	_function_45_GetUniqueNumber
!   Retrieve Result: targetName=newData  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-108]
! SEND STATEMENT...
	mov	426,r13		! source line 426
	mov	"\0\0SE",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-116],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_347 = pcb + 32
	load	[r14+-116],r1
	add	r1,32,r1
	store	r1,[r14+-72]
!   _temp_346 = _temp_347		(4 bytes)
	load	[r14+-72],r1
	store	r1,[r14+-76]
!   _temp_348 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=12  value=_temp_346  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=sz  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+8]
!   Send message GetNewFrames
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! CALL STATEMENT...
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-116],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_350 = pcb + 32
	load	[r14+-116],r1
	add	r1,32,r1
	store	r1,[r14+-60]
!   _temp_349 = _temp_350		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_349  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=sz  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=newData  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+8]
!   Call the function
	mov	427,r13		! source line 427
	mov	"\0\0CA",r10
	call	_function_38_CheckAddrSpace
! FOR STATEMENT...
	mov	428,r13		! source line 428
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_355 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-56]
!   Calculate and save the FOR-LOOP ending value
!   _temp_356 = 10 + i		(int)
	mov	10,r1
	load	[r14+-100],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
!   Initialize FOR-LOOP index variable
!   Data Move: j = _temp_355  (sizeInBytes=4)
	load	[r14+-56],r1
	store	r1,[r14+-104]
_Label_351:
!   Perform the FOR-LOOP termination test
!   if j > _temp_356 then goto _Label_354		
	load	[r14+-104],r1
	load	[r14+-52],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_354
_Label_352:
	mov	428,r13		! source line 428
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	429,r13		! source line 429
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_353:
!   j = j + 1
	load	[r14+-104],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-104]
	jmp	_Label_351
! END FOR
_Label_354:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=46  sizeInBytes=1
	mov	46,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	431,r13		! source line 431
	mov	"\0\0CE",r10
	call	printChar
! CALL STATEMENT...
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-116],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_358 = pcb + 32
	load	[r14+-116],r1
	add	r1,32,r1
	store	r1,[r14+-44]
!   _temp_357 = _temp_358		(4 bytes)
	load	[r14+-44],r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_357  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=sz  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=newData  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+8]
!   Call the function
	mov	432,r13		! source line 432
	mov	"\0\0CA",r10
	call	_function_37_CheckAddrSpace2
! SEND STATEMENT...
	mov	433,r13		! source line 433
	mov	"\0\0SE",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-116],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_360 = pcb + 32
	load	[r14+-116],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   _temp_359 = _temp_360		(4 bytes)
	load	[r14+-36],r1
	store	r1,[r14+-40]
!   _temp_361 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_359  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! FOR STATEMENT...
	mov	434,r13		! source line 434
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_366 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-28]
!   Calculate and save the FOR-LOOP ending value
!   _temp_367 = 10 - i		(int)
	mov	10,r1
	load	[r14+-100],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   Initialize FOR-LOOP index variable
!   Data Move: j = _temp_366  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+-104]
_Label_362:
!   Perform the FOR-LOOP termination test
!   if j > _temp_367 then goto _Label_365		
	load	[r14+-104],r1
	load	[r14+-24],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_365
_Label_363:
	mov	434,r13		! source line 434
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	435,r13		! source line 435
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_364:
!   j = j + 1
	load	[r14+-104],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-104]
	jmp	_Label_362
! END FOR
_Label_365:
!   Increment the FOR-LOOP index variable and jump back
_Label_342:
!   sz = sz + 1
	load	[r14+-112],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
	jmp	_Label_340
! END FOR
_Label_343:
!   Increment the FOR-LOOP index variable and jump back
_Label_336:
!   i = i + 1
	load	[r14+-100],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-100]
	jmp	_Label_334
! END FOR
_Label_337:
! SEND STATEMENT...
	mov	439,r13		! source line 439
	mov	"\0\0SE",r10
!   _temp_368 = &_Global_allDone2
	set	_Global_allDone2,r1
	store	r1,[r14+-20]
!   Send message Up
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	440,r13		! source line 440
	mov	"\0\0SE",r10
!   _temp_369 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=pcb  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+4]
!   Send message FreeProcess
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	441,r13		! source line 441
	mov	"\0\0SE",r10
!   _temp_370 = &_Global_freeze
	set	_Global_freeze,r1
	store	r1,[r14+-12]
!   Send message Down
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	441,r13		! source line 441
	mov	"\0\0RE",r10
	add	r15,124,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_39_TestFrameManager:
	.word	_sourceFileName
	.word	_Label_371
	.word	4		! total size of parameters
	.word	120		! frame size = 120
	.word	_Label_372
	.word	8
	.word	4
	.word	_Label_373
	.word	-12
	.word	4
	.word	_Label_374
	.word	-16
	.word	4
	.word	_Label_375
	.word	-20
	.word	4
	.word	_Label_376
	.word	-24
	.word	4
	.word	_Label_377
	.word	-28
	.word	4
	.word	_Label_378
	.word	-32
	.word	4
	.word	_Label_379
	.word	-36
	.word	4
	.word	_Label_380
	.word	-40
	.word	4
	.word	_Label_381
	.word	-44
	.word	4
	.word	_Label_382
	.word	-48
	.word	4
	.word	_Label_383
	.word	-52
	.word	4
	.word	_Label_384
	.word	-56
	.word	4
	.word	_Label_385
	.word	-60
	.word	4
	.word	_Label_386
	.word	-64
	.word	4
	.word	_Label_387
	.word	-68
	.word	4
	.word	_Label_388
	.word	-72
	.word	4
	.word	_Label_389
	.word	-76
	.word	4
	.word	_Label_390
	.word	-80
	.word	4
	.word	_Label_391
	.word	-84
	.word	4
	.word	_Label_392
	.word	-88
	.word	4
	.word	_Label_393
	.word	-92
	.word	4
	.word	_Label_394
	.word	-96
	.word	4
	.word	_Label_395
	.word	-100
	.word	4
	.word	_Label_396
	.word	-104
	.word	4
	.word	_Label_397
	.word	-108
	.word	4
	.word	_Label_398
	.word	-112
	.word	4
	.word	_Label_399
	.word	-116
	.word	4
	.word	0
_Label_371:
	.ascii	"TestFrameManager\0"
	.align
_Label_372:
	.byte	'I'
	.ascii	"myID\0"
	.align
_Label_373:
	.byte	'?'
	.ascii	"_temp_370\0"
	.align
_Label_374:
	.byte	'?'
	.ascii	"_temp_369\0"
	.align
_Label_375:
	.byte	'?'
	.ascii	"_temp_368\0"
	.align
_Label_376:
	.byte	'?'
	.ascii	"_temp_367\0"
	.align
_Label_377:
	.byte	'?'
	.ascii	"_temp_366\0"
	.align
_Label_378:
	.byte	'?'
	.ascii	"_temp_361\0"
	.align
_Label_379:
	.byte	'?'
	.ascii	"_temp_360\0"
	.align
_Label_380:
	.byte	'?'
	.ascii	"_temp_359\0"
	.align
_Label_381:
	.byte	'?'
	.ascii	"_temp_358\0"
	.align
_Label_382:
	.byte	'?'
	.ascii	"_temp_357\0"
	.align
_Label_383:
	.byte	'?'
	.ascii	"_temp_356\0"
	.align
_Label_384:
	.byte	'?'
	.ascii	"_temp_355\0"
	.align
_Label_385:
	.byte	'?'
	.ascii	"_temp_350\0"
	.align
_Label_386:
	.byte	'?'
	.ascii	"_temp_349\0"
	.align
_Label_387:
	.byte	'?'
	.ascii	"_temp_348\0"
	.align
_Label_388:
	.byte	'?'
	.ascii	"_temp_347\0"
	.align
_Label_389:
	.byte	'?'
	.ascii	"_temp_346\0"
	.align
_Label_390:
	.byte	'?'
	.ascii	"_temp_345\0"
	.align
_Label_391:
	.byte	'?'
	.ascii	"_temp_344\0"
	.align
_Label_392:
	.byte	'?'
	.ascii	"_temp_339\0"
	.align
_Label_393:
	.byte	'?'
	.ascii	"_temp_338\0"
	.align
_Label_394:
	.byte	'?'
	.ascii	"_temp_333\0"
	.align
_Label_395:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_396:
	.byte	'I'
	.ascii	"j\0"
	.align
_Label_397:
	.byte	'I'
	.ascii	"newData\0"
	.align
_Label_398:
	.byte	'I'
	.ascii	"sz\0"
	.align
_Label_399:
	.byte	'P'
	.ascii	"pcb\0"
	.align
! 
! ===============  FUNCTION CheckAddrSpace  ===============
! 
_function_38_CheckAddrSpace:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_38_CheckAddrSpace,r1
	push	r1
	mov	23,r1
_Label_708:
	push	r0
	sub	r1,1,r1
	bne	_Label_708
	mov	449,r13		! source line 449
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	451,r13		! source line 451
	mov	"\0\0IF",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_403 = addrSpace + 4
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-76]
!   Data Move: _temp_402 = *_temp_403  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_402 == n then goto _Label_401		(int)
	load	[r14+-80],r1
	load	[r14+12],r2
	cmp	r1,r2
	be	_Label_401
!	jmp	_Label_400
_Label_400:
! THEN...
	mov	452,r13		! source line 452
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_404 = _StringConst_17
	set	_StringConst_17,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_404  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	452,r13		! source line 452
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_401:
! FOR STATEMENT...
	mov	454,r13		! source line 454
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_409 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-68]
!   Calculate and save the FOR-LOOP ending value
!   _temp_410 = n - 1		(int)
	load	[r14+12],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_409  (sizeInBytes=4)
	load	[r14+-68],r1
	store	r1,[r14+-84]
_Label_405:
!   Perform the FOR-LOOP termination test
!   if i > _temp_410 then goto _Label_408		
	load	[r14+-84],r1
	load	[r14+-64],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_408
_Label_406:
	mov	454,r13		! source line 454
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	455,r13		! source line 455
	mov	"\0\0AS",r10
	mov	455,r13		! source line 455
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+8],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=frameAddr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-88]
! ASSIGNMENT STATEMENT...
	mov	456,r13		! source line 456
	mov	"\0\0AS",r10
!   _temp_411 = frameAddr - 1048576		(int)
	load	[r14+-88],r1
	set	1048576,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   frameNumber = _temp_411 div 8192		(int)
	load	[r14+-60],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-92]
! IF STATEMENT...
	mov	458,r13		! source line 458
	mov	"\0\0IF",r10
!   if frameNumber >= 0 then goto _Label_415		(int)
	load	[r14+-92],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_415
	jmp	_Label_412
_Label_415:
!   if frameNumber < 27 then goto _Label_414		(int)
	load	[r14+-92],r1
	mov	27,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_414
	jmp	_Label_412
_Label_414:
!   _temp_416 = frameAddr rem 8192		(int)
	load	[r14+-88],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
!   if intIsZero (_temp_416) then goto _Label_413
	load	[r14+-56],r1
	cmp	r1,r0
	be	_Label_413
!	jmp	_Label_412
_Label_412:
! THEN...
	mov	461,r13		! source line 461
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_417 = _StringConst_18
	set	_StringConst_18,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_417  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	461,r13		! source line 461
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_413:
! ASSIGNMENT STATEMENT...
	mov	463,r13		! source line 463
	mov	"\0\0AS",r10
!   _temp_418 = &_Global_histogram
	set	_Global_histogram,r1
	store	r1,[r14+-48]
!   Move address of _temp_418 [frameNumber ] into _temp_419
!     make sure index expr is >= 0
	load	[r14+-92],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-48],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-44]
!   _temp_422 = &_Global_histogram
	set	_Global_histogram,r1
	store	r1,[r14+-32]
!   Move address of _temp_422 [frameNumber ] into _temp_423
!     make sure index expr is >= 0
	load	[r14+-92],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   Data Move: _temp_421 = *_temp_423  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   _temp_420 = _temp_421 + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
!   Data Move: *_temp_419 = _temp_420  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r14+-44],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	464,r13		! source line 464
	mov	"\0\0IF",r10
	mov	464,r13		! source line 464
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+4]
!   Send message ExtractUndefinedBits
	load	[r14+8],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_430  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_430) then goto _Label_429
	load	[r14+-24],r1
	cmp	r1,r0
	be	_Label_429
	jmp	_Label_424
_Label_429:
	mov	465,r13		! source line 465
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+4]
!   Send message IsDirty
	load	[r14+8],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
!   if result==true then goto _Label_424 else goto _Label_428
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_428
	jmp	_Label_424
_Label_428:
	mov	466,r13		! source line 466
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+4]
!   Send message IsReferenced
	load	[r14+8],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
!   if result==true then goto _Label_424 else goto _Label_427
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_427
	jmp	_Label_424
_Label_427:
	mov	467,r13		! source line 467
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+8],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_431  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_431 then goto _Label_426 else goto _Label_424
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_424
	jmp	_Label_426
_Label_426:
	mov	468,r13		! source line 468
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+8],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_432  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_432 then goto _Label_425 else goto _Label_424
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_424
	jmp	_Label_425
_Label_424:
! THEN...
	mov	469,r13		! source line 469
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_433 = _StringConst_19
	set	_StringConst_19,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_433  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	469,r13		! source line 469
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_425:
! ASSIGNMENT STATEMENT...
	mov	471,r13		! source line 471
	mov	"\0\0AS",r10
!   if intIsZero (frameAddr) then goto _runtimeErrorNullPointer
	load	[r14+-88],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_434 = uniq + i		(int)
	load	[r14+16],r1
	load	[r14+-84],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
!   Data Move: *frameAddr = _temp_434  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r14+-88],r2
	store	r1,[r2]
!   Increment the FOR-LOOP index variable and jump back
_Label_407:
!   i = i + 1
	load	[r14+-84],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-84]
	jmp	_Label_405
! END FOR
_Label_408:
! RETURN STATEMENT...
	mov	454,r13		! source line 454
	mov	"\0\0RE",r10
	add	r15,96,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_38_CheckAddrSpace:
	.word	_sourceFileName
	.word	_Label_435
	.word	12		! total size of parameters
	.word	92		! frame size = 92
	.word	_Label_436
	.word	8
	.word	4
	.word	_Label_437
	.word	12
	.word	4
	.word	_Label_438
	.word	16
	.word	4
	.word	_Label_439
	.word	-16
	.word	4
	.word	_Label_440
	.word	-20
	.word	4
	.word	_Label_441
	.word	-9
	.word	1
	.word	_Label_442
	.word	-10
	.word	1
	.word	_Label_443
	.word	-24
	.word	4
	.word	_Label_444
	.word	-28
	.word	4
	.word	_Label_445
	.word	-32
	.word	4
	.word	_Label_446
	.word	-36
	.word	4
	.word	_Label_447
	.word	-40
	.word	4
	.word	_Label_448
	.word	-44
	.word	4
	.word	_Label_449
	.word	-48
	.word	4
	.word	_Label_450
	.word	-52
	.word	4
	.word	_Label_451
	.word	-56
	.word	4
	.word	_Label_452
	.word	-60
	.word	4
	.word	_Label_453
	.word	-64
	.word	4
	.word	_Label_454
	.word	-68
	.word	4
	.word	_Label_455
	.word	-72
	.word	4
	.word	_Label_456
	.word	-76
	.word	4
	.word	_Label_457
	.word	-80
	.word	4
	.word	_Label_458
	.word	-84
	.word	4
	.word	_Label_459
	.word	-88
	.word	4
	.word	_Label_460
	.word	-92
	.word	4
	.word	0
_Label_435:
	.ascii	"CheckAddrSpace\0"
	.align
_Label_436:
	.byte	'P'
	.ascii	"addrSpace\0"
	.align
_Label_437:
	.byte	'I'
	.ascii	"n\0"
	.align
_Label_438:
	.byte	'I'
	.ascii	"uniq\0"
	.align
_Label_439:
	.byte	'?'
	.ascii	"_temp_434\0"
	.align
_Label_440:
	.byte	'?'
	.ascii	"_temp_433\0"
	.align
_Label_441:
	.byte	'C'
	.ascii	"_temp_432\0"
	.align
_Label_442:
	.byte	'C'
	.ascii	"_temp_431\0"
	.align
_Label_443:
	.byte	'?'
	.ascii	"_temp_430\0"
	.align
_Label_444:
	.byte	'?'
	.ascii	"_temp_423\0"
	.align
_Label_445:
	.byte	'?'
	.ascii	"_temp_422\0"
	.align
_Label_446:
	.byte	'?'
	.ascii	"_temp_421\0"
	.align
_Label_447:
	.byte	'?'
	.ascii	"_temp_420\0"
	.align
_Label_448:
	.byte	'?'
	.ascii	"_temp_419\0"
	.align
_Label_449:
	.byte	'?'
	.ascii	"_temp_418\0"
	.align
_Label_450:
	.byte	'?'
	.ascii	"_temp_417\0"
	.align
_Label_451:
	.byte	'?'
	.ascii	"_temp_416\0"
	.align
_Label_452:
	.byte	'?'
	.ascii	"_temp_411\0"
	.align
_Label_453:
	.byte	'?'
	.ascii	"_temp_410\0"
	.align
_Label_454:
	.byte	'?'
	.ascii	"_temp_409\0"
	.align
_Label_455:
	.byte	'?'
	.ascii	"_temp_404\0"
	.align
_Label_456:
	.byte	'?'
	.ascii	"_temp_403\0"
	.align
_Label_457:
	.byte	'?'
	.ascii	"_temp_402\0"
	.align
_Label_458:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_459:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_460:
	.byte	'I'
	.ascii	"frameNumber\0"
	.align
! 
! ===============  FUNCTION CheckAddrSpace2  ===============
! 
_function_37_CheckAddrSpace2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_37_CheckAddrSpace2,r1
	push	r1
	mov	16,r1
_Label_709:
	push	r0
	sub	r1,1,r1
	bne	_Label_709
	mov	482,r13		! source line 482
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	484,r13		! source line 484
	mov	"\0\0IF",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_464 = addrSpace + 4
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-48]
!   Data Move: _temp_463 = *_temp_464  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if _temp_463 == n then goto _Label_462		(int)
	load	[r14+-52],r1
	load	[r14+12],r2
	cmp	r1,r2
	be	_Label_462
!	jmp	_Label_461
_Label_461:
! THEN...
	mov	485,r13		! source line 485
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_465 = _StringConst_20
	set	_StringConst_20,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_465  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	485,r13		! source line 485
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_462:
! FOR STATEMENT...
	mov	487,r13		! source line 487
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_470 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_471 = n - 1		(int)
	load	[r14+12],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_470  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-56]
_Label_466:
!   Perform the FOR-LOOP termination test
!   if i > _temp_471 then goto _Label_469		
	load	[r14+-56],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_469
_Label_467:
	mov	487,r13		! source line 487
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	488,r13		! source line 488
	mov	"\0\0AS",r10
	mov	488,r13		! source line 488
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+8],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=frameAddr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! ASSIGNMENT STATEMENT...
	mov	489,r13		! source line 489
	mov	"\0\0AS",r10
!   _temp_472 = frameAddr - 1048576		(int)
	load	[r14+-60],r1
	set	1048576,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   frameNumber = _temp_472 div 8192		(int)
	load	[r14+-32],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
! IF STATEMENT...
	mov	491,r13		! source line 491
	mov	"\0\0IF",r10
!   if frameNumber >= 0 then goto _Label_476		(int)
	load	[r14+-64],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_476
	jmp	_Label_473
_Label_476:
!   if frameNumber < 27 then goto _Label_475		(int)
	load	[r14+-64],r1
	mov	27,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_475
	jmp	_Label_473
_Label_475:
!   _temp_477 = frameAddr rem 8192		(int)
	load	[r14+-60],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   if intIsZero (_temp_477) then goto _Label_474
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_474
!	jmp	_Label_473
_Label_473:
! THEN...
	mov	494,r13		! source line 494
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_478 = _StringConst_21
	set	_StringConst_21,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_478  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	494,r13		! source line 494
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_474:
! IF STATEMENT...
	mov	496,r13		! source line 496
	mov	"\0\0IF",r10
!   if intIsZero (frameAddr) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_481 = *frameAddr  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_482 = uniq + i		(int)
	load	[r14+16],r1
	load	[r14+-56],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
!   if _temp_481 == _temp_482 then goto _Label_480		(int)
	load	[r14+-20],r1
	load	[r14+-16],r2
	cmp	r1,r2
	be	_Label_480
!	jmp	_Label_479
_Label_479:
! THEN...
	mov	497,r13		! source line 497
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_483 = _StringConst_22
	set	_StringConst_22,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_483  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	497,r13		! source line 497
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_480:
!   Increment the FOR-LOOP index variable and jump back
_Label_468:
!   i = i + 1
	load	[r14+-56],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_466
! END FOR
_Label_469:
! RETURN STATEMENT...
	mov	487,r13		! source line 487
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_37_CheckAddrSpace2:
	.word	_sourceFileName
	.word	_Label_484
	.word	12		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_485
	.word	8
	.word	4
	.word	_Label_486
	.word	12
	.word	4
	.word	_Label_487
	.word	16
	.word	4
	.word	_Label_488
	.word	-12
	.word	4
	.word	_Label_489
	.word	-16
	.word	4
	.word	_Label_490
	.word	-20
	.word	4
	.word	_Label_491
	.word	-24
	.word	4
	.word	_Label_492
	.word	-28
	.word	4
	.word	_Label_493
	.word	-32
	.word	4
	.word	_Label_494
	.word	-36
	.word	4
	.word	_Label_495
	.word	-40
	.word	4
	.word	_Label_496
	.word	-44
	.word	4
	.word	_Label_497
	.word	-48
	.word	4
	.word	_Label_498
	.word	-52
	.word	4
	.word	_Label_499
	.word	-56
	.word	4
	.word	_Label_500
	.word	-60
	.word	4
	.word	_Label_501
	.word	-64
	.word	4
	.word	0
_Label_484:
	.ascii	"CheckAddrSpace2\0"
	.align
_Label_485:
	.byte	'P'
	.ascii	"addrSpace\0"
	.align
_Label_486:
	.byte	'I'
	.ascii	"n\0"
	.align
_Label_487:
	.byte	'I'
	.ascii	"uniq\0"
	.align
_Label_488:
	.byte	'?'
	.ascii	"_temp_483\0"
	.align
_Label_489:
	.byte	'?'
	.ascii	"_temp_482\0"
	.align
_Label_490:
	.byte	'?'
	.ascii	"_temp_481\0"
	.align
_Label_491:
	.byte	'?'
	.ascii	"_temp_478\0"
	.align
_Label_492:
	.byte	'?'
	.ascii	"_temp_477\0"
	.align
_Label_493:
	.byte	'?'
	.ascii	"_temp_472\0"
	.align
_Label_494:
	.byte	'?'
	.ascii	"_temp_471\0"
	.align
_Label_495:
	.byte	'?'
	.ascii	"_temp_470\0"
	.align
_Label_496:
	.byte	'?'
	.ascii	"_temp_465\0"
	.align
_Label_497:
	.byte	'?'
	.ascii	"_temp_464\0"
	.align
_Label_498:
	.byte	'?'
	.ascii	"_temp_463\0"
	.align
_Label_499:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_500:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_501:
	.byte	'I'
	.ascii	"frameNumber\0"
	.align
! 
! ===============  FUNCTION RunHoareSemanticTests  ===============
! 
_function_36_RunHoareSemanticTests:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_36_RunHoareSemanticTests,r1
	push	r1
	mov	21,r1
_Label_710:
	push	r0
	sub	r1,1,r1
	bne	_Label_710
	mov	518,r13		! source line 518
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	522,r13		! source line 522
	mov	"\0\0SE",r10
!   _temp_502 = &_Global_allDone
	set	_Global_allDone,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	523,r13		! source line 523
	mov	"\0\0SE",r10
!   _temp_503 = &_Global_freeze
	set	_Global_freeze,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	524,r13		! source line 524
	mov	"\0\0SE",r10
!   _temp_504 = &_Global_uniqueNumberLock
	set	_Global_uniqueNumberLock,r1
	store	r1,[r14+-64]
!   Send message Init
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	525,r13		! source line 525
	mov	"\0\0AS",r10
!   _Global_nextUnique = 1		(4 bytes)
	mov	1,r1
	set	_Global_nextUnique,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_505 = _StringConst_23
	set	_StringConst_23,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_505  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	527,r13		! source line 527
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	529,r13		! source line 529
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_510 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-56]
!   Calculate and save the FOR-LOOP ending value
!   _temp_511 = 20		(4 bytes)
	mov	20,r1
	store	r1,[r14+-52]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_510  (sizeInBytes=4)
	load	[r14+-56],r1
	store	r1,[r14+-76]
_Label_506:
!   Perform the FOR-LOOP termination test
!   if i > _temp_511 then goto _Label_509		
	load	[r14+-76],r1
	load	[r14+-52],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_509
_Label_507:
	mov	529,r13		! source line 529
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	530,r13		! source line 530
	mov	"\0\0AS",r10
!   ALLOC CLASS Constructor...
!   Call alloc...
	mov	4164,r1
	store	r1,[r14+-48]
!   th = alloc (_temp_512)
	load	[r14+-48],r1
	call	_heapAlloc
	store	r1,[r14+-80]
!   ZeroMemory: *th = zeros  (sizeInBytes=4164)
	load	[r14+-80],r4
	mov	1041,r3
_Label_711:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_711
!   *th = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	load	[r14+-80],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	531,r13		! source line 531
	mov	"\0\0SE",r10
!   _temp_514 = _StringConst_24
	set	_StringConst_24,r1
	store	r1,[r14+-40]
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_514  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	532,r13		! source line 532
	mov	"\0\0SE",r10
!   _temp_515 = _function_35_TestForHoareSemantic
	set	_function_35_TestForHoareSemantic,r1
	store	r1,[r14+-36]
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_515  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=i  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_508:
!   i = i + 1
	load	[r14+-76],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-76]
	jmp	_Label_506
! END FOR
_Label_509:
! FOR STATEMENT...
	mov	537,r13		! source line 537
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_520 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-32]
!   Calculate and save the FOR-LOOP ending value
!   _temp_521 = 20		(4 bytes)
	mov	20,r1
	store	r1,[r14+-28]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_520  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+-76]
_Label_516:
!   Perform the FOR-LOOP termination test
!   if i > _temp_521 then goto _Label_519		
	load	[r14+-76],r1
	load	[r14+-28],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_519
_Label_517:
	mov	537,r13		! source line 537
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	538,r13		! source line 538
	mov	"\0\0SE",r10
!   _temp_522 = &_Global_allDone
	set	_Global_allDone,r1
	store	r1,[r14+-24]
!   Send message Down
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_518:
!   i = i + 1
	load	[r14+-76],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-76]
	jmp	_Label_516
! END FOR
_Label_519:
! IF STATEMENT...
	mov	541,r13		! source line 541
	mov	"\0\0IF",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	541,r13		! source line 541
	mov	"\0\0CA",r10
	call	_function_45_GetUniqueNumber
!   Retrieve Result: targetName=_temp_525  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   if _temp_525 == 401 then goto _Label_524		(int)
	load	[r14+-20],r1
	mov	401,r2
	cmp	r1,r2
	be	_Label_524
!	jmp	_Label_523
_Label_523:
! THEN...
	mov	542,r13		! source line 542
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_526 = _StringConst_25
	set	_StringConst_25,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_526  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	542,r13		! source line 542
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_524:
! CALL STATEMENT...
!   _temp_527 = _StringConst_26
	set	_StringConst_26,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_527  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	544,r13		! source line 544
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	544,r13		! source line 544
	mov	"\0\0RE",r10
	add	r15,88,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_36_RunHoareSemanticTests:
	.word	_sourceFileName
	.word	_Label_528
	.word	0		! total size of parameters
	.word	84		! frame size = 84
	.word	_Label_529
	.word	-12
	.word	4
	.word	_Label_530
	.word	-16
	.word	4
	.word	_Label_531
	.word	-20
	.word	4
	.word	_Label_532
	.word	-24
	.word	4
	.word	_Label_533
	.word	-28
	.word	4
	.word	_Label_534
	.word	-32
	.word	4
	.word	_Label_535
	.word	-36
	.word	4
	.word	_Label_536
	.word	-40
	.word	4
	.word	_Label_537
	.word	-44
	.word	4
	.word	_Label_538
	.word	-48
	.word	4
	.word	_Label_539
	.word	-52
	.word	4
	.word	_Label_540
	.word	-56
	.word	4
	.word	_Label_541
	.word	-60
	.word	4
	.word	_Label_542
	.word	-64
	.word	4
	.word	_Label_543
	.word	-68
	.word	4
	.word	_Label_544
	.word	-72
	.word	4
	.word	_Label_545
	.word	-76
	.word	4
	.word	_Label_546
	.word	-80
	.word	4
	.word	0
_Label_528:
	.ascii	"RunHoareSemanticTests\0"
	.align
_Label_529:
	.byte	'?'
	.ascii	"_temp_527\0"
	.align
_Label_530:
	.byte	'?'
	.ascii	"_temp_526\0"
	.align
_Label_531:
	.byte	'?'
	.ascii	"_temp_525\0"
	.align
_Label_532:
	.byte	'?'
	.ascii	"_temp_522\0"
	.align
_Label_533:
	.byte	'?'
	.ascii	"_temp_521\0"
	.align
_Label_534:
	.byte	'?'
	.ascii	"_temp_520\0"
	.align
_Label_535:
	.byte	'?'
	.ascii	"_temp_515\0"
	.align
_Label_536:
	.byte	'?'
	.ascii	"_temp_514\0"
	.align
_Label_537:
	.byte	'?'
	.ascii	"_temp_513\0"
	.align
_Label_538:
	.byte	'?'
	.ascii	"_temp_512\0"
	.align
_Label_539:
	.byte	'?'
	.ascii	"_temp_511\0"
	.align
_Label_540:
	.byte	'?'
	.ascii	"_temp_510\0"
	.align
_Label_541:
	.byte	'?'
	.ascii	"_temp_505\0"
	.align
_Label_542:
	.byte	'?'
	.ascii	"_temp_504\0"
	.align
_Label_543:
	.byte	'?'
	.ascii	"_temp_503\0"
	.align
_Label_544:
	.byte	'?'
	.ascii	"_temp_502\0"
	.align
_Label_545:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_546:
	.byte	'P'
	.ascii	"th\0"
	.align
! 
! ===============  FUNCTION TestForHoareSemantic  ===============
! 
_function_35_TestForHoareSemantic:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_35_TestForHoareSemantic,r1
	push	r1
	mov	22,r1
_Label_712:
	push	r0
	sub	r1,1,r1
	bne	_Label_712
	mov	556,r13		! source line 556
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! FOR STATEMENT...
	mov	561,r13		! source line 561
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_551 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-72]
!   Calculate and save the FOR-LOOP ending value
!   _temp_552 = 20		(4 bytes)
	mov	20,r1
	store	r1,[r14+-68]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_551  (sizeInBytes=4)
	load	[r14+-72],r1
	store	r1,[r14+-76]
_Label_547:
!   Perform the FOR-LOOP termination test
!   if i > _temp_552 then goto _Label_550		
	load	[r14+-76],r1
	load	[r14+-68],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_550
_Label_548:
	mov	561,r13		! source line 561
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=myID  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	562,r13		! source line 562
	mov	"\0\0CE",r10
	call	printInt
! ASSIGNMENT STATEMENT...
	mov	563,r13		! source line 563
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	563,r13		! source line 563
	mov	"\0\0CA",r10
	call	_function_45_GetUniqueNumber
!   Retrieve Result: targetName=e  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
! ASSIGNMENT STATEMENT...
	mov	564,r13		! source line 564
	mov	"\0\0AS",r10
	mov	564,r13		! source line 564
	mov	"\0\0SE",r10
!   _temp_553 = &_P_Kernel_testHoareSemantic
	set	_P_Kernel_testHoareSemantic,r1
	store	r1,[r14+-64]
!   Send message GetANewThread
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=th  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-88]
! ASSIGNMENT STATEMENT...
	mov	565,r13		! source line 565
	mov	"\0\0AS",r10
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-88],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_554 = th + 12
	load	[r14+-88],r1
	add	r1,12,r1
	store	r1,[r14+-60]
!   Move address of _temp_554 [0 ] into _temp_555
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-60],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-56]
!   Data Move: *_temp_555 = e  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r14+-56],r2
	store	r1,[r2]
! FOR STATEMENT...
	mov	566,r13		! source line 566
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_560 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-52]
!   Calculate and save the FOR-LOOP ending value
!   _temp_561 = 10 + i		(int)
	mov	10,r1
	load	[r14+-76],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Initialize FOR-LOOP index variable
!   Data Move: j = _temp_560  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+-80]
_Label_556:
!   Perform the FOR-LOOP termination test
!   if j > _temp_561 then goto _Label_559		
	load	[r14+-80],r1
	load	[r14+-48],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_559
_Label_557:
	mov	566,r13		! source line 566
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	567,r13		! source line 567
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_558:
!   j = j + 1
	load	[r14+-80],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
	jmp	_Label_556
! END FOR
_Label_559:
! IF STATEMENT...
	mov	569,r13		! source line 569
	mov	"\0\0IF",r10
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-88],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_565 = th + 12
	load	[r14+-88],r1
	add	r1,12,r1
	store	r1,[r14+-40]
!   Move address of _temp_565 [0 ] into _temp_566
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-40],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-36]
!   Data Move: _temp_564 = *_temp_566  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   if e == _temp_564 then goto _Label_563		(int)
	load	[r14+-84],r1
	load	[r14+-44],r2
	cmp	r1,r2
	be	_Label_563
!	jmp	_Label_562
_Label_562:
! THEN...
	mov	570,r13		! source line 570
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_567 = _StringConst_27
	set	_StringConst_27,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_567  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	570,r13		! source line 570
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_563:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=46  sizeInBytes=1
	mov	46,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	572,r13		! source line 572
	mov	"\0\0CE",r10
	call	printChar
! SEND STATEMENT...
	mov	573,r13		! source line 573
	mov	"\0\0SE",r10
!   _temp_568 = &_P_Kernel_testHoareSemantic
	set	_P_Kernel_testHoareSemantic,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=th  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+4]
!   Send message FreeThread
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! FOR STATEMENT...
	mov	574,r13		! source line 574
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_573 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_574 = 10 - i		(int)
	mov	10,r1
	load	[r14+-76],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: j = _temp_573  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-80]
_Label_569:
!   Perform the FOR-LOOP termination test
!   if j > _temp_574 then goto _Label_572		
	load	[r14+-80],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_572
_Label_570:
	mov	574,r13		! source line 574
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	575,r13		! source line 575
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_571:
!   j = j + 1
	load	[r14+-80],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
	jmp	_Label_569
! END FOR
_Label_572:
!   Increment the FOR-LOOP index variable and jump back
_Label_549:
!   i = i + 1
	load	[r14+-76],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-76]
	jmp	_Label_547
! END FOR
_Label_550:
! SEND STATEMENT...
	mov	578,r13		! source line 578
	mov	"\0\0SE",r10
!   _temp_575 = &_Global_allDone
	set	_Global_allDone,r1
	store	r1,[r14+-16]
!   Send message Up
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	579,r13		! source line 579
	mov	"\0\0SE",r10
!   _temp_576 = &_Global_freeze
	set	_Global_freeze,r1
	store	r1,[r14+-12]
!   Send message Down
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	579,r13		! source line 579
	mov	"\0\0RE",r10
	add	r15,92,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_35_TestForHoareSemantic:
	.word	_sourceFileName
	.word	_Label_577
	.word	4		! total size of parameters
	.word	88		! frame size = 88
	.word	_Label_578
	.word	8
	.word	4
	.word	_Label_579
	.word	-12
	.word	4
	.word	_Label_580
	.word	-16
	.word	4
	.word	_Label_581
	.word	-20
	.word	4
	.word	_Label_582
	.word	-24
	.word	4
	.word	_Label_583
	.word	-28
	.word	4
	.word	_Label_584
	.word	-32
	.word	4
	.word	_Label_585
	.word	-36
	.word	4
	.word	_Label_586
	.word	-40
	.word	4
	.word	_Label_587
	.word	-44
	.word	4
	.word	_Label_588
	.word	-48
	.word	4
	.word	_Label_589
	.word	-52
	.word	4
	.word	_Label_590
	.word	-56
	.word	4
	.word	_Label_591
	.word	-60
	.word	4
	.word	_Label_592
	.word	-64
	.word	4
	.word	_Label_593
	.word	-68
	.word	4
	.word	_Label_594
	.word	-72
	.word	4
	.word	_Label_595
	.word	-76
	.word	4
	.word	_Label_596
	.word	-80
	.word	4
	.word	_Label_597
	.word	-84
	.word	4
	.word	_Label_598
	.word	-88
	.word	4
	.word	0
_Label_577:
	.ascii	"TestForHoareSemantic\0"
	.align
_Label_578:
	.byte	'I'
	.ascii	"myID\0"
	.align
_Label_579:
	.byte	'?'
	.ascii	"_temp_576\0"
	.align
_Label_580:
	.byte	'?'
	.ascii	"_temp_575\0"
	.align
_Label_581:
	.byte	'?'
	.ascii	"_temp_574\0"
	.align
_Label_582:
	.byte	'?'
	.ascii	"_temp_573\0"
	.align
_Label_583:
	.byte	'?'
	.ascii	"_temp_568\0"
	.align
_Label_584:
	.byte	'?'
	.ascii	"_temp_567\0"
	.align
_Label_585:
	.byte	'?'
	.ascii	"_temp_566\0"
	.align
_Label_586:
	.byte	'?'
	.ascii	"_temp_565\0"
	.align
_Label_587:
	.byte	'?'
	.ascii	"_temp_564\0"
	.align
_Label_588:
	.byte	'?'
	.ascii	"_temp_561\0"
	.align
_Label_589:
	.byte	'?'
	.ascii	"_temp_560\0"
	.align
_Label_590:
	.byte	'?'
	.ascii	"_temp_555\0"
	.align
_Label_591:
	.byte	'?'
	.ascii	"_temp_554\0"
	.align
_Label_592:
	.byte	'?'
	.ascii	"_temp_553\0"
	.align
_Label_593:
	.byte	'?'
	.ascii	"_temp_552\0"
	.align
_Label_594:
	.byte	'?'
	.ascii	"_temp_551\0"
	.align
_Label_595:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_596:
	.byte	'I'
	.ascii	"j\0"
	.align
_Label_597:
	.byte	'I'
	.ascii	"e\0"
	.align
_Label_598:
	.byte	'P'
	.ascii	"th\0"
	.align
! 
! ===============  FUNCTION RunProcessManagerHoareSemanticTests  ===============
! 
_function_34_RunProcessManagerHoareSemanticTests:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_34_RunProcessManagerHoareSemanticTests,r1
	push	r1
	mov	21,r1
_Label_713:
	push	r0
	sub	r1,1,r1
	bne	_Label_713
	mov	599,r13		! source line 599
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	603,r13		! source line 603
	mov	"\0\0SE",r10
!   _temp_599 = &_Global_allDone
	set	_Global_allDone,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	604,r13		! source line 604
	mov	"\0\0SE",r10
!   _temp_600 = &_Global_freeze
	set	_Global_freeze,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	605,r13		! source line 605
	mov	"\0\0SE",r10
!   _temp_601 = &_Global_uniqueNumberLock
	set	_Global_uniqueNumberLock,r1
	store	r1,[r14+-64]
!   Send message Init
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	606,r13		! source line 606
	mov	"\0\0AS",r10
!   _Global_nextUnique = 1		(4 bytes)
	mov	1,r1
	set	_Global_nextUnique,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_602 = _StringConst_28
	set	_StringConst_28,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_602  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	608,r13		! source line 608
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	610,r13		! source line 610
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_607 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-56]
!   Calculate and save the FOR-LOOP ending value
!   _temp_608 = 20		(4 bytes)
	mov	20,r1
	store	r1,[r14+-52]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_607  (sizeInBytes=4)
	load	[r14+-56],r1
	store	r1,[r14+-76]
_Label_603:
!   Perform the FOR-LOOP termination test
!   if i > _temp_608 then goto _Label_606		
	load	[r14+-76],r1
	load	[r14+-52],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_606
_Label_604:
	mov	610,r13		! source line 610
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	611,r13		! source line 611
	mov	"\0\0AS",r10
!   ALLOC CLASS Constructor...
!   Call alloc...
	mov	4164,r1
	store	r1,[r14+-48]
!   th = alloc (_temp_609)
	load	[r14+-48],r1
	call	_heapAlloc
	store	r1,[r14+-80]
!   ZeroMemory: *th = zeros  (sizeInBytes=4164)
	load	[r14+-80],r4
	mov	1041,r3
_Label_714:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_714
!   *th = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	load	[r14+-80],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	612,r13		! source line 612
	mov	"\0\0SE",r10
!   _temp_611 = _StringConst_29
	set	_StringConst_29,r1
	store	r1,[r14+-40]
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_611  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	613,r13		! source line 613
	mov	"\0\0SE",r10
!   _temp_612 = _function_33_TestProcessManagerHoareSemantic
	set	_function_33_TestProcessManagerHoareSemantic,r1
	store	r1,[r14+-36]
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_612  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=i  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_605:
!   i = i + 1
	load	[r14+-76],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-76]
	jmp	_Label_603
! END FOR
_Label_606:
! FOR STATEMENT...
	mov	618,r13		! source line 618
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_617 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-32]
!   Calculate and save the FOR-LOOP ending value
!   _temp_618 = 20		(4 bytes)
	mov	20,r1
	store	r1,[r14+-28]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_617  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+-76]
_Label_613:
!   Perform the FOR-LOOP termination test
!   if i > _temp_618 then goto _Label_616		
	load	[r14+-76],r1
	load	[r14+-28],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_616
_Label_614:
	mov	618,r13		! source line 618
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	619,r13		! source line 619
	mov	"\0\0SE",r10
!   _temp_619 = &_Global_allDone
	set	_Global_allDone,r1
	store	r1,[r14+-24]
!   Send message Down
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_615:
!   i = i + 1
	load	[r14+-76],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-76]
	jmp	_Label_613
! END FOR
_Label_616:
! IF STATEMENT...
	mov	622,r13		! source line 622
	mov	"\0\0IF",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	622,r13		! source line 622
	mov	"\0\0CA",r10
	call	_function_45_GetUniqueNumber
!   Retrieve Result: targetName=_temp_622  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   if _temp_622 == 401 then goto _Label_621		(int)
	load	[r14+-20],r1
	mov	401,r2
	cmp	r1,r2
	be	_Label_621
!	jmp	_Label_620
_Label_620:
! THEN...
	mov	623,r13		! source line 623
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_623 = _StringConst_30
	set	_StringConst_30,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_623  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	623,r13		! source line 623
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_621:
! CALL STATEMENT...
!   _temp_624 = _StringConst_31
	set	_StringConst_31,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_624  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	625,r13		! source line 625
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	625,r13		! source line 625
	mov	"\0\0RE",r10
	add	r15,88,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_34_RunProcessManagerHoareSemanticTests:
	.word	_sourceFileName
	.word	_Label_625
	.word	0		! total size of parameters
	.word	84		! frame size = 84
	.word	_Label_626
	.word	-12
	.word	4
	.word	_Label_627
	.word	-16
	.word	4
	.word	_Label_628
	.word	-20
	.word	4
	.word	_Label_629
	.word	-24
	.word	4
	.word	_Label_630
	.word	-28
	.word	4
	.word	_Label_631
	.word	-32
	.word	4
	.word	_Label_632
	.word	-36
	.word	4
	.word	_Label_633
	.word	-40
	.word	4
	.word	_Label_634
	.word	-44
	.word	4
	.word	_Label_635
	.word	-48
	.word	4
	.word	_Label_636
	.word	-52
	.word	4
	.word	_Label_637
	.word	-56
	.word	4
	.word	_Label_638
	.word	-60
	.word	4
	.word	_Label_639
	.word	-64
	.word	4
	.word	_Label_640
	.word	-68
	.word	4
	.word	_Label_641
	.word	-72
	.word	4
	.word	_Label_642
	.word	-76
	.word	4
	.word	_Label_643
	.word	-80
	.word	4
	.word	0
_Label_625:
	.ascii	"RunProcessManagerHoareSemanticTests\0"
	.align
_Label_626:
	.byte	'?'
	.ascii	"_temp_624\0"
	.align
_Label_627:
	.byte	'?'
	.ascii	"_temp_623\0"
	.align
_Label_628:
	.byte	'?'
	.ascii	"_temp_622\0"
	.align
_Label_629:
	.byte	'?'
	.ascii	"_temp_619\0"
	.align
_Label_630:
	.byte	'?'
	.ascii	"_temp_618\0"
	.align
_Label_631:
	.byte	'?'
	.ascii	"_temp_617\0"
	.align
_Label_632:
	.byte	'?'
	.ascii	"_temp_612\0"
	.align
_Label_633:
	.byte	'?'
	.ascii	"_temp_611\0"
	.align
_Label_634:
	.byte	'?'
	.ascii	"_temp_610\0"
	.align
_Label_635:
	.byte	'?'
	.ascii	"_temp_609\0"
	.align
_Label_636:
	.byte	'?'
	.ascii	"_temp_608\0"
	.align
_Label_637:
	.byte	'?'
	.ascii	"_temp_607\0"
	.align
_Label_638:
	.byte	'?'
	.ascii	"_temp_602\0"
	.align
_Label_639:
	.byte	'?'
	.ascii	"_temp_601\0"
	.align
_Label_640:
	.byte	'?'
	.ascii	"_temp_600\0"
	.align
_Label_641:
	.byte	'?'
	.ascii	"_temp_599\0"
	.align
_Label_642:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_643:
	.byte	'P'
	.ascii	"th\0"
	.align
! 
! ===============  FUNCTION TestProcessManagerHoareSemantic  ===============
! 
_function_33_TestProcessManagerHoareSemantic:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_33_TestProcessManagerHoareSemantic,r1
	push	r1
	mov	20,r1
_Label_715:
	push	r0
	sub	r1,1,r1
	bne	_Label_715
	mov	637,r13		! source line 637
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! FOR STATEMENT...
	mov	641,r13		! source line 641
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_648 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_649 = 20		(4 bytes)
	mov	20,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_648  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-68]
_Label_644:
!   Perform the FOR-LOOP termination test
!   if i > _temp_649 then goto _Label_647		
	load	[r14+-68],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_647
_Label_645:
	mov	641,r13		! source line 641
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=myID  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	642,r13		! source line 642
	mov	"\0\0CE",r10
	call	printInt
! ASSIGNMENT STATEMENT...
	mov	643,r13		! source line 643
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	643,r13		! source line 643
	mov	"\0\0CA",r10
	call	_function_45_GetUniqueNumber
!   Retrieve Result: targetName=e  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-76]
! ASSIGNMENT STATEMENT...
	mov	644,r13		! source line 644
	mov	"\0\0AS",r10
	mov	644,r13		! source line 644
	mov	"\0\0SE",r10
!   _temp_650 = &_P_Kernel_processManagerHoareSemantic
	set	_P_Kernel_processManagerHoareSemantic,r1
	store	r1,[r14+-56]
!   Send message GetANewProcess
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=pcb  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! ASSIGNMENT STATEMENT...
	mov	645,r13		! source line 645
	mov	"\0\0AS",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_651 = pcb + 28
	load	[r14+-80],r1
	add	r1,28,r1
	store	r1,[r14+-52]
!   Data Move: *_temp_651 = e  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r14+-52],r2
	store	r1,[r2]
! FOR STATEMENT...
	mov	646,r13		! source line 646
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_656 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_657 = 10 + i		(int)
	mov	10,r1
	load	[r14+-68],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: j = _temp_656  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-72]
_Label_652:
!   Perform the FOR-LOOP termination test
!   if j > _temp_657 then goto _Label_655		
	load	[r14+-72],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_655
_Label_653:
	mov	646,r13		! source line 646
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	647,r13		! source line 647
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_654:
!   j = j + 1
	load	[r14+-72],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
	jmp	_Label_652
! END FOR
_Label_655:
! IF STATEMENT...
	mov	649,r13		! source line 649
	mov	"\0\0IF",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_661 = pcb + 28
	load	[r14+-80],r1
	add	r1,28,r1
	store	r1,[r14+-36]
!   Data Move: _temp_660 = *_temp_661  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if e == _temp_660 then goto _Label_659		(int)
	load	[r14+-76],r1
	load	[r14+-40],r2
	cmp	r1,r2
	be	_Label_659
!	jmp	_Label_658
_Label_658:
! THEN...
	mov	650,r13		! source line 650
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_662 = _StringConst_32
	set	_StringConst_32,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_662  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	650,r13		! source line 650
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_659:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=46  sizeInBytes=1
	mov	46,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	652,r13		! source line 652
	mov	"\0\0CE",r10
	call	printChar
! SEND STATEMENT...
	mov	653,r13		! source line 653
	mov	"\0\0SE",r10
!   _temp_663 = &_P_Kernel_processManagerHoareSemantic
	set	_P_Kernel_processManagerHoareSemantic,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=pcb  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+4]
!   Send message FreeProcess
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! FOR STATEMENT...
	mov	654,r13		! source line 654
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_668 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_669 = 10 - i		(int)
	mov	10,r1
	load	[r14+-68],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: j = _temp_668  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-72]
_Label_664:
!   Perform the FOR-LOOP termination test
!   if j > _temp_669 then goto _Label_667		
	load	[r14+-72],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_667
_Label_665:
	mov	654,r13		! source line 654
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	655,r13		! source line 655
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_666:
!   j = j + 1
	load	[r14+-72],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
	jmp	_Label_664
! END FOR
_Label_667:
!   Increment the FOR-LOOP index variable and jump back
_Label_646:
!   i = i + 1
	load	[r14+-68],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-68]
	jmp	_Label_644
! END FOR
_Label_647:
! SEND STATEMENT...
	mov	658,r13		! source line 658
	mov	"\0\0SE",r10
!   _temp_670 = &_Global_allDone
	set	_Global_allDone,r1
	store	r1,[r14+-16]
!   Send message Up
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	659,r13		! source line 659
	mov	"\0\0SE",r10
!   _temp_671 = &_Global_freeze
	set	_Global_freeze,r1
	store	r1,[r14+-12]
!   Send message Down
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	659,r13		! source line 659
	mov	"\0\0RE",r10
	add	r15,84,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_33_TestProcessManagerHoareSemantic:
	.word	_sourceFileName
	.word	_Label_672
	.word	4		! total size of parameters
	.word	80		! frame size = 80
	.word	_Label_673
	.word	8
	.word	4
	.word	_Label_674
	.word	-12
	.word	4
	.word	_Label_675
	.word	-16
	.word	4
	.word	_Label_676
	.word	-20
	.word	4
	.word	_Label_677
	.word	-24
	.word	4
	.word	_Label_678
	.word	-28
	.word	4
	.word	_Label_679
	.word	-32
	.word	4
	.word	_Label_680
	.word	-36
	.word	4
	.word	_Label_681
	.word	-40
	.word	4
	.word	_Label_682
	.word	-44
	.word	4
	.word	_Label_683
	.word	-48
	.word	4
	.word	_Label_684
	.word	-52
	.word	4
	.word	_Label_685
	.word	-56
	.word	4
	.word	_Label_686
	.word	-60
	.word	4
	.word	_Label_687
	.word	-64
	.word	4
	.word	_Label_688
	.word	-68
	.word	4
	.word	_Label_689
	.word	-72
	.word	4
	.word	_Label_690
	.word	-76
	.word	4
	.word	_Label_691
	.word	-80
	.word	4
	.word	0
_Label_672:
	.ascii	"TestProcessManagerHoareSemantic\0"
	.align
_Label_673:
	.byte	'I'
	.ascii	"myID\0"
	.align
_Label_674:
	.byte	'?'
	.ascii	"_temp_671\0"
	.align
_Label_675:
	.byte	'?'
	.ascii	"_temp_670\0"
	.align
_Label_676:
	.byte	'?'
	.ascii	"_temp_669\0"
	.align
_Label_677:
	.byte	'?'
	.ascii	"_temp_668\0"
	.align
_Label_678:
	.byte	'?'
	.ascii	"_temp_663\0"
	.align
_Label_679:
	.byte	'?'
	.ascii	"_temp_662\0"
	.align
_Label_680:
	.byte	'?'
	.ascii	"_temp_661\0"
	.align
_Label_681:
	.byte	'?'
	.ascii	"_temp_660\0"
	.align
_Label_682:
	.byte	'?'
	.ascii	"_temp_657\0"
	.align
_Label_683:
	.byte	'?'
	.ascii	"_temp_656\0"
	.align
_Label_684:
	.byte	'?'
	.ascii	"_temp_651\0"
	.align
_Label_685:
	.byte	'?'
	.ascii	"_temp_650\0"
	.align
_Label_686:
	.byte	'?'
	.ascii	"_temp_649\0"
	.align
_Label_687:
	.byte	'?'
	.ascii	"_temp_648\0"
	.align
_Label_688:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_689:
	.byte	'I'
	.ascii	"j\0"
	.align
_Label_690:
	.byte	'I'
	.ascii	"e\0"
	.align
_Label_691:
	.byte	'P'
	.ascii	"pcb\0"
	.align
