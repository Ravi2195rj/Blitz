! Name of package being compiled: Kernel
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
! Externally visible functions in this package
	.export	_P_Kernel_TimerInterruptHandler
	.export	_P_Kernel_DiskInterruptHandler
	.export	_P_Kernel_SerialInterruptHandler
	.export	_P_Kernel_IllegalInstructionHandler
	.export	_P_Kernel_ArithmeticExceptionHandler
	.export	_P_Kernel_AddressExceptionHandler
	.export	_P_Kernel_PageInvalidExceptionHandler
	.export	_P_Kernel_PageReadonlyExceptionHandler
	.export	_P_Kernel_PrivilegedInstructionHandler
	.export	_P_Kernel_AlignmentExceptionHandler
	.export	_P_Kernel_SyscallTrapHandler
	.export	_P_Kernel_Handle_Sys_Fork
	.export	_P_Kernel_Handle_Sys_Yield
	.export	_P_Kernel_Handle_Sys_Exec
	.export	_P_Kernel_Handle_Sys_Join
	.export	_P_Kernel_Handle_Sys_Exit
	.export	_P_Kernel_Handle_Sys_Create
	.export	_P_Kernel_Handle_Sys_Open
	.export	_P_Kernel_Handle_Sys_Read
	.export	_P_Kernel_Handle_Sys_Write
	.export	_P_Kernel_Handle_Sys_Seek
	.export	_P_Kernel_Handle_Sys_Close
	.export	_P_Kernel_Handle_Sys_Shutdown
	.export	_P_Kernel_InitializeScheduler
	.export	_P_Kernel_Run
	.export	_P_Kernel_PrintReadyList
	.export	_P_Kernel_ThreadStartMain
	.export	_P_Kernel_ThreadFinish
	.export	_P_Kernel_FatalError_ThreadVersion
	.export	_P_Kernel_SetInterruptsTo
	.export	_P_Kernel_ProcessFinish
	.export	_P_Kernel_InitFirstProcess
	.import	Switch
	.import	ThreadStartUp
	.import	GetOldUserPCFromSystemStack
	.import	LoadPageTableRegs
	.import	SaveUserRegs
	.import	RestoreUserRegs
	.import	BecomeUserThread
! The following class and its methods are from other packages
	.import	_P_System_Object
! The following class and its methods are from other packages
	.import	_P_BitMap_BitMap
! The following class and its methods are from other packages
	.import	_P_List_List
! The following class and its methods are from other packages
	.import	_P_List_Listable
! The following class and its methods are from this package
	.export	_P_Kernel_Semaphore
	.export	_Method_P_Kernel_Semaphore_1
	.export	_Method_P_Kernel_Semaphore_2
	.export	_Method_P_Kernel_Semaphore_3
! The following class and its methods are from this package
	.export	_P_Kernel_Mutex
	.export	_Method_P_Kernel_Mutex_1
	.export	_Method_P_Kernel_Mutex_2
	.export	_Method_P_Kernel_Mutex_3
	.export	_Method_P_Kernel_Mutex_4
! The following class and its methods are from this package
	.export	_P_Kernel_Condition
	.export	_Method_P_Kernel_Condition_1
	.export	_Method_P_Kernel_Condition_2
	.export	_Method_P_Kernel_Condition_3
	.export	_Method_P_Kernel_Condition_4
! The following class and its methods are from this package
	.export	_P_Kernel_Thread
	.export	_Method_P_Kernel_Thread_1
	.export	_Method_P_Kernel_Thread_2
	.export	_Method_P_Kernel_Thread_3
	.export	_Method_P_Kernel_Thread_4
	.export	_Method_P_Kernel_Thread_5
	.export	_Method_P_Kernel_Thread_6
! The following class and its methods are from this package
	.export	_P_Kernel_ThreadManager
	.export	_Method_P_Kernel_ThreadManager_1
	.export	_Method_P_Kernel_ThreadManager_2
	.export	_Method_P_Kernel_ThreadManager_3
	.export	_Method_P_Kernel_ThreadManager_4
! The following class and its methods are from this package
	.export	_P_Kernel_ProcessControlBlock
	.export	_Method_P_Kernel_ProcessControlBlock_1
	.export	_Method_P_Kernel_ProcessControlBlock_2
	.export	_Method_P_Kernel_ProcessControlBlock_3
! The following class and its methods are from this package
	.export	_P_Kernel_ProcessManager
	.export	_Method_P_Kernel_ProcessManager_1
	.export	_Method_P_Kernel_ProcessManager_2
	.export	_Method_P_Kernel_ProcessManager_3
	.export	_Method_P_Kernel_ProcessManager_4
	.export	_Method_P_Kernel_ProcessManager_5
! The following class and its methods are from this package
	.export	_P_Kernel_FrameManager
	.export	_Method_P_Kernel_FrameManager_1
	.export	_Method_P_Kernel_FrameManager_2
	.export	_Method_P_Kernel_FrameManager_3
	.export	_Method_P_Kernel_FrameManager_4
	.export	_Method_P_Kernel_FrameManager_5
! The following class and its methods are from this package
	.export	_P_Kernel_AddrSpace
	.export	_Method_P_Kernel_AddrSpace_1
	.export	_Method_P_Kernel_AddrSpace_2
	.export	_Method_P_Kernel_AddrSpace_3
	.export	_Method_P_Kernel_AddrSpace_4
	.export	_Method_P_Kernel_AddrSpace_5
	.export	_Method_P_Kernel_AddrSpace_6
	.export	_Method_P_Kernel_AddrSpace_7
	.export	_Method_P_Kernel_AddrSpace_8
	.export	_Method_P_Kernel_AddrSpace_9
	.export	_Method_P_Kernel_AddrSpace_10
	.export	_Method_P_Kernel_AddrSpace_11
	.export	_Method_P_Kernel_AddrSpace_12
	.export	_Method_P_Kernel_AddrSpace_13
	.export	_Method_P_Kernel_AddrSpace_14
	.export	_Method_P_Kernel_AddrSpace_15
	.export	_Method_P_Kernel_AddrSpace_16
	.export	_Method_P_Kernel_AddrSpace_17
	.export	_Method_P_Kernel_AddrSpace_18
	.export	_Method_P_Kernel_AddrSpace_19
	.export	_Method_P_Kernel_AddrSpace_20
	.export	_Method_P_Kernel_AddrSpace_21
! The following class and its methods are from this package
	.export	_P_Kernel_DiskDriver
	.export	_Method_P_Kernel_DiskDriver_1
	.export	_Method_P_Kernel_DiskDriver_2
	.export	_Method_P_Kernel_DiskDriver_3
	.export	_Method_P_Kernel_DiskDriver_4
	.export	_Method_P_Kernel_DiskDriver_5
! The following class and its methods are from this package
	.export	_P_Kernel_FileManager
	.export	_Method_P_Kernel_FileManager_1
	.export	_Method_P_Kernel_FileManager_2
	.export	_Method_P_Kernel_FileManager_3
	.export	_Method_P_Kernel_FileManager_4
	.export	_Method_P_Kernel_FileManager_5
	.export	_Method_P_Kernel_FileManager_6
	.export	_Method_P_Kernel_FileManager_7
	.export	_Method_P_Kernel_FileManager_8
! The following class and its methods are from this package
	.export	_P_Kernel_OpenFile
	.export	_Method_P_Kernel_OpenFile_1
	.export	_Method_P_Kernel_OpenFile_2
	.export	_Method_P_Kernel_OpenFile_3
	.export	_Method_P_Kernel_OpenFile_4
! The following class and its methods are from this package
	.export	_P_Kernel_FileControlBlock
	.export	_Method_P_Kernel_FileControlBlock_1
	.export	_Method_P_Kernel_FileControlBlock_2
! The following interfaces are from other packages
! The following interfaces are from this package
! Globals imported from other packages
	.import	_P_System_FatalError
! Global variables in this package
	.data
	.export	_P_Kernel_readyList
	.export	_P_Kernel_currentThread
	.export	_P_Kernel_mainThread
	.export	_P_Kernel_idleThread
	.export	_P_Kernel_threadsToBeDestroyed
	.export	_P_Kernel_currentInterruptStatus
	.export	_P_Kernel_processManager
	.export	_P_Kernel_threadManager
	.export	_P_Kernel_frameManager
	.export	_P_Kernel_diskDriver
	.export	_P_Kernel_fileManager
_P_Kernel_readyList:
	.skip	12
_P_Kernel_currentThread:
	.skip	4
_P_Kernel_mainThread:
	.skip	4164
_P_Kernel_idleThread:
	.skip	4164
_P_Kernel_threadsToBeDestroyed:
	.skip	12
_P_Kernel_currentInterruptStatus:
	.skip	4
_P_Kernel_processManager:
	.skip	1316
_P_Kernel_threadManager:
	.skip	41696
_P_Kernel_frameManager:
	.skip	56
_P_Kernel_diskDriver:
	.skip	68
_P_Kernel_fileManager:
	.skip	800
	.align
! String constants
_StringConst_204:
	.word	26			! length
	.ascii	",  relativeSectorInBuffer="
	.align
_StringConst_203:
	.word	13			! length
	.ascii	",  bufferPtr="
	.align
_StringConst_202:
	.word	21			! length
	.ascii	",  sizeOfFileInBytes="
	.align
_StringConst_201:
	.word	18			! length
	.ascii	",  startingSector="
	.align
_StringConst_200:
	.word	17			! length
	.ascii	",  numberOfUsers="
	.align
_StringConst_199:
	.word	6			! length
	.ascii	"fcbID="
	.align
_StringConst_198:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (3)\n"
	.align
_StringConst_197:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_196:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (2)\n"
	.align
_StringConst_195:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_194:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (1)\n"
	.align
_StringConst_193:
	.word	40			! length
	.ascii	"LoadExecutable: MAX_PAGES_PER_VIRT_SPACE"
	.align
_StringConst_192:
	.word	53			! length
	.ascii	"LoadExecutable: Number of pages in this address space"
	.align
_StringConst_191:
	.word	61			! length
	.ascii	"LoadExecutable: This virtual address space exceeds the limit\n"
	.align
_StringConst_190:
	.word	49			! length
	.ascii	"LoadExecutable: bssStart != dataStart + dataSize\n"
	.align
_StringConst_189:
	.word	65			! length
	.ascii	"LoadExecutable: The bss segment size not a multiple of page size\n"
	.align
_StringConst_188:
	.word	50			! length
	.ascii	"LoadExecutable: dataStart != textStart + textSize\n"
	.align
_StringConst_187:
	.word	66			! length
	.ascii	"LoadExecutable: The data segment size not a multiple of page size\n"
	.align
_StringConst_186:
	.word	95			! length
	.ascii	"LoadExecutable: The environment size does not match the \'loadAddr\' info supplied to the linker\n"
	.align
_StringConst_185:
	.word	66			! length
	.ascii	"LoadExecutable: The text segment size not a multiple of page size\n"
	.align
_StringConst_184:
	.word	33			! length
	.ascii	"LoadExecutable: Bad magic number\n"
	.align
_StringConst_183:
	.word	55			! length
	.ascii	"LoadExecutable: This virtual address space is not empty"
	.align
_StringConst_182:
	.word	32			! length
	.ascii	"Within ReadInt: ReadBytes failed"
	.align
_StringConst_181:
	.word	5			! length
	.ascii	"null\n"
	.align
_StringConst_180:
	.word	6			! length
	.ascii	", fcb="
	.align
_StringConst_179:
	.word	28			! length
	.ascii	"    OPEN FILE:   currentPos="
	.align
_StringConst_178:
	.word	48			! length
	.ascii	"FileManager.SynchWrite: file not properly opened"
	.align
_StringConst_177:
	.word	47			! length
	.ascii	"FileManager.SynchRead: file not properly opened"
	.align
_StringConst_176:
	.word	67			! length
	.ascii	"FileManager.Flush: buffer is dirty but relativeSectorInBuffer =  -1"
	.align
_StringConst_175:
	.word	72			! length
	.ascii	"In FileManager.Open: a free FCB appears not to have been closed properly"
	.align
_StringConst_174:
	.word	51			! length
	.ascii	"Magic number in sector 0 of stub file system is bad"
	.align
_StringConst_173:
	.word	36			! length
	.ascii	"Here is the FREE list of OpenFiles:\n"
	.align
_StringConst_172:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_171:
	.word	5			! length
	.ascii	":  0x"
	.align
_StringConst_170:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_169:
	.word	30			! length
	.ascii	"Here is the OpenFile table...\n"
	.align
_StringConst_168:
	.word	47			! length
	.ascii	"Here is the FREE list of FileControlBlocks:\n   "
	.align
_StringConst_167:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_166:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_165:
	.word	38			! length
	.ascii	"Here is the FileControlBlock table...\n"
	.align
_StringConst_164:
	.word	29			! length
	.ascii	"Initializing File Manager...\n"
	.align
_StringConst_163:
	.word	40			! length
	.ascii	"SynchWriteSector: Unexpected status code"
	.align
_StringConst_162:
	.word	52			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad command word"
	.align
_StringConst_161:
	.word	95			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_160:
	.word	76			! length
	.ascii	"Disk I/O error in SynchWriteSector: Attempt to access invalid memory address"
	.align
_StringConst_159:
	.word	99			! length
	.ascii	"Disk I/O error in SynchWriteSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_158:
	.word	39			! length
	.ascii	"SynchReadSector: Unexpected status code"
	.align
_StringConst_157:
	.word	51			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad command word"
	.align
_StringConst_156:
	.word	94			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_155:
	.word	75			! length
	.ascii	"Disk I/O error in SynchReadSector: Attempt to access invalid memory address"
	.align
_StringConst_154:
	.word	98			! length
	.ascii	"Disk I/O error in SynchReadSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_153:
	.word	28			! length
	.ascii	"Initializing Disk Driver...\n"
	.align
_StringConst_152:
	.word	38			! length
	.ascii	"  Virtual page is not marked VALID!!!\n"
	.align
_StringConst_151:
	.word	38			! length
	.ascii	"  Virtual page number is too large!!!\n"
	.align
_StringConst_150:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_149:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_148:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_147:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_146:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_145:
	.word	9			! length
	.ascii	"         "
	.align
_StringConst_144:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_143:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_142:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_141:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_140:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_139:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_138:
	.word	10			! length
	.ascii	"          "
	.align
_StringConst_137:
	.word	4			! length
	.ascii	"    "
	.align
_StringConst_136:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_135:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_134:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_133:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_132:
	.word	109			! length
	.ascii	"     ==========   ==========     ==========  ==========  ==============  =====  ==========  =========  =====\n"
	.align
_StringConst_131:
	.word	109			! length
	.ascii	"        addr        entry          Logical    Physical   Undefined Bits  Dirty  Referenced  Writeable  Valid\n"
	.align
_StringConst_130:
	.word	35			! length
	.ascii	"  Here are the frames in use: \n    "
	.align
_StringConst_129:
	.word	18			! length
	.ascii	"  numberFreeFrames"
	.align
_StringConst_128:
	.word	15			! length
	.ascii	"FRAME MANAGER:\n"
	.align
_StringConst_127:
	.word	89			! length
	.ascii	"Kernel code size appears to have grown too large and is overflowing into the frame region"
	.align
_StringConst_126:
	.word	30			! length
	.ascii	"Initializing Frame Manager...\n"
	.align
_StringConst_125:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_124:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_123:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_122:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_121:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_120:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_119:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_118:
	.word	13			! length
	.ascii	", exitStatus="
	.align
_StringConst_117:
	.word	13			! length
	.ascii	", parentsPid="
	.align
_StringConst_116:
	.word	33			! length
	.ascii	"Bad status in ProcessControlBlock"
	.align
_StringConst_115:
	.word	4			! length
	.ascii	"FREE"
	.align
_StringConst_114:
	.word	6			! length
	.ascii	"ZOMBIE"
	.align
_StringConst_113:
	.word	6			! length
	.ascii	"ACTIVE"
	.align
_StringConst_112:
	.word	9			! length
	.ascii	", status="
	.align
_StringConst_111:
	.word	8			! length
	.ascii	")   pid="
	.align
_StringConst_110:
	.word	30			! length
	.ascii	"  ProcessControlBlock   (addr="
	.align
_StringConst_109:
	.word	15			! length
	.ascii	"    myThread = "
	.align
_StringConst_108:
	.word	37			! length
	.ascii	"Here is the FREE list of Threads:\n   "
	.align
_StringConst_107:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_106:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_105:
	.word	28			! length
	.ascii	"Here is the thread table...\n"
	.align
_StringConst_104:
	.word	10			! length
	.ascii	"anewthread"
	.align
_StringConst_103:
	.word	31			! length
	.ascii	"Initializing Thread Manager...\n"
	.align
_StringConst_102:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_101:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_100:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_99:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_98:
	.word	20			! length
	.ascii	"    user registers:\n"
	.align
_StringConst_97:
	.word	20			! length
	.ascii	"    is user thread: "
	.align
_StringConst_96:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_95:
	.word	20			! length
	.ascii	"    status = UNUSED\n"
	.align
_StringConst_94:
	.word	21			! length
	.ascii	"    status = BLOCKED\n"
	.align
_StringConst_93:
	.word	21			! length
	.ascii	"    status = RUNNING\n"
	.align
_StringConst_92:
	.word	19			! length
	.ascii	"    status = READY\n"
	.align
_StringConst_91:
	.word	26			! length
	.ascii	"    status = JUST_CREATED\n"
	.align
_StringConst_90:
	.word	23			! length
	.ascii	"    stack starting addr"
	.align
_StringConst_89:
	.word	12			! length
	.ascii	"    stackTop"
	.align
_StringConst_88:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_87:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_86:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_85:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_84:
	.word	19			! length
	.ascii	"    machine state:\n"
	.align
_StringConst_83:
	.word	2			! length
	.ascii	")\n"
	.align
_StringConst_82:
	.word	29			! length
	.ascii	"\"    (addr of Thread object: "
	.align
_StringConst_81:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_80:
	.word	32			! length
	.ascii	"System stack underflow detected!"
	.align
_StringConst_79:
	.word	31			! length
	.ascii	"System stack overflow detected!"
	.align
_StringConst_78:
	.word	48			! length
	.ascii	"Ready list should always contain the idle thread"
	.align
_StringConst_77:
	.word	31			! length
	.ascii	"In Sleep, self != currentThread"
	.align
_StringConst_76:
	.word	44			! length
	.ascii	"In Sleep, currentInterruptStatus != DISABLED"
	.align
_StringConst_75:
	.word	51			! length
	.ascii	"Status of current thread should be READY or RUNNING"
	.align
_StringConst_74:
	.word	31			! length
	.ascii	"In Yield, self != currentThread"
	.align
_StringConst_73:
	.word	54			! length
	.ascii	"Attempt to broadcast a condition when lock is not held"
	.align
_StringConst_72:
	.word	52			! length
	.ascii	"Attempt to signal a condition when mutex is not held"
	.align
_StringConst_71:
	.word	51			! length
	.ascii	"Attempt to wait on condition when mutex is not held"
	.align
_StringConst_70:
	.word	52			! length
	.ascii	"Attempt to unlock a mutex by a thread not holding it"
	.align
_StringConst_69:
	.word	54			! length
	.ascii	"Attempt to lock a mutex by a thread already holding it"
	.align
_StringConst_68:
	.word	51			! length
	.ascii	"Semaphore count underflowed during \'Down\' operation"
	.align
_StringConst_67:
	.word	48			! length
	.ascii	"Semaphore count overflowed during \'Up\' operation"
	.align
_StringConst_66:
	.word	39			! length
	.ascii	"Semaphore created with initialCount < 0"
	.align
_StringConst_65:
	.word	11			! length
	.ascii	"fileDesc = "
	.align
_StringConst_64:
	.word	25			! length
	.ascii	"Handle_Sys_Close invoked!"
	.align
_StringConst_63:
	.word	16			! length
	.ascii	"newCurrentPos = "
	.align
_StringConst_62:
	.word	11			! length
	.ascii	"fileDesc = "
	.align
_StringConst_61:
	.word	24			! length
	.ascii	"Handle_Sys_Seek invoked!"
	.align
_StringConst_60:
	.word	14			! length
	.ascii	"sizeInBytes = "
	.align
_StringConst_59:
	.word	22			! length
	.ascii	"virt addr of buffer = "
	.align
_StringConst_58:
	.word	11			! length
	.ascii	"fileDesc = "
	.align
_StringConst_57:
	.word	25			! length
	.ascii	"Handle_Sys_Write invoked!"
	.align
_StringConst_56:
	.word	14			! length
	.ascii	"sizeInBytes = "
	.align
_StringConst_55:
	.word	22			! length
	.ascii	"virt addr of buffer = "
	.align
_StringConst_54:
	.word	11			! length
	.ascii	"fileDesc = "
	.align
_StringConst_53:
	.word	24			! length
	.ascii	"Handle_Sys_Read invoked!"
	.align
_StringConst_52:
	.word	11			! length
	.ascii	"filename = "
	.align
_StringConst_51:
	.word	24			! length
	.ascii	"virt addr of filename = "
	.align
_StringConst_50:
	.word	24			! length
	.ascii	"Handle_Sys_Open invoked!"
	.align
_StringConst_49:
	.word	11			! length
	.ascii	"filename = "
	.align
_StringConst_48:
	.word	24			! length
	.ascii	"virt addr of filename = "
	.align
_StringConst_47:
	.word	26			! length
	.ascii	"Handle_Sys_Create invoked!"
	.align
_StringConst_46:
	.word	12			! length
	.ascii	"Process id: "
	.align
_StringConst_45:
	.word	24			! length
	.ascii	"Handle_Sys_Join invoked!"
	.align
_StringConst_44:
	.word	24			! length
	.ascii	"Handle_Sys_Fork invoked!"
	.align
_StringConst_43:
	.word	25			! length
	.ascii	"Handle_Sys_Yield invoked!"
	.align
_StringConst_42:
	.word	47			! length
	.ascii	"Syscall \'Shutdown\' was invoked by a user thread"
	.align
_StringConst_41:
	.word	24			! length
	.ascii	"Handle_Sys_Exit invoked!"
	.align
_StringConst_40:
	.word	37			! length
	.ascii	"Unknown syscall code from user thread"
	.align
_StringConst_39:
	.word	15			! length
	.ascii	"Syscall code = "
	.align
_StringConst_38:
	.word	42			! length
	.ascii	"  ERROR: currentThread.myProcess is null\n\n"
	.align
_StringConst_37:
	.word	14			! length
	.ascii	"  **********\n\n"
	.align
_StringConst_36:
	.word	13			! length
	.ascii	"\n**********  "
	.align
_StringConst_35:
	.word	62			! length
	.ascii	"An AlignmentException exception has occured while in user mode"
	.align
_StringConst_34:
	.word	64			! length
	.ascii	"A PrivilegedInstruction exception has occured while in user mode"
	.align
_StringConst_33:
	.word	64			! length
	.ascii	"A PageReadonlyException exception has occured while in user mode"
	.align
_StringConst_32:
	.word	63			! length
	.ascii	"A PageInvalidException exception has occured while in user mode"
	.align
_StringConst_31:
	.word	60			! length
	.ascii	"An AddressException exception has occured while in user mode"
	.align
_StringConst_30:
	.word	63			! length
	.ascii	"An ArithmeticException exception has occured while in user mode"
	.align
_StringConst_29:
	.word	62			! length
	.ascii	"An IllegalInstruction exception has occured while in user mode"
	.align
_StringConst_28:
	.word	32			! length
	.ascii	"ProcessFinish is not implemented"
	.align
_StringConst_27:
	.word	1			! length
	.ascii	")"
	.align
_StringConst_26:
	.word	28			! length
	.ascii	"    (addr of Thread object: "
	.align
_StringConst_25:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_24:
	.word	6			! length
	.ascii	"UNUSED"
	.align
_StringConst_23:
	.word	7			! length
	.ascii	"BLOCKED"
	.align
_StringConst_22:
	.word	7			! length
	.ascii	"RUNNING"
	.align
_StringConst_21:
	.word	5			! length
	.ascii	"READY"
	.align
_StringConst_20:
	.word	12			! length
	.ascii	"JUST_CREATED"
	.align
_StringConst_19:
	.word	12			! length
	.ascii	"\"    status="
	.align
_StringConst_18:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_17:
	.word	5			! length
	.ascii	"NULL\n"
	.align
_StringConst_16:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_15:
	.word	4			! length
	.ascii	"  0x"
	.align
_StringConst_14:
	.word	92			! length
	.ascii	"(To find out where execution was when the problem arose, type \'st\' at the emulator prompt.)\n"
	.align
_StringConst_13:
	.word	19			! length
	.ascii	"\" -- TERMINATING!\n\n"
	.align
_StringConst_12:
	.word	3			! length
	.ascii	": \""
	.align
_StringConst_11:
	.word	4			! length
	.ascii	" in "
	.align
_StringConst_10:
	.word	12			! length
	.ascii	"\nFATAL ERROR"
	.align
_StringConst_9:
	.word	32			! length
	.ascii	"This thread will never run again"
	.align
_StringConst_8:
	.word	32			! length
	.ascii	"ThreadFinish should never return"
	.align
_StringConst_7:
	.word	24			! length
	.ascii	"Here is the ready list:\n"
	.align
_StringConst_6:
	.word	20			! length
	.ascii	"Becoming User Thread"
	.align
_StringConst_5:
	.word	12			! length
	.ascii	"TestProgram1"
	.align
_StringConst_4:
	.word	11			! length
	.ascii	"UserProgram"
	.align
_StringConst_3:
	.word	11			! length
	.ascii	"idle-thread"
	.align
_StringConst_2:
	.word	11			! length
	.ascii	"main-thread"
	.align
_StringConst_1:
	.word	33			! length
	.ascii	"Initializing Thread Scheduler...\n"
	.align
	.text
! 
! Source Filename and Package Name
! 
_sourceFileName:
	.ascii	"Kernel.c\0"
_packageName:
	.ascii	"Kernel\0"
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
_CheckVersion_P_Kernel_:
	.export	_CheckVersion_P_Kernel_
	set	0x5c2cb4b6,r4		! myHashVal = 1546433718
	cmp	r3,r4
	be	_Label_213
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
_Label_213:
	mov	0,r1
! Make sure _P_System_ has hash value 0x9e9d23b6 (decimal -1633868874)
	set	_packageName,r2
	set	0x9e9d23b6,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_214
! Make sure _P_BitMap_ has hash value 0xa596b1b5 (decimal -1516850763)
	set	_packageName,r2
	set	0xa596b1b5,r3
	call	_CheckVersion_P_BitMap_
	.import	_CheckVersion_P_BitMap_
	cmp	r1,0
	bne	_Label_214
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_214
_Label_214:
	ret
_CVMess1:	.ascii	"\nVERSION CONSISTENCY ERROR: Package '\0"
_CVMess2:	.ascii	"' uses package '\0"
_CVMess3:	.ascii	"'.  Whenever a header file is modified, all packages that use that package (directly or indirectly) must be recompiled.  The header file for '\0"
_CVMess4:	.ascii	"' has been changed since '\0"
_CVMess5:	.ascii	"' was compiled last.  Please recompile all packages that depend on '\0"
_CVMess6:	.ascii	"'.\n\n\0"
	.align
! 
! ===============  FUNCTION InitializeScheduler  ===============
! 
_P_Kernel_InitializeScheduler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_InitializeScheduler,r1
	push	r1
	mov	16,r1
_Label_2924:
	push	r0
	sub	r1,1,r1
	bne	_Label_2924
	mov	7,r13		! source line 7
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	14,r13		! source line 14
	mov	"\0\0CE",r10
	call	Cleari
! CALL STATEMENT...
!   _temp_215 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_215  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	15,r13		! source line 15
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	16,r13		! source line 16
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_readyList = zeros  (sizeInBytes=12)
	set	_P_Kernel_readyList,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   _P_Kernel_readyList = _P_List_List
	set	_P_List_List,r1
	set	_P_Kernel_readyList,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	17,r13		! source line 17
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_threadsToBeDestroyed = zeros  (sizeInBytes=12)
	set	_P_Kernel_threadsToBeDestroyed,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   _P_Kernel_threadsToBeDestroyed = _P_List_List
	set	_P_List_List,r1
	set	_P_Kernel_threadsToBeDestroyed,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	18,r13		! source line 18
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_mainThread = zeros  (sizeInBytes=4164)
	set	_P_Kernel_mainThread,r4
	mov	1041,r3
_Label_2925:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2925
!   _P_Kernel_mainThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_mainThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	19,r13		! source line 19
	mov	"\0\0SE",r10
!   _temp_219 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-44]
!   _temp_220 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_219  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	20,r13		! source line 20
	mov	"\0\0AS",r10
!   _temp_221 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-36]
!   _temp_222 = _temp_221 + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_222 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	21,r13		! source line 21
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_idleThread = zeros  (sizeInBytes=4164)
	set	_P_Kernel_idleThread,r4
	mov	1041,r3
_Label_2926:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2926
!   _P_Kernel_idleThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_idleThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	22,r13		! source line 22
	mov	"\0\0SE",r10
!   _temp_224 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-24]
!   _temp_225 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_224  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	23,r13		! source line 23
	mov	"\0\0SE",r10
!   _temp_226 = _function_211_IdleFunction
	set	_function_211_IdleFunction,r1
	store	r1,[r14+-16]
!   _temp_227 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_226  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	24,r13		! source line 24
	mov	"\0\0AS",r10
!   _P_Kernel_currentThread = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	set	_P_Kernel_currentThread,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	25,r13		! source line 25
	mov	"\0\0AS",r10
!   _P_System_FatalError = _P_Kernel_FatalError_ThreadVersion
	set	_P_Kernel_FatalError_ThreadVersion,r1
	set	_P_System_FatalError,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	26,r13		! source line 26
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	27,r13		! source line 27
	mov	"\0\0CE",r10
	call	Seti
! RETURN STATEMENT...
	mov	27,r13		! source line 27
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_InitializeScheduler:
	.word	_sourceFileName
	.word	_Label_228
	.word	0		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_229
	.word	-12
	.word	4
	.word	_Label_230
	.word	-16
	.word	4
	.word	_Label_231
	.word	-20
	.word	4
	.word	_Label_232
	.word	-24
	.word	4
	.word	_Label_233
	.word	-28
	.word	4
	.word	_Label_234
	.word	-32
	.word	4
	.word	_Label_235
	.word	-36
	.word	4
	.word	_Label_236
	.word	-40
	.word	4
	.word	_Label_237
	.word	-44
	.word	4
	.word	_Label_238
	.word	-48
	.word	4
	.word	_Label_239
	.word	-52
	.word	4
	.word	_Label_240
	.word	-56
	.word	4
	.word	_Label_241
	.word	-60
	.word	4
	.word	0
_Label_228:
	.ascii	"InitializeScheduler\0"
	.align
_Label_229:
	.byte	'?'
	.ascii	"_temp_227\0"
	.align
_Label_230:
	.byte	'?'
	.ascii	"_temp_226\0"
	.align
_Label_231:
	.byte	'?'
	.ascii	"_temp_225\0"
	.align
_Label_232:
	.byte	'?'
	.ascii	"_temp_224\0"
	.align
_Label_233:
	.byte	'?'
	.ascii	"_temp_223\0"
	.align
_Label_234:
	.byte	'?'
	.ascii	"_temp_222\0"
	.align
_Label_235:
	.byte	'?'
	.ascii	"_temp_221\0"
	.align
_Label_236:
	.byte	'?'
	.ascii	"_temp_220\0"
	.align
_Label_237:
	.byte	'?'
	.ascii	"_temp_219\0"
	.align
_Label_238:
	.byte	'?'
	.ascii	"_temp_218\0"
	.align
_Label_239:
	.byte	'?'
	.ascii	"_temp_217\0"
	.align
_Label_240:
	.byte	'?'
	.ascii	"_temp_216\0"
	.align
_Label_241:
	.byte	'?'
	.ascii	"_temp_215\0"
	.align
! 
! ===============  FUNCTION InitFirstProcess  ===============
! 
_P_Kernel_InitFirstProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_InitFirstProcess,r1
	push	r1
	mov	7,r1
_Label_2927:
	push	r0
	sub	r1,1,r1
	bne	_Label_2927
	mov	30,r13		! source line 30
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	33,r13		! source line 33
	mov	"\0\0AS",r10
	mov	33,r13		! source line 33
	mov	"\0\0SE",r10
!   _temp_242 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-20]
!   Send message GetANewThread
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=threadPtr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! SEND STATEMENT...
	mov	34,r13		! source line 34
	mov	"\0\0SE",r10
!   _temp_243 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-16]
!   if intIsZero (threadPtr) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_243  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	35,r13		! source line 35
	mov	"\0\0SE",r10
!   _temp_244 = _function_212_StartUserProcess
	set	_function_212_StartUserProcess,r1
	store	r1,[r14+-12]
!   if intIsZero (threadPtr) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_244  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	35,r13		! source line 35
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_InitFirstProcess:
	.word	_sourceFileName
	.word	_Label_245
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_246
	.word	-12
	.word	4
	.word	_Label_247
	.word	-16
	.word	4
	.word	_Label_248
	.word	-20
	.word	4
	.word	_Label_249
	.word	-24
	.word	4
	.word	0
_Label_245:
	.ascii	"InitFirstProcess\0"
	.align
_Label_246:
	.byte	'?'
	.ascii	"_temp_244\0"
	.align
_Label_247:
	.byte	'?'
	.ascii	"_temp_243\0"
	.align
_Label_248:
	.byte	'?'
	.ascii	"_temp_242\0"
	.align
_Label_249:
	.byte	'P'
	.ascii	"threadPtr\0"
	.align
! 
! ===============  FUNCTION StartUserProcess  ===============
! 
_function_212_StartUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_212_StartUserProcess,r1
	push	r1
	mov	25,r1
_Label_2928:
	push	r0
	sub	r1,1,r1
	bne	_Label_2928
	mov	38,r13		! source line 38
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	48,r13		! source line 48
	mov	"\0\0AS",r10
	mov	48,r13		! source line 48
	mov	"\0\0SE",r10
!   _temp_250 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-72]
!   Send message GetANewProcess
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=pcb  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-76]
! ASSIGNMENT STATEMENT...
	mov	50,r13		! source line 50
	mov	"\0\0AS",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_251 = pcb + 24
	load	[r14+-76],r1
	add	r1,24,r1
	store	r1,[r14+-68]
!   Data Move: *_temp_251 = _P_Kernel_currentThread  (sizeInBytes=4)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r14+-68],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	52,r13		! source line 52
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_252 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-64]
!   Data Move: *_temp_252 = pcb  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r14+-64],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	54,r13		! source line 54
	mov	"\0\0AS",r10
	mov	54,r13		! source line 54
	mov	"\0\0SE",r10
!   _temp_253 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-60]
!   _temp_254 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=12  value=_temp_253  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Send message Open
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=openFilePtr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! ASSIGNMENT STATEMENT...
	mov	56,r13		! source line 56
	mov	"\0\0AS",r10
	mov	56,r13		! source line 56
	mov	"\0\0SE",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_256 = pcb + 32
	load	[r14+-76],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   _temp_255 = _temp_256		(4 bytes)
	load	[r14+-48],r1
	store	r1,[r14+-52]
!   if intIsZero (openFilePtr) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_255  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+4]
!   Send message LoadExecutable
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=entryPoint  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
! SEND STATEMENT...
	mov	58,r13		! source line 58
	mov	"\0\0SE",r10
!   _temp_257 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=openFilePtr  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+4]
!   Send message Close
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	60,r13		! source line 60
	mov	"\0\0AS",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_259 = pcb + 32
	load	[r14+-76],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   _temp_260 = _temp_259 + 4
	load	[r14+-36],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Data Move: _temp_258 = *_temp_260  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   initUserStackTop = _temp_258 * 8192		(int)
	load	[r14+-40],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-88]
! ASSIGNMENT STATEMENT...
	mov	62,r13		! source line 62
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_261 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-28]
!   Move address of _temp_261 [999 ] into _temp_262
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-28],r1
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
	store	r2,[r14+-24]
!   initSystemStackTop = _temp_262		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-92]
! ASSIGNMENT STATEMENT...
	mov	65,r13		! source line 65
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	65,r13		! source line 65
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-96]
! SEND STATEMENT...
	mov	67,r13		! source line 67
	mov	"\0\0SE",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_263 = pcb + 32
	load	[r14+-76],r1
	add	r1,32,r1
	store	r1,[r14+-20]
!   Send message SetToThisPageTable
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,72,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	69,r13		! source line 69
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_264 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_264 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-16],r2
	storeb	r1,[r2]
! CALL STATEMENT...
!   _temp_265 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_265  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	71,r13		! source line 71
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=initUserStackTop  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=entryPoint  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=initSystemStackTop  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+8]
!   Call the function
	mov	73,r13		! source line 73
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	73,r13		! source line 73
	mov	"\0\0RE",r10
	add	r15,104,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_212_StartUserProcess:
	.word	_sourceFileName
	.word	_Label_266
	.word	4		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_267
	.word	8
	.word	4
	.word	_Label_268
	.word	-12
	.word	4
	.word	_Label_269
	.word	-16
	.word	4
	.word	_Label_270
	.word	-20
	.word	4
	.word	_Label_271
	.word	-24
	.word	4
	.word	_Label_272
	.word	-28
	.word	4
	.word	_Label_273
	.word	-32
	.word	4
	.word	_Label_274
	.word	-36
	.word	4
	.word	_Label_275
	.word	-40
	.word	4
	.word	_Label_276
	.word	-44
	.word	4
	.word	_Label_277
	.word	-48
	.word	4
	.word	_Label_278
	.word	-52
	.word	4
	.word	_Label_279
	.word	-56
	.word	4
	.word	_Label_280
	.word	-60
	.word	4
	.word	_Label_281
	.word	-64
	.word	4
	.word	_Label_282
	.word	-68
	.word	4
	.word	_Label_283
	.word	-72
	.word	4
	.word	_Label_284
	.word	-76
	.word	4
	.word	_Label_285
	.word	-80
	.word	4
	.word	_Label_286
	.word	-84
	.word	4
	.word	_Label_287
	.word	-88
	.word	4
	.word	_Label_288
	.word	-92
	.word	4
	.word	_Label_289
	.word	-96
	.word	4
	.word	0
_Label_266:
	.ascii	"StartUserProcess\0"
	.align
_Label_267:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_268:
	.byte	'?'
	.ascii	"_temp_265\0"
	.align
_Label_269:
	.byte	'?'
	.ascii	"_temp_264\0"
	.align
_Label_270:
	.byte	'?'
	.ascii	"_temp_263\0"
	.align
_Label_271:
	.byte	'?'
	.ascii	"_temp_262\0"
	.align
_Label_272:
	.byte	'?'
	.ascii	"_temp_261\0"
	.align
_Label_273:
	.byte	'?'
	.ascii	"_temp_260\0"
	.align
_Label_274:
	.byte	'?'
	.ascii	"_temp_259\0"
	.align
_Label_275:
	.byte	'?'
	.ascii	"_temp_258\0"
	.align
_Label_276:
	.byte	'?'
	.ascii	"_temp_257\0"
	.align
_Label_277:
	.byte	'?'
	.ascii	"_temp_256\0"
	.align
_Label_278:
	.byte	'?'
	.ascii	"_temp_255\0"
	.align
_Label_279:
	.byte	'?'
	.ascii	"_temp_254\0"
	.align
_Label_280:
	.byte	'?'
	.ascii	"_temp_253\0"
	.align
_Label_281:
	.byte	'?'
	.ascii	"_temp_252\0"
	.align
_Label_282:
	.byte	'?'
	.ascii	"_temp_251\0"
	.align
_Label_283:
	.byte	'?'
	.ascii	"_temp_250\0"
	.align
_Label_284:
	.byte	'P'
	.ascii	"pcb\0"
	.align
_Label_285:
	.byte	'P'
	.ascii	"openFilePtr\0"
	.align
_Label_286:
	.byte	'I'
	.ascii	"entryPoint\0"
	.align
_Label_287:
	.byte	'I'
	.ascii	"initUserStackTop\0"
	.align
_Label_288:
	.byte	'I'
	.ascii	"initSystemStackTop\0"
	.align
_Label_289:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION IdleFunction  ===============
! 
_function_211_IdleFunction:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_211_IdleFunction,r1
	push	r1
	mov	3,r1
_Label_2929:
	push	r0
	sub	r1,1,r1
	bne	_Label_2929
	mov	80,r13		! source line 80
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! WHILE STATEMENT...
	mov	90,r13		! source line 90
	mov	"\0\0WH",r10
_Label_290:
!	jmp	_Label_291
_Label_291:
	mov	90,r13		! source line 90
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	91,r13		! source line 91
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	91,r13		! source line 91
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-16]
! IF STATEMENT...
	mov	92,r13		! source line 92
	mov	"\0\0IF",r10
	mov	92,r13		! source line 92
	mov	"\0\0SE",r10
!   _temp_295 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Send message IsEmpty
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_293 else goto _Label_294
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_294
	jmp	_Label_293
_Label_293:
! THEN...
	mov	93,r13		! source line 93
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Call the function
	mov	93,r13		! source line 93
	mov	"\0\0CE",r10
	call	Wait
	jmp	_Label_296
_Label_294:
! ELSE...
	mov	95,r13		! source line 95
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	95,r13		! source line 95
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
! END IF...
_Label_296:
! END WHILE...
	jmp	_Label_290
_Label_292:
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_211_IdleFunction:
	.word	_sourceFileName
	.word	_Label_297
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_298
	.word	8
	.word	4
	.word	_Label_299
	.word	-12
	.word	4
	.word	_Label_300
	.word	-16
	.word	4
	.word	0
_Label_297:
	.ascii	"IdleFunction\0"
	.align
_Label_298:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_299:
	.byte	'?'
	.ascii	"_temp_295\0"
	.align
_Label_300:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION Run  ===============
! 
_P_Kernel_Run:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Run,r1
	push	r1
	mov	20,r1
_Label_2930:
	push	r0
	sub	r1,1,r1
	bne	_Label_2930
	mov	102,r13		! source line 102
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	115,r13		! source line 115
	mov	"\0\0AS",r10
!   prevThread = _P_Kernel_currentThread		(4 bytes)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r14+-76]
! SEND STATEMENT...
	mov	116,r13		! source line 116
	mov	"\0\0SE",r10
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message CheckOverflow
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! IF STATEMENT...
	mov	118,r13		! source line 118
	mov	"\0\0IF",r10
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_303 = prevThread + 4092
	load	[r14+-76],r1
	add	r1,4092,r1
	store	r1,[r14+-72]
!   if boolIsZero (_temp_303 ) then goto _Label_302		(int)
	load	[r14+-72],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_302
!	jmp	_Label_301
_Label_301:
! THEN...
	mov	119,r13		! source line 119
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_305 = prevThread + 4096
	load	[r14+-76],r1
	add	r1,4096,r1
	store	r1,[r14+-64]
!   Move address of _temp_305 [0 ] into _temp_306
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-64],r1
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
	store	r2,[r14+-60]
!   _temp_304 = _temp_306		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_304  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	119,r13		! source line 119
	mov	"\0\0CE",r10
	call	SaveUserRegs
! END IF...
_Label_302:
! ASSIGNMENT STATEMENT...
	mov	121,r13		! source line 121
	mov	"\0\0AS",r10
!   _P_Kernel_currentThread = nextThread		(4 bytes)
	load	[r14+8],r1
	set	_P_Kernel_currentThread,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	122,r13		! source line 122
	mov	"\0\0AS",r10
!   if intIsZero (nextThread) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_307 = nextThread + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-56]
!   Data Move: *_temp_307 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-56],r2
	store	r1,[r2]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=prevThread  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=nextThread  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Call the function
	mov	128,r13		! source line 128
	mov	"\0\0CE",r10
	call	Switch
! WHILE STATEMENT...
	mov	132,r13		! source line 132
	mov	"\0\0WH",r10
_Label_308:
	mov	132,r13		! source line 132
	mov	"\0\0SE",r10
!   _temp_312 = &_P_Kernel_threadsToBeDestroyed
	set	_P_Kernel_threadsToBeDestroyed,r1
	store	r1,[r14+-52]
!   Send message IsEmpty
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_311  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_311 then goto _Label_310 else goto _Label_309
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_309
	jmp	_Label_310
_Label_309:
	mov	132,r13		! source line 132
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	133,r13		! source line 133
	mov	"\0\0AS",r10
	mov	133,r13		! source line 133
	mov	"\0\0SE",r10
!   _temp_313 = &_P_Kernel_threadsToBeDestroyed
	set	_P_Kernel_threadsToBeDestroyed,r1
	store	r1,[r14+-48]
!   Send message Remove
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=th  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! SEND STATEMENT...
	mov	134,r13		! source line 134
	mov	"\0\0SE",r10
!   _temp_314 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=th  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+4]
!   Send message FreeThread
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END WHILE...
	jmp	_Label_308
_Label_310:
! IF STATEMENT...
	mov	137,r13		! source line 137
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_317 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-40]
!   if boolIsZero (_temp_317 ) then goto _Label_316		(int)
	load	[r14+-40],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_316
!	jmp	_Label_315
_Label_315:
! THEN...
	mov	138,r13		! source line 138
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_319 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-32]
!   Move address of _temp_319 [0 ] into _temp_320
!     make sure index expr is >= 0
	mov	0,r2
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
!   _temp_318 = _temp_320		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_318  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	138,r13		! source line 138
	mov	"\0\0CE",r10
	call	RestoreUserRegs
! SEND STATEMENT...
	mov	139,r13		! source line 139
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_322 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_321 = *_temp_322  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_321) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_323 = _temp_321 + 32
	load	[r14+-24],r1
	add	r1,32,r1
	store	r1,[r14+-16]
!   Send message SetToThisPageTable
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,72,r2
	call	r2
! END IF...
_Label_316:
! RETURN STATEMENT...
	mov	137,r13		! source line 137
	mov	"\0\0RE",r10
	add	r15,84,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Run:
	.word	_sourceFileName
	.word	_Label_324
	.word	4		! total size of parameters
	.word	80		! frame size = 80
	.word	_Label_325
	.word	8
	.word	4
	.word	_Label_326
	.word	-16
	.word	4
	.word	_Label_327
	.word	-20
	.word	4
	.word	_Label_328
	.word	-24
	.word	4
	.word	_Label_329
	.word	-28
	.word	4
	.word	_Label_330
	.word	-32
	.word	4
	.word	_Label_331
	.word	-36
	.word	4
	.word	_Label_332
	.word	-40
	.word	4
	.word	_Label_333
	.word	-44
	.word	4
	.word	_Label_334
	.word	-48
	.word	4
	.word	_Label_335
	.word	-52
	.word	4
	.word	_Label_336
	.word	-9
	.word	1
	.word	_Label_337
	.word	-56
	.word	4
	.word	_Label_338
	.word	-60
	.word	4
	.word	_Label_339
	.word	-64
	.word	4
	.word	_Label_340
	.word	-68
	.word	4
	.word	_Label_341
	.word	-72
	.word	4
	.word	_Label_342
	.word	-76
	.word	4
	.word	_Label_343
	.word	-80
	.word	4
	.word	0
_Label_324:
	.ascii	"Run\0"
	.align
_Label_325:
	.byte	'P'
	.ascii	"nextThread\0"
	.align
_Label_326:
	.byte	'?'
	.ascii	"_temp_323\0"
	.align
_Label_327:
	.byte	'?'
	.ascii	"_temp_322\0"
	.align
_Label_328:
	.byte	'?'
	.ascii	"_temp_321\0"
	.align
_Label_329:
	.byte	'?'
	.ascii	"_temp_320\0"
	.align
_Label_330:
	.byte	'?'
	.ascii	"_temp_319\0"
	.align
_Label_331:
	.byte	'?'
	.ascii	"_temp_318\0"
	.align
_Label_332:
	.byte	'?'
	.ascii	"_temp_317\0"
	.align
_Label_333:
	.byte	'?'
	.ascii	"_temp_314\0"
	.align
_Label_334:
	.byte	'?'
	.ascii	"_temp_313\0"
	.align
_Label_335:
	.byte	'?'
	.ascii	"_temp_312\0"
	.align
_Label_336:
	.byte	'C'
	.ascii	"_temp_311\0"
	.align
_Label_337:
	.byte	'?'
	.ascii	"_temp_307\0"
	.align
_Label_338:
	.byte	'?'
	.ascii	"_temp_306\0"
	.align
_Label_339:
	.byte	'?'
	.ascii	"_temp_305\0"
	.align
_Label_340:
	.byte	'?'
	.ascii	"_temp_304\0"
	.align
_Label_341:
	.byte	'?'
	.ascii	"_temp_303\0"
	.align
_Label_342:
	.byte	'P'
	.ascii	"prevThread\0"
	.align
_Label_343:
	.byte	'P'
	.ascii	"th\0"
	.align
! 
! ===============  FUNCTION PrintReadyList  ===============
! 
_P_Kernel_PrintReadyList:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PrintReadyList,r1
	push	r1
	mov	6,r1
_Label_2931:
	push	r0
	sub	r1,1,r1
	bne	_Label_2931
	mov	145,r13		! source line 145
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	152,r13		! source line 152
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	152,r13		! source line 152
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! CALL STATEMENT...
!   _temp_344 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_344  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	153,r13		! source line 153
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	154,r13		! source line 154
	mov	"\0\0SE",r10
!   _temp_345 = _function_207_ThreadPrintShort
	set	_function_207_ThreadPrintShort,r1
	store	r1,[r14+-16]
!   _temp_346 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_345  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	155,r13		! source line 155
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	155,r13		! source line 155
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	155,r13		! source line 155
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PrintReadyList:
	.word	_sourceFileName
	.word	_Label_347
	.word	0		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_348
	.word	-12
	.word	4
	.word	_Label_349
	.word	-16
	.word	4
	.word	_Label_350
	.word	-20
	.word	4
	.word	_Label_351
	.word	-24
	.word	4
	.word	0
_Label_347:
	.ascii	"PrintReadyList\0"
	.align
_Label_348:
	.byte	'?'
	.ascii	"_temp_346\0"
	.align
_Label_349:
	.byte	'?'
	.ascii	"_temp_345\0"
	.align
_Label_350:
	.byte	'?'
	.ascii	"_temp_344\0"
	.align
_Label_351:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION ThreadStartMain  ===============
! 
_P_Kernel_ThreadStartMain:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ThreadStartMain,r1
	push	r1
	mov	7,r1
_Label_2932:
	push	r0
	sub	r1,1,r1
	bne	_Label_2932
	mov	160,r13		! source line 160
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	172,r13		! source line 172
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	172,r13		! source line 172
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! ASSIGNMENT STATEMENT...
	mov	173,r13		! source line 173
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_352 = _P_Kernel_currentThread + 80
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,80,r1
	store	r1,[r14+-24]
!   Data Move: mainFun = *_temp_352  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_354 = _P_Kernel_currentThread + 84
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,84,r1
	store	r1,[r14+-16]
!   Data Move: _temp_353 = *_temp_354  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_353  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable mainFun
	mov	174,r13		! source line 174
	mov	"\0\0CF",r10
	load	[r14+-32],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CALL STATEMENT...
!   Call the function
	mov	175,r13		! source line 175
	mov	"\0\0CA",r10
	call	_P_Kernel_ThreadFinish
! CALL STATEMENT...
!   _temp_355 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_355  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	176,r13		! source line 176
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	176,r13		! source line 176
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ThreadStartMain:
	.word	_sourceFileName
	.word	_Label_356
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_357
	.word	-12
	.word	4
	.word	_Label_358
	.word	-16
	.word	4
	.word	_Label_359
	.word	-20
	.word	4
	.word	_Label_360
	.word	-24
	.word	4
	.word	_Label_361
	.word	-28
	.word	4
	.word	_Label_362
	.word	-32
	.word	4
	.word	0
_Label_356:
	.ascii	"ThreadStartMain\0"
	.align
_Label_357:
	.byte	'?'
	.ascii	"_temp_355\0"
	.align
_Label_358:
	.byte	'?'
	.ascii	"_temp_354\0"
	.align
_Label_359:
	.byte	'?'
	.ascii	"_temp_353\0"
	.align
_Label_360:
	.byte	'?'
	.ascii	"_temp_352\0"
	.align
_Label_361:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_362:
	.byte	'P'
	.ascii	"mainFun\0"
	.align
! 
! ===============  FUNCTION ThreadFinish  ===============
! 
_P_Kernel_ThreadFinish:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ThreadFinish,r1
	push	r1
	mov	5,r1
_Label_2933:
	push	r0
	sub	r1,1,r1
	bne	_Label_2933
	mov	181,r13		! source line 181
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	192,r13		! source line 192
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	192,r13		! source line 192
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! SEND STATEMENT...
	mov	196,r13		! source line 196
	mov	"\0\0SE",r10
!   _temp_363 = &_P_Kernel_threadsToBeDestroyed
	set	_P_Kernel_threadsToBeDestroyed,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	197,r13		! source line 197
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! CALL STATEMENT...
!   _temp_364 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_364  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	199,r13		! source line 199
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	199,r13		! source line 199
	mov	"\0\0RE",r10
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ThreadFinish:
	.word	_sourceFileName
	.word	_Label_365
	.word	0		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_366
	.word	-12
	.word	4
	.word	_Label_367
	.word	-16
	.word	4
	.word	_Label_368
	.word	-20
	.word	4
	.word	0
_Label_365:
	.ascii	"ThreadFinish\0"
	.align
_Label_366:
	.byte	'?'
	.ascii	"_temp_364\0"
	.align
_Label_367:
	.byte	'?'
	.ascii	"_temp_363\0"
	.align
_Label_368:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION FatalError_ThreadVersion  ===============
! 
_P_Kernel_FatalError_ThreadVersion:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_FatalError_ThreadVersion,r1
	push	r1
	mov	9,r1
_Label_2934:
	push	r0
	sub	r1,1,r1
	bne	_Label_2934
	mov	204,r13		! source line 204
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	212,r13		! source line 212
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	212,r13		! source line 212
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! CALL STATEMENT...
!   _temp_369 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_369  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	213,r13		! source line 213
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	214,r13		! source line 214
	mov	"\0\0IF",r10
!   if _P_Kernel_currentThread == 0 then goto _Label_371		(int)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_371
!	jmp	_Label_370
_Label_370:
! THEN...
	mov	215,r13		! source line 215
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_372 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_372  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	215,r13		! source line 215
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_374 = _P_Kernel_currentThread + 72
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-24]
!   Data Move: _temp_373 = *_temp_374  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_373  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	216,r13		! source line 216
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_371:
! CALL STATEMENT...
!   _temp_375 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_375  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	218,r13		! source line 218
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	219,r13		! source line 219
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_376 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_376  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	220,r13		! source line 220
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_377 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_377  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	221,r13		! source line 221
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	222,r13		! source line 222
	mov	"\0\0CE",r10
	call	RuntimeExit
! RETURN STATEMENT...
	mov	222,r13		! source line 222
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_FatalError_ThreadVersion:
	.word	_sourceFileName
	.word	_Label_378
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_379
	.word	8
	.word	4
	.word	_Label_380
	.word	-12
	.word	4
	.word	_Label_381
	.word	-16
	.word	4
	.word	_Label_382
	.word	-20
	.word	4
	.word	_Label_383
	.word	-24
	.word	4
	.word	_Label_384
	.word	-28
	.word	4
	.word	_Label_385
	.word	-32
	.word	4
	.word	_Label_386
	.word	-36
	.word	4
	.word	_Label_387
	.word	-40
	.word	4
	.word	0
_Label_378:
	.ascii	"FatalError_ThreadVersion\0"
	.align
_Label_379:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_380:
	.byte	'?'
	.ascii	"_temp_377\0"
	.align
_Label_381:
	.byte	'?'
	.ascii	"_temp_376\0"
	.align
_Label_382:
	.byte	'?'
	.ascii	"_temp_375\0"
	.align
_Label_383:
	.byte	'?'
	.ascii	"_temp_374\0"
	.align
_Label_384:
	.byte	'?'
	.ascii	"_temp_373\0"
	.align
_Label_385:
	.byte	'?'
	.ascii	"_temp_372\0"
	.align
_Label_386:
	.byte	'?'
	.ascii	"_temp_369\0"
	.align
_Label_387:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION SetInterruptsTo  ===============
! 
_P_Kernel_SetInterruptsTo:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_SetInterruptsTo,r1
	push	r1
	mov	1,r1
_Label_2935:
	push	r0
	sub	r1,1,r1
	bne	_Label_2935
	mov	227,r13		! source line 227
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	240,r13		! source line 240
	mov	"\0\0CE",r10
	call	Cleari
! ASSIGNMENT STATEMENT...
	mov	241,r13		! source line 241
	mov	"\0\0AS",r10
!   oldStat = _P_Kernel_currentInterruptStatus		(4 bytes)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	store	r1,[r14+-12]
! IF STATEMENT...
	mov	242,r13		! source line 242
	mov	"\0\0IF",r10
!   if newStatus != 1 then goto _Label_389		(int)
	load	[r14+8],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_389
!	jmp	_Label_388
_Label_388:
! THEN...
	mov	243,r13		! source line 243
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	243,r13		! source line 243
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	244,r13		! source line 244
	mov	"\0\0CE",r10
	call	Seti
	jmp	_Label_390
_Label_389:
! ELSE...
	mov	246,r13		! source line 246
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	246,r13		! source line 246
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	247,r13		! source line 247
	mov	"\0\0CE",r10
	call	Cleari
! END IF...
_Label_390:
! RETURN STATEMENT...
	mov	249,r13		! source line 249
	mov	"\0\0RE",r10
!   ReturnResult: oldStat  (sizeInBytes=4)
	load	[r14+-12],r1
	store	r1,[r14+8]
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_SetInterruptsTo:
	.word	_sourceFileName
	.word	_Label_391
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_392
	.word	8
	.word	4
	.word	_Label_393
	.word	-12
	.word	4
	.word	0
_Label_391:
	.ascii	"SetInterruptsTo\0"
	.align
_Label_392:
	.byte	'I'
	.ascii	"newStatus\0"
	.align
_Label_393:
	.byte	'I'
	.ascii	"oldStat\0"
	.align
! 
! ===============  FUNCTION copyUnalignedWord  ===============
! 
_function_210_copyUnalignedWord:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_210_copyUnalignedWord,r1
	push	r1
	mov	9,r1
_Label_2936:
	push	r0
	sub	r1,1,r1
	bne	_Label_2936
	mov	981,r13		! source line 981
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	983,r13		! source line 983
	mov	"\0\0AS",r10
!   from = fromPtr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	984,r13		! source line 984
	mov	"\0\0AS",r10
!   dest = destPtr		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	985,r13		! source line 985
	mov	"\0\0AS",r10
!   if intIsZero (dest) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (from) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_394 = *from  (sizeInBytes=1)
	load	[r14+-40],r1
	loadb	[r1],r1
	storeb	r1,[r14+-12]
!   Data Move: *dest = _temp_394  (sizeInBytes=1)
	loadb	[r14+-12],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	986,r13		! source line 986
	mov	"\0\0AS",r10
!   _temp_395 = dest + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   if intIsZero (_temp_395) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_397 = from + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   if intIsZero (_temp_397) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_396 = *_temp_397  (sizeInBytes=1)
	load	[r14+-32],r1
	loadb	[r1],r1
	storeb	r1,[r14+-11]
!   Data Move: *_temp_395 = _temp_396  (sizeInBytes=1)
	loadb	[r14+-11],r1
	load	[r14+-36],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	987,r13		! source line 987
	mov	"\0\0AS",r10
!   _temp_398 = dest + 2		(int)
	load	[r14+-44],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   if intIsZero (_temp_398) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_400 = from + 2		(int)
	load	[r14+-40],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   if intIsZero (_temp_400) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_399 = *_temp_400  (sizeInBytes=1)
	load	[r14+-24],r1
	loadb	[r1],r1
	storeb	r1,[r14+-10]
!   Data Move: *_temp_398 = _temp_399  (sizeInBytes=1)
	loadb	[r14+-10],r1
	load	[r14+-28],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	988,r13		! source line 988
	mov	"\0\0AS",r10
!   _temp_401 = dest + 3		(int)
	load	[r14+-44],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   if intIsZero (_temp_401) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_403 = from + 3		(int)
	load	[r14+-40],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
!   if intIsZero (_temp_403) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_402 = *_temp_403  (sizeInBytes=1)
	load	[r14+-16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *_temp_401 = _temp_402  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-20],r2
	storeb	r1,[r2]
! RETURN STATEMENT...
	mov	988,r13		! source line 988
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_210_copyUnalignedWord:
	.word	_sourceFileName
	.word	_Label_404
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_405
	.word	8
	.word	4
	.word	_Label_406
	.word	12
	.word	4
	.word	_Label_407
	.word	-16
	.word	4
	.word	_Label_408
	.word	-9
	.word	1
	.word	_Label_409
	.word	-20
	.word	4
	.word	_Label_410
	.word	-24
	.word	4
	.word	_Label_411
	.word	-10
	.word	1
	.word	_Label_412
	.word	-28
	.word	4
	.word	_Label_413
	.word	-32
	.word	4
	.word	_Label_414
	.word	-11
	.word	1
	.word	_Label_415
	.word	-36
	.word	4
	.word	_Label_416
	.word	-12
	.word	1
	.word	_Label_417
	.word	-40
	.word	4
	.word	_Label_418
	.word	-44
	.word	4
	.word	0
_Label_404:
	.ascii	"copyUnalignedWord\0"
	.align
_Label_405:
	.byte	'P'
	.ascii	"destPtr\0"
	.align
_Label_406:
	.byte	'P'
	.ascii	"fromPtr\0"
	.align
_Label_407:
	.byte	'?'
	.ascii	"_temp_403\0"
	.align
_Label_408:
	.byte	'C'
	.ascii	"_temp_402\0"
	.align
_Label_409:
	.byte	'?'
	.ascii	"_temp_401\0"
	.align
_Label_410:
	.byte	'?'
	.ascii	"_temp_400\0"
	.align
_Label_411:
	.byte	'C'
	.ascii	"_temp_399\0"
	.align
_Label_412:
	.byte	'?'
	.ascii	"_temp_398\0"
	.align
_Label_413:
	.byte	'?'
	.ascii	"_temp_397\0"
	.align
_Label_414:
	.byte	'C'
	.ascii	"_temp_396\0"
	.align
_Label_415:
	.byte	'?'
	.ascii	"_temp_395\0"
	.align
_Label_416:
	.byte	'C'
	.ascii	"_temp_394\0"
	.align
_Label_417:
	.byte	'P'
	.ascii	"from\0"
	.align
_Label_418:
	.byte	'P'
	.ascii	"dest\0"
	.align
! 
! ===============  FUNCTION printFCB  ===============
! 
_function_209_printFCB:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_209_printFCB,r1
	push	r1
	mov	3,r1
_Label_2937:
	push	r0
	sub	r1,1,r1
	bne	_Label_2937
	mov	991,r13		! source line 991
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_420 = fcb + 12
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-12]
!   Data Move: _temp_419 = *_temp_420  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_419  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	992,r13		! source line 992
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	993,r13		! source line 993
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	993,r13		! source line 993
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_209_printFCB:
	.word	_sourceFileName
	.word	_Label_421
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_422
	.word	8
	.word	4
	.word	_Label_423
	.word	-12
	.word	4
	.word	_Label_424
	.word	-16
	.word	4
	.word	0
_Label_421:
	.ascii	"printFCB\0"
	.align
_Label_422:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_423:
	.byte	'?'
	.ascii	"_temp_420\0"
	.align
_Label_424:
	.byte	'?'
	.ascii	"_temp_419\0"
	.align
! 
! ===============  FUNCTION printOpen  ===============
! 
_function_208_printOpen:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_208_printOpen,r1
	push	r1
	mov	4,r1
_Label_2938:
	push	r0
	sub	r1,1,r1
	bne	_Label_2938
	mov	996,r13		! source line 996
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_425 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_425  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	997,r13		! source line 997
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_426 = open		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_426  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	998,r13		! source line 998
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_427 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_427  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	999,r13		! source line 999
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1000,r13		! source line 1000
	mov	"\0\0SE",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	load	[r14+8],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! RETURN STATEMENT...
	mov	1000,r13		! source line 1000
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_208_printOpen:
	.word	_sourceFileName
	.word	_Label_428
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_429
	.word	8
	.word	4
	.word	_Label_430
	.word	-12
	.word	4
	.word	_Label_431
	.word	-16
	.word	4
	.word	_Label_432
	.word	-20
	.word	4
	.word	0
_Label_428:
	.ascii	"printOpen\0"
	.align
_Label_429:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_430:
	.byte	'?'
	.ascii	"_temp_427\0"
	.align
_Label_431:
	.byte	'?'
	.ascii	"_temp_426\0"
	.align
_Label_432:
	.byte	'?'
	.ascii	"_temp_425\0"
	.align
! 
! ===============  FUNCTION ThreadPrintShort  ===============
! 
_function_207_ThreadPrintShort:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_207_ThreadPrintShort,r1
	push	r1
	mov	19,r1
_Label_2939:
	push	r0
	sub	r1,1,r1
	bne	_Label_2939
	mov	1554,r13		! source line 1554
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! oldStatus
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1561,r13		! source line 1561
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! IF STATEMENT...
	mov	1562,r13		! source line 1562
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_436		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_436
!   _temp_435 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_437
_Label_436:
!   _temp_435 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_437:
!   if _temp_435 then goto _Label_434 else goto _Label_433
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_433
	jmp	_Label_434
_Label_433:
! THEN...
	mov	1563,r13		! source line 1563
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_438 = _StringConst_17
	set	_StringConst_17,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_438  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	1563,r13		! source line 1563
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1564,r13		! source line 1564
	mov	"\0\0RE",r10
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_434:
! CALL STATEMENT...
!   _temp_439 = _StringConst_18
	set	_StringConst_18,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_439  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	1566,r13		! source line 1566
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_441 = t + 72
	load	[r14+8],r1
	add	r1,72,r1
	store	r1,[r14+-64]
!   Data Move: _temp_440 = *_temp_441  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_440  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	1567,r13		! source line 1567
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_442 = _StringConst_19
	set	_StringConst_19,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_442  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1568,r13		! source line 1568
	mov	"\0\0CE",r10
	call	print
! SWITCH STATEMENT (using series of tests)...
	mov	1569,r13		! source line 1569
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_451 = t + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-52]
!   Data Move: _temp_450 = *_temp_451  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   Branch to the right case label
	load	[r14+-56],r1
	cmp	r1,1
	be	_Label_445
	cmp	r1,2
	be	_Label_446
	cmp	r1,3
	be	_Label_447
	cmp	r1,4
	be	_Label_448
	cmp	r1,5
	be	_Label_449
	jmp	_Label_443
! CASE 1...
_Label_445:
! CALL STATEMENT...
!   _temp_452 = _StringConst_20
	set	_StringConst_20,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_452  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1571,r13		! source line 1571
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	1572,r13		! source line 1572
	mov	"\0\0BR",r10
	jmp	_Label_444
! CASE 2...
_Label_446:
! CALL STATEMENT...
!   _temp_453 = _StringConst_21
	set	_StringConst_21,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_453  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1574,r13		! source line 1574
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	1575,r13		! source line 1575
	mov	"\0\0BR",r10
	jmp	_Label_444
! CASE 3...
_Label_447:
! CALL STATEMENT...
!   _temp_454 = _StringConst_22
	set	_StringConst_22,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_454  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1577,r13		! source line 1577
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	1578,r13		! source line 1578
	mov	"\0\0BR",r10
	jmp	_Label_444
! CASE 4...
_Label_448:
! CALL STATEMENT...
!   _temp_455 = _StringConst_23
	set	_StringConst_23,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_455  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1580,r13		! source line 1580
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	1581,r13		! source line 1581
	mov	"\0\0BR",r10
	jmp	_Label_444
! CASE 5...
_Label_449:
! CALL STATEMENT...
!   _temp_456 = _StringConst_24
	set	_StringConst_24,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_456  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1583,r13		! source line 1583
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	1584,r13		! source line 1584
	mov	"\0\0BR",r10
	jmp	_Label_444
! DEFAULT CASE...
_Label_443:
! CALL STATEMENT...
!   _temp_457 = _StringConst_25
	set	_StringConst_25,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_457  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1586,r13		! source line 1586
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_444:
! CALL STATEMENT...
!   _temp_458 = _StringConst_26
	set	_StringConst_26,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_458  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1588,r13		! source line 1588
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_459 = t		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_459  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1589,r13		! source line 1589
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_460 = _StringConst_27
	set	_StringConst_27,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_460  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1590,r13		! source line 1590
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1591,r13		! source line 1591
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	1593,r13		! source line 1593
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	1593,r13		! source line 1593
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! RETURN STATEMENT...
	mov	1593,r13		! source line 1593
	mov	"\0\0RE",r10
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_207_ThreadPrintShort:
	.word	_sourceFileName
	.word	_Label_461
	.word	4		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_462
	.word	8
	.word	4
	.word	_Label_463
	.word	-16
	.word	4
	.word	_Label_464
	.word	-20
	.word	4
	.word	_Label_465
	.word	-24
	.word	4
	.word	_Label_466
	.word	-28
	.word	4
	.word	_Label_467
	.word	-32
	.word	4
	.word	_Label_468
	.word	-36
	.word	4
	.word	_Label_469
	.word	-40
	.word	4
	.word	_Label_470
	.word	-44
	.word	4
	.word	_Label_471
	.word	-48
	.word	4
	.word	_Label_472
	.word	-52
	.word	4
	.word	_Label_473
	.word	-56
	.word	4
	.word	_Label_474
	.word	-60
	.word	4
	.word	_Label_475
	.word	-64
	.word	4
	.word	_Label_476
	.word	-68
	.word	4
	.word	_Label_477
	.word	-72
	.word	4
	.word	_Label_478
	.word	-76
	.word	4
	.word	_Label_479
	.word	-9
	.word	1
	.word	_Label_480
	.word	-80
	.word	4
	.word	0
_Label_461:
	.ascii	"ThreadPrintShort\0"
	.align
_Label_462:
	.byte	'P'
	.ascii	"t\0"
	.align
_Label_463:
	.byte	'?'
	.ascii	"_temp_460\0"
	.align
_Label_464:
	.byte	'?'
	.ascii	"_temp_459\0"
	.align
_Label_465:
	.byte	'?'
	.ascii	"_temp_458\0"
	.align
_Label_466:
	.byte	'?'
	.ascii	"_temp_457\0"
	.align
_Label_467:
	.byte	'?'
	.ascii	"_temp_456\0"
	.align
_Label_468:
	.byte	'?'
	.ascii	"_temp_455\0"
	.align
_Label_469:
	.byte	'?'
	.ascii	"_temp_454\0"
	.align
_Label_470:
	.byte	'?'
	.ascii	"_temp_453\0"
	.align
_Label_471:
	.byte	'?'
	.ascii	"_temp_452\0"
	.align
_Label_472:
	.byte	'?'
	.ascii	"_temp_451\0"
	.align
_Label_473:
	.byte	'?'
	.ascii	"_temp_450\0"
	.align
_Label_474:
	.byte	'?'
	.ascii	"_temp_442\0"
	.align
_Label_475:
	.byte	'?'
	.ascii	"_temp_441\0"
	.align
_Label_476:
	.byte	'?'
	.ascii	"_temp_440\0"
	.align
_Label_477:
	.byte	'?'
	.ascii	"_temp_439\0"
	.align
_Label_478:
	.byte	'?'
	.ascii	"_temp_438\0"
	.align
_Label_479:
	.byte	'C'
	.ascii	"_temp_435\0"
	.align
_Label_480:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION PrintObjectAddr  ===============
! 
_function_206_PrintObjectAddr:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_206_PrintObjectAddr,r1
	push	r1
	mov	2,r1
_Label_2940:
	push	r0
	sub	r1,1,r1
	bne	_Label_2940
	mov	1861,r13		! source line 1861
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_481 = p		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_481  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1865,r13		! source line 1865
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	1866,r13		! source line 1866
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	1866,r13		! source line 1866
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_206_PrintObjectAddr:
	.word	_sourceFileName
	.word	_Label_482
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_483
	.word	8
	.word	4
	.word	_Label_484
	.word	-12
	.word	4
	.word	0
_Label_482:
	.ascii	"PrintObjectAddr\0"
	.align
_Label_483:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_484:
	.byte	'?'
	.ascii	"_temp_481\0"
	.align
! 
! ===============  FUNCTION ProcessFinish  ===============
! 
_P_Kernel_ProcessFinish:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ProcessFinish,r1
	push	r1
	mov	2,r1
_Label_2941:
	push	r0
	sub	r1,1,r1
	bne	_Label_2941
	mov	1871,r13		! source line 1871
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_485 = _StringConst_28
	set	_StringConst_28,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_485  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1877,r13		! source line 1877
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	1877,r13		! source line 1877
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ProcessFinish:
	.word	_sourceFileName
	.word	_Label_486
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_487
	.word	8
	.word	4
	.word	_Label_488
	.word	-12
	.word	4
	.word	0
_Label_486:
	.ascii	"ProcessFinish\0"
	.align
_Label_487:
	.byte	'I'
	.ascii	"exitStatus\0"
	.align
_Label_488:
	.byte	'?'
	.ascii	"_temp_485\0"
	.align
! 
! ===============  FUNCTION TimerInterruptHandler  ===============
! 
_P_Kernel_TimerInterruptHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_TimerInterruptHandler,r1
	push	r1
	mov	1,r1
_Label_2942:
	push	r0
	sub	r1,1,r1
	bne	_Label_2942
	mov	2356,r13		! source line 2356
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2366,r13		! source line 2366
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2368,r13		! source line 2368
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
! ASSIGNMENT STATEMENT...
	mov	2369,r13		! source line 2369
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2369,r13		! source line 2369
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_TimerInterruptHandler:
	.word	_sourceFileName
	.word	_Label_489
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_489:
	.ascii	"TimerInterruptHandler\0"
	.align
! 
! ===============  FUNCTION DiskInterruptHandler  ===============
! 
_P_Kernel_DiskInterruptHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_DiskInterruptHandler,r1
	push	r1
	mov	7,r1
_Label_2943:
	push	r0
	sub	r1,1,r1
	bne	_Label_2943
	mov	2374,r13		! source line 2374
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2386,r13		! source line 2386
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2388,r13		! source line 2388
	mov	"\0\0IF",r10
!   _temp_493 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   _temp_494 = _temp_493 + 24
	load	[r14+-28],r1
	add	r1,24,r1
	store	r1,[r14+-24]
!   Data Move: _temp_492 = *_temp_494  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_492 == 0 then goto _Label_491		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_491
!	jmp	_Label_490
_Label_490:
! THEN...
	mov	2389,r13		! source line 2389
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2389,r13		! source line 2389
	mov	"\0\0SE",r10
!   _temp_496 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-16]
!   _temp_497 = _temp_496 + 24
	load	[r14+-16],r1
	add	r1,24,r1
	store	r1,[r14+-12]
!   Data Move: _temp_495 = *_temp_497  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_495) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Up
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_491:
! RETURN STATEMENT...
	mov	2388,r13		! source line 2388
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_DiskInterruptHandler:
	.word	_sourceFileName
	.word	_Label_498
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_499
	.word	-12
	.word	4
	.word	_Label_500
	.word	-16
	.word	4
	.word	_Label_501
	.word	-20
	.word	4
	.word	_Label_502
	.word	-24
	.word	4
	.word	_Label_503
	.word	-28
	.word	4
	.word	_Label_504
	.word	-32
	.word	4
	.word	0
_Label_498:
	.ascii	"DiskInterruptHandler\0"
	.align
_Label_499:
	.byte	'?'
	.ascii	"_temp_497\0"
	.align
_Label_500:
	.byte	'?'
	.ascii	"_temp_496\0"
	.align
_Label_501:
	.byte	'?'
	.ascii	"_temp_495\0"
	.align
_Label_502:
	.byte	'?'
	.ascii	"_temp_494\0"
	.align
_Label_503:
	.byte	'?'
	.ascii	"_temp_493\0"
	.align
_Label_504:
	.byte	'?'
	.ascii	"_temp_492\0"
	.align
! 
! ===============  FUNCTION SerialInterruptHandler  ===============
! 
_P_Kernel_SerialInterruptHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_SerialInterruptHandler,r1
	push	r1
	mov	2396,r13		! source line 2396
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2405,r13		! source line 2405
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2405,r13		! source line 2405
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_SerialInterruptHandler:
	.word	_sourceFileName
	.word	_Label_505
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_505:
	.ascii	"SerialInterruptHandler\0"
	.align
! 
! ===============  FUNCTION IllegalInstructionHandler  ===============
! 
_P_Kernel_IllegalInstructionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_IllegalInstructionHandler,r1
	push	r1
	mov	2,r1
_Label_2944:
	push	r0
	sub	r1,1,r1
	bne	_Label_2944
	mov	2410,r13		! source line 2410
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2416,r13		! source line 2416
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_506 = _StringConst_29
	set	_StringConst_29,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_506  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2417,r13		! source line 2417
	mov	"\0\0CA",r10
	call	_function_205_ErrorInUserProcess
! RETURN STATEMENT...
	mov	2417,r13		! source line 2417
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_IllegalInstructionHandler:
	.word	_sourceFileName
	.word	_Label_507
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_508
	.word	-12
	.word	4
	.word	0
_Label_507:
	.ascii	"IllegalInstructionHandler\0"
	.align
_Label_508:
	.byte	'?'
	.ascii	"_temp_506\0"
	.align
! 
! ===============  FUNCTION ArithmeticExceptionHandler  ===============
! 
_P_Kernel_ArithmeticExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ArithmeticExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_2945:
	push	r0
	sub	r1,1,r1
	bne	_Label_2945
	mov	2422,r13		! source line 2422
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2428,r13		! source line 2428
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_509 = _StringConst_30
	set	_StringConst_30,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_509  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2429,r13		! source line 2429
	mov	"\0\0CA",r10
	call	_function_205_ErrorInUserProcess
! RETURN STATEMENT...
	mov	2429,r13		! source line 2429
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ArithmeticExceptionHandler:
	.word	_sourceFileName
	.word	_Label_510
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_511
	.word	-12
	.word	4
	.word	0
_Label_510:
	.ascii	"ArithmeticExceptionHandler\0"
	.align
_Label_511:
	.byte	'?'
	.ascii	"_temp_509\0"
	.align
! 
! ===============  FUNCTION AddressExceptionHandler  ===============
! 
_P_Kernel_AddressExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_AddressExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_2946:
	push	r0
	sub	r1,1,r1
	bne	_Label_2946
	mov	2434,r13		! source line 2434
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2440,r13		! source line 2440
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_512 = _StringConst_31
	set	_StringConst_31,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_512  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2441,r13		! source line 2441
	mov	"\0\0CA",r10
	call	_function_205_ErrorInUserProcess
! RETURN STATEMENT...
	mov	2441,r13		! source line 2441
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_AddressExceptionHandler:
	.word	_sourceFileName
	.word	_Label_513
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_514
	.word	-12
	.word	4
	.word	0
_Label_513:
	.ascii	"AddressExceptionHandler\0"
	.align
_Label_514:
	.byte	'?'
	.ascii	"_temp_512\0"
	.align
! 
! ===============  FUNCTION PageInvalidExceptionHandler  ===============
! 
_P_Kernel_PageInvalidExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PageInvalidExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_2947:
	push	r0
	sub	r1,1,r1
	bne	_Label_2947
	mov	2446,r13		! source line 2446
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2452,r13		! source line 2452
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_515 = _StringConst_32
	set	_StringConst_32,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_515  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2453,r13		! source line 2453
	mov	"\0\0CA",r10
	call	_function_205_ErrorInUserProcess
! RETURN STATEMENT...
	mov	2453,r13		! source line 2453
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PageInvalidExceptionHandler:
	.word	_sourceFileName
	.word	_Label_516
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_517
	.word	-12
	.word	4
	.word	0
_Label_516:
	.ascii	"PageInvalidExceptionHandler\0"
	.align
_Label_517:
	.byte	'?'
	.ascii	"_temp_515\0"
	.align
! 
! ===============  FUNCTION PageReadonlyExceptionHandler  ===============
! 
_P_Kernel_PageReadonlyExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PageReadonlyExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_2948:
	push	r0
	sub	r1,1,r1
	bne	_Label_2948
	mov	2458,r13		! source line 2458
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2464,r13		! source line 2464
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_518 = _StringConst_33
	set	_StringConst_33,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_518  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2465,r13		! source line 2465
	mov	"\0\0CA",r10
	call	_function_205_ErrorInUserProcess
! RETURN STATEMENT...
	mov	2465,r13		! source line 2465
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PageReadonlyExceptionHandler:
	.word	_sourceFileName
	.word	_Label_519
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_520
	.word	-12
	.word	4
	.word	0
_Label_519:
	.ascii	"PageReadonlyExceptionHandler\0"
	.align
_Label_520:
	.byte	'?'
	.ascii	"_temp_518\0"
	.align
! 
! ===============  FUNCTION PrivilegedInstructionHandler  ===============
! 
_P_Kernel_PrivilegedInstructionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PrivilegedInstructionHandler,r1
	push	r1
	mov	2,r1
_Label_2949:
	push	r0
	sub	r1,1,r1
	bne	_Label_2949
	mov	2470,r13		! source line 2470
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2476,r13		! source line 2476
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_521 = _StringConst_34
	set	_StringConst_34,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_521  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2477,r13		! source line 2477
	mov	"\0\0CA",r10
	call	_function_205_ErrorInUserProcess
! RETURN STATEMENT...
	mov	2477,r13		! source line 2477
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PrivilegedInstructionHandler:
	.word	_sourceFileName
	.word	_Label_522
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_523
	.word	-12
	.word	4
	.word	0
_Label_522:
	.ascii	"PrivilegedInstructionHandler\0"
	.align
_Label_523:
	.byte	'?'
	.ascii	"_temp_521\0"
	.align
! 
! ===============  FUNCTION AlignmentExceptionHandler  ===============
! 
_P_Kernel_AlignmentExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_AlignmentExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_2950:
	push	r0
	sub	r1,1,r1
	bne	_Label_2950
	mov	2482,r13		! source line 2482
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2488,r13		! source line 2488
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_524 = _StringConst_35
	set	_StringConst_35,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_524  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2489,r13		! source line 2489
	mov	"\0\0CA",r10
	call	_function_205_ErrorInUserProcess
! RETURN STATEMENT...
	mov	2489,r13		! source line 2489
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_AlignmentExceptionHandler:
	.word	_sourceFileName
	.word	_Label_525
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_526
	.word	-12
	.word	4
	.word	0
_Label_525:
	.ascii	"AlignmentExceptionHandler\0"
	.align
_Label_526:
	.byte	'?'
	.ascii	"_temp_524\0"
	.align
! 
! ===============  FUNCTION ErrorInUserProcess  ===============
! 
_function_205_ErrorInUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_205_ErrorInUserProcess,r1
	push	r1
	mov	8,r1
_Label_2951:
	push	r0
	sub	r1,1,r1
	bne	_Label_2951
	mov	2494,r13		! source line 2494
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_527 = _StringConst_36
	set	_StringConst_36,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_527  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2499,r13		! source line 2499
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	2500,r13		! source line 2500
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_528 = _StringConst_37
	set	_StringConst_37,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_528  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2501,r13		! source line 2501
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	2504,r13		! source line 2504
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_532 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-24]
!   Data Move: _temp_531 = *_temp_532  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if _temp_531 == 0 then goto _Label_530		(int)
	load	[r14+-28],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_530
!	jmp	_Label_529
_Label_529:
! THEN...
	mov	2505,r13		! source line 2505
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2505,r13		! source line 2505
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_534 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-16]
!   Data Move: _temp_533 = *_temp_534  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_533) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
	jmp	_Label_535
_Label_530:
! ELSE...
	mov	2507,r13		! source line 2507
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_536 = _StringConst_38
	set	_StringConst_38,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_536  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2507,r13		! source line 2507
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_535:
! SEND STATEMENT...
	mov	2509,r13		! source line 2509
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+0]
!   Call the function
	mov	2515,r13		! source line 2515
	mov	"\0\0CA",r10
	call	_P_Kernel_ProcessFinish
! RETURN STATEMENT...
	mov	2515,r13		! source line 2515
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_205_ErrorInUserProcess:
	.word	_sourceFileName
	.word	_Label_537
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_538
	.word	8
	.word	4
	.word	_Label_539
	.word	-12
	.word	4
	.word	_Label_540
	.word	-16
	.word	4
	.word	_Label_541
	.word	-20
	.word	4
	.word	_Label_542
	.word	-24
	.word	4
	.word	_Label_543
	.word	-28
	.word	4
	.word	_Label_544
	.word	-32
	.word	4
	.word	_Label_545
	.word	-36
	.word	4
	.word	0
_Label_537:
	.ascii	"ErrorInUserProcess\0"
	.align
_Label_538:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_539:
	.byte	'?'
	.ascii	"_temp_536\0"
	.align
_Label_540:
	.byte	'?'
	.ascii	"_temp_534\0"
	.align
_Label_541:
	.byte	'?'
	.ascii	"_temp_533\0"
	.align
_Label_542:
	.byte	'?'
	.ascii	"_temp_532\0"
	.align
_Label_543:
	.byte	'?'
	.ascii	"_temp_531\0"
	.align
_Label_544:
	.byte	'?'
	.ascii	"_temp_528\0"
	.align
_Label_545:
	.byte	'?'
	.ascii	"_temp_527\0"
	.align
! 
! ===============  FUNCTION SyscallTrapHandler  ===============
! 
_P_Kernel_SyscallTrapHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_SyscallTrapHandler,r1
	push	r1
	mov	13,r1
_Label_2952:
	push	r0
	sub	r1,1,r1
	bne	_Label_2952
	mov	2520,r13		! source line 2520
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2527,r13		! source line 2527
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SWITCH STATEMENT (using an indirect jump table)...
	mov	2541,r13		! source line 2541
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
	load	[r14+8],r1
!   If syscallCodeNum is not within 16-bits goto default code
	srl	r1,15,r2
	cmp	r2,0
	be	_Label_2953
	set	0x1ffff,r3
	cmp	r2,r3
	bne	_Label_546
_Label_2953:
!   If syscallCodeNum is < 1 (==smallestCaseValue) goto default code
	cmp	r1,1
	bl	_Label_546
!   If syscallCodeNum is > 12 (==greatestCaseValue) goto default code
	cmp	r1,12
	bg	_Label_546
!   r1 = (r1-lowValue) * 4 + jumpTableAddr
	sub	r1,1,r1
	sll	r1,2,r1
	set	_Label_560,r2
	add	r1,r2,r1
!   Jump indirect through the jump table
	jmp	r1
!   Jump table
_Label_560:
	jmp	_Label_552	! 1:	
	jmp	_Label_559	! 2:	
	jmp	_Label_549	! 3:	
	jmp	_Label_548	! 4:	
	jmp	_Label_551	! 5:	
	jmp	_Label_550	! 6:	
	jmp	_Label_553	! 7:	
	jmp	_Label_554	! 8:	
	jmp	_Label_555	! 9:	
	jmp	_Label_556	! 10:	
	jmp	_Label_557	! 11:	
	jmp	_Label_558	! 12:	
! CASE 4...
_Label_548:
! RETURN STATEMENT...
	mov	2543,r13		! source line 2543
	mov	"\0\0RE",r10
!   Call the function
	mov	2543,r13		! source line 2543
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Fork
!   Retrieve Result: targetName=_temp_561  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
!   ReturnResult: _temp_561  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 3...
_Label_549:
! CALL STATEMENT...
!   Call the function
	mov	2545,r13		! source line 2545
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Yield
! RETURN STATEMENT...
	mov	2546,r13		! source line 2546
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 6...
_Label_550:
! RETURN STATEMENT...
	mov	2548,r13		! source line 2548
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2548,r13		! source line 2548
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exec
!   Retrieve Result: targetName=_temp_562  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
!   ReturnResult: _temp_562  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 5...
_Label_551:
! RETURN STATEMENT...
	mov	2550,r13		! source line 2550
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2550,r13		! source line 2550
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Join
!   Retrieve Result: targetName=_temp_563  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   ReturnResult: _temp_563  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 1...
_Label_552:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2552,r13		! source line 2552
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exit
! RETURN STATEMENT...
	mov	2553,r13		! source line 2553
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 7...
_Label_553:
! RETURN STATEMENT...
	mov	2555,r13		! source line 2555
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2555,r13		! source line 2555
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Create
!   Retrieve Result: targetName=_temp_564  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
!   ReturnResult: _temp_564  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 8...
_Label_554:
! RETURN STATEMENT...
	mov	2557,r13		! source line 2557
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2557,r13		! source line 2557
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Open
!   Retrieve Result: targetName=_temp_565  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
!   ReturnResult: _temp_565  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 9...
_Label_555:
! RETURN STATEMENT...
	mov	2559,r13		! source line 2559
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=arg3  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+8]
!   Call the function
	mov	2559,r13		! source line 2559
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Read
!   Retrieve Result: targetName=_temp_566  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_566  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 10...
_Label_556:
! RETURN STATEMENT...
	mov	2561,r13		! source line 2561
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=arg3  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+8]
!   Call the function
	mov	2561,r13		! source line 2561
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Write
!   Retrieve Result: targetName=_temp_567  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_567  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 11...
_Label_557:
! RETURN STATEMENT...
	mov	2563,r13		! source line 2563
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	2563,r13		! source line 2563
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Seek
!   Retrieve Result: targetName=_temp_568  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   ReturnResult: _temp_568  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 12...
_Label_558:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2565,r13		! source line 2565
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Close
! RETURN STATEMENT...
	mov	2566,r13		! source line 2566
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_559:
! CALL STATEMENT...
!   Call the function
	mov	2568,r13		! source line 2568
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Shutdown
! RETURN STATEMENT...
	mov	2569,r13		! source line 2569
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! DEFAULT CASE...
_Label_546:
! CALL STATEMENT...
!   _temp_569 = _StringConst_39
	set	_StringConst_39,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_569  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2571,r13		! source line 2571
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=syscallCodeNum  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	2572,r13		! source line 2572
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2573,r13		! source line 2573
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_570 = _StringConst_40
	set	_StringConst_40,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_570  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2574,r13		! source line 2574
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_547:
! RETURN STATEMENT...
	mov	2576,r13		! source line 2576
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_SyscallTrapHandler:
	.word	_sourceFileName
	.word	_Label_571
	.word	20		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_572
	.word	8
	.word	4
	.word	_Label_573
	.word	12
	.word	4
	.word	_Label_574
	.word	16
	.word	4
	.word	_Label_575
	.word	20
	.word	4
	.word	_Label_576
	.word	24
	.word	4
	.word	_Label_577
	.word	-12
	.word	4
	.word	_Label_578
	.word	-16
	.word	4
	.word	_Label_579
	.word	-20
	.word	4
	.word	_Label_580
	.word	-24
	.word	4
	.word	_Label_581
	.word	-28
	.word	4
	.word	_Label_582
	.word	-32
	.word	4
	.word	_Label_583
	.word	-36
	.word	4
	.word	_Label_584
	.word	-40
	.word	4
	.word	_Label_585
	.word	-44
	.word	4
	.word	_Label_586
	.word	-48
	.word	4
	.word	0
_Label_571:
	.ascii	"SyscallTrapHandler\0"
	.align
_Label_572:
	.byte	'I'
	.ascii	"syscallCodeNum\0"
	.align
_Label_573:
	.byte	'I'
	.ascii	"arg1\0"
	.align
_Label_574:
	.byte	'I'
	.ascii	"arg2\0"
	.align
_Label_575:
	.byte	'I'
	.ascii	"arg3\0"
	.align
_Label_576:
	.byte	'I'
	.ascii	"arg4\0"
	.align
_Label_577:
	.byte	'?'
	.ascii	"_temp_570\0"
	.align
_Label_578:
	.byte	'?'
	.ascii	"_temp_569\0"
	.align
_Label_579:
	.byte	'?'
	.ascii	"_temp_568\0"
	.align
_Label_580:
	.byte	'?'
	.ascii	"_temp_567\0"
	.align
_Label_581:
	.byte	'?'
	.ascii	"_temp_566\0"
	.align
_Label_582:
	.byte	'?'
	.ascii	"_temp_565\0"
	.align
_Label_583:
	.byte	'?'
	.ascii	"_temp_564\0"
	.align
_Label_584:
	.byte	'?'
	.ascii	"_temp_563\0"
	.align
_Label_585:
	.byte	'?'
	.ascii	"_temp_562\0"
	.align
_Label_586:
	.byte	'?'
	.ascii	"_temp_561\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Exit  ===============
! 
_P_Kernel_Handle_Sys_Exit:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Exit,r1
	push	r1
	mov	2,r1
_Label_2954:
	push	r0
	sub	r1,1,r1
	bne	_Label_2954
	mov	2581,r13		! source line 2581
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_587 = _StringConst_41
	set	_StringConst_41,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_587  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2583,r13		! source line 2583
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	2584,r13		! source line 2584
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=returnStatus  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	2585,r13		! source line 2585
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2586,r13		! source line 2586
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2586,r13		! source line 2586
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Exit:
	.word	_sourceFileName
	.word	_Label_588
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_589
	.word	8
	.word	4
	.word	_Label_590
	.word	-12
	.word	4
	.word	0
_Label_588:
	.ascii	"Handle_Sys_Exit\0"
	.align
_Label_589:
	.byte	'I'
	.ascii	"returnStatus\0"
	.align
_Label_590:
	.byte	'?'
	.ascii	"_temp_587\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Shutdown  ===============
! 
_P_Kernel_Handle_Sys_Shutdown:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Shutdown,r1
	push	r1
	mov	2,r1
_Label_2955:
	push	r0
	sub	r1,1,r1
	bne	_Label_2955
	mov	2591,r13		! source line 2591
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_591 = _StringConst_42
	set	_StringConst_42,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_591  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2592,r13		! source line 2592
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	2592,r13		! source line 2592
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Shutdown:
	.word	_sourceFileName
	.word	_Label_592
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_593
	.word	-12
	.word	4
	.word	0
_Label_592:
	.ascii	"Handle_Sys_Shutdown\0"
	.align
_Label_593:
	.byte	'?'
	.ascii	"_temp_591\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Yield  ===============
! 
_P_Kernel_Handle_Sys_Yield:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Yield,r1
	push	r1
	mov	2,r1
_Label_2956:
	push	r0
	sub	r1,1,r1
	bne	_Label_2956
	mov	2597,r13		! source line 2597
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_594 = _StringConst_43
	set	_StringConst_43,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_594  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2599,r13		! source line 2599
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	2600,r13		! source line 2600
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2600,r13		! source line 2600
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Yield:
	.word	_sourceFileName
	.word	_Label_595
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_596
	.word	-12
	.word	4
	.word	0
_Label_595:
	.ascii	"Handle_Sys_Yield\0"
	.align
_Label_596:
	.byte	'?'
	.ascii	"_temp_594\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Fork  ===============
! 
_P_Kernel_Handle_Sys_Fork:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Fork,r1
	push	r1
	mov	2,r1
_Label_2957:
	push	r0
	sub	r1,1,r1
	bne	_Label_2957
	mov	2605,r13		! source line 2605
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_597 = _StringConst_44
	set	_StringConst_44,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_597  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2607,r13		! source line 2607
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	2608,r13		! source line 2608
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2609,r13		! source line 2609
	mov	"\0\0RE",r10
!   ReturnResult: 1000  (sizeInBytes=4)
	mov	1000,r1
	store	r1,[r14+8]
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Fork:
	.word	_sourceFileName
	.word	_Label_598
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_599
	.word	-12
	.word	4
	.word	0
_Label_598:
	.ascii	"Handle_Sys_Fork\0"
	.align
_Label_599:
	.byte	'?'
	.ascii	"_temp_597\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Join  ===============
! 
_P_Kernel_Handle_Sys_Join:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Join,r1
	push	r1
	mov	3,r1
_Label_2958:
	push	r0
	sub	r1,1,r1
	bne	_Label_2958
	mov	2614,r13		! source line 2614
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_600 = _StringConst_45
	set	_StringConst_45,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_600  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2616,r13		! source line 2616
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	2617,r13		! source line 2617
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_601 = _StringConst_46
	set	_StringConst_46,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_601  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2618,r13		! source line 2618
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=processID  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	2619,r13		! source line 2619
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2620,r13		! source line 2620
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2621,r13		! source line 2621
	mov	"\0\0RE",r10
!   ReturnResult: 2000  (sizeInBytes=4)
	mov	2000,r1
	store	r1,[r14+8]
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Join:
	.word	_sourceFileName
	.word	_Label_602
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_603
	.word	8
	.word	4
	.word	_Label_604
	.word	-12
	.word	4
	.word	_Label_605
	.word	-16
	.word	4
	.word	0
_Label_602:
	.ascii	"Handle_Sys_Join\0"
	.align
_Label_603:
	.byte	'I'
	.ascii	"processID\0"
	.align
_Label_604:
	.byte	'?'
	.ascii	"_temp_601\0"
	.align
_Label_605:
	.byte	'?'
	.ascii	"_temp_600\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Exec  ===============
! 
_P_Kernel_Handle_Sys_Exec:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Exec,r1
	push	r1
	mov	64,r1
_Label_2959:
	push	r0
	sub	r1,1,r1
	bne	_Label_2959
	mov	2626,r13		! source line 2626
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! newAddrSpace
!   NEW CLASS Constructor...
!   ZeroMemory: newAddrSpace = zeros  (sizeInBytes=92)
	add	r14,-204,r4
	mov	23,r3
_Label_2960:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2960
!   newAddrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	store	r1,[r14+-204]
! ASSIGNMENT STATEMENT...
	mov	2636,r13		! source line 2636
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	2636,r13		! source line 2636
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=temp  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-248]
! ASSIGNMENT STATEMENT...
	mov	2637,r13		! source line 2637
	mov	"\0\0AS",r10
	mov	2637,r13		! source line 2637
	mov	"\0\0SE",r10
!   _temp_607 = &kernalFileName
	add	r14,-228,r1
	store	r1,[r14+-108]
!   _temp_608 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-104]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_610 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-96]
!   Data Move: _temp_609 = *_temp_610  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_609) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_611 = _temp_609 + 32
	load	[r14+-100],r1
	add	r1,32,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=12  value=_temp_607  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_608  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+12]
!   Send message GetStringFromVirtual
	load	[r14+-92],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,84,r2
	call	r2
!   Retrieve Result: targetName=temp  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-248]
! IF STATEMENT...
	mov	2638,r13		! source line 2638
	mov	"\0\0IF",r10
!   if temp >= 0 then goto _Label_613		(int)
	load	[r14+-248],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_613
!	jmp	_Label_612
_Label_612:
! THEN...
	mov	2639,r13		! source line 2639
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2639,r13		! source line 2639
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,260,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_613:
! SEND STATEMENT...
	mov	2642,r13		! source line 2642
	mov	"\0\0SE",r10
!   _temp_614 = &newAddrSpace
	add	r14,-204,r1
	store	r1,[r14+-88]
!   Send message Init
	load	[r14+-88],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2643,r13		! source line 2643
	mov	"\0\0AS",r10
	mov	2643,r13		! source line 2643
	mov	"\0\0SE",r10
!   _temp_615 = &kernalFileName
	add	r14,-228,r1
	store	r1,[r14+-84]
!   _temp_616 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=12  value=_temp_615  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+4]
!   Send message Open
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=OpenFilePointer  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-244]
! IF STATEMENT...
	mov	2644,r13		! source line 2644
	mov	"\0\0IF",r10
!   if intIsZero (OpenFilePointer) then goto _Label_617
	load	[r14+-244],r1
	cmp	r1,r0
	be	_Label_617
	jmp	_Label_618
_Label_617:
! THEN...
	mov	2645,r13		! source line 2645
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2645,r13		! source line 2645
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,260,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_618:
! ASSIGNMENT STATEMENT...
	mov	2648,r13		! source line 2648
	mov	"\0\0AS",r10
	mov	2648,r13		! source line 2648
	mov	"\0\0SE",r10
!   _temp_619 = &newAddrSpace
	add	r14,-204,r1
	store	r1,[r14+-76]
!   if intIsZero (OpenFilePointer) then goto _runtimeErrorNullPointer
	load	[r14+-244],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_619  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+4]
!   Send message LoadExecutable
	load	[r14+-244],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=EntryPoint  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-240]
! SEND STATEMENT...
	mov	2649,r13		! source line 2649
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_622 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-64]
!   Data Move: _temp_621 = *_temp_622  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_621) then goto _runtimeErrorNullPointer
	load	[r14+-68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_623 = _temp_621 + 32
	load	[r14+-68],r1
	add	r1,32,r1
	store	r1,[r14+-60]
!   _temp_620 = _temp_623		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-72]
!   _temp_624 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=12  value=_temp_620  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2650,r13		! source line 2650
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_626 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-48]
!   Data Move: _temp_625 = *_temp_626  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_625) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_627 = _temp_625 + 32
	load	[r14+-52],r1
	add	r1,32,r1
	store	r1,[r14+-44]
!   Data Move: *_temp_627 = newAddrSpace  (sizeInBytes=92)
	add	r14,-204,r5
	load	[r14+-44],r4
	mov	23,r3
_Label_2961:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2961
! SEND STATEMENT...
	mov	2651,r13		! source line 2651
	mov	"\0\0SE",r10
!   _temp_628 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=OpenFilePointer  sizeInBytes=4
	load	[r14+-244],r1
	store	r1,[r15+4]
!   Send message Close
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2652,r13		! source line 2652
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_629 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_629 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-36],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2653,r13		! source line 2653
	mov	"\0\0AS",r10
!   _temp_631 = &newAddrSpace
	add	r14,-204,r1
	store	r1,[r14+-28]
!   _temp_632 = _temp_631 + 4
	load	[r14+-28],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Data Move: _temp_630 = *_temp_632  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   UserStackTop = _temp_630 * 8192		(int)
	load	[r14+-32],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-232]
! ASSIGNMENT STATEMENT...
	mov	2654,r13		! source line 2654
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_633 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_633 [999 ] into _temp_634
!     make sure index expr is >= 0
	mov	999,r2
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
!   SystemStackTop = _temp_634		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-236]
! SEND STATEMENT...
	mov	2655,r13		! source line 2655
	mov	"\0\0SE",r10
!   _temp_635 = &newAddrSpace
	add	r14,-204,r1
	store	r1,[r14+-12]
!   Send message SetToThisPageTable
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,72,r2
	call	r2
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=UserStackTop  sizeInBytes=4
	load	[r14+-232],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=EntryPoint  sizeInBytes=4
	load	[r14+-240],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=SystemStackTop  sizeInBytes=4
	load	[r14+-236],r1
	store	r1,[r15+8]
!   Call the function
	mov	2656,r13		! source line 2656
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	2657,r13		! source line 2657
	mov	"\0\0RE",r10
!   ReturnResult: 3000  (sizeInBytes=4)
	mov	3000,r1
	store	r1,[r14+8]
	add	r15,260,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Exec:
	.word	_sourceFileName
	.word	_Label_636
	.word	4		! total size of parameters
	.word	256		! frame size = 256
	.word	_Label_637
	.word	8
	.word	4
	.word	_Label_638
	.word	-12
	.word	4
	.word	_Label_639
	.word	-16
	.word	4
	.word	_Label_640
	.word	-20
	.word	4
	.word	_Label_641
	.word	-24
	.word	4
	.word	_Label_642
	.word	-28
	.word	4
	.word	_Label_643
	.word	-32
	.word	4
	.word	_Label_644
	.word	-36
	.word	4
	.word	_Label_645
	.word	-40
	.word	4
	.word	_Label_646
	.word	-44
	.word	4
	.word	_Label_647
	.word	-48
	.word	4
	.word	_Label_648
	.word	-52
	.word	4
	.word	_Label_649
	.word	-56
	.word	4
	.word	_Label_650
	.word	-60
	.word	4
	.word	_Label_651
	.word	-64
	.word	4
	.word	_Label_652
	.word	-68
	.word	4
	.word	_Label_653
	.word	-72
	.word	4
	.word	_Label_654
	.word	-76
	.word	4
	.word	_Label_655
	.word	-80
	.word	4
	.word	_Label_656
	.word	-84
	.word	4
	.word	_Label_657
	.word	-88
	.word	4
	.word	_Label_658
	.word	-92
	.word	4
	.word	_Label_659
	.word	-96
	.word	4
	.word	_Label_660
	.word	-100
	.word	4
	.word	_Label_661
	.word	-104
	.word	4
	.word	_Label_662
	.word	-108
	.word	4
	.word	_Label_663
	.word	-112
	.word	4
	.word	_Label_664
	.word	-204
	.word	92
	.word	_Label_665
	.word	-228
	.word	24
	.word	_Label_666
	.word	-232
	.word	4
	.word	_Label_667
	.word	-236
	.word	4
	.word	_Label_668
	.word	-240
	.word	4
	.word	_Label_669
	.word	-244
	.word	4
	.word	_Label_670
	.word	-248
	.word	4
	.word	0
_Label_636:
	.ascii	"Handle_Sys_Exec\0"
	.align
_Label_637:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_638:
	.byte	'?'
	.ascii	"_temp_635\0"
	.align
_Label_639:
	.byte	'?'
	.ascii	"_temp_634\0"
	.align
_Label_640:
	.byte	'?'
	.ascii	"_temp_633\0"
	.align
_Label_641:
	.byte	'?'
	.ascii	"_temp_632\0"
	.align
_Label_642:
	.byte	'?'
	.ascii	"_temp_631\0"
	.align
_Label_643:
	.byte	'?'
	.ascii	"_temp_630\0"
	.align
_Label_644:
	.byte	'?'
	.ascii	"_temp_629\0"
	.align
_Label_645:
	.byte	'?'
	.ascii	"_temp_628\0"
	.align
_Label_646:
	.byte	'?'
	.ascii	"_temp_627\0"
	.align
_Label_647:
	.byte	'?'
	.ascii	"_temp_626\0"
	.align
_Label_648:
	.byte	'?'
	.ascii	"_temp_625\0"
	.align
_Label_649:
	.byte	'?'
	.ascii	"_temp_624\0"
	.align
_Label_650:
	.byte	'?'
	.ascii	"_temp_623\0"
	.align
_Label_651:
	.byte	'?'
	.ascii	"_temp_622\0"
	.align
_Label_652:
	.byte	'?'
	.ascii	"_temp_621\0"
	.align
_Label_653:
	.byte	'?'
	.ascii	"_temp_620\0"
	.align
_Label_654:
	.byte	'?'
	.ascii	"_temp_619\0"
	.align
_Label_655:
	.byte	'?'
	.ascii	"_temp_616\0"
	.align
_Label_656:
	.byte	'?'
	.ascii	"_temp_615\0"
	.align
_Label_657:
	.byte	'?'
	.ascii	"_temp_614\0"
	.align
_Label_658:
	.byte	'?'
	.ascii	"_temp_611\0"
	.align
_Label_659:
	.byte	'?'
	.ascii	"_temp_610\0"
	.align
_Label_660:
	.byte	'?'
	.ascii	"_temp_609\0"
	.align
_Label_661:
	.byte	'?'
	.ascii	"_temp_608\0"
	.align
_Label_662:
	.byte	'?'
	.ascii	"_temp_607\0"
	.align
_Label_663:
	.byte	'?'
	.ascii	"_temp_606\0"
	.align
_Label_664:
	.byte	'O'
	.ascii	"newAddrSpace\0"
	.align
_Label_665:
	.byte	'A'
	.ascii	"kernalFileName\0"
	.align
_Label_666:
	.byte	'I'
	.ascii	"UserStackTop\0"
	.align
_Label_667:
	.byte	'I'
	.ascii	"SystemStackTop\0"
	.align
_Label_668:
	.byte	'I'
	.ascii	"EntryPoint\0"
	.align
_Label_669:
	.byte	'P'
	.ascii	"OpenFilePointer\0"
	.align
_Label_670:
	.byte	'I'
	.ascii	"temp\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Create  ===============
! 
_P_Kernel_Handle_Sys_Create:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Create,r1
	push	r1
	mov	21,r1
_Label_2962:
	push	r0
	sub	r1,1,r1
	bne	_Label_2962
	mov	2662,r13		! source line 2662
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2668,r13		! source line 2668
	mov	"\0\0AS",r10
	mov	2668,r13		! source line 2668
	mov	"\0\0SE",r10
!   _temp_671 = &kernalFileName
	add	r14,-72,r1
	store	r1,[r14+-48]
!   _temp_672 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_674 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-36]
!   Data Move: _temp_673 = *_temp_674  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_673) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_675 = _temp_673 + 32
	load	[r14+-40],r1
	add	r1,32,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_671  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_672  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+12]
!   Send message GetStringFromVirtual
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,84,r2
	call	r2
!   Retrieve Result: targetName=temp  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-76]
! CALL STATEMENT...
!   _temp_676 = _StringConst_47
	set	_StringConst_47,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_676  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2669,r13		! source line 2669
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	2670,r13		! source line 2670
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_677 = _StringConst_48
	set	_StringConst_48,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_677  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2671,r13		! source line 2671
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_678 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_678  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2672,r13		! source line 2672
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Call the function
	mov	2673,r13		! source line 2673
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_679 = _StringConst_49
	set	_StringConst_49,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_679  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2674,r13		! source line 2674
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_680 = &kernalFileName
	add	r14,-72,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_680  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2675,r13		! source line 2675
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	2676,r13		! source line 2676
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2677,r13		! source line 2677
	mov	"\0\0RE",r10
!   ReturnResult: 4000  (sizeInBytes=4)
	mov	4000,r1
	store	r1,[r14+8]
	add	r15,88,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Create:
	.word	_sourceFileName
	.word	_Label_681
	.word	4		! total size of parameters
	.word	84		! frame size = 84
	.word	_Label_682
	.word	8
	.word	4
	.word	_Label_683
	.word	-12
	.word	4
	.word	_Label_684
	.word	-16
	.word	4
	.word	_Label_685
	.word	-20
	.word	4
	.word	_Label_686
	.word	-24
	.word	4
	.word	_Label_687
	.word	-28
	.word	4
	.word	_Label_688
	.word	-32
	.word	4
	.word	_Label_689
	.word	-36
	.word	4
	.word	_Label_690
	.word	-40
	.word	4
	.word	_Label_691
	.word	-44
	.word	4
	.word	_Label_692
	.word	-48
	.word	4
	.word	_Label_693
	.word	-72
	.word	24
	.word	_Label_694
	.word	-76
	.word	4
	.word	0
_Label_681:
	.ascii	"Handle_Sys_Create\0"
	.align
_Label_682:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_683:
	.byte	'?'
	.ascii	"_temp_680\0"
	.align
_Label_684:
	.byte	'?'
	.ascii	"_temp_679\0"
	.align
_Label_685:
	.byte	'?'
	.ascii	"_temp_678\0"
	.align
_Label_686:
	.byte	'?'
	.ascii	"_temp_677\0"
	.align
_Label_687:
	.byte	'?'
	.ascii	"_temp_676\0"
	.align
_Label_688:
	.byte	'?'
	.ascii	"_temp_675\0"
	.align
_Label_689:
	.byte	'?'
	.ascii	"_temp_674\0"
	.align
_Label_690:
	.byte	'?'
	.ascii	"_temp_673\0"
	.align
_Label_691:
	.byte	'?'
	.ascii	"_temp_672\0"
	.align
_Label_692:
	.byte	'?'
	.ascii	"_temp_671\0"
	.align
_Label_693:
	.byte	'A'
	.ascii	"kernalFileName\0"
	.align
_Label_694:
	.byte	'I'
	.ascii	"temp\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Open  ===============
! 
_P_Kernel_Handle_Sys_Open:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Open,r1
	push	r1
	mov	21,r1
_Label_2963:
	push	r0
	sub	r1,1,r1
	bne	_Label_2963
	mov	2682,r13		! source line 2682
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2688,r13		! source line 2688
	mov	"\0\0AS",r10
	mov	2688,r13		! source line 2688
	mov	"\0\0SE",r10
!   _temp_695 = &kernalFileName
	add	r14,-72,r1
	store	r1,[r14+-48]
!   _temp_696 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_698 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-36]
!   Data Move: _temp_697 = *_temp_698  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_697) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_699 = _temp_697 + 32
	load	[r14+-40],r1
	add	r1,32,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_695  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_696  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+12]
!   Send message GetStringFromVirtual
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,84,r2
	call	r2
!   Retrieve Result: targetName=temp  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-76]
! CALL STATEMENT...
!   _temp_700 = _StringConst_50
	set	_StringConst_50,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_700  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2689,r13		! source line 2689
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	2690,r13		! source line 2690
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_701 = _StringConst_51
	set	_StringConst_51,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_701  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2691,r13		! source line 2691
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_702 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_702  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2692,r13		! source line 2692
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Call the function
	mov	2693,r13		! source line 2693
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_703 = _StringConst_52
	set	_StringConst_52,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_703  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2694,r13		! source line 2694
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_704 = &kernalFileName
	add	r14,-72,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_704  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2695,r13		! source line 2695
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	2696,r13		! source line 2696
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2697,r13		! source line 2697
	mov	"\0\0RE",r10
!   ReturnResult: 5000  (sizeInBytes=4)
	mov	5000,r1
	store	r1,[r14+8]
	add	r15,88,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Open:
	.word	_sourceFileName
	.word	_Label_705
	.word	4		! total size of parameters
	.word	84		! frame size = 84
	.word	_Label_706
	.word	8
	.word	4
	.word	_Label_707
	.word	-12
	.word	4
	.word	_Label_708
	.word	-16
	.word	4
	.word	_Label_709
	.word	-20
	.word	4
	.word	_Label_710
	.word	-24
	.word	4
	.word	_Label_711
	.word	-28
	.word	4
	.word	_Label_712
	.word	-32
	.word	4
	.word	_Label_713
	.word	-36
	.word	4
	.word	_Label_714
	.word	-40
	.word	4
	.word	_Label_715
	.word	-44
	.word	4
	.word	_Label_716
	.word	-48
	.word	4
	.word	_Label_717
	.word	-72
	.word	24
	.word	_Label_718
	.word	-76
	.word	4
	.word	0
_Label_705:
	.ascii	"Handle_Sys_Open\0"
	.align
_Label_706:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_707:
	.byte	'?'
	.ascii	"_temp_704\0"
	.align
_Label_708:
	.byte	'?'
	.ascii	"_temp_703\0"
	.align
_Label_709:
	.byte	'?'
	.ascii	"_temp_702\0"
	.align
_Label_710:
	.byte	'?'
	.ascii	"_temp_701\0"
	.align
_Label_711:
	.byte	'?'
	.ascii	"_temp_700\0"
	.align
_Label_712:
	.byte	'?'
	.ascii	"_temp_699\0"
	.align
_Label_713:
	.byte	'?'
	.ascii	"_temp_698\0"
	.align
_Label_714:
	.byte	'?'
	.ascii	"_temp_697\0"
	.align
_Label_715:
	.byte	'?'
	.ascii	"_temp_696\0"
	.align
_Label_716:
	.byte	'?'
	.ascii	"_temp_695\0"
	.align
_Label_717:
	.byte	'A'
	.ascii	"kernalFileName\0"
	.align
_Label_718:
	.byte	'I'
	.ascii	"temp\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Read  ===============
! 
_P_Kernel_Handle_Sys_Read:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Read,r1
	push	r1
	mov	6,r1
_Label_2964:
	push	r0
	sub	r1,1,r1
	bne	_Label_2964
	mov	2702,r13		! source line 2702
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_719 = _StringConst_53
	set	_StringConst_53,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_719  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2704,r13		! source line 2704
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	2705,r13		! source line 2705
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_720 = _StringConst_54
	set	_StringConst_54,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_720  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2706,r13		! source line 2706
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	2707,r13		! source line 2707
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2708,r13		! source line 2708
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_721 = _StringConst_55
	set	_StringConst_55,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_721  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2709,r13		! source line 2709
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_722 = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_722  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2710,r13		! source line 2710
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Call the function
	mov	2711,r13		! source line 2711
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_723 = _StringConst_56
	set	_StringConst_56,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_723  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2712,r13		! source line 2712
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeInBytes  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2713,r13		! source line 2713
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2714,r13		! source line 2714
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2715,r13		! source line 2715
	mov	"\0\0RE",r10
!   ReturnResult: 6000  (sizeInBytes=4)
	mov	6000,r1
	store	r1,[r14+8]
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Read:
	.word	_sourceFileName
	.word	_Label_724
	.word	12		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_725
	.word	8
	.word	4
	.word	_Label_726
	.word	12
	.word	4
	.word	_Label_727
	.word	16
	.word	4
	.word	_Label_728
	.word	-12
	.word	4
	.word	_Label_729
	.word	-16
	.word	4
	.word	_Label_730
	.word	-20
	.word	4
	.word	_Label_731
	.word	-24
	.word	4
	.word	_Label_732
	.word	-28
	.word	4
	.word	0
_Label_724:
	.ascii	"Handle_Sys_Read\0"
	.align
_Label_725:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_726:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_727:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_728:
	.byte	'?'
	.ascii	"_temp_723\0"
	.align
_Label_729:
	.byte	'?'
	.ascii	"_temp_722\0"
	.align
_Label_730:
	.byte	'?'
	.ascii	"_temp_721\0"
	.align
_Label_731:
	.byte	'?'
	.ascii	"_temp_720\0"
	.align
_Label_732:
	.byte	'?'
	.ascii	"_temp_719\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Write  ===============
! 
_P_Kernel_Handle_Sys_Write:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Write,r1
	push	r1
	mov	6,r1
_Label_2965:
	push	r0
	sub	r1,1,r1
	bne	_Label_2965
	mov	2720,r13		! source line 2720
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_733 = _StringConst_57
	set	_StringConst_57,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_733  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2722,r13		! source line 2722
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	2723,r13		! source line 2723
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_734 = _StringConst_58
	set	_StringConst_58,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_734  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2724,r13		! source line 2724
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	2725,r13		! source line 2725
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2726,r13		! source line 2726
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_735 = _StringConst_59
	set	_StringConst_59,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_735  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2727,r13		! source line 2727
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_736 = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_736  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2728,r13		! source line 2728
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Call the function
	mov	2729,r13		! source line 2729
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_737 = _StringConst_60
	set	_StringConst_60,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_737  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2730,r13		! source line 2730
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeInBytes  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2731,r13		! source line 2731
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2732,r13		! source line 2732
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2733,r13		! source line 2733
	mov	"\0\0RE",r10
!   ReturnResult: 7000  (sizeInBytes=4)
	mov	7000,r1
	store	r1,[r14+8]
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Write:
	.word	_sourceFileName
	.word	_Label_738
	.word	12		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_739
	.word	8
	.word	4
	.word	_Label_740
	.word	12
	.word	4
	.word	_Label_741
	.word	16
	.word	4
	.word	_Label_742
	.word	-12
	.word	4
	.word	_Label_743
	.word	-16
	.word	4
	.word	_Label_744
	.word	-20
	.word	4
	.word	_Label_745
	.word	-24
	.word	4
	.word	_Label_746
	.word	-28
	.word	4
	.word	0
_Label_738:
	.ascii	"Handle_Sys_Write\0"
	.align
_Label_739:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_740:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_741:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_742:
	.byte	'?'
	.ascii	"_temp_737\0"
	.align
_Label_743:
	.byte	'?'
	.ascii	"_temp_736\0"
	.align
_Label_744:
	.byte	'?'
	.ascii	"_temp_735\0"
	.align
_Label_745:
	.byte	'?'
	.ascii	"_temp_734\0"
	.align
_Label_746:
	.byte	'?'
	.ascii	"_temp_733\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Seek  ===============
! 
_P_Kernel_Handle_Sys_Seek:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Seek,r1
	push	r1
	mov	4,r1
_Label_2966:
	push	r0
	sub	r1,1,r1
	bne	_Label_2966
	mov	2738,r13		! source line 2738
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_747 = _StringConst_61
	set	_StringConst_61,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_747  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2740,r13		! source line 2740
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	2741,r13		! source line 2741
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_748 = _StringConst_62
	set	_StringConst_62,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_748  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2742,r13		! source line 2742
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	2743,r13		! source line 2743
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2744,r13		! source line 2744
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_749 = _StringConst_63
	set	_StringConst_63,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_749  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2745,r13		! source line 2745
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=newCurrentPos  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2746,r13		! source line 2746
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2747,r13		! source line 2747
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2748,r13		! source line 2748
	mov	"\0\0RE",r10
!   ReturnResult: 8000  (sizeInBytes=4)
	mov	8000,r1
	store	r1,[r14+8]
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Seek:
	.word	_sourceFileName
	.word	_Label_750
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_751
	.word	8
	.word	4
	.word	_Label_752
	.word	12
	.word	4
	.word	_Label_753
	.word	-12
	.word	4
	.word	_Label_754
	.word	-16
	.word	4
	.word	_Label_755
	.word	-20
	.word	4
	.word	0
_Label_750:
	.ascii	"Handle_Sys_Seek\0"
	.align
_Label_751:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_752:
	.byte	'I'
	.ascii	"newCurrentPos\0"
	.align
_Label_753:
	.byte	'?'
	.ascii	"_temp_749\0"
	.align
_Label_754:
	.byte	'?'
	.ascii	"_temp_748\0"
	.align
_Label_755:
	.byte	'?'
	.ascii	"_temp_747\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Close  ===============
! 
_P_Kernel_Handle_Sys_Close:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Close,r1
	push	r1
	mov	3,r1
_Label_2967:
	push	r0
	sub	r1,1,r1
	bne	_Label_2967
	mov	2753,r13		! source line 2753
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_756 = _StringConst_64
	set	_StringConst_64,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_756  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2755,r13		! source line 2755
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	2756,r13		! source line 2756
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_757 = _StringConst_65
	set	_StringConst_65,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_757  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2757,r13		! source line 2757
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	2758,r13		! source line 2758
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2759,r13		! source line 2759
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2759,r13		! source line 2759
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Close:
	.word	_sourceFileName
	.word	_Label_758
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_759
	.word	8
	.word	4
	.word	_Label_760
	.word	-12
	.word	4
	.word	_Label_761
	.word	-16
	.word	4
	.word	0
_Label_758:
	.ascii	"Handle_Sys_Close\0"
	.align
_Label_759:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_760:
	.byte	'?'
	.ascii	"_temp_757\0"
	.align
_Label_761:
	.byte	'?'
	.ascii	"_temp_756\0"
	.align
! 
! ===============  CLASS Semaphore  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Semaphore:
	.word	_Label_762
	jmp	_Method_P_Kernel_Semaphore_1	! 4:	Init
	jmp	_Method_P_Kernel_Semaphore_3	! 8:	Down
	jmp	_Method_P_Kernel_Semaphore_2	! 12:	Up
	.word	0
! 
! Class descriptor:
! 
_Label_762:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_763
	.word	_sourceFileName
	.word	125		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Semaphore
	.word	_P_System_Object
	.word	0
_Label_763:
	.ascii	"Semaphore\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Semaphore_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Semaphore_1,r1
	push	r1
	mov	3,r1
_Label_2968:
	push	r0
	sub	r1,1,r1
	bne	_Label_2968
	mov	278,r13		! source line 278
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	279,r13		! source line 279
	mov	"\0\0IF",r10
!   if initialCount >= 0 then goto _Label_765		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_765
!	jmp	_Label_764
_Label_764:
! THEN...
	mov	280,r13		! source line 280
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_766 = _StringConst_66
	set	_StringConst_66,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_766  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	280,r13		! source line 280
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_765:
! ASSIGNMENT STATEMENT...
	mov	282,r13		! source line 282
	mov	"\0\0AS",r10
!   count = initialCount		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	283,r13		! source line 283
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingThreads = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,8,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   waitingThreads = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! RETURN STATEMENT...
	mov	283,r13		! source line 283
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Semaphore_1:
	.word	_sourceFileName
	.word	_Label_768
	.word	8		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_769
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_770
	.word	12
	.word	4
	.word	_Label_771
	.word	-12
	.word	4
	.word	_Label_772
	.word	-16
	.word	4
	.word	0
_Label_768:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_769:
	.ascii	"Pself\0"
	.align
_Label_770:
	.byte	'I'
	.ascii	"initialCount\0"
	.align
_Label_771:
	.byte	'?'
	.ascii	"_temp_767\0"
	.align
_Label_772:
	.byte	'?'
	.ascii	"_temp_766\0"
	.align
! 
! ===============  METHOD Up  ===============
! 
_Method_P_Kernel_Semaphore_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Semaphore_2,r1
	push	r1
	mov	8,r1
_Label_2969:
	push	r0
	sub	r1,1,r1
	bne	_Label_2969
	mov	288,r13		! source line 288
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	292,r13		! source line 292
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	292,r13		! source line 292
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! IF STATEMENT...
	mov	293,r13		! source line 293
	mov	"\0\0IF",r10
!   if count != 2147483647 then goto _Label_774		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	2147483647,r2
	cmp	r1,r2
	bne	_Label_774
!	jmp	_Label_773
_Label_773:
! THEN...
	mov	294,r13		! source line 294
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_775 = _StringConst_67
	set	_StringConst_67,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_775  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	294,r13		! source line 294
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_774:
! ASSIGNMENT STATEMENT...
	mov	296,r13		! source line 296
	mov	"\0\0AS",r10
!   count = count + 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+4]
! IF STATEMENT...
	mov	297,r13		! source line 297
	mov	"\0\0IF",r10
!   if count > 0 then goto _Label_777		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_777
!	jmp	_Label_776
_Label_776:
! THEN...
	mov	298,r13		! source line 298
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	298,r13		! source line 298
	mov	"\0\0AS",r10
	mov	298,r13		! source line 298
	mov	"\0\0SE",r10
!   _temp_778 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Send message Remove
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! ASSIGNMENT STATEMENT...
	mov	299,r13		! source line 299
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_779 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_779 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	300,r13		! source line 300
	mov	"\0\0SE",r10
!   _temp_780 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_777:
! ASSIGNMENT STATEMENT...
	mov	302,r13		! source line 302
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	302,r13		! source line 302
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	302,r13		! source line 302
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Semaphore_2:
	.word	_sourceFileName
	.word	_Label_781
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_782
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_783
	.word	-12
	.word	4
	.word	_Label_784
	.word	-16
	.word	4
	.word	_Label_785
	.word	-20
	.word	4
	.word	_Label_786
	.word	-24
	.word	4
	.word	_Label_787
	.word	-28
	.word	4
	.word	_Label_788
	.word	-32
	.word	4
	.word	0
_Label_781:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Up\0"
	.align
_Label_782:
	.ascii	"Pself\0"
	.align
_Label_783:
	.byte	'?'
	.ascii	"_temp_780\0"
	.align
_Label_784:
	.byte	'?'
	.ascii	"_temp_779\0"
	.align
_Label_785:
	.byte	'?'
	.ascii	"_temp_778\0"
	.align
_Label_786:
	.byte	'?'
	.ascii	"_temp_775\0"
	.align
_Label_787:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_788:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD Down  ===============
! 
_Method_P_Kernel_Semaphore_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Semaphore_3,r1
	push	r1
	mov	5,r1
_Label_2970:
	push	r0
	sub	r1,1,r1
	bne	_Label_2970
	mov	307,r13		! source line 307
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	310,r13		! source line 310
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	310,r13		! source line 310
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! IF STATEMENT...
	mov	311,r13		! source line 311
	mov	"\0\0IF",r10
!   if count != -2147483648 then goto _Label_790		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	0x80000000,r2
	cmp	r1,r2
	bne	_Label_790
!	jmp	_Label_789
_Label_789:
! THEN...
	mov	312,r13		! source line 312
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_791 = _StringConst_68
	set	_StringConst_68,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_791  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	312,r13		! source line 312
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_790:
! ASSIGNMENT STATEMENT...
	mov	314,r13		! source line 314
	mov	"\0\0AS",r10
!   count = count - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+4]
! IF STATEMENT...
	mov	315,r13		! source line 315
	mov	"\0\0IF",r10
!   if count >= 0 then goto _Label_793		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_793
!	jmp	_Label_792
_Label_792:
! THEN...
	mov	316,r13		! source line 316
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	316,r13		! source line 316
	mov	"\0\0SE",r10
!   _temp_794 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	317,r13		! source line 317
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END IF...
_Label_793:
! ASSIGNMENT STATEMENT...
	mov	319,r13		! source line 319
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	319,r13		! source line 319
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! RETURN STATEMENT...
	mov	319,r13		! source line 319
	mov	"\0\0RE",r10
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Semaphore_3:
	.word	_sourceFileName
	.word	_Label_795
	.word	4		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_796
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_797
	.word	-12
	.word	4
	.word	_Label_798
	.word	-16
	.word	4
	.word	_Label_799
	.word	-20
	.word	4
	.word	0
_Label_795:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Down\0"
	.align
_Label_796:
	.ascii	"Pself\0"
	.align
_Label_797:
	.byte	'?'
	.ascii	"_temp_794\0"
	.align
_Label_798:
	.byte	'?'
	.ascii	"_temp_791\0"
	.align
_Label_799:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  CLASS Mutex  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Mutex:
	.word	_Label_800
	jmp	_Method_P_Kernel_Mutex_1	! 4:	Init
	jmp	_Method_P_Kernel_Mutex_2	! 8:	Lock
	jmp	_Method_P_Kernel_Mutex_3	! 12:	Unlock
	jmp	_Method_P_Kernel_Mutex_4	! 16:	IsHeldByCurrentThread
	.word	0
! 
! Class descriptor:
! 
_Label_800:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_801
	.word	_sourceFileName
	.word	138		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Mutex
	.word	_P_System_Object
	.word	0
_Label_801:
	.ascii	"Mutex\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Mutex_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_1,r1
	push	r1
	mov	1,r1
_Label_2971:
	push	r0
	sub	r1,1,r1
	bne	_Label_2971
	mov	342,r13		! source line 342
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	343,r13		! source line 343
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingThreads = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,8,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   waitingThreads = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! RETURN STATEMENT...
	mov	343,r13		! source line 343
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_1:
	.word	_sourceFileName
	.word	_Label_803
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_804
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_805
	.word	-12
	.word	4
	.word	0
_Label_803:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_804:
	.ascii	"Pself\0"
	.align
_Label_805:
	.byte	'?'
	.ascii	"_temp_802\0"
	.align
! 
! ===============  METHOD Lock  ===============
! 
_Method_P_Kernel_Mutex_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_2,r1
	push	r1
	mov	6,r1
_Label_2972:
	push	r0
	sub	r1,1,r1
	bne	_Label_2972
	mov	348,r13		! source line 348
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	351,r13		! source line 351
	mov	"\0\0IF",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_807		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_807
!	jmp	_Label_806
_Label_806:
! THEN...
	mov	352,r13		! source line 352
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_808 = _StringConst_69
	set	_StringConst_69,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_808  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	352,r13		! source line 352
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_807:
! ASSIGNMENT STATEMENT...
	mov	354,r13		! source line 354
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	354,r13		! source line 354
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! IF STATEMENT...
	mov	355,r13		! source line 355
	mov	"\0\0IF",r10
!   if heldBy == 0 then goto _Label_812		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_812
!   _temp_811 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_813
_Label_812:
!   _temp_811 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_813:
!   if _temp_811 then goto _Label_810 else goto _Label_809
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_809
	jmp	_Label_810
_Label_809:
! THEN...
	mov	356,r13		! source line 356
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	356,r13		! source line 356
	mov	"\0\0AS",r10
!   heldBy = _P_Kernel_currentThread		(4 bytes)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r14+8],r2
	store	r1,[r2+4]
	jmp	_Label_814
_Label_810:
! ELSE...
	mov	358,r13		! source line 358
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	358,r13		! source line 358
	mov	"\0\0SE",r10
!   _temp_815 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	359,r13		! source line 359
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END IF...
_Label_814:
! ASSIGNMENT STATEMENT...
	mov	361,r13		! source line 361
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	361,r13		! source line 361
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	361,r13		! source line 361
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_2:
	.word	_sourceFileName
	.word	_Label_816
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_817
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_818
	.word	-16
	.word	4
	.word	_Label_819
	.word	-9
	.word	1
	.word	_Label_820
	.word	-20
	.word	4
	.word	_Label_821
	.word	-24
	.word	4
	.word	0
_Label_816:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Lock\0"
	.align
_Label_817:
	.ascii	"Pself\0"
	.align
_Label_818:
	.byte	'?'
	.ascii	"_temp_815\0"
	.align
_Label_819:
	.byte	'C'
	.ascii	"_temp_811\0"
	.align
_Label_820:
	.byte	'?'
	.ascii	"_temp_808\0"
	.align
_Label_821:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  METHOD Unlock  ===============
! 
_Method_P_Kernel_Mutex_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_3,r1
	push	r1
	mov	8,r1
_Label_2973:
	push	r0
	sub	r1,1,r1
	bne	_Label_2973
	mov	366,r13		! source line 366
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	370,r13		! source line 370
	mov	"\0\0IF",r10
!   if heldBy == _P_Kernel_currentThread then goto _Label_823		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_823
!	jmp	_Label_822
_Label_822:
! THEN...
	mov	371,r13		! source line 371
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_824 = _StringConst_70
	set	_StringConst_70,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_824  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	371,r13		! source line 371
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_823:
! ASSIGNMENT STATEMENT...
	mov	373,r13		! source line 373
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	373,r13		! source line 373
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! ASSIGNMENT STATEMENT...
	mov	374,r13		! source line 374
	mov	"\0\0AS",r10
	mov	374,r13		! source line 374
	mov	"\0\0SE",r10
!   _temp_825 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Send message Remove
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	375,r13		! source line 375
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_827		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_827
!	jmp	_Label_826
_Label_826:
! THEN...
	mov	376,r13		! source line 376
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	376,r13		! source line 376
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_828 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_828 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	377,r13		! source line 377
	mov	"\0\0SE",r10
!   _temp_829 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	378,r13		! source line 378
	mov	"\0\0AS",r10
!   heldBy = t		(4 bytes)
	load	[r14+-32],r1
	load	[r14+8],r2
	store	r1,[r2+4]
	jmp	_Label_830
_Label_827:
! ELSE...
	mov	380,r13		! source line 380
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	380,r13		! source line 380
	mov	"\0\0AS",r10
!   heldBy = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! END IF...
_Label_830:
! ASSIGNMENT STATEMENT...
	mov	382,r13		! source line 382
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	382,r13		! source line 382
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	382,r13		! source line 382
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_3:
	.word	_sourceFileName
	.word	_Label_831
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_832
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_833
	.word	-12
	.word	4
	.word	_Label_834
	.word	-16
	.word	4
	.word	_Label_835
	.word	-20
	.word	4
	.word	_Label_836
	.word	-24
	.word	4
	.word	_Label_837
	.word	-28
	.word	4
	.word	_Label_838
	.word	-32
	.word	4
	.word	0
_Label_831:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Unlock\0"
	.align
_Label_832:
	.ascii	"Pself\0"
	.align
_Label_833:
	.byte	'?'
	.ascii	"_temp_829\0"
	.align
_Label_834:
	.byte	'?'
	.ascii	"_temp_828\0"
	.align
_Label_835:
	.byte	'?'
	.ascii	"_temp_825\0"
	.align
_Label_836:
	.byte	'?'
	.ascii	"_temp_824\0"
	.align
_Label_837:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_838:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD IsHeldByCurrentThread  ===============
! 
_Method_P_Kernel_Mutex_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_4,r1
	push	r1
	mov	1,r1
_Label_2974:
	push	r0
	sub	r1,1,r1
	bne	_Label_2974
	mov	387,r13		! source line 387
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	388,r13		! source line 388
	mov	"\0\0RE",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_841		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_841
!	jmp	_Label_840
_Label_840:
!   _temp_839 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_842
_Label_841:
!   _temp_839 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_842:
!   ReturnResult: _temp_839  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_4:
	.word	_sourceFileName
	.word	_Label_843
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_844
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_845
	.word	-9
	.word	1
	.word	0
_Label_843:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"IsHeldByCurrentThread\0"
	.align
_Label_844:
	.ascii	"Pself\0"
	.align
_Label_845:
	.byte	'C'
	.ascii	"_temp_839\0"
	.align
! 
! ===============  CLASS Condition  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Condition:
	.word	_Label_846
	jmp	_Method_P_Kernel_Condition_1	! 4:	Init
	jmp	_Method_P_Kernel_Condition_2	! 8:	Wait
	jmp	_Method_P_Kernel_Condition_3	! 12:	Signal
	jmp	_Method_P_Kernel_Condition_4	! 16:	Broadcast
	.word	0
! 
! Class descriptor:
! 
_Label_846:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_847
	.word	_sourceFileName
	.word	152		! line number
	.word	16		! size of instances, in bytes
	.word	_P_Kernel_Condition
	.word	_P_System_Object
	.word	0
_Label_847:
	.ascii	"Condition\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Condition_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_1,r1
	push	r1
	mov	1,r1
_Label_2975:
	push	r0
	sub	r1,1,r1
	bne	_Label_2975
	mov	1294,r13		! source line 1294
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1295,r13		! source line 1295
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingThreads = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,4,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   waitingThreads = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! RETURN STATEMENT...
	mov	1295,r13		! source line 1295
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_1:
	.word	_sourceFileName
	.word	_Label_849
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_850
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_851
	.word	-12
	.word	4
	.word	0
_Label_849:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_850:
	.ascii	"Pself\0"
	.align
_Label_851:
	.byte	'?'
	.ascii	"_temp_848\0"
	.align
! 
! ===============  METHOD Wait  ===============
! 
_Method_P_Kernel_Condition_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_2,r1
	push	r1
	mov	6,r1
_Label_2976:
	push	r0
	sub	r1,1,r1
	bne	_Label_2976
	mov	1300,r13		! source line 1300
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1303,r13		! source line 1303
	mov	"\0\0IF",r10
	mov	1303,r13		! source line 1303
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_854  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_854 then goto _Label_853 else goto _Label_852
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_852
	jmp	_Label_853
_Label_852:
! THEN...
	mov	1304,r13		! source line 1304
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_855 = _StringConst_71
	set	_StringConst_71,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_855  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1304,r13		! source line 1304
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_853:
! ASSIGNMENT STATEMENT...
	mov	1306,r13		! source line 1306
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1306,r13		! source line 1306
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! SEND STATEMENT...
	mov	1307,r13		! source line 1307
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Unlock
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	1308,r13		! source line 1308
	mov	"\0\0SE",r10
!   _temp_856 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	1309,r13		! source line 1309
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! SEND STATEMENT...
	mov	1310,r13		! source line 1310
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Lock
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1311,r13		! source line 1311
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1311,r13		! source line 1311
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	1311,r13		! source line 1311
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_2:
	.word	_sourceFileName
	.word	_Label_857
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_858
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_859
	.word	12
	.word	4
	.word	_Label_860
	.word	-16
	.word	4
	.word	_Label_861
	.word	-20
	.word	4
	.word	_Label_862
	.word	-9
	.word	1
	.word	_Label_863
	.word	-24
	.word	4
	.word	0
_Label_857:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_858:
	.ascii	"Pself\0"
	.align
_Label_859:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_860:
	.byte	'?'
	.ascii	"_temp_856\0"
	.align
_Label_861:
	.byte	'?'
	.ascii	"_temp_855\0"
	.align
_Label_862:
	.byte	'C'
	.ascii	"_temp_854\0"
	.align
_Label_863:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  METHOD Signal  ===============
! 
_Method_P_Kernel_Condition_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_3,r1
	push	r1
	mov	9,r1
_Label_2977:
	push	r0
	sub	r1,1,r1
	bne	_Label_2977
	mov	1316,r13		! source line 1316
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1320,r13		! source line 1320
	mov	"\0\0IF",r10
	mov	1320,r13		! source line 1320
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_866  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_866 then goto _Label_865 else goto _Label_864
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_864
	jmp	_Label_865
_Label_864:
! THEN...
	mov	1321,r13		! source line 1321
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_867 = _StringConst_72
	set	_StringConst_72,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_867  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1321,r13		! source line 1321
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_865:
! ASSIGNMENT STATEMENT...
	mov	1323,r13		! source line 1323
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1323,r13		! source line 1323
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! ASSIGNMENT STATEMENT...
	mov	1324,r13		! source line 1324
	mov	"\0\0AS",r10
	mov	1324,r13		! source line 1324
	mov	"\0\0SE",r10
!   _temp_868 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	1325,r13		! source line 1325
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_870		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_870
!	jmp	_Label_869
_Label_869:
! THEN...
	mov	1326,r13		! source line 1326
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1326,r13		! source line 1326
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_871 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_871 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1327,r13		! source line 1327
	mov	"\0\0SE",r10
!   _temp_872 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_870:
! ASSIGNMENT STATEMENT...
	mov	1329,r13		! source line 1329
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1329,r13		! source line 1329
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	1329,r13		! source line 1329
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_3:
	.word	_sourceFileName
	.word	_Label_873
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_874
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_875
	.word	12
	.word	4
	.word	_Label_876
	.word	-16
	.word	4
	.word	_Label_877
	.word	-20
	.word	4
	.word	_Label_878
	.word	-24
	.word	4
	.word	_Label_879
	.word	-28
	.word	4
	.word	_Label_880
	.word	-9
	.word	1
	.word	_Label_881
	.word	-32
	.word	4
	.word	_Label_882
	.word	-36
	.word	4
	.word	0
_Label_873:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_874:
	.ascii	"Pself\0"
	.align
_Label_875:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_876:
	.byte	'?'
	.ascii	"_temp_872\0"
	.align
_Label_877:
	.byte	'?'
	.ascii	"_temp_871\0"
	.align
_Label_878:
	.byte	'?'
	.ascii	"_temp_868\0"
	.align
_Label_879:
	.byte	'?'
	.ascii	"_temp_867\0"
	.align
_Label_880:
	.byte	'C'
	.ascii	"_temp_866\0"
	.align
_Label_881:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_882:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD Broadcast  ===============
! 
_Method_P_Kernel_Condition_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_4,r1
	push	r1
	mov	9,r1
_Label_2978:
	push	r0
	sub	r1,1,r1
	bne	_Label_2978
	mov	1334,r13		! source line 1334
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1338,r13		! source line 1338
	mov	"\0\0IF",r10
	mov	1338,r13		! source line 1338
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_885  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_885 then goto _Label_884 else goto _Label_883
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_883
	jmp	_Label_884
_Label_883:
! THEN...
	mov	1339,r13		! source line 1339
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_886 = _StringConst_73
	set	_StringConst_73,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_886  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1339,r13		! source line 1339
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_884:
! ASSIGNMENT STATEMENT...
	mov	1341,r13		! source line 1341
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1341,r13		! source line 1341
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! WHILE STATEMENT...
	mov	1342,r13		! source line 1342
	mov	"\0\0WH",r10
_Label_887:
!	jmp	_Label_888
_Label_888:
	mov	1342,r13		! source line 1342
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1343,r13		! source line 1343
	mov	"\0\0AS",r10
	mov	1343,r13		! source line 1343
	mov	"\0\0SE",r10
!   _temp_890 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	1344,r13		! source line 1344
	mov	"\0\0IF",r10
!   if intIsZero (t) then goto _Label_891
	load	[r14+-36],r1
	cmp	r1,r0
	be	_Label_891
	jmp	_Label_892
_Label_891:
! THEN...
	mov	1345,r13		! source line 1345
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	1345,r13		! source line 1345
	mov	"\0\0BR",r10
	jmp	_Label_889
! END IF...
_Label_892:
! ASSIGNMENT STATEMENT...
	mov	1347,r13		! source line 1347
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_893 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_893 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1348,r13		! source line 1348
	mov	"\0\0SE",r10
!   _temp_894 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_887
_Label_889:
! ASSIGNMENT STATEMENT...
	mov	1350,r13		! source line 1350
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1350,r13		! source line 1350
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	1350,r13		! source line 1350
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_4:
	.word	_sourceFileName
	.word	_Label_895
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_896
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_897
	.word	12
	.word	4
	.word	_Label_898
	.word	-16
	.word	4
	.word	_Label_899
	.word	-20
	.word	4
	.word	_Label_900
	.word	-24
	.word	4
	.word	_Label_901
	.word	-28
	.word	4
	.word	_Label_902
	.word	-9
	.word	1
	.word	_Label_903
	.word	-32
	.word	4
	.word	_Label_904
	.word	-36
	.word	4
	.word	0
_Label_895:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Broadcast\0"
	.align
_Label_896:
	.ascii	"Pself\0"
	.align
_Label_897:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_898:
	.byte	'?'
	.ascii	"_temp_894\0"
	.align
_Label_899:
	.byte	'?'
	.ascii	"_temp_893\0"
	.align
_Label_900:
	.byte	'?'
	.ascii	"_temp_890\0"
	.align
_Label_901:
	.byte	'?'
	.ascii	"_temp_886\0"
	.align
_Label_902:
	.byte	'C'
	.ascii	"_temp_885\0"
	.align
_Label_903:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_904:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  CLASS Thread  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Thread:
	.word	_Label_905
	jmp	_Method_P_Kernel_Thread_1	! 4:	Init
	jmp	_Method_P_Kernel_Thread_2	! 8:	Fork
	jmp	_Method_P_Kernel_Thread_3	! 12:	Yield
	jmp	_Method_P_Kernel_Thread_4	! 16:	Sleep
	jmp	_Method_P_Kernel_Thread_5	! 20:	CheckOverflow
	jmp	_Method_P_Kernel_Thread_6	! 24:	Print
	.word	0
! 
! Class descriptor:
! 
_Label_905:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_906
	.word	_sourceFileName
	.word	165		! line number
	.word	4164		! size of instances, in bytes
	.word	_P_Kernel_Thread
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_906:
	.ascii	"Thread\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Thread_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_1,r1
	push	r1
	mov	45,r1
_Label_2979:
	push	r0
	sub	r1,1,r1
	bne	_Label_2979
	mov	1361,r13		! source line 1361
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1366,r13		! source line 1366
	mov	"\0\0AS",r10
!   name = n		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+72]
! ASSIGNMENT STATEMENT...
	mov	1367,r13		! source line 1367
	mov	"\0\0AS",r10
!   status = 1		(4 bytes)
	mov	1,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! ASSIGNMENT STATEMENT...
	mov	1369,r13		! source line 1369
	mov	"\0\0AS",r10
!   _temp_907 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_907) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *_temp_907 = 1000  (sizeInBytes=4)
	mov	1000,r1
	load	[r14+-188],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1370,r13		! source line 1370
	mov	"\0\0AS",r10
!   _temp_908 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-184]
!   Move address of _temp_908 [0 ] into _temp_909
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-184],r1
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
	store	r2,[r14+-180]
!   Data Move: *_temp_909 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-180],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1371,r13		! source line 1371
	mov	"\0\0AS",r10
!   _temp_910 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-176]
!   Move address of _temp_910 [999 ] into _temp_911
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-176],r1
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
	store	r2,[r14+-172]
!   Data Move: *_temp_911 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-172],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1372,r13		! source line 1372
	mov	"\0\0AS",r10
!   _temp_912 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-168]
!   Move address of _temp_912 [999 ] into _temp_913
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-168],r1
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
	store	r2,[r14+-164]
!   stackTop = _temp_913		(4 bytes)
	load	[r14+-164],r1
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	1373,r13		! source line 1373
	mov	"\0\0AS",r10
!   _temp_914 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-160]
!   NEW ARRAY Constructor...
!   _temp_916 = &_temp_915
	add	r14,-156,r1
	store	r1,[r14+-100]
!   _temp_916 = _temp_916 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   Next value...
	mov	13,r1
	store	r1,[r14+-96]
_Label_918:
!   Data Move: *_temp_916 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-100],r2
	store	r1,[r2]
!   _temp_916 = _temp_916 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   _temp_917 = _temp_917 + -1
	load	[r14+-96],r1
	add	r1,-1,r1
	store	r1,[r14+-96]
!   if intNotZero (_temp_917) then goto _Label_918
	load	[r14+-96],r1
	cmp	r1,r0
	bne	_Label_918
!   Initialize the array size...
	mov	13,r1
	store	r1,[r14+-156]
!   _temp_919 = &_temp_915
	add	r14,-156,r1
	store	r1,[r14+-92]
!   make sure array has size 13
	load	[r14+-160],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,0
	be	_Label_2980
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_2980:
!   make sure array has size 13
	load	[r14+-92],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_914 = *_temp_919  (sizeInBytes=56)
	load	[r14+-92],r5
	load	[r14+-160],r4
	mov	14,r3
_Label_2981:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2981
! ASSIGNMENT STATEMENT...
	mov	1374,r13		! source line 1374
	mov	"\0\0AS",r10
!   isUserThread = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+4092]
! ASSIGNMENT STATEMENT...
	mov	1375,r13		! source line 1375
	mov	"\0\0AS",r10
!   _temp_920 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-88]
!   NEW ARRAY Constructor...
!   _temp_922 = &_temp_921
	add	r14,-84,r1
	store	r1,[r14+-20]
!   _temp_922 = _temp_922 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	15,r1
	store	r1,[r14+-16]
_Label_924:
!   Data Move: *_temp_922 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_922 = _temp_922 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_923 = _temp_923 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_923) then goto _Label_924
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_924
!   Initialize the array size...
	mov	15,r1
	store	r1,[r14+-84]
!   _temp_925 = &_temp_921
	add	r14,-84,r1
	store	r1,[r14+-12]
!   make sure array has size 15
	load	[r14+-88],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,0
	be	_Label_2982
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_2982:
!   make sure array has size 15
	load	[r14+-12],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_920 = *_temp_925  (sizeInBytes=64)
	load	[r14+-12],r5
	load	[r14+-88],r4
	mov	16,r3
_Label_2983:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2983
! RETURN STATEMENT...
	mov	1375,r13		! source line 1375
	mov	"\0\0RE",r10
	add	r15,184,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_1:
	.word	_sourceFileName
	.word	_Label_926
	.word	8		! total size of parameters
	.word	180		! frame size = 180
	.word	_Label_927
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_928
	.word	12
	.word	4
	.word	_Label_929
	.word	-12
	.word	4
	.word	_Label_930
	.word	-16
	.word	4
	.word	_Label_931
	.word	-20
	.word	4
	.word	_Label_932
	.word	-84
	.word	64
	.word	_Label_933
	.word	-88
	.word	4
	.word	_Label_934
	.word	-92
	.word	4
	.word	_Label_935
	.word	-96
	.word	4
	.word	_Label_936
	.word	-100
	.word	4
	.word	_Label_937
	.word	-156
	.word	56
	.word	_Label_938
	.word	-160
	.word	4
	.word	_Label_939
	.word	-164
	.word	4
	.word	_Label_940
	.word	-168
	.word	4
	.word	_Label_941
	.word	-172
	.word	4
	.word	_Label_942
	.word	-176
	.word	4
	.word	_Label_943
	.word	-180
	.word	4
	.word	_Label_944
	.word	-184
	.word	4
	.word	_Label_945
	.word	-188
	.word	4
	.word	0
_Label_926:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_927:
	.ascii	"Pself\0"
	.align
_Label_928:
	.byte	'P'
	.ascii	"n\0"
	.align
_Label_929:
	.byte	'?'
	.ascii	"_temp_925\0"
	.align
_Label_930:
	.byte	'?'
	.ascii	"_temp_923\0"
	.align
_Label_931:
	.byte	'?'
	.ascii	"_temp_922\0"
	.align
_Label_932:
	.byte	'?'
	.ascii	"_temp_921\0"
	.align
_Label_933:
	.byte	'?'
	.ascii	"_temp_920\0"
	.align
_Label_934:
	.byte	'?'
	.ascii	"_temp_919\0"
	.align
_Label_935:
	.byte	'?'
	.ascii	"_temp_917\0"
	.align
_Label_936:
	.byte	'?'
	.ascii	"_temp_916\0"
	.align
_Label_937:
	.byte	'?'
	.ascii	"_temp_915\0"
	.align
_Label_938:
	.byte	'?'
	.ascii	"_temp_914\0"
	.align
_Label_939:
	.byte	'?'
	.ascii	"_temp_913\0"
	.align
_Label_940:
	.byte	'?'
	.ascii	"_temp_912\0"
	.align
_Label_941:
	.byte	'?'
	.ascii	"_temp_911\0"
	.align
_Label_942:
	.byte	'?'
	.ascii	"_temp_910\0"
	.align
_Label_943:
	.byte	'?'
	.ascii	"_temp_909\0"
	.align
_Label_944:
	.byte	'?'
	.ascii	"_temp_908\0"
	.align
_Label_945:
	.byte	'?'
	.ascii	"_temp_907\0"
	.align
! 
! ===============  METHOD Fork  ===============
! 
_Method_P_Kernel_Thread_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_2,r1
	push	r1
	mov	7,r1
_Label_2984:
	push	r0
	sub	r1,1,r1
	bne	_Label_2984
	mov	1380,r13		! source line 1380
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1391,r13		! source line 1391
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1391,r13		! source line 1391
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! ASSIGNMENT STATEMENT...
	mov	1393,r13		! source line 1393
	mov	"\0\0AS",r10
!   initialFunction = fun		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+80]
! ASSIGNMENT STATEMENT...
	mov	1394,r13		! source line 1394
	mov	"\0\0AS",r10
!   initialArgument = arg		(4 bytes)
	load	[r14+16],r1
	load	[r14+8],r2
	store	r1,[r2+84]
! ASSIGNMENT STATEMENT...
	mov	1395,r13		! source line 1395
	mov	"\0\0AS",r10
!   stackTop = stackTop - 4		(int)
	load	[r14+8],r1
	load	[r1+68],r1
	mov	4,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	1396,r13		! source line 1396
	mov	"\0\0AS",r10
!   if intIsZero (stackTop) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_946 = ThreadStartUp
	set	ThreadStartUp,r1
	store	r1,[r14+-20]
!   Data Move: *stackTop = _temp_946  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r14+8],r2
	load	[r2+68],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1397,r13		! source line 1397
	mov	"\0\0AS",r10
!   status = 2		(4 bytes)
	mov	2,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! SEND STATEMENT...
	mov	1398,r13		! source line 1398
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   _temp_948 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_947  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1399,r13		! source line 1399
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1399,r13		! source line 1399
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	1399,r13		! source line 1399
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_2:
	.word	_sourceFileName
	.word	_Label_949
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_950
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_951
	.word	12
	.word	4
	.word	_Label_952
	.word	16
	.word	4
	.word	_Label_953
	.word	-12
	.word	4
	.word	_Label_954
	.word	-16
	.word	4
	.word	_Label_955
	.word	-20
	.word	4
	.word	_Label_956
	.word	-24
	.word	4
	.word	_Label_957
	.word	-28
	.word	4
	.word	0
_Label_949:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Fork\0"
	.align
_Label_950:
	.ascii	"Pself\0"
	.align
_Label_951:
	.byte	'P'
	.ascii	"fun\0"
	.align
_Label_952:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_953:
	.byte	'?'
	.ascii	"_temp_948\0"
	.align
_Label_954:
	.byte	'?'
	.ascii	"_temp_947\0"
	.align
_Label_955:
	.byte	'?'
	.ascii	"_temp_946\0"
	.align
_Label_956:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_957:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  METHOD Yield  ===============
! 
_Method_P_Kernel_Thread_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_3,r1
	push	r1
	mov	11,r1
_Label_2985:
	push	r0
	sub	r1,1,r1
	bne	_Label_2985
	mov	1404,r13		! source line 1404
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1420,r13		! source line 1420
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if _temp_960 == _P_Kernel_currentThread then goto _Label_959		(int)
	load	[r14+-32],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_959
!	jmp	_Label_958
_Label_958:
! THEN...
	mov	1421,r13		! source line 1421
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_961 = _StringConst_74
	set	_StringConst_74,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_961  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1421,r13		! source line 1421
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_959:
! ASSIGNMENT STATEMENT...
	mov	1423,r13		! source line 1423
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1423,r13		! source line 1423
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1427,r13		! source line 1427
	mov	"\0\0AS",r10
	mov	1427,r13		! source line 1427
	mov	"\0\0SE",r10
!   _temp_962 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=nextTh  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	1428,r13		! source line 1428
	mov	"\0\0IF",r10
!   if nextTh == 0 then goto _Label_964		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_964
!	jmp	_Label_963
_Label_963:
! THEN...
	mov	1432,r13		! source line 1432
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	1432,r13		! source line 1432
	mov	"\0\0IF",r10
!   if status != 4 then goto _Label_966		(int)
	load	[r14+8],r1
	load	[r1+76],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_966
!	jmp	_Label_965
_Label_965:
! THEN...
	mov	1433,r13		! source line 1433
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_967 = _StringConst_75
	set	_StringConst_75,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_967  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1433,r13		! source line 1433
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_966:
! ASSIGNMENT STATEMENT...
	mov	1435,r13		! source line 1435
	mov	"\0\0AS",r10
!   status = 2		(4 bytes)
	mov	2,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! SEND STATEMENT...
	mov	1436,r13		! source line 1436
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   _temp_969 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_968  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=nextTh  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1437,r13		! source line 1437
	mov	"\0\0CA",r10
	call	_P_Kernel_Run
! END IF...
_Label_964:
! ASSIGNMENT STATEMENT...
	mov	1439,r13		! source line 1439
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1439,r13		! source line 1439
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
! RETURN STATEMENT...
	mov	1439,r13		! source line 1439
	mov	"\0\0RE",r10
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_3:
	.word	_sourceFileName
	.word	_Label_970
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_971
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_972
	.word	-12
	.word	4
	.word	_Label_973
	.word	-16
	.word	4
	.word	_Label_974
	.word	-20
	.word	4
	.word	_Label_975
	.word	-24
	.word	4
	.word	_Label_976
	.word	-28
	.word	4
	.word	_Label_977
	.word	-32
	.word	4
	.word	_Label_978
	.word	-36
	.word	4
	.word	_Label_979
	.word	-40
	.word	4
	.word	_Label_980
	.word	-44
	.word	4
	.word	0
_Label_970:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Yield\0"
	.align
_Label_971:
	.ascii	"Pself\0"
	.align
_Label_972:
	.byte	'?'
	.ascii	"_temp_969\0"
	.align
_Label_973:
	.byte	'?'
	.ascii	"_temp_968\0"
	.align
_Label_974:
	.byte	'?'
	.ascii	"_temp_967\0"
	.align
_Label_975:
	.byte	'?'
	.ascii	"_temp_962\0"
	.align
_Label_976:
	.byte	'?'
	.ascii	"_temp_961\0"
	.align
_Label_977:
	.byte	'?'
	.ascii	"_temp_960\0"
	.align
_Label_978:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
_Label_979:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_980:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  METHOD Sleep  ===============
! 
_Method_P_Kernel_Thread_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_4,r1
	push	r1
	mov	7,r1
_Label_2986:
	push	r0
	sub	r1,1,r1
	bne	_Label_2986
	mov	1444,r13		! source line 1444
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1456,r13		! source line 1456
	mov	"\0\0IF",r10
!   if _P_Kernel_currentInterruptStatus == 2 then goto _Label_982		(int)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_982
!	jmp	_Label_981
_Label_981:
! THEN...
	mov	1457,r13		! source line 1457
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_983 = _StringConst_76
	set	_StringConst_76,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_983  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1457,r13		! source line 1457
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_982:
! IF STATEMENT...
	mov	1460,r13		! source line 1460
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if _temp_986 == _P_Kernel_currentThread then goto _Label_985		(int)
	load	[r14+-24],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_985
!	jmp	_Label_984
_Label_984:
! THEN...
	mov	1461,r13		! source line 1461
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_987 = _StringConst_77
	set	_StringConst_77,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_987  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1461,r13		! source line 1461
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_985:
! ASSIGNMENT STATEMENT...
	mov	1466,r13		! source line 1466
	mov	"\0\0AS",r10
!   status = 4		(4 bytes)
	mov	4,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! ASSIGNMENT STATEMENT...
	mov	1467,r13		! source line 1467
	mov	"\0\0AS",r10
	mov	1467,r13		! source line 1467
	mov	"\0\0SE",r10
!   _temp_988 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-16]
!   Send message Remove
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=nextTh  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	1468,r13		! source line 1468
	mov	"\0\0IF",r10
!   if intIsZero (nextTh) then goto _Label_989
	load	[r14+-32],r1
	cmp	r1,r0
	be	_Label_989
	jmp	_Label_990
_Label_989:
! THEN...
	mov	1469,r13		! source line 1469
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_991 = _StringConst_78
	set	_StringConst_78,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_991  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1469,r13		! source line 1469
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_990:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=nextTh  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1471,r13		! source line 1471
	mov	"\0\0CA",r10
	call	_P_Kernel_Run
! RETURN STATEMENT...
	mov	1471,r13		! source line 1471
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_4:
	.word	_sourceFileName
	.word	_Label_992
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_993
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_994
	.word	-12
	.word	4
	.word	_Label_995
	.word	-16
	.word	4
	.word	_Label_996
	.word	-20
	.word	4
	.word	_Label_997
	.word	-24
	.word	4
	.word	_Label_998
	.word	-28
	.word	4
	.word	_Label_999
	.word	-32
	.word	4
	.word	0
_Label_992:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Sleep\0"
	.align
_Label_993:
	.ascii	"Pself\0"
	.align
_Label_994:
	.byte	'?'
	.ascii	"_temp_991\0"
	.align
_Label_995:
	.byte	'?'
	.ascii	"_temp_988\0"
	.align
_Label_996:
	.byte	'?'
	.ascii	"_temp_987\0"
	.align
_Label_997:
	.byte	'?'
	.ascii	"_temp_986\0"
	.align
_Label_998:
	.byte	'?'
	.ascii	"_temp_983\0"
	.align
_Label_999:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
! 
! ===============  METHOD CheckOverflow  ===============
! 
_Method_P_Kernel_Thread_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_5,r1
	push	r1
	mov	9,r1
_Label_2987:
	push	r0
	sub	r1,1,r1
	bne	_Label_2987
	mov	1476,r13		! source line 1476
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1482,r13		! source line 1482
	mov	"\0\0IF",r10
!   _temp_1003 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-36]
!   Move address of _temp_1003 [0 ] into _temp_1004
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
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
	store	r2,[r14+-32]
!   Data Move: _temp_1002 = *_temp_1004  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if _temp_1002 == 606348324 then goto _Label_1001		(int)
	load	[r14+-40],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_1001
!	jmp	_Label_1000
_Label_1000:
! THEN...
	mov	1483,r13		! source line 1483
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1005 = _StringConst_79
	set	_StringConst_79,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1005  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1483,r13		! source line 1483
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
	jmp	_Label_1006
_Label_1001:
! ELSE...
	mov	1484,r13		! source line 1484
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1484,r13		! source line 1484
	mov	"\0\0IF",r10
!   _temp_1010 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_1010 [999 ] into _temp_1011
!     make sure index expr is >= 0
	mov	999,r2
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
!   Data Move: _temp_1009 = *_temp_1011  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_1009 == 606348324 then goto _Label_1008		(int)
	load	[r14+-24],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_1008
!	jmp	_Label_1007
_Label_1007:
! THEN...
	mov	1485,r13		! source line 1485
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1012 = _StringConst_80
	set	_StringConst_80,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1012  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1485,r13		! source line 1485
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1008:
! END IF...
_Label_1006:
! RETURN STATEMENT...
	mov	1482,r13		! source line 1482
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_5:
	.word	_sourceFileName
	.word	_Label_1013
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1014
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1015
	.word	-12
	.word	4
	.word	_Label_1016
	.word	-16
	.word	4
	.word	_Label_1017
	.word	-20
	.word	4
	.word	_Label_1018
	.word	-24
	.word	4
	.word	_Label_1019
	.word	-28
	.word	4
	.word	_Label_1020
	.word	-32
	.word	4
	.word	_Label_1021
	.word	-36
	.word	4
	.word	_Label_1022
	.word	-40
	.word	4
	.word	0
_Label_1013:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"CheckOverflow\0"
	.align
_Label_1014:
	.ascii	"Pself\0"
	.align
_Label_1015:
	.byte	'?'
	.ascii	"_temp_1012\0"
	.align
_Label_1016:
	.byte	'?'
	.ascii	"_temp_1011\0"
	.align
_Label_1017:
	.byte	'?'
	.ascii	"_temp_1010\0"
	.align
_Label_1018:
	.byte	'?'
	.ascii	"_temp_1009\0"
	.align
_Label_1019:
	.byte	'?'
	.ascii	"_temp_1005\0"
	.align
_Label_1020:
	.byte	'?'
	.ascii	"_temp_1004\0"
	.align
_Label_1021:
	.byte	'?'
	.ascii	"_temp_1003\0"
	.align
_Label_1022:
	.byte	'?'
	.ascii	"_temp_1002\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_Thread_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_6,r1
	push	r1
	mov	49,r1
_Label_2988:
	push	r0
	sub	r1,1,r1
	bne	_Label_2988
	mov	1491,r13		! source line 1491
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1497,r13		! source line 1497
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1497,r13		! source line 1497
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-196]
! CALL STATEMENT...
!   _temp_1023 = _StringConst_81
	set	_StringConst_81,r1
	store	r1,[r14+-188]
!   Prepare Argument: offset=8  value=_temp_1023  sizeInBytes=4
	load	[r14+-188],r1
	store	r1,[r15+0]
!   Call the function
	mov	1498,r13		! source line 1498
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=name  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+72],r1
	store	r1,[r15+0]
!   Call the function
	mov	1499,r13		! source line 1499
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1024 = _StringConst_82
	set	_StringConst_82,r1
	store	r1,[r14+-184]
!   Prepare Argument: offset=8  value=_temp_1024  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Call the function
	mov	1500,r13		! source line 1500
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=8  value=_temp_1025  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Call the function
	mov	1501,r13		! source line 1501
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1026 = _StringConst_83
	set	_StringConst_83,r1
	store	r1,[r14+-176]
!   Prepare Argument: offset=8  value=_temp_1026  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Call the function
	mov	1502,r13		! source line 1502
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1027 = _StringConst_84
	set	_StringConst_84,r1
	store	r1,[r14+-172]
!   Prepare Argument: offset=8  value=_temp_1027  sizeInBytes=4
	load	[r14+-172],r1
	store	r1,[r15+0]
!   Call the function
	mov	1503,r13		! source line 1503
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1504,r13		! source line 1504
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1032 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-168]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1033 = 12		(4 bytes)
	mov	12,r1
	store	r1,[r14+-164]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1032  (sizeInBytes=4)
	load	[r14+-168],r1
	store	r1,[r14+-192]
_Label_1028:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1033 then goto _Label_1031		
	load	[r14+-192],r1
	load	[r14+-164],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1031
_Label_1029:
	mov	1504,r13		! source line 1504
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1034 = _StringConst_85
	set	_StringConst_85,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_1034  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	1505,r13		! source line 1505
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1035 = i + 2		(int)
	load	[r14+-192],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_1035  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	1506,r13		! source line 1506
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1036 = _StringConst_86
	set	_StringConst_86,r1
	store	r1,[r14+-152]
!   Prepare Argument: offset=8  value=_temp_1036  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Call the function
	mov	1507,r13		! source line 1507
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1038 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-144]
!   Move address of _temp_1038 [i ] into _temp_1039
!     make sure index expr is >= 0
	load	[r14+-192],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-144],r1
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
	store	r2,[r14+-140]
!   Data Move: _temp_1037 = *_temp_1039  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1037  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	1508,r13		! source line 1508
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1040 = _StringConst_87
	set	_StringConst_87,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=_temp_1040  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	1509,r13		! source line 1509
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1042 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-128]
!   Move address of _temp_1042 [i ] into _temp_1043
!     make sure index expr is >= 0
	load	[r14+-192],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-128],r1
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
	store	r2,[r14+-124]
!   Data Move: _temp_1041 = *_temp_1043  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1041  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	1510,r13		! source line 1510
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1044 = _StringConst_88
	set	_StringConst_88,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_1044  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	1511,r13		! source line 1511
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1030:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_1028
! END FOR
_Label_1031:
! CALL STATEMENT...
!   _temp_1045 = _StringConst_89
	set	_StringConst_89,r1
	store	r1,[r14+-116]
!   _temp_1046 = stackTop		(4 bytes)
	load	[r14+8],r1
	load	[r1+68],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1045  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1046  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Call the function
	mov	1513,r13		! source line 1513
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_1047 = _StringConst_90
	set	_StringConst_90,r1
	store	r1,[r14+-108]
!   _temp_1049 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-100]
!   Move address of _temp_1049 [0 ] into _temp_1050
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-100],r1
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
	store	r2,[r14+-96]
!   _temp_1048 = _temp_1050		(4 bytes)
	load	[r14+-96],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1047  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1048  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+4]
!   Call the function
	mov	1514,r13		! source line 1514
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! SWITCH STATEMENT (using series of tests)...
	mov	1515,r13		! source line 1515
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   Branch to the right case label
	load	[r14+8],r1
	load	[r1+76],r1
	cmp	r1,1
	be	_Label_1053
	cmp	r1,2
	be	_Label_1054
	cmp	r1,3
	be	_Label_1055
	cmp	r1,4
	be	_Label_1056
	cmp	r1,5
	be	_Label_1057
	jmp	_Label_1051
! CASE 1...
_Label_1053:
! CALL STATEMENT...
!   _temp_1058 = _StringConst_91
	set	_StringConst_91,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_1058  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	1517,r13		! source line 1517
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	1518,r13		! source line 1518
	mov	"\0\0BR",r10
	jmp	_Label_1052
! CASE 2...
_Label_1054:
! CALL STATEMENT...
!   _temp_1059 = _StringConst_92
	set	_StringConst_92,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_1059  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	1520,r13		! source line 1520
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	1521,r13		! source line 1521
	mov	"\0\0BR",r10
	jmp	_Label_1052
! CASE 3...
_Label_1055:
! CALL STATEMENT...
!   _temp_1060 = _StringConst_93
	set	_StringConst_93,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1060  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	1523,r13		! source line 1523
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	1524,r13		! source line 1524
	mov	"\0\0BR",r10
	jmp	_Label_1052
! CASE 4...
_Label_1056:
! CALL STATEMENT...
!   _temp_1061 = _StringConst_94
	set	_StringConst_94,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_1061  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	1526,r13		! source line 1526
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	1527,r13		! source line 1527
	mov	"\0\0BR",r10
	jmp	_Label_1052
! CASE 5...
_Label_1057:
! CALL STATEMENT...
!   _temp_1062 = _StringConst_95
	set	_StringConst_95,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1062  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	1529,r13		! source line 1529
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	1530,r13		! source line 1530
	mov	"\0\0BR",r10
	jmp	_Label_1052
! DEFAULT CASE...
_Label_1051:
! CALL STATEMENT...
!   _temp_1063 = _StringConst_96
	set	_StringConst_96,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1063  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1532,r13		! source line 1532
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_1052:
! CALL STATEMENT...
!   _temp_1064 = _StringConst_97
	set	_StringConst_97,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_1064  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	1534,r13		! source line 1534
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=isUserThread  sizeInBytes=1
	load	[r14+8],r1
	loadb	[r1+4092],r1
	storeb	r1,[r15+0]
!   Call the function
	mov	1535,r13		! source line 1535
	mov	"\0\0CE",r10
	call	printBool
! CALL STATEMENT...
!   Call the function
	mov	1536,r13		! source line 1536
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_1065 = _StringConst_98
	set	_StringConst_98,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1065  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	1537,r13		! source line 1537
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1538,r13		! source line 1538
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1070 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-60]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1071 = 14		(4 bytes)
	mov	14,r1
	store	r1,[r14+-56]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1070  (sizeInBytes=4)
	load	[r14+-60],r1
	store	r1,[r14+-192]
_Label_1066:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1071 then goto _Label_1069		
	load	[r14+-192],r1
	load	[r14+-56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1069
_Label_1067:
	mov	1538,r13		! source line 1538
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1072 = _StringConst_99
	set	_StringConst_99,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1072  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	1539,r13		! source line 1539
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1073 = i + 1		(int)
	load	[r14+-192],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1073  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1540,r13		! source line 1540
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1074 = _StringConst_100
	set	_StringConst_100,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1074  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1541,r13		! source line 1541
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1076 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_1076 [i ] into _temp_1077
!     make sure index expr is >= 0
	load	[r14+-192],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
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
	store	r2,[r14+-32]
!   Data Move: _temp_1075 = *_temp_1077  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1075  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1542,r13		! source line 1542
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1078 = _StringConst_101
	set	_StringConst_101,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1078  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1543,r13		! source line 1543
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1080 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-20]
!   Move address of _temp_1080 [i ] into _temp_1081
!     make sure index expr is >= 0
	load	[r14+-192],r2
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
!   Data Move: _temp_1079 = *_temp_1081  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1079  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1544,r13		! source line 1544
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1082 = _StringConst_102
	set	_StringConst_102,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1082  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1545,r13		! source line 1545
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1068:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_1066
! END FOR
_Label_1069:
! ASSIGNMENT STATEMENT...
	mov	1547,r13		! source line 1547
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-196],r1
	store	r1,[r15+0]
!   Call the function
	mov	1547,r13		! source line 1547
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-196]
! RETURN STATEMENT...
	mov	1547,r13		! source line 1547
	mov	"\0\0RE",r10
	add	r15,200,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_6:
	.word	_sourceFileName
	.word	_Label_1083
	.word	4		! total size of parameters
	.word	196		! frame size = 196
	.word	_Label_1084
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1085
	.word	-12
	.word	4
	.word	_Label_1086
	.word	-16
	.word	4
	.word	_Label_1087
	.word	-20
	.word	4
	.word	_Label_1088
	.word	-24
	.word	4
	.word	_Label_1089
	.word	-28
	.word	4
	.word	_Label_1090
	.word	-32
	.word	4
	.word	_Label_1091
	.word	-36
	.word	4
	.word	_Label_1092
	.word	-40
	.word	4
	.word	_Label_1093
	.word	-44
	.word	4
	.word	_Label_1094
	.word	-48
	.word	4
	.word	_Label_1095
	.word	-52
	.word	4
	.word	_Label_1096
	.word	-56
	.word	4
	.word	_Label_1097
	.word	-60
	.word	4
	.word	_Label_1098
	.word	-64
	.word	4
	.word	_Label_1099
	.word	-68
	.word	4
	.word	_Label_1100
	.word	-72
	.word	4
	.word	_Label_1101
	.word	-76
	.word	4
	.word	_Label_1102
	.word	-80
	.word	4
	.word	_Label_1103
	.word	-84
	.word	4
	.word	_Label_1104
	.word	-88
	.word	4
	.word	_Label_1105
	.word	-92
	.word	4
	.word	_Label_1106
	.word	-96
	.word	4
	.word	_Label_1107
	.word	-100
	.word	4
	.word	_Label_1108
	.word	-104
	.word	4
	.word	_Label_1109
	.word	-108
	.word	4
	.word	_Label_1110
	.word	-112
	.word	4
	.word	_Label_1111
	.word	-116
	.word	4
	.word	_Label_1112
	.word	-120
	.word	4
	.word	_Label_1113
	.word	-124
	.word	4
	.word	_Label_1114
	.word	-128
	.word	4
	.word	_Label_1115
	.word	-132
	.word	4
	.word	_Label_1116
	.word	-136
	.word	4
	.word	_Label_1117
	.word	-140
	.word	4
	.word	_Label_1118
	.word	-144
	.word	4
	.word	_Label_1119
	.word	-148
	.word	4
	.word	_Label_1120
	.word	-152
	.word	4
	.word	_Label_1121
	.word	-156
	.word	4
	.word	_Label_1122
	.word	-160
	.word	4
	.word	_Label_1123
	.word	-164
	.word	4
	.word	_Label_1124
	.word	-168
	.word	4
	.word	_Label_1125
	.word	-172
	.word	4
	.word	_Label_1126
	.word	-176
	.word	4
	.word	_Label_1127
	.word	-180
	.word	4
	.word	_Label_1128
	.word	-184
	.word	4
	.word	_Label_1129
	.word	-188
	.word	4
	.word	_Label_1130
	.word	-192
	.word	4
	.word	_Label_1131
	.word	-196
	.word	4
	.word	0
_Label_1083:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1084:
	.ascii	"Pself\0"
	.align
_Label_1085:
	.byte	'?'
	.ascii	"_temp_1082\0"
	.align
_Label_1086:
	.byte	'?'
	.ascii	"_temp_1081\0"
	.align
_Label_1087:
	.byte	'?'
	.ascii	"_temp_1080\0"
	.align
_Label_1088:
	.byte	'?'
	.ascii	"_temp_1079\0"
	.align
_Label_1089:
	.byte	'?'
	.ascii	"_temp_1078\0"
	.align
_Label_1090:
	.byte	'?'
	.ascii	"_temp_1077\0"
	.align
_Label_1091:
	.byte	'?'
	.ascii	"_temp_1076\0"
	.align
_Label_1092:
	.byte	'?'
	.ascii	"_temp_1075\0"
	.align
_Label_1093:
	.byte	'?'
	.ascii	"_temp_1074\0"
	.align
_Label_1094:
	.byte	'?'
	.ascii	"_temp_1073\0"
	.align
_Label_1095:
	.byte	'?'
	.ascii	"_temp_1072\0"
	.align
_Label_1096:
	.byte	'?'
	.ascii	"_temp_1071\0"
	.align
_Label_1097:
	.byte	'?'
	.ascii	"_temp_1070\0"
	.align
_Label_1098:
	.byte	'?'
	.ascii	"_temp_1065\0"
	.align
_Label_1099:
	.byte	'?'
	.ascii	"_temp_1064\0"
	.align
_Label_1100:
	.byte	'?'
	.ascii	"_temp_1063\0"
	.align
_Label_1101:
	.byte	'?'
	.ascii	"_temp_1062\0"
	.align
_Label_1102:
	.byte	'?'
	.ascii	"_temp_1061\0"
	.align
_Label_1103:
	.byte	'?'
	.ascii	"_temp_1060\0"
	.align
_Label_1104:
	.byte	'?'
	.ascii	"_temp_1059\0"
	.align
_Label_1105:
	.byte	'?'
	.ascii	"_temp_1058\0"
	.align
_Label_1106:
	.byte	'?'
	.ascii	"_temp_1050\0"
	.align
_Label_1107:
	.byte	'?'
	.ascii	"_temp_1049\0"
	.align
_Label_1108:
	.byte	'?'
	.ascii	"_temp_1048\0"
	.align
_Label_1109:
	.byte	'?'
	.ascii	"_temp_1047\0"
	.align
_Label_1110:
	.byte	'?'
	.ascii	"_temp_1046\0"
	.align
_Label_1111:
	.byte	'?'
	.ascii	"_temp_1045\0"
	.align
_Label_1112:
	.byte	'?'
	.ascii	"_temp_1044\0"
	.align
_Label_1113:
	.byte	'?'
	.ascii	"_temp_1043\0"
	.align
_Label_1114:
	.byte	'?'
	.ascii	"_temp_1042\0"
	.align
_Label_1115:
	.byte	'?'
	.ascii	"_temp_1041\0"
	.align
_Label_1116:
	.byte	'?'
	.ascii	"_temp_1040\0"
	.align
_Label_1117:
	.byte	'?'
	.ascii	"_temp_1039\0"
	.align
_Label_1118:
	.byte	'?'
	.ascii	"_temp_1038\0"
	.align
_Label_1119:
	.byte	'?'
	.ascii	"_temp_1037\0"
	.align
_Label_1120:
	.byte	'?'
	.ascii	"_temp_1036\0"
	.align
_Label_1121:
	.byte	'?'
	.ascii	"_temp_1035\0"
	.align
_Label_1122:
	.byte	'?'
	.ascii	"_temp_1034\0"
	.align
_Label_1123:
	.byte	'?'
	.ascii	"_temp_1033\0"
	.align
_Label_1124:
	.byte	'?'
	.ascii	"_temp_1032\0"
	.align
_Label_1125:
	.byte	'?'
	.ascii	"_temp_1027\0"
	.align
_Label_1126:
	.byte	'?'
	.ascii	"_temp_1026\0"
	.align
_Label_1127:
	.byte	'?'
	.ascii	"_temp_1025\0"
	.align
_Label_1128:
	.byte	'?'
	.ascii	"_temp_1024\0"
	.align
_Label_1129:
	.byte	'?'
	.ascii	"_temp_1023\0"
	.align
_Label_1130:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1131:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  CLASS ThreadManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ThreadManager:
	.word	_Label_1132
	jmp	_Method_P_Kernel_ThreadManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ThreadManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ThreadManager_3	! 12:	GetANewThread
	jmp	_Method_P_Kernel_ThreadManager_4	! 16:	FreeThread
	.word	0
! 
! Class descriptor:
! 
_Label_1132:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1133
	.word	_sourceFileName
	.word	192		! line number
	.word	41696		! size of instances, in bytes
	.word	_P_Kernel_ThreadManager
	.word	_P_System_Object
	.word	0
_Label_1133:
	.ascii	"ThreadManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_ThreadManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_1,r1
	push	r1
	mov	11478,r1
_Label_2989:
	push	r0
	sub	r1,1,r1
	bne	_Label_2989
	mov	1602,r13		! source line 1602
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1134 = _StringConst_103
	set	_StringConst_103,r1
	set	-45908,r2
	store	r1,[r14+r2]
!   Prepare Argument: offset=8  value=_temp_1134  sizeInBytes=4
	set	-45908,r1
	load	[r14+r1],r1
	store	r1,[r15+0]
!   Call the function
	mov	1608,r13		! source line 1608
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1609,r13		! source line 1609
	mov	"\0\0AS",r10
!   _temp_1135 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	set	-45904,r2
	store	r1,[r14+r2]
!   NEW ARRAY Constructor...
!   _temp_1137 = &_temp_1136
	set	-45900,r1
	add	r14,r1,r1
	store	r1,[r14+-4256]
!   _temp_1137 = _temp_1137 + 4
	load	[r14+-4256],r1
	add	r1,4,r1
	store	r1,[r14+-4256]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1139 = zeros  (sizeInBytes=4164)
	add	r14,-4248,r4
	mov	1041,r3
_Label_2990:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2990
!   _temp_1139 = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	store	r1,[r14+-4248]
	mov	10,r1
	store	r1,[r14+-4252]
_Label_1141:
!   Data Move: *_temp_1137 = _temp_1139  (sizeInBytes=4164)
	add	r14,-4248,r5
	load	[r14+-4256],r4
	mov	1041,r3
_Label_2991:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2991
!   _temp_1137 = _temp_1137 + 4164
	load	[r14+-4256],r1
	add	r1,4164,r1
	store	r1,[r14+-4256]
!   _temp_1138 = _temp_1138 + -1
	load	[r14+-4252],r1
	add	r1,-1,r1
	store	r1,[r14+-4252]
!   if intNotZero (_temp_1138) then goto _Label_1141
	load	[r14+-4252],r1
	cmp	r1,r0
	bne	_Label_1141
!   Initialize the array size...
	mov	10,r1
	set	-45900,r2
	store	r1,[r14+r2]
!   _temp_1142 = &_temp_1136
	set	-45900,r1
	add	r14,r1,r1
	store	r1,[r14+-80]
!   make sure array has size 10
	set	-45904,r1
	load	[r14+r1],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_2992
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_2992:
!   make sure array has size 10
	load	[r14+-80],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1135 = *_temp_1142  (sizeInBytes=41644)
	load	[r14+-80],r5
	set	-45904,r4
	load	[r14+r4],r4
	mov	10411,r3
_Label_2993:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2993
! ASSIGNMENT STATEMENT...
	mov	1610,r13		! source line 1610
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: freeList = zeros  (sizeInBytes=12)
	set	41648,r11
	load	[r14+8],r4
	add	r4,r11,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   freeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r11
	set	41648,r2
	store	r1,[r11+r2]
! ASSIGNMENT STATEMENT...
	mov	1611,r13		! source line 1611
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: threadManagerLock = zeros  (sizeInBytes=20)
	set	41676,r11
	load	[r14+8],r4
	add	r4,r11,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   threadManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r11
	set	41676,r2
	store	r1,[r11+r2]
! ASSIGNMENT STATEMENT...
	mov	1612,r13		! source line 1612
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: threadBecameFree = zeros  (sizeInBytes=16)
	set	41660,r11
	load	[r14+8],r4
	add	r4,r11,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   threadBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r11
	set	41660,r2
	store	r1,[r11+r2]
! FOR STATEMENT...
	mov	1613,r13		! source line 1613
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1150 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1151 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1150  (sizeInBytes=4)
	load	[r14+-64],r1
	set	-45912,r2
	store	r1,[r14+r2]
_Label_1146:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1151 then goto _Label_1149		
	set	-45912,r1
	load	[r14+r1],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1149
_Label_1147:
	mov	1613,r13		! source line 1613
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	1614,r13		! source line 1614
	mov	"\0\0SE",r10
!   _temp_1152 = _StringConst_104
	set	_StringConst_104,r1
	store	r1,[r14+-56]
!   _temp_1153 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   Move address of _temp_1153 [i ] into _temp_1154
!     make sure index expr is >= 0
	set	-45912,r2
	load	[r14+r2],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-52],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_1152  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1615,r13		! source line 1615
	mov	"\0\0AS",r10
!   _temp_1155 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_1155 [i ] into _temp_1156
!     make sure index expr is >= 0
	set	-45912,r2
	load	[r14+r2],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-44],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-40]
!   _temp_1157 = _temp_1156 + 76
	load	[r14+-40],r1
	add	r1,76,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_1157 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-36],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1616,r13		! source line 1616
	mov	"\0\0SE",r10
!   _temp_1159 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1159 [i ] into _temp_1160
!     make sure index expr is >= 0
	set	-45912,r2
	load	[r14+r2],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-28],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   _temp_1158 = _temp_1160		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-32]
!   _temp_1161 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_1158  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1148:
!   i = i + 1
	set	-45912,r1
	load	[r14+r1],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	set	-45912,r2
	store	r1,[r14+r2]
	jmp	_Label_1146
! END FOR
_Label_1149:
! SEND STATEMENT...
	mov	1618,r13		! source line 1618
	mov	"\0\0SE",r10
!   _temp_1162 = &threadManagerLock
	set	41676,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-16]
!   Send message Init
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	1619,r13		! source line 1619
	mov	"\0\0SE",r10
!   _temp_1163 = &threadBecameFree
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Send message Init
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! RETURN STATEMENT...
	mov	1619,r13		! source line 1619
	mov	"\0\0RE",r10
	set	45916,r1
	add	r15,r1,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_1:
	.word	_sourceFileName
	.word	_Label_1164
	.word	4		! total size of parameters
	.word	45912		! frame size = 45912
	.word	_Label_1165
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1166
	.word	-12
	.word	4
	.word	_Label_1167
	.word	-16
	.word	4
	.word	_Label_1168
	.word	-20
	.word	4
	.word	_Label_1169
	.word	-24
	.word	4
	.word	_Label_1170
	.word	-28
	.word	4
	.word	_Label_1171
	.word	-32
	.word	4
	.word	_Label_1172
	.word	-36
	.word	4
	.word	_Label_1173
	.word	-40
	.word	4
	.word	_Label_1174
	.word	-44
	.word	4
	.word	_Label_1175
	.word	-48
	.word	4
	.word	_Label_1176
	.word	-52
	.word	4
	.word	_Label_1177
	.word	-56
	.word	4
	.word	_Label_1178
	.word	-60
	.word	4
	.word	_Label_1179
	.word	-64
	.word	4
	.word	_Label_1180
	.word	-68
	.word	4
	.word	_Label_1181
	.word	-72
	.word	4
	.word	_Label_1182
	.word	-76
	.word	4
	.word	_Label_1183
	.word	-80
	.word	4
	.word	_Label_1184
	.word	-84
	.word	4
	.word	_Label_1185
	.word	-4248
	.word	4164
	.word	_Label_1186
	.word	-4252
	.word	4
	.word	_Label_1187
	.word	-4256
	.word	4
	.word	_Label_1188
	.word	-45900
	.word	41644
	.word	_Label_1189
	.word	-45904
	.word	4
	.word	_Label_1190
	.word	-45908
	.word	4
	.word	_Label_1191
	.word	-45912
	.word	4
	.word	0
_Label_1164:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1165:
	.ascii	"Pself\0"
	.align
_Label_1166:
	.byte	'?'
	.ascii	"_temp_1163\0"
	.align
_Label_1167:
	.byte	'?'
	.ascii	"_temp_1162\0"
	.align
_Label_1168:
	.byte	'?'
	.ascii	"_temp_1161\0"
	.align
_Label_1169:
	.byte	'?'
	.ascii	"_temp_1160\0"
	.align
_Label_1170:
	.byte	'?'
	.ascii	"_temp_1159\0"
	.align
_Label_1171:
	.byte	'?'
	.ascii	"_temp_1158\0"
	.align
_Label_1172:
	.byte	'?'
	.ascii	"_temp_1157\0"
	.align
_Label_1173:
	.byte	'?'
	.ascii	"_temp_1156\0"
	.align
_Label_1174:
	.byte	'?'
	.ascii	"_temp_1155\0"
	.align
_Label_1175:
	.byte	'?'
	.ascii	"_temp_1154\0"
	.align
_Label_1176:
	.byte	'?'
	.ascii	"_temp_1153\0"
	.align
_Label_1177:
	.byte	'?'
	.ascii	"_temp_1152\0"
	.align
_Label_1178:
	.byte	'?'
	.ascii	"_temp_1151\0"
	.align
_Label_1179:
	.byte	'?'
	.ascii	"_temp_1150\0"
	.align
_Label_1180:
	.byte	'?'
	.ascii	"_temp_1145\0"
	.align
_Label_1181:
	.byte	'?'
	.ascii	"_temp_1144\0"
	.align
_Label_1182:
	.byte	'?'
	.ascii	"_temp_1143\0"
	.align
_Label_1183:
	.byte	'?'
	.ascii	"_temp_1142\0"
	.align
_Label_1184:
	.byte	'?'
	.ascii	"_temp_1140\0"
	.align
_Label_1185:
	.byte	'?'
	.ascii	"_temp_1139\0"
	.align
_Label_1186:
	.byte	'?'
	.ascii	"_temp_1138\0"
	.align
_Label_1187:
	.byte	'?'
	.ascii	"_temp_1137\0"
	.align
_Label_1188:
	.byte	'?'
	.ascii	"_temp_1136\0"
	.align
_Label_1189:
	.byte	'?'
	.ascii	"_temp_1135\0"
	.align
_Label_1190:
	.byte	'?'
	.ascii	"_temp_1134\0"
	.align
_Label_1191:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_ThreadManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_2,r1
	push	r1
	mov	15,r1
_Label_2994:
	push	r0
	sub	r1,1,r1
	bne	_Label_2994
	mov	1624,r13		! source line 1624
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1631,r13		! source line 1631
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1631,r13		! source line 1631
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! CALL STATEMENT...
!   _temp_1192 = _StringConst_105
	set	_StringConst_105,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1192  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	1632,r13		! source line 1632
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1633,r13		! source line 1633
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1197 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1198 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1197  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-56]
_Label_1193:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1198 then goto _Label_1196		
	load	[r14+-56],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1196
_Label_1194:
	mov	1633,r13		! source line 1633
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1199 = _StringConst_106
	set	_StringConst_106,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1199  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1634,r13		! source line 1634
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	1635,r13		! source line 1635
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1200 = _StringConst_107
	set	_StringConst_107,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1200  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1636,r13		! source line 1636
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1202 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1202 [i ] into _temp_1203
!     make sure index expr is >= 0
	load	[r14+-56],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-28],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   _temp_1201 = _temp_1203		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1201  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1637,r13		! source line 1637
	mov	"\0\0CA",r10
	call	_function_207_ThreadPrintShort
!   Increment the FOR-LOOP index variable and jump back
_Label_1195:
!   i = i + 1
	load	[r14+-56],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1193
! END FOR
_Label_1196:
! CALL STATEMENT...
!   _temp_1204 = _StringConst_108
	set	_StringConst_108,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1204  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1639,r13		! source line 1639
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1640,r13		! source line 1640
	mov	"\0\0SE",r10
!   _temp_1205 = _function_206_PrintObjectAddr
	set	_function_206_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1206 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1205  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	1641,r13		! source line 1641
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	1642,r13		! source line 1642
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1642,r13		! source line 1642
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! RETURN STATEMENT...
	mov	1642,r13		! source line 1642
	mov	"\0\0RE",r10
	add	r15,64,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_2:
	.word	_sourceFileName
	.word	_Label_1207
	.word	4		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_1208
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1209
	.word	-12
	.word	4
	.word	_Label_1210
	.word	-16
	.word	4
	.word	_Label_1211
	.word	-20
	.word	4
	.word	_Label_1212
	.word	-24
	.word	4
	.word	_Label_1213
	.word	-28
	.word	4
	.word	_Label_1214
	.word	-32
	.word	4
	.word	_Label_1215
	.word	-36
	.word	4
	.word	_Label_1216
	.word	-40
	.word	4
	.word	_Label_1217
	.word	-44
	.word	4
	.word	_Label_1218
	.word	-48
	.word	4
	.word	_Label_1219
	.word	-52
	.word	4
	.word	_Label_1220
	.word	-56
	.word	4
	.word	_Label_1221
	.word	-60
	.word	4
	.word	0
_Label_1207:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1208:
	.ascii	"Pself\0"
	.align
_Label_1209:
	.byte	'?'
	.ascii	"_temp_1206\0"
	.align
_Label_1210:
	.byte	'?'
	.ascii	"_temp_1205\0"
	.align
_Label_1211:
	.byte	'?'
	.ascii	"_temp_1204\0"
	.align
_Label_1212:
	.byte	'?'
	.ascii	"_temp_1203\0"
	.align
_Label_1213:
	.byte	'?'
	.ascii	"_temp_1202\0"
	.align
_Label_1214:
	.byte	'?'
	.ascii	"_temp_1201\0"
	.align
_Label_1215:
	.byte	'?'
	.ascii	"_temp_1200\0"
	.align
_Label_1216:
	.byte	'?'
	.ascii	"_temp_1199\0"
	.align
_Label_1217:
	.byte	'?'
	.ascii	"_temp_1198\0"
	.align
_Label_1218:
	.byte	'?'
	.ascii	"_temp_1197\0"
	.align
_Label_1219:
	.byte	'?'
	.ascii	"_temp_1192\0"
	.align
_Label_1220:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1221:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  METHOD GetANewThread  ===============
! 
_Method_P_Kernel_ThreadManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_3,r1
	push	r1
	mov	10,r1
_Label_2995:
	push	r0
	sub	r1,1,r1
	bne	_Label_2995
	mov	1647,r13		! source line 1647
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1652,r13		! source line 1652
	mov	"\0\0SE",r10
!   _temp_1222 = &threadManagerLock
	set	41676,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-36]
!   Send message Lock
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	1653,r13		! source line 1653
	mov	"\0\0WH",r10
_Label_1223:
	mov	1653,r13		! source line 1653
	mov	"\0\0SE",r10
!   _temp_1226 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-32]
!   Send message IsEmpty
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_1224 else goto _Label_1225
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1225
	jmp	_Label_1224
_Label_1224:
	mov	1653,r13		! source line 1653
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1654,r13		! source line 1654
	mov	"\0\0SE",r10
!   _temp_1227 = &threadManagerLock
	set	41676,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-28]
!   _temp_1228 = &threadBecameFree
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1227  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_1223
_Label_1225:
! ASSIGNMENT STATEMENT...
	mov	1656,r13		! source line 1656
	mov	"\0\0AS",r10
	mov	1656,r13		! source line 1656
	mov	"\0\0SE",r10
!   _temp_1229 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-20]
!   Send message Remove
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=availableThread  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1657,r13		! source line 1657
	mov	"\0\0AS",r10
!   if intIsZero (availableThread) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1230 = availableThread + 76
	load	[r14+-40],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1230 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1658,r13		! source line 1658
	mov	"\0\0SE",r10
!   _temp_1231 = &threadManagerLock
	set	41676,r11
	load	[r14+8],r1
	add	r1,r11,r1
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
	mov	1659,r13		! source line 1659
	mov	"\0\0RE",r10
!   ReturnResult: availableThread  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,44,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_3:
	.word	_sourceFileName
	.word	_Label_1232
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_1233
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1234
	.word	-12
	.word	4
	.word	_Label_1235
	.word	-16
	.word	4
	.word	_Label_1236
	.word	-20
	.word	4
	.word	_Label_1237
	.word	-24
	.word	4
	.word	_Label_1238
	.word	-28
	.word	4
	.word	_Label_1239
	.word	-32
	.word	4
	.word	_Label_1240
	.word	-36
	.word	4
	.word	_Label_1241
	.word	-40
	.word	4
	.word	0
_Label_1232:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"GetANewThread\0"
	.align
_Label_1233:
	.ascii	"Pself\0"
	.align
_Label_1234:
	.byte	'?'
	.ascii	"_temp_1231\0"
	.align
_Label_1235:
	.byte	'?'
	.ascii	"_temp_1230\0"
	.align
_Label_1236:
	.byte	'?'
	.ascii	"_temp_1229\0"
	.align
_Label_1237:
	.byte	'?'
	.ascii	"_temp_1228\0"
	.align
_Label_1238:
	.byte	'?'
	.ascii	"_temp_1227\0"
	.align
_Label_1239:
	.byte	'?'
	.ascii	"_temp_1226\0"
	.align
_Label_1240:
	.byte	'?'
	.ascii	"_temp_1222\0"
	.align
_Label_1241:
	.byte	'P'
	.ascii	"availableThread\0"
	.align
! 
! ===============  METHOD FreeThread  ===============
! 
_Method_P_Kernel_ThreadManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_4,r1
	push	r1
	mov	8,r1
_Label_2996:
	push	r0
	sub	r1,1,r1
	bne	_Label_2996
	mov	1664,r13		! source line 1664
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1669,r13		! source line 1669
	mov	"\0\0SE",r10
!   _temp_1242 = &threadManagerLock
	set	41676,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1670,r13		! source line 1670
	mov	"\0\0AS",r10
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1243 = th + 76
	load	[r14+12],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1243 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1671,r13		! source line 1671
	mov	"\0\0SE",r10
!   _temp_1244 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=th  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	1672,r13		! source line 1672
	mov	"\0\0SE",r10
!   _temp_1245 = &threadManagerLock
	set	41676,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-20]
!   _temp_1246 = &threadBecameFree
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1245  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	1673,r13		! source line 1673
	mov	"\0\0SE",r10
!   _temp_1247 = &threadManagerLock
	set	41676,r11
	load	[r14+8],r1
	add	r1,r11,r1
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
	mov	1673,r13		! source line 1673
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_4:
	.word	_sourceFileName
	.word	_Label_1248
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1249
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1250
	.word	12
	.word	4
	.word	_Label_1251
	.word	-12
	.word	4
	.word	_Label_1252
	.word	-16
	.word	4
	.word	_Label_1253
	.word	-20
	.word	4
	.word	_Label_1254
	.word	-24
	.word	4
	.word	_Label_1255
	.word	-28
	.word	4
	.word	_Label_1256
	.word	-32
	.word	4
	.word	0
_Label_1248:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"FreeThread\0"
	.align
_Label_1249:
	.ascii	"Pself\0"
	.align
_Label_1250:
	.byte	'P'
	.ascii	"th\0"
	.align
_Label_1251:
	.byte	'?'
	.ascii	"_temp_1247\0"
	.align
_Label_1252:
	.byte	'?'
	.ascii	"_temp_1246\0"
	.align
_Label_1253:
	.byte	'?'
	.ascii	"_temp_1245\0"
	.align
_Label_1254:
	.byte	'?'
	.ascii	"_temp_1244\0"
	.align
_Label_1255:
	.byte	'?'
	.ascii	"_temp_1243\0"
	.align
_Label_1256:
	.byte	'?'
	.ascii	"_temp_1242\0"
	.align
! 
! ===============  CLASS ProcessControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessControlBlock:
	.word	_Label_1257
	jmp	_Method_P_Kernel_ProcessControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessControlBlock_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessControlBlock_3	! 12:	PrintShort
	.word	0
! 
! Class descriptor:
! 
_Label_1257:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1258
	.word	_sourceFileName
	.word	213		! line number
	.word	124		! size of instances, in bytes
	.word	_P_Kernel_ProcessControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_1258:
	.ascii	"ProcessControlBlock\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_ProcessControlBlock_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_1,r1
	push	r1
	mov	3,r1
_Label_2997:
	push	r0
	sub	r1,1,r1
	bne	_Label_2997
	mov	1686,r13		! source line 1686
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1687,r13		! source line 1687
	mov	"\0\0AS",r10
!   pid = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	1688,r13		! source line 1688
	mov	"\0\0AS",r10
!   status = 3		(4 bytes)
	mov	3,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	1689,r13		! source line 1689
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: addrSpace = zeros  (sizeInBytes=92)
	load	[r14+8],r4
	add	r4,32,r4
	mov	23,r3
_Label_2998:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2998
!   addrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! SEND STATEMENT...
	mov	1690,r13		! source line 1690
	mov	"\0\0SE",r10
!   _temp_1260 = &addrSpace
	load	[r14+8],r1
	add	r1,32,r1
	store	r1,[r14+-12]
!   Send message Init
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! RETURN STATEMENT...
	mov	1690,r13		! source line 1690
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_1:
	.word	_sourceFileName
	.word	_Label_1261
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_1262
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1263
	.word	-12
	.word	4
	.word	_Label_1264
	.word	-16
	.word	4
	.word	0
_Label_1261:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1262:
	.ascii	"Pself\0"
	.align
_Label_1263:
	.byte	'?'
	.ascii	"_temp_1260\0"
	.align
_Label_1264:
	.byte	'?'
	.ascii	"_temp_1259\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_ProcessControlBlock_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_2,r1
	push	r1
	mov	4,r1
_Label_2999:
	push	r0
	sub	r1,1,r1
	bne	_Label_2999
	mov	1700,r13		! source line 1700
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1705,r13		! source line 1705
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1265) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message PrintShort
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	1706,r13		! source line 1706
	mov	"\0\0SE",r10
!   _temp_1266 = &addrSpace
	load	[r14+8],r1
	add	r1,32,r1
	store	r1,[r14+-16]
!   Send message Print
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_1267 = _StringConst_109
	set	_StringConst_109,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1267  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1707,r13		! source line 1707
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=myThread  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1708,r13		! source line 1708
	mov	"\0\0CA",r10
	call	_function_207_ThreadPrintShort
! CALL STATEMENT...
!   Call the function
	mov	1718,r13		! source line 1718
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1718,r13		! source line 1718
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_2:
	.word	_sourceFileName
	.word	_Label_1268
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1269
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1270
	.word	-12
	.word	4
	.word	_Label_1271
	.word	-16
	.word	4
	.word	_Label_1272
	.word	-20
	.word	4
	.word	0
_Label_1268:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1269:
	.ascii	"Pself\0"
	.align
_Label_1270:
	.byte	'?'
	.ascii	"_temp_1267\0"
	.align
_Label_1271:
	.byte	'?'
	.ascii	"_temp_1266\0"
	.align
_Label_1272:
	.byte	'?'
	.ascii	"_temp_1265\0"
	.align
! 
! ===============  METHOD PrintShort  ===============
! 
_Method_P_Kernel_ProcessControlBlock_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_3,r1
	push	r1
	mov	11,r1
_Label_3000:
	push	r0
	sub	r1,1,r1
	bne	_Label_3000
	mov	1723,r13		! source line 1723
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1273 = _StringConst_110
	set	_StringConst_110,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1273  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1727,r13		! source line 1727
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1274  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1728,r13		! source line 1728
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1275 = _StringConst_111
	set	_StringConst_111,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1275  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1729,r13		! source line 1729
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=pid  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1730,r13		! source line 1730
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1276 = _StringConst_112
	set	_StringConst_112,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1276  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1731,r13		! source line 1731
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1732,r13		! source line 1732
	mov	"\0\0IF",r10
!   if status != 1 then goto _Label_1278		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_1278
!	jmp	_Label_1277
_Label_1277:
! THEN...
	mov	1733,r13		! source line 1733
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1279 = _StringConst_113
	set	_StringConst_113,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1279  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1733,r13		! source line 1733
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1280
_Label_1278:
! ELSE...
	mov	1734,r13		! source line 1734
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1734,r13		! source line 1734
	mov	"\0\0IF",r10
!   if status != 2 then goto _Label_1282		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_1282
!	jmp	_Label_1281
_Label_1281:
! THEN...
	mov	1735,r13		! source line 1735
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1283 = _StringConst_114
	set	_StringConst_114,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1283  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1735,r13		! source line 1735
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1284
_Label_1282:
! ELSE...
	mov	1736,r13		! source line 1736
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1736,r13		! source line 1736
	mov	"\0\0IF",r10
!   if status != 3 then goto _Label_1286		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_1286
!	jmp	_Label_1285
_Label_1285:
! THEN...
	mov	1737,r13		! source line 1737
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1287 = _StringConst_115
	set	_StringConst_115,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1287  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1737,r13		! source line 1737
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1288
_Label_1286:
! ELSE...
	mov	1739,r13		! source line 1739
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1289 = _StringConst_116
	set	_StringConst_116,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1289  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1739,r13		! source line 1739
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1288:
! END IF...
_Label_1284:
! END IF...
_Label_1280:
! CALL STATEMENT...
!   _temp_1290 = _StringConst_117
	set	_StringConst_117,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1290  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1741,r13		! source line 1741
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=parentsPid  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1742,r13		! source line 1742
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1291 = _StringConst_118
	set	_StringConst_118,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1291  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1743,r13		! source line 1743
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=exitStatus  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1744,r13		! source line 1744
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1745,r13		! source line 1745
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1745,r13		! source line 1745
	mov	"\0\0RE",r10
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_3:
	.word	_sourceFileName
	.word	_Label_1292
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1293
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1294
	.word	-12
	.word	4
	.word	_Label_1295
	.word	-16
	.word	4
	.word	_Label_1296
	.word	-20
	.word	4
	.word	_Label_1297
	.word	-24
	.word	4
	.word	_Label_1298
	.word	-28
	.word	4
	.word	_Label_1299
	.word	-32
	.word	4
	.word	_Label_1300
	.word	-36
	.word	4
	.word	_Label_1301
	.word	-40
	.word	4
	.word	_Label_1302
	.word	-44
	.word	4
	.word	_Label_1303
	.word	-48
	.word	4
	.word	0
_Label_1292:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1293:
	.ascii	"Pself\0"
	.align
_Label_1294:
	.byte	'?'
	.ascii	"_temp_1291\0"
	.align
_Label_1295:
	.byte	'?'
	.ascii	"_temp_1290\0"
	.align
_Label_1296:
	.byte	'?'
	.ascii	"_temp_1289\0"
	.align
_Label_1297:
	.byte	'?'
	.ascii	"_temp_1287\0"
	.align
_Label_1298:
	.byte	'?'
	.ascii	"_temp_1283\0"
	.align
_Label_1299:
	.byte	'?'
	.ascii	"_temp_1279\0"
	.align
_Label_1300:
	.byte	'?'
	.ascii	"_temp_1276\0"
	.align
_Label_1301:
	.byte	'?'
	.ascii	"_temp_1275\0"
	.align
_Label_1302:
	.byte	'?'
	.ascii	"_temp_1274\0"
	.align
_Label_1303:
	.byte	'?'
	.ascii	"_temp_1273\0"
	.align
! 
! ===============  CLASS ProcessManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessManager:
	.word	_Label_1304
	jmp	_Method_P_Kernel_ProcessManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessManager_3	! 12:	PrintShort
	jmp	_Method_P_Kernel_ProcessManager_4	! 16:	GetANewProcess
	jmp	_Method_P_Kernel_ProcessManager_5	! 20:	FreeProcess
	.word	0
! 
! Class descriptor:
! 
_Label_1304:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1305
	.word	_sourceFileName
	.word	233		! line number
	.word	1316		! size of instances, in bytes
	.word	_P_Kernel_ProcessManager
	.word	_P_System_Object
	.word	0
_Label_1305:
	.ascii	"ProcessManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_ProcessManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_1,r1
	push	r1
	mov	368,r1
_Label_3001:
	push	r0
	sub	r1,1,r1
	bne	_Label_3001
	mov	1756,r13		! source line 1756
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1762,r13		! source line 1762
	mov	"\0\0AS",r10
!   _temp_1306 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-1468]
!   NEW ARRAY Constructor...
!   _temp_1308 = &_temp_1307
	add	r14,-1464,r1
	store	r1,[r14+-220]
!   _temp_1308 = _temp_1308 + 4
	load	[r14+-220],r1
	add	r1,4,r1
	store	r1,[r14+-220]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1310 = zeros  (sizeInBytes=124)
	add	r14,-212,r4
	mov	31,r3
_Label_3002:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3002
!   _temp_1310 = _P_Kernel_ProcessControlBlock
	set	_P_Kernel_ProcessControlBlock,r1
	store	r1,[r14+-212]
	mov	10,r1
	store	r1,[r14+-216]
_Label_1312:
!   Data Move: *_temp_1308 = _temp_1310  (sizeInBytes=124)
	add	r14,-212,r5
	load	[r14+-220],r4
	mov	31,r3
_Label_3003:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3003
!   _temp_1308 = _temp_1308 + 124
	load	[r14+-220],r1
	add	r1,124,r1
	store	r1,[r14+-220]
!   _temp_1309 = _temp_1309 + -1
	load	[r14+-216],r1
	add	r1,-1,r1
	store	r1,[r14+-216]
!   if intNotZero (_temp_1309) then goto _Label_1312
	load	[r14+-216],r1
	cmp	r1,r0
	bne	_Label_1312
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-1464]
!   _temp_1313 = &_temp_1307
	add	r14,-1464,r1
	store	r1,[r14+-84]
!   make sure array has size 10
	load	[r14+-1468],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3004
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3004:
!   make sure array has size 10
	load	[r14+-84],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1306 = *_temp_1313  (sizeInBytes=1244)
	load	[r14+-84],r5
	load	[r14+-1468],r4
	mov	311,r3
_Label_3005:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3005
! ASSIGNMENT STATEMENT...
	mov	1763,r13		! source line 1763
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: freeList = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,1284,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   freeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+1284]
! ASSIGNMENT STATEMENT...
	mov	1764,r13		! source line 1764
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: processManagerLock = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,1248,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   processManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+1248]
! ASSIGNMENT STATEMENT...
	mov	1765,r13		! source line 1765
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: aProcessBecameFree = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,1268,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   aProcessBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+1268]
! ASSIGNMENT STATEMENT...
	mov	1766,r13		! source line 1766
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: aProcessDied = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,1296,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   aProcessDied = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+1296]
! FOR STATEMENT...
	mov	1767,r13		! source line 1767
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1322 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1323 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1322  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-1472]
_Label_1318:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1323 then goto _Label_1321		
	load	[r14+-1472],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1321
_Label_1319:
	mov	1767,r13		! source line 1767
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	1768,r13		! source line 1768
	mov	"\0\0SE",r10
!   _temp_1324 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   Move address of _temp_1324 [i ] into _temp_1325
!     make sure index expr is >= 0
	load	[r14+-1472],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-56],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-52]
!   Send message Init
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	1769,r13		! source line 1769
	mov	"\0\0SE",r10
!   _temp_1327 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_1327 [i ] into _temp_1328
!     make sure index expr is >= 0
	load	[r14+-1472],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-44],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-40]
!   _temp_1326 = _temp_1328		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   _temp_1329 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_1326  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1770,r13		! source line 1770
	mov	"\0\0AS",r10
!   _temp_1330 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Move address of _temp_1330 [i ] into _temp_1331
!     make sure index expr is >= 0
	load	[r14+-1472],r2
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
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1332 = _temp_1331 + 20
	load	[r14+-28],r1
	add	r1,20,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1332 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-24],r2
	store	r1,[r2]
!   Increment the FOR-LOOP index variable and jump back
_Label_1320:
!   i = i + 1
	load	[r14+-1472],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-1472]
	jmp	_Label_1318
! END FOR
_Label_1321:
! SEND STATEMENT...
	mov	1772,r13		! source line 1772
	mov	"\0\0SE",r10
!   _temp_1333 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-20]
!   Send message Init
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	1773,r13		! source line 1773
	mov	"\0\0SE",r10
!   _temp_1334 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-16]
!   Send message Init
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	1774,r13		! source line 1774
	mov	"\0\0SE",r10
!   _temp_1335 = &aProcessDied
	load	[r14+8],r1
	add	r1,1296,r1
	store	r1,[r14+-12]
!   Send message Init
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! RETURN STATEMENT...
	mov	1774,r13		! source line 1774
	mov	"\0\0RE",r10
	add	r15,1476,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_1:
	.word	_sourceFileName
	.word	_Label_1336
	.word	4		! total size of parameters
	.word	1472		! frame size = 1472
	.word	_Label_1337
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1338
	.word	-12
	.word	4
	.word	_Label_1339
	.word	-16
	.word	4
	.word	_Label_1340
	.word	-20
	.word	4
	.word	_Label_1341
	.word	-24
	.word	4
	.word	_Label_1342
	.word	-28
	.word	4
	.word	_Label_1343
	.word	-32
	.word	4
	.word	_Label_1344
	.word	-36
	.word	4
	.word	_Label_1345
	.word	-40
	.word	4
	.word	_Label_1346
	.word	-44
	.word	4
	.word	_Label_1347
	.word	-48
	.word	4
	.word	_Label_1348
	.word	-52
	.word	4
	.word	_Label_1349
	.word	-56
	.word	4
	.word	_Label_1350
	.word	-60
	.word	4
	.word	_Label_1351
	.word	-64
	.word	4
	.word	_Label_1352
	.word	-68
	.word	4
	.word	_Label_1353
	.word	-72
	.word	4
	.word	_Label_1354
	.word	-76
	.word	4
	.word	_Label_1355
	.word	-80
	.word	4
	.word	_Label_1356
	.word	-84
	.word	4
	.word	_Label_1357
	.word	-88
	.word	4
	.word	_Label_1358
	.word	-212
	.word	124
	.word	_Label_1359
	.word	-216
	.word	4
	.word	_Label_1360
	.word	-220
	.word	4
	.word	_Label_1361
	.word	-1464
	.word	1244
	.word	_Label_1362
	.word	-1468
	.word	4
	.word	_Label_1363
	.word	-1472
	.word	4
	.word	0
_Label_1336:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1337:
	.ascii	"Pself\0"
	.align
_Label_1338:
	.byte	'?'
	.ascii	"_temp_1335\0"
	.align
_Label_1339:
	.byte	'?'
	.ascii	"_temp_1334\0"
	.align
_Label_1340:
	.byte	'?'
	.ascii	"_temp_1333\0"
	.align
_Label_1341:
	.byte	'?'
	.ascii	"_temp_1332\0"
	.align
_Label_1342:
	.byte	'?'
	.ascii	"_temp_1331\0"
	.align
_Label_1343:
	.byte	'?'
	.ascii	"_temp_1330\0"
	.align
_Label_1344:
	.byte	'?'
	.ascii	"_temp_1329\0"
	.align
_Label_1345:
	.byte	'?'
	.ascii	"_temp_1328\0"
	.align
_Label_1346:
	.byte	'?'
	.ascii	"_temp_1327\0"
	.align
_Label_1347:
	.byte	'?'
	.ascii	"_temp_1326\0"
	.align
_Label_1348:
	.byte	'?'
	.ascii	"_temp_1325\0"
	.align
_Label_1349:
	.byte	'?'
	.ascii	"_temp_1324\0"
	.align
_Label_1350:
	.byte	'?'
	.ascii	"_temp_1323\0"
	.align
_Label_1351:
	.byte	'?'
	.ascii	"_temp_1322\0"
	.align
_Label_1352:
	.byte	'?'
	.ascii	"_temp_1317\0"
	.align
_Label_1353:
	.byte	'?'
	.ascii	"_temp_1316\0"
	.align
_Label_1354:
	.byte	'?'
	.ascii	"_temp_1315\0"
	.align
_Label_1355:
	.byte	'?'
	.ascii	"_temp_1314\0"
	.align
_Label_1356:
	.byte	'?'
	.ascii	"_temp_1313\0"
	.align
_Label_1357:
	.byte	'?'
	.ascii	"_temp_1311\0"
	.align
_Label_1358:
	.byte	'?'
	.ascii	"_temp_1310\0"
	.align
_Label_1359:
	.byte	'?'
	.ascii	"_temp_1309\0"
	.align
_Label_1360:
	.byte	'?'
	.ascii	"_temp_1308\0"
	.align
_Label_1361:
	.byte	'?'
	.ascii	"_temp_1307\0"
	.align
_Label_1362:
	.byte	'?'
	.ascii	"_temp_1306\0"
	.align
_Label_1363:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_ProcessManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_2,r1
	push	r1
	mov	14,r1
_Label_3006:
	push	r0
	sub	r1,1,r1
	bne	_Label_3006
	mov	1779,r13		! source line 1779
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1786,r13		! source line 1786
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1786,r13		! source line 1786
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! CALL STATEMENT...
!   _temp_1364 = _StringConst_119
	set	_StringConst_119,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1364  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1787,r13		! source line 1787
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1788,r13		! source line 1788
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1369 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1370 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1369  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-52]
_Label_1365:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1370 then goto _Label_1368		
	load	[r14+-52],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1368
_Label_1366:
	mov	1788,r13		! source line 1788
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1371 = _StringConst_120
	set	_StringConst_120,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1371  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1789,r13		! source line 1789
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	1790,r13		! source line 1790
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1372 = _StringConst_121
	set	_StringConst_121,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1372  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1791,r13		! source line 1791
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1792,r13		! source line 1792
	mov	"\0\0SE",r10
!   _temp_1373 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1373 [i ] into _temp_1374
!     make sure index expr is >= 0
	load	[r14+-52],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-28],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   Send message Print
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1367:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_1365
! END FOR
_Label_1368:
! CALL STATEMENT...
!   _temp_1375 = _StringConst_122
	set	_StringConst_122,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1375  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1794,r13		! source line 1794
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1795,r13		! source line 1795
	mov	"\0\0SE",r10
!   _temp_1376 = _function_206_PrintObjectAddr
	set	_function_206_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1377 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1376  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	1796,r13		! source line 1796
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	1797,r13		! source line 1797
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	1797,r13		! source line 1797
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! RETURN STATEMENT...
	mov	1797,r13		! source line 1797
	mov	"\0\0RE",r10
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_2:
	.word	_sourceFileName
	.word	_Label_1378
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1379
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1380
	.word	-12
	.word	4
	.word	_Label_1381
	.word	-16
	.word	4
	.word	_Label_1382
	.word	-20
	.word	4
	.word	_Label_1383
	.word	-24
	.word	4
	.word	_Label_1384
	.word	-28
	.word	4
	.word	_Label_1385
	.word	-32
	.word	4
	.word	_Label_1386
	.word	-36
	.word	4
	.word	_Label_1387
	.word	-40
	.word	4
	.word	_Label_1388
	.word	-44
	.word	4
	.word	_Label_1389
	.word	-48
	.word	4
	.word	_Label_1390
	.word	-52
	.word	4
	.word	_Label_1391
	.word	-56
	.word	4
	.word	0
_Label_1378:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1379:
	.ascii	"Pself\0"
	.align
_Label_1380:
	.byte	'?'
	.ascii	"_temp_1377\0"
	.align
_Label_1381:
	.byte	'?'
	.ascii	"_temp_1376\0"
	.align
_Label_1382:
	.byte	'?'
	.ascii	"_temp_1375\0"
	.align
_Label_1383:
	.byte	'?'
	.ascii	"_temp_1374\0"
	.align
_Label_1384:
	.byte	'?'
	.ascii	"_temp_1373\0"
	.align
_Label_1385:
	.byte	'?'
	.ascii	"_temp_1372\0"
	.align
_Label_1386:
	.byte	'?'
	.ascii	"_temp_1371\0"
	.align
_Label_1387:
	.byte	'?'
	.ascii	"_temp_1370\0"
	.align
_Label_1388:
	.byte	'?'
	.ascii	"_temp_1369\0"
	.align
_Label_1389:
	.byte	'?'
	.ascii	"_temp_1364\0"
	.align
_Label_1390:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1391:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  METHOD PrintShort  ===============
! 
_Method_P_Kernel_ProcessManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_3,r1
	push	r1
	mov	13,r1
_Label_3007:
	push	r0
	sub	r1,1,r1
	bne	_Label_3007
	mov	1802,r13		! source line 1802
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1809,r13		! source line 1809
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1809,r13		! source line 1809
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! CALL STATEMENT...
!   _temp_1392 = _StringConst_123
	set	_StringConst_123,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1392  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1810,r13		! source line 1810
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1811,r13		! source line 1811
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1397 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1398 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1397  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-48]
_Label_1393:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1398 then goto _Label_1396		
	load	[r14+-48],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1396
_Label_1394:
	mov	1811,r13		! source line 1811
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1399 = _StringConst_124
	set	_StringConst_124,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1399  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1812,r13		! source line 1812
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1813,r13		! source line 1813
	mov	"\0\0CE",r10
	call	printInt
! SEND STATEMENT...
	mov	1814,r13		! source line 1814
	mov	"\0\0SE",r10
!   _temp_1400 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1400 [i ] into _temp_1401
!     make sure index expr is >= 0
	load	[r14+-48],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-28],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   Send message PrintShort
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1395:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_1393
! END FOR
_Label_1396:
! CALL STATEMENT...
!   _temp_1402 = _StringConst_125
	set	_StringConst_125,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1402  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1816,r13		! source line 1816
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1817,r13		! source line 1817
	mov	"\0\0SE",r10
!   _temp_1403 = _function_206_PrintObjectAddr
	set	_function_206_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1404 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1403  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	1818,r13		! source line 1818
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	1819,r13		! source line 1819
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	1819,r13		! source line 1819
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! RETURN STATEMENT...
	mov	1819,r13		! source line 1819
	mov	"\0\0RE",r10
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_3:
	.word	_sourceFileName
	.word	_Label_1405
	.word	4		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_1406
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1407
	.word	-12
	.word	4
	.word	_Label_1408
	.word	-16
	.word	4
	.word	_Label_1409
	.word	-20
	.word	4
	.word	_Label_1410
	.word	-24
	.word	4
	.word	_Label_1411
	.word	-28
	.word	4
	.word	_Label_1412
	.word	-32
	.word	4
	.word	_Label_1413
	.word	-36
	.word	4
	.word	_Label_1414
	.word	-40
	.word	4
	.word	_Label_1415
	.word	-44
	.word	4
	.word	_Label_1416
	.word	-48
	.word	4
	.word	_Label_1417
	.word	-52
	.word	4
	.word	0
_Label_1405:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1406:
	.ascii	"Pself\0"
	.align
_Label_1407:
	.byte	'?'
	.ascii	"_temp_1404\0"
	.align
_Label_1408:
	.byte	'?'
	.ascii	"_temp_1403\0"
	.align
_Label_1409:
	.byte	'?'
	.ascii	"_temp_1402\0"
	.align
_Label_1410:
	.byte	'?'
	.ascii	"_temp_1401\0"
	.align
_Label_1411:
	.byte	'?'
	.ascii	"_temp_1400\0"
	.align
_Label_1412:
	.byte	'?'
	.ascii	"_temp_1399\0"
	.align
_Label_1413:
	.byte	'?'
	.ascii	"_temp_1398\0"
	.align
_Label_1414:
	.byte	'?'
	.ascii	"_temp_1397\0"
	.align
_Label_1415:
	.byte	'?'
	.ascii	"_temp_1392\0"
	.align
_Label_1416:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1417:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  METHOD GetANewProcess  ===============
! 
_Method_P_Kernel_ProcessManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_4,r1
	push	r1
	mov	11,r1
_Label_3008:
	push	r0
	sub	r1,1,r1
	bne	_Label_3008
	mov	1824,r13		! source line 1824
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1830,r13		! source line 1830
	mov	"\0\0SE",r10
!   _temp_1418 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-40]
!   Send message Lock
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	1831,r13		! source line 1831
	mov	"\0\0WH",r10
_Label_1419:
	mov	1831,r13		! source line 1831
	mov	"\0\0SE",r10
!   _temp_1422 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-36]
!   Send message IsEmpty
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_1420 else goto _Label_1421
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1421
	jmp	_Label_1420
_Label_1420:
	mov	1831,r13		! source line 1831
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1832,r13		! source line 1832
	mov	"\0\0SE",r10
!   _temp_1423 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-32]
!   _temp_1424 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_1423  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_1419
_Label_1421:
! ASSIGNMENT STATEMENT...
	mov	1834,r13		! source line 1834
	mov	"\0\0AS",r10
	mov	1834,r13		! source line 1834
	mov	"\0\0SE",r10
!   _temp_1425 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=nextProcess  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1835,r13		! source line 1835
	mov	"\0\0AS",r10
!   if intIsZero (nextProcess) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1426 = nextProcess + 12
	load	[r14+-44],r1
	add	r1,12,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1426 = nextPid  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+1312],r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1836,r13		! source line 1836
	mov	"\0\0AS",r10
!   nextPid = nextPid + 1		(int)
	load	[r14+8],r1
	load	[r1+1312],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+1312]
! ASSIGNMENT STATEMENT...
	mov	1837,r13		! source line 1837
	mov	"\0\0AS",r10
!   if intIsZero (nextProcess) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1427 = nextProcess + 20
	load	[r14+-44],r1
	add	r1,20,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1427 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1838,r13		! source line 1838
	mov	"\0\0SE",r10
!   _temp_1428 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
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
	mov	1839,r13		! source line 1839
	mov	"\0\0RE",r10
!   ReturnResult: nextProcess  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_4:
	.word	_sourceFileName
	.word	_Label_1429
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1430
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1431
	.word	-12
	.word	4
	.word	_Label_1432
	.word	-16
	.word	4
	.word	_Label_1433
	.word	-20
	.word	4
	.word	_Label_1434
	.word	-24
	.word	4
	.word	_Label_1435
	.word	-28
	.word	4
	.word	_Label_1436
	.word	-32
	.word	4
	.word	_Label_1437
	.word	-36
	.word	4
	.word	_Label_1438
	.word	-40
	.word	4
	.word	_Label_1439
	.word	-44
	.word	4
	.word	0
_Label_1429:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"GetANewProcess\0"
	.align
_Label_1430:
	.ascii	"Pself\0"
	.align
_Label_1431:
	.byte	'?'
	.ascii	"_temp_1428\0"
	.align
_Label_1432:
	.byte	'?'
	.ascii	"_temp_1427\0"
	.align
_Label_1433:
	.byte	'?'
	.ascii	"_temp_1426\0"
	.align
_Label_1434:
	.byte	'?'
	.ascii	"_temp_1425\0"
	.align
_Label_1435:
	.byte	'?'
	.ascii	"_temp_1424\0"
	.align
_Label_1436:
	.byte	'?'
	.ascii	"_temp_1423\0"
	.align
_Label_1437:
	.byte	'?'
	.ascii	"_temp_1422\0"
	.align
_Label_1438:
	.byte	'?'
	.ascii	"_temp_1418\0"
	.align
_Label_1439:
	.byte	'P'
	.ascii	"nextProcess\0"
	.align
! 
! ===============  METHOD FreeProcess  ===============
! 
_Method_P_Kernel_ProcessManager_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_5,r1
	push	r1
	mov	8,r1
_Label_3009:
	push	r0
	sub	r1,1,r1
	bne	_Label_3009
	mov	1844,r13		! source line 1844
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1849,r13		! source line 1849
	mov	"\0\0SE",r10
!   _temp_1440 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1850,r13		! source line 1850
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1441 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1441 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1851,r13		! source line 1851
	mov	"\0\0SE",r10
!   _temp_1442 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	1852,r13		! source line 1852
	mov	"\0\0SE",r10
!   _temp_1443 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-20]
!   _temp_1444 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1443  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	1853,r13		! source line 1853
	mov	"\0\0SE",r10
!   _temp_1445 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
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
	mov	1853,r13		! source line 1853
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_5:
	.word	_sourceFileName
	.word	_Label_1446
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1447
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1448
	.word	12
	.word	4
	.word	_Label_1449
	.word	-12
	.word	4
	.word	_Label_1450
	.word	-16
	.word	4
	.word	_Label_1451
	.word	-20
	.word	4
	.word	_Label_1452
	.word	-24
	.word	4
	.word	_Label_1453
	.word	-28
	.word	4
	.word	_Label_1454
	.word	-32
	.word	4
	.word	0
_Label_1446:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"FreeProcess\0"
	.align
_Label_1447:
	.ascii	"Pself\0"
	.align
_Label_1448:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_1449:
	.byte	'?'
	.ascii	"_temp_1445\0"
	.align
_Label_1450:
	.byte	'?'
	.ascii	"_temp_1444\0"
	.align
_Label_1451:
	.byte	'?'
	.ascii	"_temp_1443\0"
	.align
_Label_1452:
	.byte	'?'
	.ascii	"_temp_1442\0"
	.align
_Label_1453:
	.byte	'?'
	.ascii	"_temp_1441\0"
	.align
_Label_1454:
	.byte	'?'
	.ascii	"_temp_1440\0"
	.align
! 
! ===============  CLASS FrameManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FrameManager:
	.word	_Label_1455
	jmp	_Method_P_Kernel_FrameManager_1	! 4:	Init
	jmp	_Method_P_Kernel_FrameManager_2	! 8:	Print
	jmp	_Method_P_Kernel_FrameManager_3	! 12:	GetAFrame
	jmp	_Method_P_Kernel_FrameManager_4	! 16:	GetNewFrames
	jmp	_Method_P_Kernel_FrameManager_5	! 20:	ReturnAllFrames
	.word	0
! 
! Class descriptor:
! 
_Label_1455:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1456
	.word	_sourceFileName
	.word	256		! line number
	.word	56		! size of instances, in bytes
	.word	_P_Kernel_FrameManager
	.word	_P_System_Object
	.word	0
_Label_1456:
	.ascii	"FrameManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_FrameManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_1,r1
	push	r1
	mov	14,r1
_Label_3010:
	push	r0
	sub	r1,1,r1
	bne	_Label_3010
	mov	1886,r13		! source line 1886
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1457 = _StringConst_126
	set	_StringConst_126,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1457  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	1892,r13		! source line 1892
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1893,r13		! source line 1893
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: framesInUse = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,4,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   framesInUse = _P_BitMap_BitMap
	set	_P_BitMap_BitMap,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! SEND STATEMENT...
	mov	1894,r13		! source line 1894
	mov	"\0\0SE",r10
!   _temp_1459 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=100  sizeInBytes=4
	mov	100,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1895,r13		! source line 1895
	mov	"\0\0AS",r10
!   numberFreeFrames = 100		(4 bytes)
	mov	100,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	1896,r13		! source line 1896
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: frameManagerLock = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,20,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   frameManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! SEND STATEMENT...
	mov	1897,r13		! source line 1897
	mov	"\0\0SE",r10
!   _temp_1461 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
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
	mov	1898,r13		! source line 1898
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: newFramesAvailable = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,40,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   newFramesAvailable = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+40]
! SEND STATEMENT...
	mov	1899,r13		! source line 1899
	mov	"\0\0SE",r10
!   _temp_1463 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-28]
!   Send message Init
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! FOR STATEMENT...
	mov	1905,r13		! source line 1905
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1468 = 1048576		(4 bytes)
	set	1048576,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1469 = 1048876		(4 bytes)
	set	1048876,r1
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1468  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-56]
_Label_1464:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1469 then goto _Label_1467		
	load	[r14+-56],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1467
_Label_1465:
	mov	1905,r13		! source line 1905
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1908,r13		! source line 1908
	mov	"\0\0IF",r10
!   if intIsZero (i) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1472 = *i  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1472) then goto _Label_1471
	load	[r14+-16],r1
	cmp	r1,r0
	be	_Label_1471
!	jmp	_Label_1470
_Label_1470:
! THEN...
	mov	1909,r13		! source line 1909
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1473 = _StringConst_127
	set	_StringConst_127,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1473  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1909,r13		! source line 1909
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1471:
!   Increment the FOR-LOOP index variable and jump back
_Label_1466:
!   i = i + 4
	load	[r14+-56],r1
	add	r1,4,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1464
! END FOR
_Label_1467:
! RETURN STATEMENT...
	mov	1905,r13		! source line 1905
	mov	"\0\0RE",r10
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_1:
	.word	_sourceFileName
	.word	_Label_1474
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1475
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1476
	.word	-12
	.word	4
	.word	_Label_1477
	.word	-16
	.word	4
	.word	_Label_1478
	.word	-20
	.word	4
	.word	_Label_1479
	.word	-24
	.word	4
	.word	_Label_1480
	.word	-28
	.word	4
	.word	_Label_1481
	.word	-32
	.word	4
	.word	_Label_1482
	.word	-36
	.word	4
	.word	_Label_1483
	.word	-40
	.word	4
	.word	_Label_1484
	.word	-44
	.word	4
	.word	_Label_1485
	.word	-48
	.word	4
	.word	_Label_1486
	.word	-52
	.word	4
	.word	_Label_1487
	.word	-56
	.word	4
	.word	0
_Label_1474:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1475:
	.ascii	"Pself\0"
	.align
_Label_1476:
	.byte	'?'
	.ascii	"_temp_1473\0"
	.align
_Label_1477:
	.byte	'?'
	.ascii	"_temp_1472\0"
	.align
_Label_1478:
	.byte	'?'
	.ascii	"_temp_1469\0"
	.align
_Label_1479:
	.byte	'?'
	.ascii	"_temp_1468\0"
	.align
_Label_1480:
	.byte	'?'
	.ascii	"_temp_1463\0"
	.align
_Label_1481:
	.byte	'?'
	.ascii	"_temp_1462\0"
	.align
_Label_1482:
	.byte	'?'
	.ascii	"_temp_1461\0"
	.align
_Label_1483:
	.byte	'?'
	.ascii	"_temp_1460\0"
	.align
_Label_1484:
	.byte	'?'
	.ascii	"_temp_1459\0"
	.align
_Label_1485:
	.byte	'?'
	.ascii	"_temp_1458\0"
	.align
_Label_1486:
	.byte	'?'
	.ascii	"_temp_1457\0"
	.align
_Label_1487:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_FrameManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_2,r1
	push	r1
	mov	8,r1
_Label_3011:
	push	r0
	sub	r1,1,r1
	bne	_Label_3011
	mov	1916,r13		! source line 1916
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1920,r13		! source line 1920
	mov	"\0\0SE",r10
!   _temp_1488 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_1489 = _StringConst_128
	set	_StringConst_128,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1489  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1921,r13		! source line 1921
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1490 = _StringConst_129
	set	_StringConst_129,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1490  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=numberFreeFrames  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1922,r13		! source line 1922
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_1491 = _StringConst_130
	set	_StringConst_130,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1491  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1923,r13		! source line 1923
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1924,r13		! source line 1924
	mov	"\0\0SE",r10
!   _temp_1492 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Send message Print
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	1925,r13		! source line 1925
	mov	"\0\0SE",r10
!   _temp_1493 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
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
	mov	1925,r13		! source line 1925
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_2:
	.word	_sourceFileName
	.word	_Label_1494
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1495
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1496
	.word	-12
	.word	4
	.word	_Label_1497
	.word	-16
	.word	4
	.word	_Label_1498
	.word	-20
	.word	4
	.word	_Label_1499
	.word	-24
	.word	4
	.word	_Label_1500
	.word	-28
	.word	4
	.word	_Label_1501
	.word	-32
	.word	4
	.word	0
_Label_1494:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1495:
	.ascii	"Pself\0"
	.align
_Label_1496:
	.byte	'?'
	.ascii	"_temp_1493\0"
	.align
_Label_1497:
	.byte	'?'
	.ascii	"_temp_1492\0"
	.align
_Label_1498:
	.byte	'?'
	.ascii	"_temp_1491\0"
	.align
_Label_1499:
	.byte	'?'
	.ascii	"_temp_1490\0"
	.align
_Label_1500:
	.byte	'?'
	.ascii	"_temp_1489\0"
	.align
_Label_1501:
	.byte	'?'
	.ascii	"_temp_1488\0"
	.align
! 
! ===============  METHOD GetAFrame  ===============
! 
_Method_P_Kernel_FrameManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_3,r1
	push	r1
	mov	5,r1
_Label_3012:
	push	r0
	sub	r1,1,r1
	bne	_Label_3012
	mov	1930,r13		! source line 1930
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1946,r13		! source line 1946
	mov	"\0\0AS",r10
	mov	1946,r13		! source line 1946
	mov	"\0\0SE",r10
!   _temp_1502 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Send message FindZeroAndSet
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=f  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! ASSIGNMENT STATEMENT...
	mov	1953,r13		! source line 1953
	mov	"\0\0AS",r10
!   _temp_1503 = f * 8192		(int)
	load	[r14+-20],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   frameAddr = 1048576 + _temp_1503		(int)
	set	1048576,r1
	load	[r14+-12],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	1955,r13		! source line 1955
	mov	"\0\0RE",r10
!   ReturnResult: frameAddr  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_3:
	.word	_sourceFileName
	.word	_Label_1504
	.word	4		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1505
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1506
	.word	-12
	.word	4
	.word	_Label_1507
	.word	-16
	.word	4
	.word	_Label_1508
	.word	-20
	.word	4
	.word	_Label_1509
	.word	-24
	.word	4
	.word	0
_Label_1504:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetAFrame\0"
	.align
_Label_1505:
	.ascii	"Pself\0"
	.align
_Label_1506:
	.byte	'?'
	.ascii	"_temp_1503\0"
	.align
_Label_1507:
	.byte	'?'
	.ascii	"_temp_1502\0"
	.align
_Label_1508:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_1509:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
! 
! ===============  METHOD GetNewFrames  ===============
! 
_Method_P_Kernel_FrameManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_4,r1
	push	r1
	mov	13,r1
_Label_3013:
	push	r0
	sub	r1,1,r1
	bne	_Label_3013
	mov	1961,r13		! source line 1961
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1965,r13		! source line 1965
	mov	"\0\0SE",r10
!   _temp_1510 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   Send message Lock
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	1966,r13		! source line 1966
	mov	"\0\0WH",r10
_Label_1511:
!   if numberFreeFrames >= numFramesNeeded then goto _Label_1513		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1513
!	jmp	_Label_1512
_Label_1512:
	mov	1966,r13		! source line 1966
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1967,r13		! source line 1967
	mov	"\0\0SE",r10
!   _temp_1514 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   _temp_1515 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_1514  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_1511
_Label_1513:
! FOR STATEMENT...
	mov	1969,r13		! source line 1969
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1520 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-28]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1521 = numFramesNeeded - 1		(int)
	load	[r14+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1520  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+-44]
_Label_1516:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1521 then goto _Label_1519		
	load	[r14+-44],r1
	load	[r14+-24],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1519
_Label_1517:
	mov	1969,r13		! source line 1969
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1970,r13		! source line 1970
	mov	"\0\0AS",r10
	mov	1970,r13		! source line 1970
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1522) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message GetAFrame
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=frameAddr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
! SEND STATEMENT...
	mov	1971,r13		! source line 1971
	mov	"\0\0SE",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=frameAddr  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+8]
!   Send message SetFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1518:
!   i = i + 1
	load	[r14+-44],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
	jmp	_Label_1516
! END FOR
_Label_1519:
! ASSIGNMENT STATEMENT...
	mov	1973,r13		! source line 1973
	mov	"\0\0AS",r10
!   numberFreeFrames = numberFreeFrames - numFramesNeeded		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	1974,r13		! source line 1974
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1523 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1523 = numFramesNeeded  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1975,r13		! source line 1975
	mov	"\0\0SE",r10
!   _temp_1524 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
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
	mov	1975,r13		! source line 1975
	mov	"\0\0RE",r10
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_4:
	.word	_sourceFileName
	.word	_Label_1525
	.word	12		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_1526
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1527
	.word	12
	.word	4
	.word	_Label_1528
	.word	16
	.word	4
	.word	_Label_1529
	.word	-12
	.word	4
	.word	_Label_1530
	.word	-16
	.word	4
	.word	_Label_1531
	.word	-20
	.word	4
	.word	_Label_1532
	.word	-24
	.word	4
	.word	_Label_1533
	.word	-28
	.word	4
	.word	_Label_1534
	.word	-32
	.word	4
	.word	_Label_1535
	.word	-36
	.word	4
	.word	_Label_1536
	.word	-40
	.word	4
	.word	_Label_1537
	.word	-44
	.word	4
	.word	_Label_1538
	.word	-48
	.word	4
	.word	0
_Label_1525:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetNewFrames\0"
	.align
_Label_1526:
	.ascii	"Pself\0"
	.align
_Label_1527:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1528:
	.byte	'I'
	.ascii	"numFramesNeeded\0"
	.align
_Label_1529:
	.byte	'?'
	.ascii	"_temp_1524\0"
	.align
_Label_1530:
	.byte	'?'
	.ascii	"_temp_1523\0"
	.align
_Label_1531:
	.byte	'?'
	.ascii	"_temp_1522\0"
	.align
_Label_1532:
	.byte	'?'
	.ascii	"_temp_1521\0"
	.align
_Label_1533:
	.byte	'?'
	.ascii	"_temp_1520\0"
	.align
_Label_1534:
	.byte	'?'
	.ascii	"_temp_1515\0"
	.align
_Label_1535:
	.byte	'?'
	.ascii	"_temp_1514\0"
	.align
_Label_1536:
	.byte	'?'
	.ascii	"_temp_1510\0"
	.align
_Label_1537:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1538:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
! 
! ===============  METHOD ReturnAllFrames  ===============
! 
_Method_P_Kernel_FrameManager_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_5,r1
	push	r1
	mov	17,r1
_Label_3014:
	push	r0
	sub	r1,1,r1
	bne	_Label_3014
	mov	1980,r13		! source line 1980
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1985,r13		! source line 1985
	mov	"\0\0SE",r10
!   _temp_1539 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-56]
!   Send message Lock
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! FOR STATEMENT...
	mov	1986,r13		! source line 1986
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1544 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-52]
!   Calculate and save the FOR-LOOP ending value
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1547 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Data Move: _temp_1546 = *_temp_1547  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_1545 = _temp_1546 - 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1544  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+-60]
_Label_1540:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1545 then goto _Label_1543		
	load	[r14+-60],r1
	load	[r14+-48],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1543
_Label_1541:
	mov	1986,r13		! source line 1986
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1987,r13		! source line 1987
	mov	"\0\0AS",r10
	mov	1987,r13		! source line 1987
	mov	"\0\0SE",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=frameAddr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-68]
! ASSIGNMENT STATEMENT...
	mov	1988,r13		! source line 1988
	mov	"\0\0AS",r10
!   _temp_1548 = frameAddr - 1048576		(int)
	load	[r14+-68],r1
	set	1048576,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   bitIndex = _temp_1548 div 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
! SEND STATEMENT...
	mov	1989,r13		! source line 1989
	mov	"\0\0SE",r10
!   _temp_1549 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=bitIndex  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Send message ClearBit
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1542:
!   i = i + 1
	load	[r14+-60],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
	jmp	_Label_1540
! END FOR
_Label_1543:
! ASSIGNMENT STATEMENT...
	mov	1991,r13		! source line 1991
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1551 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Data Move: _temp_1550 = *_temp_1551  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   numberFreeFrames = numberFreeFrames + _temp_1550		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+-28],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! SEND STATEMENT...
	mov	1992,r13		! source line 1992
	mov	"\0\0SE",r10
!   _temp_1552 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   _temp_1553 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1552  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Broadcast
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! SEND STATEMENT...
	mov	1993,r13		! source line 1993
	mov	"\0\0SE",r10
!   _temp_1554 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
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
	mov	1993,r13		! source line 1993
	mov	"\0\0RE",r10
	add	r15,72,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_5:
	.word	_sourceFileName
	.word	_Label_1555
	.word	8		! total size of parameters
	.word	68		! frame size = 68
	.word	_Label_1556
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1557
	.word	12
	.word	4
	.word	_Label_1558
	.word	-12
	.word	4
	.word	_Label_1559
	.word	-16
	.word	4
	.word	_Label_1560
	.word	-20
	.word	4
	.word	_Label_1561
	.word	-24
	.word	4
	.word	_Label_1562
	.word	-28
	.word	4
	.word	_Label_1563
	.word	-32
	.word	4
	.word	_Label_1564
	.word	-36
	.word	4
	.word	_Label_1565
	.word	-40
	.word	4
	.word	_Label_1566
	.word	-44
	.word	4
	.word	_Label_1567
	.word	-48
	.word	4
	.word	_Label_1568
	.word	-52
	.word	4
	.word	_Label_1569
	.word	-56
	.word	4
	.word	_Label_1570
	.word	-60
	.word	4
	.word	_Label_1571
	.word	-64
	.word	4
	.word	_Label_1572
	.word	-68
	.word	4
	.word	0
_Label_1555:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"ReturnAllFrames\0"
	.align
_Label_1556:
	.ascii	"Pself\0"
	.align
_Label_1557:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1558:
	.byte	'?'
	.ascii	"_temp_1554\0"
	.align
_Label_1559:
	.byte	'?'
	.ascii	"_temp_1553\0"
	.align
_Label_1560:
	.byte	'?'
	.ascii	"_temp_1552\0"
	.align
_Label_1561:
	.byte	'?'
	.ascii	"_temp_1551\0"
	.align
_Label_1562:
	.byte	'?'
	.ascii	"_temp_1550\0"
	.align
_Label_1563:
	.byte	'?'
	.ascii	"_temp_1549\0"
	.align
_Label_1564:
	.byte	'?'
	.ascii	"_temp_1548\0"
	.align
_Label_1565:
	.byte	'?'
	.ascii	"_temp_1547\0"
	.align
_Label_1566:
	.byte	'?'
	.ascii	"_temp_1546\0"
	.align
_Label_1567:
	.byte	'?'
	.ascii	"_temp_1545\0"
	.align
_Label_1568:
	.byte	'?'
	.ascii	"_temp_1544\0"
	.align
_Label_1569:
	.byte	'?'
	.ascii	"_temp_1539\0"
	.align
_Label_1570:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1571:
	.byte	'I'
	.ascii	"bitIndex\0"
	.align
_Label_1572:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
! 
! ===============  CLASS AddrSpace  ===============
! 
! Dispatch Table:
! 
_P_Kernel_AddrSpace:
	.word	_Label_1573
	jmp	_Method_P_Kernel_AddrSpace_1	! 4:	Init
	jmp	_Method_P_Kernel_AddrSpace_2	! 8:	Print
	jmp	_Method_P_Kernel_AddrSpace_3	! 12:	ExtractFrameAddr
	jmp	_Method_P_Kernel_AddrSpace_4	! 16:	ExtractUndefinedBits
	jmp	_Method_P_Kernel_AddrSpace_5	! 20:	SetFrameAddr
	jmp	_Method_P_Kernel_AddrSpace_6	! 24:	IsDirty
	jmp	_Method_P_Kernel_AddrSpace_7	! 28:	IsReferenced
	jmp	_Method_P_Kernel_AddrSpace_8	! 32:	IsWritable
	jmp	_Method_P_Kernel_AddrSpace_9	! 36:	IsValid
	jmp	_Method_P_Kernel_AddrSpace_10	! 40:	SetDirty
	jmp	_Method_P_Kernel_AddrSpace_11	! 44:	SetReferenced
	jmp	_Method_P_Kernel_AddrSpace_12	! 48:	SetWritable
	jmp	_Method_P_Kernel_AddrSpace_13	! 52:	SetValid
	jmp	_Method_P_Kernel_AddrSpace_14	! 56:	ClearDirty
	jmp	_Method_P_Kernel_AddrSpace_15	! 60:	ClearReferenced
	jmp	_Method_P_Kernel_AddrSpace_16	! 64:	ClearWritable
	jmp	_Method_P_Kernel_AddrSpace_17	! 68:	ClearValid
	jmp	_Method_P_Kernel_AddrSpace_18	! 72:	SetToThisPageTable
	jmp	_Method_P_Kernel_AddrSpace_19	! 76:	CopyBytesFromVirtual
	jmp	_Method_P_Kernel_AddrSpace_20	! 80:	CopyBytesToVirtual
	jmp	_Method_P_Kernel_AddrSpace_21	! 84:	GetStringFromVirtual
	.word	0
! 
! Class descriptor:
! 
_Label_1573:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1574
	.word	_sourceFileName
	.word	275		! line number
	.word	92		! size of instances, in bytes
	.word	_P_Kernel_AddrSpace
	.word	_P_System_Object
	.word	0
_Label_1574:
	.ascii	"AddrSpace\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_AddrSpace_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_1,r1
	push	r1
	mov	25,r1
_Label_3015:
	push	r0
	sub	r1,1,r1
	bne	_Label_3015
	mov	2004,r13		! source line 2004
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2008,r13		! source line 2008
	mov	"\0\0AS",r10
!   numberOfPages = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	2009,r13		! source line 2009
	mov	"\0\0AS",r10
!   _temp_1575 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-108]
!   NEW ARRAY Constructor...
!   _temp_1577 = &_temp_1576
	add	r14,-104,r1
	store	r1,[r14+-20]
!   _temp_1577 = _temp_1577 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	20,r1
	store	r1,[r14+-16]
_Label_1579:
!   Data Move: *_temp_1577 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_1577 = _temp_1577 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1578 = _temp_1578 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_1578) then goto _Label_1579
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_1579
!   Initialize the array size...
	mov	20,r1
	store	r1,[r14+-104]
!   _temp_1580 = &_temp_1576
	add	r14,-104,r1
	store	r1,[r14+-12]
!   make sure array has size 20
	load	[r14+-108],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,0
	be	_Label_3016
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3016:
!   make sure array has size 20
	load	[r14+-12],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1575 = *_temp_1580  (sizeInBytes=84)
	load	[r14+-12],r5
	load	[r14+-108],r4
	mov	21,r3
_Label_3017:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3017
! RETURN STATEMENT...
	mov	2009,r13		! source line 2009
	mov	"\0\0RE",r10
	add	r15,104,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_1:
	.word	_sourceFileName
	.word	_Label_1581
	.word	4		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_1582
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1583
	.word	-12
	.word	4
	.word	_Label_1584
	.word	-16
	.word	4
	.word	_Label_1585
	.word	-20
	.word	4
	.word	_Label_1586
	.word	-104
	.word	84
	.word	_Label_1587
	.word	-108
	.word	4
	.word	0
_Label_1581:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1582:
	.ascii	"Pself\0"
	.align
_Label_1583:
	.byte	'?'
	.ascii	"_temp_1580\0"
	.align
_Label_1584:
	.byte	'?'
	.ascii	"_temp_1578\0"
	.align
_Label_1585:
	.byte	'?'
	.ascii	"_temp_1577\0"
	.align
_Label_1586:
	.byte	'?'
	.ascii	"_temp_1576\0"
	.align
_Label_1587:
	.byte	'?'
	.ascii	"_temp_1575\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_AddrSpace_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_2,r1
	push	r1
	mov	42,r1
_Label_3018:
	push	r0
	sub	r1,1,r1
	bne	_Label_3018
	mov	2014,r13		! source line 2014
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1588 = _StringConst_131
	set	_StringConst_131,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_1588  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	2019,r13		! source line 2019
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1589 = _StringConst_132
	set	_StringConst_132,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_1589  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	2020,r13		! source line 2020
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2021,r13		! source line 2021
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1594 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-156]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1595 = numberOfPages - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1594  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+-168]
_Label_1590:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1595 then goto _Label_1593		
	load	[r14+-168],r1
	load	[r14+-152],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1593
_Label_1591:
	mov	2021,r13		! source line 2021
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1596 = _StringConst_133
	set	_StringConst_133,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1596  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	2022,r13		! source line 2022
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1598 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-140]
!   Move address of _temp_1598 [i ] into _temp_1599
!     make sure index expr is >= 0
	load	[r14+-168],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-140],r1
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
	store	r2,[r14+-136]
!   _temp_1597 = _temp_1599		(4 bytes)
	load	[r14+-136],r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=8  value=_temp_1597  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	2023,r13		! source line 2023
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1600 = _StringConst_134
	set	_StringConst_134,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1600  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	2024,r13		! source line 2024
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1602 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-124]
!   Move address of _temp_1602 [i ] into _temp_1603
!     make sure index expr is >= 0
	load	[r14+-168],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-124],r1
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
	store	r2,[r14+-120]
!   Data Move: _temp_1601 = *_temp_1603  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_1601  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	2025,r13		! source line 2025
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1604 = _StringConst_135
	set	_StringConst_135,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_1604  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2026,r13		! source line 2026
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1605 = i * 8192		(int)
	load	[r14+-168],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1605  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	2027,r13		! source line 2027
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1606 = _StringConst_136
	set	_StringConst_136,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_1606  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	2028,r13		! source line 2028
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	mov	2029,r13		! source line 2029
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_1608) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-100],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_1607  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1607  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	2029,r13		! source line 2029
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1609 = _StringConst_137
	set	_StringConst_137,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_1609  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	2030,r13		! source line 2030
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	2031,r13		! source line 2031
	mov	"\0\0IF",r10
	mov	2031,r13		! source line 2031
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-88]
!   if intIsZero (_temp_1613) then goto _runtimeErrorNullPointer
	load	[r14+-88],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message ExtractUndefinedBits
	load	[r14+-88],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_1612  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_1612) then goto _Label_1611
	load	[r14+-92],r1
	cmp	r1,r0
	be	_Label_1611
!	jmp	_Label_1610
_Label_1610:
! THEN...
	mov	2032,r13		! source line 2032
	mov	"\0\0TN",r10
! CALL STATEMENT...
	mov	2032,r13		! source line 2032
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_1615) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message ExtractUndefinedBits
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_1614  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1614  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	2032,r13		! source line 2032
	mov	"\0\0CE",r10
	call	printHex
	jmp	_Label_1616
_Label_1611:
! ELSE...
	mov	2034,r13		! source line 2034
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1617 = _StringConst_138
	set	_StringConst_138,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1617  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	2034,r13		! source line 2034
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1616:
! CALL STATEMENT...
!   _temp_1618 = _StringConst_139
	set	_StringConst_139,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1618  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	2036,r13		! source line 2036
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	2037,r13		! source line 2037
	mov	"\0\0IF",r10
	mov	2037,r13		! source line 2037
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_1621) then goto _runtimeErrorNullPointer
	load	[r14+-68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsDirty
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
!   if result==true then goto _Label_1619 else goto _Label_1620
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1620
	jmp	_Label_1619
_Label_1619:
! THEN...
	mov	2038,r13		! source line 2038
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1622 = _StringConst_140
	set	_StringConst_140,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1622  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	2038,r13		! source line 2038
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1623
_Label_1620:
! ELSE...
	mov	2040,r13		! source line 2040
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1624 = _StringConst_141
	set	_StringConst_141,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_1624  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	2040,r13		! source line 2040
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1623:
! CALL STATEMENT...
!   _temp_1625 = _StringConst_142
	set	_StringConst_142,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_1625  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	2042,r13		! source line 2042
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	2043,r13		! source line 2043
	mov	"\0\0IF",r10
	mov	2043,r13		! source line 2043
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_1628) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsReferenced
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
!   if result==true then goto _Label_1626 else goto _Label_1627
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1627
	jmp	_Label_1626
_Label_1626:
! THEN...
	mov	2044,r13		! source line 2044
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1629 = _StringConst_143
	set	_StringConst_143,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1629  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	2044,r13		! source line 2044
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1630
_Label_1627:
! ELSE...
	mov	2046,r13		! source line 2046
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1631 = _StringConst_144
	set	_StringConst_144,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1631  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	2046,r13		! source line 2046
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1630:
! CALL STATEMENT...
!   _temp_1632 = _StringConst_145
	set	_StringConst_145,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1632  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	2048,r13		! source line 2048
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	2049,r13		! source line 2049
	mov	"\0\0IF",r10
	mov	2049,r13		! source line 2049
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_1635) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   if result==true then goto _Label_1633 else goto _Label_1634
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1634
	jmp	_Label_1633
_Label_1633:
! THEN...
	mov	2050,r13		! source line 2050
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1636 = _StringConst_146
	set	_StringConst_146,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1636  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2050,r13		! source line 2050
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1637
_Label_1634:
! ELSE...
	mov	2052,r13		! source line 2052
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1638 = _StringConst_147
	set	_StringConst_147,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1638  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2052,r13		! source line 2052
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1637:
! CALL STATEMENT...
!   _temp_1639 = _StringConst_148
	set	_StringConst_148,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1639  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2054,r13		! source line 2054
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	2055,r13		! source line 2055
	mov	"\0\0IF",r10
	mov	2055,r13		! source line 2055
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1642) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   if result==true then goto _Label_1640 else goto _Label_1641
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1641
	jmp	_Label_1640
_Label_1640:
! THEN...
	mov	2056,r13		! source line 2056
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1643 = _StringConst_149
	set	_StringConst_149,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1643  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2056,r13		! source line 2056
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1644
_Label_1641:
! ELSE...
	mov	2058,r13		! source line 2058
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1645 = _StringConst_150
	set	_StringConst_150,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1645  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2058,r13		! source line 2058
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1644:
! CALL STATEMENT...
!   Call the function
	mov	2060,r13		! source line 2060
	mov	"\0\0CA",r10
	call	_P_System_nl
!   Increment the FOR-LOOP index variable and jump back
_Label_1592:
!   i = i + 1
	load	[r14+-168],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-168]
	jmp	_Label_1590
! END FOR
_Label_1593:
! RETURN STATEMENT...
	mov	2021,r13		! source line 2021
	mov	"\0\0RE",r10
	add	r15,172,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_2:
	.word	_sourceFileName
	.word	_Label_1646
	.word	4		! total size of parameters
	.word	168		! frame size = 168
	.word	_Label_1647
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1648
	.word	-12
	.word	4
	.word	_Label_1649
	.word	-16
	.word	4
	.word	_Label_1650
	.word	-20
	.word	4
	.word	_Label_1651
	.word	-24
	.word	4
	.word	_Label_1652
	.word	-28
	.word	4
	.word	_Label_1653
	.word	-32
	.word	4
	.word	_Label_1654
	.word	-36
	.word	4
	.word	_Label_1655
	.word	-40
	.word	4
	.word	_Label_1656
	.word	-44
	.word	4
	.word	_Label_1657
	.word	-48
	.word	4
	.word	_Label_1658
	.word	-52
	.word	4
	.word	_Label_1659
	.word	-56
	.word	4
	.word	_Label_1660
	.word	-60
	.word	4
	.word	_Label_1661
	.word	-64
	.word	4
	.word	_Label_1662
	.word	-68
	.word	4
	.word	_Label_1663
	.word	-72
	.word	4
	.word	_Label_1664
	.word	-76
	.word	4
	.word	_Label_1665
	.word	-80
	.word	4
	.word	_Label_1666
	.word	-84
	.word	4
	.word	_Label_1667
	.word	-88
	.word	4
	.word	_Label_1668
	.word	-92
	.word	4
	.word	_Label_1669
	.word	-96
	.word	4
	.word	_Label_1670
	.word	-100
	.word	4
	.word	_Label_1671
	.word	-104
	.word	4
	.word	_Label_1672
	.word	-108
	.word	4
	.word	_Label_1673
	.word	-112
	.word	4
	.word	_Label_1674
	.word	-116
	.word	4
	.word	_Label_1675
	.word	-120
	.word	4
	.word	_Label_1676
	.word	-124
	.word	4
	.word	_Label_1677
	.word	-128
	.word	4
	.word	_Label_1678
	.word	-132
	.word	4
	.word	_Label_1679
	.word	-136
	.word	4
	.word	_Label_1680
	.word	-140
	.word	4
	.word	_Label_1681
	.word	-144
	.word	4
	.word	_Label_1682
	.word	-148
	.word	4
	.word	_Label_1683
	.word	-152
	.word	4
	.word	_Label_1684
	.word	-156
	.word	4
	.word	_Label_1685
	.word	-160
	.word	4
	.word	_Label_1686
	.word	-164
	.word	4
	.word	_Label_1687
	.word	-168
	.word	4
	.word	0
_Label_1646:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1647:
	.ascii	"Pself\0"
	.align
_Label_1648:
	.byte	'?'
	.ascii	"_temp_1645\0"
	.align
_Label_1649:
	.byte	'?'
	.ascii	"_temp_1643\0"
	.align
_Label_1650:
	.byte	'?'
	.ascii	"_temp_1642\0"
	.align
_Label_1651:
	.byte	'?'
	.ascii	"_temp_1639\0"
	.align
_Label_1652:
	.byte	'?'
	.ascii	"_temp_1638\0"
	.align
_Label_1653:
	.byte	'?'
	.ascii	"_temp_1636\0"
	.align
_Label_1654:
	.byte	'?'
	.ascii	"_temp_1635\0"
	.align
_Label_1655:
	.byte	'?'
	.ascii	"_temp_1632\0"
	.align
_Label_1656:
	.byte	'?'
	.ascii	"_temp_1631\0"
	.align
_Label_1657:
	.byte	'?'
	.ascii	"_temp_1629\0"
	.align
_Label_1658:
	.byte	'?'
	.ascii	"_temp_1628\0"
	.align
_Label_1659:
	.byte	'?'
	.ascii	"_temp_1625\0"
	.align
_Label_1660:
	.byte	'?'
	.ascii	"_temp_1624\0"
	.align
_Label_1661:
	.byte	'?'
	.ascii	"_temp_1622\0"
	.align
_Label_1662:
	.byte	'?'
	.ascii	"_temp_1621\0"
	.align
_Label_1663:
	.byte	'?'
	.ascii	"_temp_1618\0"
	.align
_Label_1664:
	.byte	'?'
	.ascii	"_temp_1617\0"
	.align
_Label_1665:
	.byte	'?'
	.ascii	"_temp_1615\0"
	.align
_Label_1666:
	.byte	'?'
	.ascii	"_temp_1614\0"
	.align
_Label_1667:
	.byte	'?'
	.ascii	"_temp_1613\0"
	.align
_Label_1668:
	.byte	'?'
	.ascii	"_temp_1612\0"
	.align
_Label_1669:
	.byte	'?'
	.ascii	"_temp_1609\0"
	.align
_Label_1670:
	.byte	'?'
	.ascii	"_temp_1608\0"
	.align
_Label_1671:
	.byte	'?'
	.ascii	"_temp_1607\0"
	.align
_Label_1672:
	.byte	'?'
	.ascii	"_temp_1606\0"
	.align
_Label_1673:
	.byte	'?'
	.ascii	"_temp_1605\0"
	.align
_Label_1674:
	.byte	'?'
	.ascii	"_temp_1604\0"
	.align
_Label_1675:
	.byte	'?'
	.ascii	"_temp_1603\0"
	.align
_Label_1676:
	.byte	'?'
	.ascii	"_temp_1602\0"
	.align
_Label_1677:
	.byte	'?'
	.ascii	"_temp_1601\0"
	.align
_Label_1678:
	.byte	'?'
	.ascii	"_temp_1600\0"
	.align
_Label_1679:
	.byte	'?'
	.ascii	"_temp_1599\0"
	.align
_Label_1680:
	.byte	'?'
	.ascii	"_temp_1598\0"
	.align
_Label_1681:
	.byte	'?'
	.ascii	"_temp_1597\0"
	.align
_Label_1682:
	.byte	'?'
	.ascii	"_temp_1596\0"
	.align
_Label_1683:
	.byte	'?'
	.ascii	"_temp_1595\0"
	.align
_Label_1684:
	.byte	'?'
	.ascii	"_temp_1594\0"
	.align
_Label_1685:
	.byte	'?'
	.ascii	"_temp_1589\0"
	.align
_Label_1686:
	.byte	'?'
	.ascii	"_temp_1588\0"
	.align
_Label_1687:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD ExtractFrameAddr  ===============
! 
_Method_P_Kernel_AddrSpace_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_3,r1
	push	r1
	mov	4,r1
_Label_3019:
	push	r0
	sub	r1,1,r1
	bne	_Label_3019
	mov	2066,r13		! source line 2066
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	2071,r13		! source line 2071
	mov	"\0\0RE",r10
!   _temp_1690 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1690 [entry ] into _temp_1691
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
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
	store	r2,[r14+-12]
!   Data Move: _temp_1689 = *_temp_1691  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1688 = _temp_1689 AND -8192		(int)
	load	[r14+-20],r1
	mov	-8192,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_1688  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_3:
	.word	_sourceFileName
	.word	_Label_1692
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1693
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1694
	.word	12
	.word	4
	.word	_Label_1695
	.word	-12
	.word	4
	.word	_Label_1696
	.word	-16
	.word	4
	.word	_Label_1697
	.word	-20
	.word	4
	.word	_Label_1698
	.word	-24
	.word	4
	.word	0
_Label_1692:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractFrameAddr\0"
	.align
_Label_1693:
	.ascii	"Pself\0"
	.align
_Label_1694:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1695:
	.byte	'?'
	.ascii	"_temp_1691\0"
	.align
_Label_1696:
	.byte	'?'
	.ascii	"_temp_1690\0"
	.align
_Label_1697:
	.byte	'?'
	.ascii	"_temp_1689\0"
	.align
_Label_1698:
	.byte	'?'
	.ascii	"_temp_1688\0"
	.align
! 
! ===============  METHOD ExtractUndefinedBits  ===============
! 
_Method_P_Kernel_AddrSpace_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_4,r1
	push	r1
	mov	4,r1
_Label_3020:
	push	r0
	sub	r1,1,r1
	bne	_Label_3020
	mov	2076,r13		! source line 2076
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	2080,r13		! source line 2080
	mov	"\0\0RE",r10
!   _temp_1701 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1701 [entry ] into _temp_1702
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
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
	store	r2,[r14+-12]
!   Data Move: _temp_1700 = *_temp_1702  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1699 = _temp_1700 AND 8176		(int)
	load	[r14+-20],r1
	mov	8176,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_1699  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_4:
	.word	_sourceFileName
	.word	_Label_1703
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1704
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1705
	.word	12
	.word	4
	.word	_Label_1706
	.word	-12
	.word	4
	.word	_Label_1707
	.word	-16
	.word	4
	.word	_Label_1708
	.word	-20
	.word	4
	.word	_Label_1709
	.word	-24
	.word	4
	.word	0
_Label_1703:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractUndefinedBits\0"
	.align
_Label_1704:
	.ascii	"Pself\0"
	.align
_Label_1705:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1706:
	.byte	'?'
	.ascii	"_temp_1702\0"
	.align
_Label_1707:
	.byte	'?'
	.ascii	"_temp_1701\0"
	.align
_Label_1708:
	.byte	'?'
	.ascii	"_temp_1700\0"
	.align
_Label_1709:
	.byte	'?'
	.ascii	"_temp_1699\0"
	.align
! 
! ===============  METHOD SetFrameAddr  ===============
! 
_Method_P_Kernel_AddrSpace_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_5,r1
	push	r1
	mov	7,r1
_Label_3021:
	push	r0
	sub	r1,1,r1
	bne	_Label_3021
	mov	2085,r13		! source line 2085
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2090,r13		! source line 2090
	mov	"\0\0AS",r10
!   _temp_1710 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-36]
!   Move address of _temp_1710 [entry ] into _temp_1711
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
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
	store	r2,[r14+-32]
!   _temp_1715 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1715 [entry ] into _temp_1716
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
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
	store	r2,[r14+-12]
!   Data Move: _temp_1714 = *_temp_1716  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1713 = _temp_1714 AND 8191		(int)
	load	[r14+-20],r1
	mov	8191,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   _temp_1712 = _temp_1713 OR frameAddr		(int)
	load	[r14+-24],r1
	load	[r14+16],r2
	or	r1,r2,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1711 = _temp_1712  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r14+-32],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2090,r13		! source line 2090
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_5:
	.word	_sourceFileName
	.word	_Label_1717
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1718
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1719
	.word	12
	.word	4
	.word	_Label_1720
	.word	16
	.word	4
	.word	_Label_1721
	.word	-12
	.word	4
	.word	_Label_1722
	.word	-16
	.word	4
	.word	_Label_1723
	.word	-20
	.word	4
	.word	_Label_1724
	.word	-24
	.word	4
	.word	_Label_1725
	.word	-28
	.word	4
	.word	_Label_1726
	.word	-32
	.word	4
	.word	_Label_1727
	.word	-36
	.word	4
	.word	0
_Label_1717:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetFrameAddr\0"
	.align
_Label_1718:
	.ascii	"Pself\0"
	.align
_Label_1719:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1720:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_1721:
	.byte	'?'
	.ascii	"_temp_1716\0"
	.align
_Label_1722:
	.byte	'?'
	.ascii	"_temp_1715\0"
	.align
_Label_1723:
	.byte	'?'
	.ascii	"_temp_1714\0"
	.align
_Label_1724:
	.byte	'?'
	.ascii	"_temp_1713\0"
	.align
_Label_1725:
	.byte	'?'
	.ascii	"_temp_1712\0"
	.align
_Label_1726:
	.byte	'?'
	.ascii	"_temp_1711\0"
	.align
_Label_1727:
	.byte	'?'
	.ascii	"_temp_1710\0"
	.align
! 
! ===============  METHOD IsDirty  ===============
! 
_Method_P_Kernel_AddrSpace_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_6,r1
	push	r1
	mov	5,r1
_Label_3022:
	push	r0
	sub	r1,1,r1
	bne	_Label_3022
	mov	2095,r13		! source line 2095
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	2099,r13		! source line 2099
	mov	"\0\0RE",r10
!   _temp_1731 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1731 [entry ] into _temp_1732
!     make sure index expr is >= 0
	load	[r14+12],r2
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
!   Data Move: _temp_1730 = *_temp_1732  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1729 = _temp_1730 AND 8		(int)
	load	[r14+-24],r1
	mov	8,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1729) then goto _Label_1733
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1733
!   _temp_1728 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1734
_Label_1733:
!   _temp_1728 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1734:
!   ReturnResult: _temp_1728  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_6:
	.word	_sourceFileName
	.word	_Label_1735
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1736
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1737
	.word	12
	.word	4
	.word	_Label_1738
	.word	-16
	.word	4
	.word	_Label_1739
	.word	-20
	.word	4
	.word	_Label_1740
	.word	-24
	.word	4
	.word	_Label_1741
	.word	-28
	.word	4
	.word	_Label_1742
	.word	-9
	.word	1
	.word	0
_Label_1735:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsDirty\0"
	.align
_Label_1736:
	.ascii	"Pself\0"
	.align
_Label_1737:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1738:
	.byte	'?'
	.ascii	"_temp_1732\0"
	.align
_Label_1739:
	.byte	'?'
	.ascii	"_temp_1731\0"
	.align
_Label_1740:
	.byte	'?'
	.ascii	"_temp_1730\0"
	.align
_Label_1741:
	.byte	'?'
	.ascii	"_temp_1729\0"
	.align
_Label_1742:
	.byte	'C'
	.ascii	"_temp_1728\0"
	.align
! 
! ===============  METHOD IsReferenced  ===============
! 
_Method_P_Kernel_AddrSpace_7:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_7,r1
	push	r1
	mov	5,r1
_Label_3023:
	push	r0
	sub	r1,1,r1
	bne	_Label_3023
	mov	2104,r13		! source line 2104
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	2108,r13		! source line 2108
	mov	"\0\0RE",r10
!   _temp_1746 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1746 [entry ] into _temp_1747
!     make sure index expr is >= 0
	load	[r14+12],r2
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
!   Data Move: _temp_1745 = *_temp_1747  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1744 = _temp_1745 AND 4		(int)
	load	[r14+-24],r1
	mov	4,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1744) then goto _Label_1748
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1748
!   _temp_1743 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1749
_Label_1748:
!   _temp_1743 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1749:
!   ReturnResult: _temp_1743  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_7:
	.word	_sourceFileName
	.word	_Label_1750
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1751
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1752
	.word	12
	.word	4
	.word	_Label_1753
	.word	-16
	.word	4
	.word	_Label_1754
	.word	-20
	.word	4
	.word	_Label_1755
	.word	-24
	.word	4
	.word	_Label_1756
	.word	-28
	.word	4
	.word	_Label_1757
	.word	-9
	.word	1
	.word	0
_Label_1750:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsReferenced\0"
	.align
_Label_1751:
	.ascii	"Pself\0"
	.align
_Label_1752:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1753:
	.byte	'?'
	.ascii	"_temp_1747\0"
	.align
_Label_1754:
	.byte	'?'
	.ascii	"_temp_1746\0"
	.align
_Label_1755:
	.byte	'?'
	.ascii	"_temp_1745\0"
	.align
_Label_1756:
	.byte	'?'
	.ascii	"_temp_1744\0"
	.align
_Label_1757:
	.byte	'C'
	.ascii	"_temp_1743\0"
	.align
! 
! ===============  METHOD IsWritable  ===============
! 
_Method_P_Kernel_AddrSpace_8:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_8,r1
	push	r1
	mov	5,r1
_Label_3024:
	push	r0
	sub	r1,1,r1
	bne	_Label_3024
	mov	2113,r13		! source line 2113
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	2117,r13		! source line 2117
	mov	"\0\0RE",r10
!   _temp_1761 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1761 [entry ] into _temp_1762
!     make sure index expr is >= 0
	load	[r14+12],r2
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
!   Data Move: _temp_1760 = *_temp_1762  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1759 = _temp_1760 AND 2		(int)
	load	[r14+-24],r1
	mov	2,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1759) then goto _Label_1763
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1763
!   _temp_1758 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1764
_Label_1763:
!   _temp_1758 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1764:
!   ReturnResult: _temp_1758  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_8:
	.word	_sourceFileName
	.word	_Label_1765
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1766
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1767
	.word	12
	.word	4
	.word	_Label_1768
	.word	-16
	.word	4
	.word	_Label_1769
	.word	-20
	.word	4
	.word	_Label_1770
	.word	-24
	.word	4
	.word	_Label_1771
	.word	-28
	.word	4
	.word	_Label_1772
	.word	-9
	.word	1
	.word	0
_Label_1765:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsWritable\0"
	.align
_Label_1766:
	.ascii	"Pself\0"
	.align
_Label_1767:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1768:
	.byte	'?'
	.ascii	"_temp_1762\0"
	.align
_Label_1769:
	.byte	'?'
	.ascii	"_temp_1761\0"
	.align
_Label_1770:
	.byte	'?'
	.ascii	"_temp_1760\0"
	.align
_Label_1771:
	.byte	'?'
	.ascii	"_temp_1759\0"
	.align
_Label_1772:
	.byte	'C'
	.ascii	"_temp_1758\0"
	.align
! 
! ===============  METHOD IsValid  ===============
! 
_Method_P_Kernel_AddrSpace_9:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_9,r1
	push	r1
	mov	5,r1
_Label_3025:
	push	r0
	sub	r1,1,r1
	bne	_Label_3025
	mov	2122,r13		! source line 2122
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	2126,r13		! source line 2126
	mov	"\0\0RE",r10
!   _temp_1776 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1776 [entry ] into _temp_1777
!     make sure index expr is >= 0
	load	[r14+12],r2
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
!   Data Move: _temp_1775 = *_temp_1777  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1774 = _temp_1775 AND 1		(int)
	load	[r14+-24],r1
	mov	1,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1774) then goto _Label_1778
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1778
!   _temp_1773 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1779
_Label_1778:
!   _temp_1773 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1779:
!   ReturnResult: _temp_1773  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_9:
	.word	_sourceFileName
	.word	_Label_1780
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1781
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1782
	.word	12
	.word	4
	.word	_Label_1783
	.word	-16
	.word	4
	.word	_Label_1784
	.word	-20
	.word	4
	.word	_Label_1785
	.word	-24
	.word	4
	.word	_Label_1786
	.word	-28
	.word	4
	.word	_Label_1787
	.word	-9
	.word	1
	.word	0
_Label_1780:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsValid\0"
	.align
_Label_1781:
	.ascii	"Pself\0"
	.align
_Label_1782:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1783:
	.byte	'?'
	.ascii	"_temp_1777\0"
	.align
_Label_1784:
	.byte	'?'
	.ascii	"_temp_1776\0"
	.align
_Label_1785:
	.byte	'?'
	.ascii	"_temp_1775\0"
	.align
_Label_1786:
	.byte	'?'
	.ascii	"_temp_1774\0"
	.align
_Label_1787:
	.byte	'C'
	.ascii	"_temp_1773\0"
	.align
! 
! ===============  METHOD SetDirty  ===============
! 
_Method_P_Kernel_AddrSpace_10:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_10,r1
	push	r1
	mov	6,r1
_Label_3026:
	push	r0
	sub	r1,1,r1
	bne	_Label_3026
	mov	2131,r13		! source line 2131
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2135,r13		! source line 2135
	mov	"\0\0AS",r10
!   _temp_1788 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1788 [entry ] into _temp_1789
!     make sure index expr is >= 0
	load	[r14+12],r2
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
!   _temp_1792 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1792 [entry ] into _temp_1793
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
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
	store	r2,[r14+-12]
!   Data Move: _temp_1791 = *_temp_1793  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1790 = _temp_1791 OR 8		(int)
	load	[r14+-20],r1
	mov	8,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1789 = _temp_1790  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2135,r13		! source line 2135
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_10:
	.word	_sourceFileName
	.word	_Label_1794
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1795
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1796
	.word	12
	.word	4
	.word	_Label_1797
	.word	-12
	.word	4
	.word	_Label_1798
	.word	-16
	.word	4
	.word	_Label_1799
	.word	-20
	.word	4
	.word	_Label_1800
	.word	-24
	.word	4
	.word	_Label_1801
	.word	-28
	.word	4
	.word	_Label_1802
	.word	-32
	.word	4
	.word	0
_Label_1794:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetDirty\0"
	.align
_Label_1795:
	.ascii	"Pself\0"
	.align
_Label_1796:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1797:
	.byte	'?'
	.ascii	"_temp_1793\0"
	.align
_Label_1798:
	.byte	'?'
	.ascii	"_temp_1792\0"
	.align
_Label_1799:
	.byte	'?'
	.ascii	"_temp_1791\0"
	.align
_Label_1800:
	.byte	'?'
	.ascii	"_temp_1790\0"
	.align
_Label_1801:
	.byte	'?'
	.ascii	"_temp_1789\0"
	.align
_Label_1802:
	.byte	'?'
	.ascii	"_temp_1788\0"
	.align
! 
! ===============  METHOD SetReferenced  ===============
! 
_Method_P_Kernel_AddrSpace_11:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_11,r1
	push	r1
	mov	6,r1
_Label_3027:
	push	r0
	sub	r1,1,r1
	bne	_Label_3027
	mov	2140,r13		! source line 2140
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2144,r13		! source line 2144
	mov	"\0\0AS",r10
!   _temp_1803 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1803 [entry ] into _temp_1804
!     make sure index expr is >= 0
	load	[r14+12],r2
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
!   _temp_1807 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1807 [entry ] into _temp_1808
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
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
	store	r2,[r14+-12]
!   Data Move: _temp_1806 = *_temp_1808  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1805 = _temp_1806 OR 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1804 = _temp_1805  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2144,r13		! source line 2144
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_11:
	.word	_sourceFileName
	.word	_Label_1809
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1810
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1811
	.word	12
	.word	4
	.word	_Label_1812
	.word	-12
	.word	4
	.word	_Label_1813
	.word	-16
	.word	4
	.word	_Label_1814
	.word	-20
	.word	4
	.word	_Label_1815
	.word	-24
	.word	4
	.word	_Label_1816
	.word	-28
	.word	4
	.word	_Label_1817
	.word	-32
	.word	4
	.word	0
_Label_1809:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetReferenced\0"
	.align
_Label_1810:
	.ascii	"Pself\0"
	.align
_Label_1811:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1812:
	.byte	'?'
	.ascii	"_temp_1808\0"
	.align
_Label_1813:
	.byte	'?'
	.ascii	"_temp_1807\0"
	.align
_Label_1814:
	.byte	'?'
	.ascii	"_temp_1806\0"
	.align
_Label_1815:
	.byte	'?'
	.ascii	"_temp_1805\0"
	.align
_Label_1816:
	.byte	'?'
	.ascii	"_temp_1804\0"
	.align
_Label_1817:
	.byte	'?'
	.ascii	"_temp_1803\0"
	.align
! 
! ===============  METHOD SetWritable  ===============
! 
_Method_P_Kernel_AddrSpace_12:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_12,r1
	push	r1
	mov	6,r1
_Label_3028:
	push	r0
	sub	r1,1,r1
	bne	_Label_3028
	mov	2149,r13		! source line 2149
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2153,r13		! source line 2153
	mov	"\0\0AS",r10
!   _temp_1818 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1818 [entry ] into _temp_1819
!     make sure index expr is >= 0
	load	[r14+12],r2
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
!   _temp_1822 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1822 [entry ] into _temp_1823
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
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
	store	r2,[r14+-12]
!   Data Move: _temp_1821 = *_temp_1823  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1820 = _temp_1821 OR 2		(int)
	load	[r14+-20],r1
	mov	2,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1819 = _temp_1820  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2153,r13		! source line 2153
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_12:
	.word	_sourceFileName
	.word	_Label_1824
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1825
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1826
	.word	12
	.word	4
	.word	_Label_1827
	.word	-12
	.word	4
	.word	_Label_1828
	.word	-16
	.word	4
	.word	_Label_1829
	.word	-20
	.word	4
	.word	_Label_1830
	.word	-24
	.word	4
	.word	_Label_1831
	.word	-28
	.word	4
	.word	_Label_1832
	.word	-32
	.word	4
	.word	0
_Label_1824:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetWritable\0"
	.align
_Label_1825:
	.ascii	"Pself\0"
	.align
_Label_1826:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1827:
	.byte	'?'
	.ascii	"_temp_1823\0"
	.align
_Label_1828:
	.byte	'?'
	.ascii	"_temp_1822\0"
	.align
_Label_1829:
	.byte	'?'
	.ascii	"_temp_1821\0"
	.align
_Label_1830:
	.byte	'?'
	.ascii	"_temp_1820\0"
	.align
_Label_1831:
	.byte	'?'
	.ascii	"_temp_1819\0"
	.align
_Label_1832:
	.byte	'?'
	.ascii	"_temp_1818\0"
	.align
! 
! ===============  METHOD SetValid  ===============
! 
_Method_P_Kernel_AddrSpace_13:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_13,r1
	push	r1
	mov	6,r1
_Label_3029:
	push	r0
	sub	r1,1,r1
	bne	_Label_3029
	mov	2158,r13		! source line 2158
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2162,r13		! source line 2162
	mov	"\0\0AS",r10
!   _temp_1833 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1833 [entry ] into _temp_1834
!     make sure index expr is >= 0
	load	[r14+12],r2
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
!   _temp_1837 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1837 [entry ] into _temp_1838
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
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
	store	r2,[r14+-12]
!   Data Move: _temp_1836 = *_temp_1838  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1835 = _temp_1836 OR 1		(int)
	load	[r14+-20],r1
	mov	1,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1834 = _temp_1835  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2162,r13		! source line 2162
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_13:
	.word	_sourceFileName
	.word	_Label_1839
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1840
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1841
	.word	12
	.word	4
	.word	_Label_1842
	.word	-12
	.word	4
	.word	_Label_1843
	.word	-16
	.word	4
	.word	_Label_1844
	.word	-20
	.word	4
	.word	_Label_1845
	.word	-24
	.word	4
	.word	_Label_1846
	.word	-28
	.word	4
	.word	_Label_1847
	.word	-32
	.word	4
	.word	0
_Label_1839:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetValid\0"
	.align
_Label_1840:
	.ascii	"Pself\0"
	.align
_Label_1841:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1842:
	.byte	'?'
	.ascii	"_temp_1838\0"
	.align
_Label_1843:
	.byte	'?'
	.ascii	"_temp_1837\0"
	.align
_Label_1844:
	.byte	'?'
	.ascii	"_temp_1836\0"
	.align
_Label_1845:
	.byte	'?'
	.ascii	"_temp_1835\0"
	.align
_Label_1846:
	.byte	'?'
	.ascii	"_temp_1834\0"
	.align
_Label_1847:
	.byte	'?'
	.ascii	"_temp_1833\0"
	.align
! 
! ===============  METHOD ClearDirty  ===============
! 
_Method_P_Kernel_AddrSpace_14:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_14,r1
	push	r1
	mov	6,r1
_Label_3030:
	push	r0
	sub	r1,1,r1
	bne	_Label_3030
	mov	2167,r13		! source line 2167
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2171,r13		! source line 2171
	mov	"\0\0AS",r10
!   _temp_1848 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1848 [entry ] into _temp_1849
!     make sure index expr is >= 0
	load	[r14+12],r2
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
!   _temp_1852 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1852 [entry ] into _temp_1853
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
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
	store	r2,[r14+-12]
!   Data Move: _temp_1851 = *_temp_1853  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1850 = _temp_1851 AND -9		(int)
	load	[r14+-20],r1
	mov	-9,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1849 = _temp_1850  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2171,r13		! source line 2171
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_14:
	.word	_sourceFileName
	.word	_Label_1854
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1855
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1856
	.word	12
	.word	4
	.word	_Label_1857
	.word	-12
	.word	4
	.word	_Label_1858
	.word	-16
	.word	4
	.word	_Label_1859
	.word	-20
	.word	4
	.word	_Label_1860
	.word	-24
	.word	4
	.word	_Label_1861
	.word	-28
	.word	4
	.word	_Label_1862
	.word	-32
	.word	4
	.word	0
_Label_1854:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearDirty\0"
	.align
_Label_1855:
	.ascii	"Pself\0"
	.align
_Label_1856:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1857:
	.byte	'?'
	.ascii	"_temp_1853\0"
	.align
_Label_1858:
	.byte	'?'
	.ascii	"_temp_1852\0"
	.align
_Label_1859:
	.byte	'?'
	.ascii	"_temp_1851\0"
	.align
_Label_1860:
	.byte	'?'
	.ascii	"_temp_1850\0"
	.align
_Label_1861:
	.byte	'?'
	.ascii	"_temp_1849\0"
	.align
_Label_1862:
	.byte	'?'
	.ascii	"_temp_1848\0"
	.align
! 
! ===============  METHOD ClearReferenced  ===============
! 
_Method_P_Kernel_AddrSpace_15:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_15,r1
	push	r1
	mov	6,r1
_Label_3031:
	push	r0
	sub	r1,1,r1
	bne	_Label_3031
	mov	2176,r13		! source line 2176
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2180,r13		! source line 2180
	mov	"\0\0AS",r10
!   _temp_1863 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1863 [entry ] into _temp_1864
!     make sure index expr is >= 0
	load	[r14+12],r2
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
!   _temp_1867 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1867 [entry ] into _temp_1868
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
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
	store	r2,[r14+-12]
!   Data Move: _temp_1866 = *_temp_1868  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1865 = _temp_1866 AND -5		(int)
	load	[r14+-20],r1
	mov	-5,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1864 = _temp_1865  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2180,r13		! source line 2180
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_15:
	.word	_sourceFileName
	.word	_Label_1869
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1870
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1871
	.word	12
	.word	4
	.word	_Label_1872
	.word	-12
	.word	4
	.word	_Label_1873
	.word	-16
	.word	4
	.word	_Label_1874
	.word	-20
	.word	4
	.word	_Label_1875
	.word	-24
	.word	4
	.word	_Label_1876
	.word	-28
	.word	4
	.word	_Label_1877
	.word	-32
	.word	4
	.word	0
_Label_1869:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearReferenced\0"
	.align
_Label_1870:
	.ascii	"Pself\0"
	.align
_Label_1871:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1872:
	.byte	'?'
	.ascii	"_temp_1868\0"
	.align
_Label_1873:
	.byte	'?'
	.ascii	"_temp_1867\0"
	.align
_Label_1874:
	.byte	'?'
	.ascii	"_temp_1866\0"
	.align
_Label_1875:
	.byte	'?'
	.ascii	"_temp_1865\0"
	.align
_Label_1876:
	.byte	'?'
	.ascii	"_temp_1864\0"
	.align
_Label_1877:
	.byte	'?'
	.ascii	"_temp_1863\0"
	.align
! 
! ===============  METHOD ClearWritable  ===============
! 
_Method_P_Kernel_AddrSpace_16:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_16,r1
	push	r1
	mov	6,r1
_Label_3032:
	push	r0
	sub	r1,1,r1
	bne	_Label_3032
	mov	2185,r13		! source line 2185
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2189,r13		! source line 2189
	mov	"\0\0AS",r10
!   _temp_1878 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1878 [entry ] into _temp_1879
!     make sure index expr is >= 0
	load	[r14+12],r2
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
!   _temp_1882 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1882 [entry ] into _temp_1883
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
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
	store	r2,[r14+-12]
!   Data Move: _temp_1881 = *_temp_1883  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1880 = _temp_1881 AND -3		(int)
	load	[r14+-20],r1
	mov	-3,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1879 = _temp_1880  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2189,r13		! source line 2189
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_16:
	.word	_sourceFileName
	.word	_Label_1884
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1885
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1886
	.word	12
	.word	4
	.word	_Label_1887
	.word	-12
	.word	4
	.word	_Label_1888
	.word	-16
	.word	4
	.word	_Label_1889
	.word	-20
	.word	4
	.word	_Label_1890
	.word	-24
	.word	4
	.word	_Label_1891
	.word	-28
	.word	4
	.word	_Label_1892
	.word	-32
	.word	4
	.word	0
_Label_1884:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearWritable\0"
	.align
_Label_1885:
	.ascii	"Pself\0"
	.align
_Label_1886:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1887:
	.byte	'?'
	.ascii	"_temp_1883\0"
	.align
_Label_1888:
	.byte	'?'
	.ascii	"_temp_1882\0"
	.align
_Label_1889:
	.byte	'?'
	.ascii	"_temp_1881\0"
	.align
_Label_1890:
	.byte	'?'
	.ascii	"_temp_1880\0"
	.align
_Label_1891:
	.byte	'?'
	.ascii	"_temp_1879\0"
	.align
_Label_1892:
	.byte	'?'
	.ascii	"_temp_1878\0"
	.align
! 
! ===============  METHOD ClearValid  ===============
! 
_Method_P_Kernel_AddrSpace_17:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_17,r1
	push	r1
	mov	6,r1
_Label_3033:
	push	r0
	sub	r1,1,r1
	bne	_Label_3033
	mov	2194,r13		! source line 2194
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2198,r13		! source line 2198
	mov	"\0\0AS",r10
!   _temp_1893 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1893 [entry ] into _temp_1894
!     make sure index expr is >= 0
	load	[r14+12],r2
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
!   _temp_1897 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1897 [entry ] into _temp_1898
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
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
	store	r2,[r14+-12]
!   Data Move: _temp_1896 = *_temp_1898  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1895 = _temp_1896 AND -2		(int)
	load	[r14+-20],r1
	mov	-2,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1894 = _temp_1895  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2198,r13		! source line 2198
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_17:
	.word	_sourceFileName
	.word	_Label_1899
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1900
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1901
	.word	12
	.word	4
	.word	_Label_1902
	.word	-12
	.word	4
	.word	_Label_1903
	.word	-16
	.word	4
	.word	_Label_1904
	.word	-20
	.word	4
	.word	_Label_1905
	.word	-24
	.word	4
	.word	_Label_1906
	.word	-28
	.word	4
	.word	_Label_1907
	.word	-32
	.word	4
	.word	0
_Label_1899:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearValid\0"
	.align
_Label_1900:
	.ascii	"Pself\0"
	.align
_Label_1901:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1902:
	.byte	'?'
	.ascii	"_temp_1898\0"
	.align
_Label_1903:
	.byte	'?'
	.ascii	"_temp_1897\0"
	.align
_Label_1904:
	.byte	'?'
	.ascii	"_temp_1896\0"
	.align
_Label_1905:
	.byte	'?'
	.ascii	"_temp_1895\0"
	.align
_Label_1906:
	.byte	'?'
	.ascii	"_temp_1894\0"
	.align
_Label_1907:
	.byte	'?'
	.ascii	"_temp_1893\0"
	.align
! 
! ===============  METHOD SetToThisPageTable  ===============
! 
_Method_P_Kernel_AddrSpace_18:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_18,r1
	push	r1
	mov	6,r1
_Label_3034:
	push	r0
	sub	r1,1,r1
	bne	_Label_3034
	mov	2203,r13		! source line 2203
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1909 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1909 [0 ] into _temp_1910
!     make sure index expr is >= 0
	mov	0,r2
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
!   _temp_1908 = _temp_1910		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_1911 = numberOfPages * 4		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	4,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1908  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1911  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+4]
!   Call the function
	mov	2209,r13		! source line 2209
	mov	"\0\0CE",r10
	call	LoadPageTableRegs
! RETURN STATEMENT...
	mov	2209,r13		! source line 2209
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_18:
	.word	_sourceFileName
	.word	_Label_1912
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1913
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1914
	.word	-12
	.word	4
	.word	_Label_1915
	.word	-16
	.word	4
	.word	_Label_1916
	.word	-20
	.word	4
	.word	_Label_1917
	.word	-24
	.word	4
	.word	0
_Label_1912:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetToThisPageTable\0"
	.align
_Label_1913:
	.ascii	"Pself\0"
	.align
_Label_1914:
	.byte	'?'
	.ascii	"_temp_1911\0"
	.align
_Label_1915:
	.byte	'?'
	.ascii	"_temp_1910\0"
	.align
_Label_1916:
	.byte	'?'
	.ascii	"_temp_1909\0"
	.align
_Label_1917:
	.byte	'?'
	.ascii	"_temp_1908\0"
	.align
! 
! ===============  METHOD CopyBytesFromVirtual  ===============
! 
_Method_P_Kernel_AddrSpace_19:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_19,r1
	push	r1
	mov	12,r1
_Label_3035:
	push	r0
	sub	r1,1,r1
	bne	_Label_3035
	mov	2214,r13		! source line 2214
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2229,r13		! source line 2229
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_1918
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_1918
	jmp	_Label_1919
_Label_1918:
! THEN...
	mov	2230,r13		! source line 2230
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2230,r13		! source line 2230
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_1920
_Label_1919:
! ELSE...
	mov	2231,r13		! source line 2231
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	2231,r13		! source line 2231
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_1922		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1922
!	jmp	_Label_1921
_Label_1921:
! THEN...
	mov	2232,r13		! source line 2232
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2232,r13		! source line 2232
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1922:
! END IF...
_Label_1920:
! ASSIGNMENT STATEMENT...
	mov	2234,r13		! source line 2234
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+16],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2235,r13		! source line 2235
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+16],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	2238,r13		! source line 2238
	mov	"\0\0WH",r10
_Label_1923:
!	jmp	_Label_1924
_Label_1924:
	mov	2238,r13		! source line 2238
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	2239,r13		! source line 2239
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_1927		(int)
	load	[r14+-40],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_1927
!	jmp	_Label_1926
_Label_1926:
! THEN...
	mov	2240,r13		! source line 2240
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1928 = _StringConst_151
	set	_StringConst_151,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1928  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2240,r13		! source line 2240
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2241,r13		! source line 2241
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1927:
! IF STATEMENT...
	mov	2243,r13		! source line 2243
	mov	"\0\0IF",r10
	mov	2243,r13		! source line 2243
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1932) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_1931  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_1931 then goto _Label_1930 else goto _Label_1929
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_1929
	jmp	_Label_1930
_Label_1929:
! THEN...
	mov	2244,r13		! source line 2244
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1933 = _StringConst_152
	set	_StringConst_152,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1933  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2244,r13		! source line 2244
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2245,r13		! source line 2245
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1930:
! ASSIGNMENT STATEMENT...
	mov	2247,r13		! source line 2247
	mov	"\0\0AS",r10
	mov	2247,r13		! source line 2247
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1935) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_1934  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   fromAddr = _temp_1934 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! WHILE STATEMENT...
	mov	2249,r13		! source line 2249
	mov	"\0\0WH",r10
_Label_1936:
!   if offset >= 8192 then goto _Label_1938		(int)
	load	[r14+-44],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1938
!	jmp	_Label_1937
_Label_1937:
	mov	2249,r13		! source line 2249
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2252,r13		! source line 2252
	mov	"\0\0AS",r10
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (fromAddr) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1939 = *fromAddr  (sizeInBytes=1)
	load	[r14+-48],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *kernelAddr = _temp_1939  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+12],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2253,r13		! source line 2253
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	2254,r13		! source line 2254
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+12],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+12]
! ASSIGNMENT STATEMENT...
	mov	2255,r13		! source line 2255
	mov	"\0\0AS",r10
!   fromAddr = fromAddr + 1		(int)
	load	[r14+-48],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! ASSIGNMENT STATEMENT...
	mov	2256,r13		! source line 2256
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	2257,r13		! source line 2257
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_1941		(int)
	load	[r14+-36],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_1941
!	jmp	_Label_1940
_Label_1940:
! THEN...
	mov	2258,r13		! source line 2258
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2258,r13		! source line 2258
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1941:
! END WHILE...
	jmp	_Label_1936
_Label_1938:
! ASSIGNMENT STATEMENT...
	mov	2261,r13		! source line 2261
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2262,r13		! source line 2262
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
! END WHILE...
	jmp	_Label_1923
_Label_1925:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_19:
	.word	_sourceFileName
	.word	_Label_1942
	.word	16		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_1943
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1944
	.word	12
	.word	4
	.word	_Label_1945
	.word	16
	.word	4
	.word	_Label_1946
	.word	20
	.word	4
	.word	_Label_1947
	.word	-9
	.word	1
	.word	_Label_1948
	.word	-16
	.word	4
	.word	_Label_1949
	.word	-20
	.word	4
	.word	_Label_1950
	.word	-24
	.word	4
	.word	_Label_1951
	.word	-28
	.word	4
	.word	_Label_1952
	.word	-10
	.word	1
	.word	_Label_1953
	.word	-32
	.word	4
	.word	_Label_1954
	.word	-36
	.word	4
	.word	_Label_1955
	.word	-40
	.word	4
	.word	_Label_1956
	.word	-44
	.word	4
	.word	_Label_1957
	.word	-48
	.word	4
	.word	0
_Label_1942:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesFromVirtual\0"
	.align
_Label_1943:
	.ascii	"Pself\0"
	.align
_Label_1944:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_1945:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1946:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_1947:
	.byte	'C'
	.ascii	"_temp_1939\0"
	.align
_Label_1948:
	.byte	'?'
	.ascii	"_temp_1935\0"
	.align
_Label_1949:
	.byte	'?'
	.ascii	"_temp_1934\0"
	.align
_Label_1950:
	.byte	'?'
	.ascii	"_temp_1933\0"
	.align
_Label_1951:
	.byte	'?'
	.ascii	"_temp_1932\0"
	.align
_Label_1952:
	.byte	'C'
	.ascii	"_temp_1931\0"
	.align
_Label_1953:
	.byte	'?'
	.ascii	"_temp_1928\0"
	.align
_Label_1954:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_1955:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_1956:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_1957:
	.byte	'I'
	.ascii	"fromAddr\0"
	.align
! 
! ===============  METHOD CopyBytesToVirtual  ===============
! 
_Method_P_Kernel_AddrSpace_20:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_20,r1
	push	r1
	mov	11,r1
_Label_3036:
	push	r0
	sub	r1,1,r1
	bne	_Label_3036
	mov	2268,r13		! source line 2268
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2279,r13		! source line 2279
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_1958
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_1958
	jmp	_Label_1959
_Label_1958:
! THEN...
	mov	2280,r13		! source line 2280
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2280,r13		! source line 2280
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_1960
_Label_1959:
! ELSE...
	mov	2281,r13		! source line 2281
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	2281,r13		! source line 2281
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_1962		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1962
!	jmp	_Label_1961
_Label_1961:
! THEN...
	mov	2282,r13		! source line 2282
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2282,r13		! source line 2282
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1962:
! END IF...
_Label_1960:
! ASSIGNMENT STATEMENT...
	mov	2284,r13		! source line 2284
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+12],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	2285,r13		! source line 2285
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+12],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! WHILE STATEMENT...
	mov	2286,r13		! source line 2286
	mov	"\0\0WH",r10
_Label_1963:
!	jmp	_Label_1964
_Label_1964:
	mov	2286,r13		! source line 2286
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	2287,r13		! source line 2287
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_1969		(int)
	load	[r14+-36],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_1969
	jmp	_Label_1966
_Label_1969:
	mov	2288,r13		! source line 2288
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1971) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_1970  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_1970 then goto _Label_1968 else goto _Label_1966
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_1966
	jmp	_Label_1968
_Label_1968:
	mov	2289,r13		! source line 2289
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_1973) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_1972  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_1972 then goto _Label_1967 else goto _Label_1966
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_1966
	jmp	_Label_1967
_Label_1966:
! THEN...
	mov	2290,r13		! source line 2290
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2290,r13		! source line 2290
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1967:
! ASSIGNMENT STATEMENT...
	mov	2292,r13		! source line 2292
	mov	"\0\0AS",r10
	mov	2292,r13		! source line 2292
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1975) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_1974  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   destAddr = _temp_1974 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-40],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	2293,r13		! source line 2293
	mov	"\0\0WH",r10
_Label_1976:
!   if offset >= 8192 then goto _Label_1978		(int)
	load	[r14+-40],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1978
!	jmp	_Label_1977
_Label_1977:
	mov	2293,r13		! source line 2293
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2294,r13		! source line 2294
	mov	"\0\0AS",r10
!   if intIsZero (destAddr) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1979 = *kernelAddr  (sizeInBytes=1)
	load	[r14+16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *destAddr = _temp_1979  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2295,r13		! source line 2295
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2296,r13		! source line 2296
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+16],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2297,r13		! source line 2297
	mov	"\0\0AS",r10
!   destAddr = destAddr + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	2298,r13		! source line 2298
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-32],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	2299,r13		! source line 2299
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_1981		(int)
	load	[r14+-32],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_1981
!	jmp	_Label_1980
_Label_1980:
! THEN...
	mov	2300,r13		! source line 2300
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2300,r13		! source line 2300
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1981:
! END WHILE...
	jmp	_Label_1976
_Label_1978:
! ASSIGNMENT STATEMENT...
	mov	2303,r13		! source line 2303
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	2304,r13		! source line 2304
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
! END WHILE...
	jmp	_Label_1963
_Label_1965:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_20:
	.word	_sourceFileName
	.word	_Label_1982
	.word	16		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1983
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1984
	.word	12
	.word	4
	.word	_Label_1985
	.word	16
	.word	4
	.word	_Label_1986
	.word	20
	.word	4
	.word	_Label_1987
	.word	-9
	.word	1
	.word	_Label_1988
	.word	-16
	.word	4
	.word	_Label_1989
	.word	-20
	.word	4
	.word	_Label_1990
	.word	-24
	.word	4
	.word	_Label_1991
	.word	-10
	.word	1
	.word	_Label_1992
	.word	-28
	.word	4
	.word	_Label_1993
	.word	-11
	.word	1
	.word	_Label_1994
	.word	-32
	.word	4
	.word	_Label_1995
	.word	-36
	.word	4
	.word	_Label_1996
	.word	-40
	.word	4
	.word	_Label_1997
	.word	-44
	.word	4
	.word	0
_Label_1982:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesToVirtual\0"
	.align
_Label_1983:
	.ascii	"Pself\0"
	.align
_Label_1984:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1985:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_1986:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_1987:
	.byte	'C'
	.ascii	"_temp_1979\0"
	.align
_Label_1988:
	.byte	'?'
	.ascii	"_temp_1975\0"
	.align
_Label_1989:
	.byte	'?'
	.ascii	"_temp_1974\0"
	.align
_Label_1990:
	.byte	'?'
	.ascii	"_temp_1973\0"
	.align
_Label_1991:
	.byte	'C'
	.ascii	"_temp_1972\0"
	.align
_Label_1992:
	.byte	'?'
	.ascii	"_temp_1971\0"
	.align
_Label_1993:
	.byte	'C'
	.ascii	"_temp_1970\0"
	.align
_Label_1994:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_1995:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_1996:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_1997:
	.byte	'I'
	.ascii	"destAddr\0"
	.align
! 
! ===============  METHOD GetStringFromVirtual  ===============
! 
_Method_P_Kernel_AddrSpace_21:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_21,r1
	push	r1
	mov	13,r1
_Label_3037:
	push	r0
	sub	r1,1,r1
	bne	_Label_3037
	mov	2310,r13		! source line 2310
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2334,r13		! source line 2334
	mov	"\0\0IF",r10
	mov	2334,r13		! source line 2334
	mov	"\0\0SE",r10
!   _temp_2001 = &sourceSize
	add	r14,-44,r1
	store	r1,[r14+-36]
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_2002) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2001  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=virtAddr  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+12]
!   Send message CopyBytesFromVirtual
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,76,r2
	call	r2
!   Retrieve Result: targetName=_temp_2000  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   if _temp_2000 >= 4 then goto _Label_1999		(int)
	load	[r14+-40],r1
	mov	4,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1999
!	jmp	_Label_1998
_Label_1998:
! THEN...
	mov	2337,r13		! source line 2337
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2337,r13		! source line 2337
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1999:
! IF STATEMENT...
	mov	2341,r13		! source line 2341
	mov	"\0\0IF",r10
!   if sourceSize <= maxSize then goto _Label_2004		(int)
	load	[r14+-44],r1
	load	[r14+20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2004
!	jmp	_Label_2003
_Label_2003:
! THEN...
	mov	2342,r13		! source line 2342
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2342,r13		! source line 2342
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2004:
! ASSIGNMENT STATEMENT...
	mov	2345,r13		! source line 2345
	mov	"\0\0AS",r10
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *kernelAddr = sourceSize  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r14+12],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2347,r13		! source line 2347
	mov	"\0\0RE",r10
	mov	2347,r13		! source line 2347
	mov	"\0\0SE",r10
!   _temp_2007 = kernelAddr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-20]
!   _temp_2006 = _temp_2007 + 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   _temp_2008 = virtAddr + 4		(int)
	load	[r14+16],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
	load	[r14+8],r1
	store	r1,[r14+-12]
!   if intIsZero (_temp_2009) then goto _runtimeErrorNullPointer
	load	[r14+-12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2006  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_2008  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=sourceSize  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+12]
!   Send message CopyBytesFromVirtual
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,76,r2
	call	r2
!   Retrieve Result: targetName=_temp_2005  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_2005  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_21:
	.word	_sourceFileName
	.word	_Label_2010
	.word	16		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_2011
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2012
	.word	12
	.word	4
	.word	_Label_2013
	.word	16
	.word	4
	.word	_Label_2014
	.word	20
	.word	4
	.word	_Label_2015
	.word	-12
	.word	4
	.word	_Label_2016
	.word	-16
	.word	4
	.word	_Label_2017
	.word	-20
	.word	4
	.word	_Label_2018
	.word	-24
	.word	4
	.word	_Label_2019
	.word	-28
	.word	4
	.word	_Label_2020
	.word	-32
	.word	4
	.word	_Label_2021
	.word	-36
	.word	4
	.word	_Label_2022
	.word	-40
	.word	4
	.word	_Label_2023
	.word	-44
	.word	4
	.word	0
_Label_2010:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"GetStringFromVirtual\0"
	.align
_Label_2011:
	.ascii	"Pself\0"
	.align
_Label_2012:
	.byte	'P'
	.ascii	"kernelAddr\0"
	.align
_Label_2013:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2014:
	.byte	'I'
	.ascii	"maxSize\0"
	.align
_Label_2015:
	.byte	'?'
	.ascii	"_temp_2009\0"
	.align
_Label_2016:
	.byte	'?'
	.ascii	"_temp_2008\0"
	.align
_Label_2017:
	.byte	'?'
	.ascii	"_temp_2007\0"
	.align
_Label_2018:
	.byte	'?'
	.ascii	"_temp_2006\0"
	.align
_Label_2019:
	.byte	'?'
	.ascii	"_temp_2005\0"
	.align
_Label_2020:
	.byte	'?'
	.ascii	"_temp_2002\0"
	.align
_Label_2021:
	.byte	'?'
	.ascii	"_temp_2001\0"
	.align
_Label_2022:
	.byte	'?'
	.ascii	"_temp_2000\0"
	.align
_Label_2023:
	.byte	'I'
	.ascii	"sourceSize\0"
	.align
! 
! ===============  CLASS DiskDriver  ===============
! 
! Dispatch Table:
! 
_P_Kernel_DiskDriver:
	.word	_Label_2024
	jmp	_Method_P_Kernel_DiskDriver_1	! 4:	Init
	jmp	_Method_P_Kernel_DiskDriver_2	! 8:	SynchReadSector
	jmp	_Method_P_Kernel_DiskDriver_3	! 12:	StartReadSector
	jmp	_Method_P_Kernel_DiskDriver_4	! 16:	SynchWriteSector
	jmp	_Method_P_Kernel_DiskDriver_5	! 20:	StartWriteSector
	.word	0
! 
! Class descriptor:
! 
_Label_2024:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2025
	.word	_sourceFileName
	.word	309		! line number
	.word	68		! size of instances, in bytes
	.word	_P_Kernel_DiskDriver
	.word	_P_System_Object
	.word	0
_Label_2025:
	.ascii	"DiskDriver\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_DiskDriver_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_1,r1
	push	r1
	mov	7,r1
_Label_3038:
	push	r0
	sub	r1,1,r1
	bne	_Label_3038
	mov	417,r13		! source line 417
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2026 = _StringConst_153
	set	_StringConst_153,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2026  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	418,r13		! source line 418
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	419,r13		! source line 419
	mov	"\0\0AS",r10
!   DISK_STATUS_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	420,r13		! source line 420
	mov	"\0\0AS",r10
!   DISK_COMMAND_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! ASSIGNMENT STATEMENT...
	mov	421,r13		! source line 421
	mov	"\0\0AS",r10
!   DISK_MEMORY_ADDRESS_REGISTER = 16776972		(4 bytes)
	set	16776972,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	422,r13		! source line 422
	mov	"\0\0AS",r10
!   DISK_SECTOR_NUMBER_REGISTER = 16776976		(4 bytes)
	set	16776976,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	423,r13		! source line 423
	mov	"\0\0AS",r10
!   DISK_SECTOR_COUNT_REGISTER = 16776980		(4 bytes)
	set	16776980,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	424,r13		! source line 424
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	425,r13		! source line 425
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: semUsedInSynchMethods = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,28,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   semUsedInSynchMethods = _P_Kernel_Semaphore
	set	_P_Kernel_Semaphore,r1
	load	[r14+8],r2
	store	r1,[r2+28]
! SEND STATEMENT...
	mov	426,r13		! source line 426
	mov	"\0\0SE",r10
!   _temp_2028 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	427,r13		! source line 427
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: diskBusy = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,48,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   diskBusy = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+48]
! SEND STATEMENT...
	mov	428,r13		! source line 428
	mov	"\0\0SE",r10
!   _temp_2030 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-12]
!   Send message Init
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! RETURN STATEMENT...
	mov	428,r13		! source line 428
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_1:
	.word	_sourceFileName
	.word	_Label_2031
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2032
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2033
	.word	-12
	.word	4
	.word	_Label_2034
	.word	-16
	.word	4
	.word	_Label_2035
	.word	-20
	.word	4
	.word	_Label_2036
	.word	-24
	.word	4
	.word	_Label_2037
	.word	-28
	.word	4
	.word	0
_Label_2031:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2032:
	.ascii	"Pself\0"
	.align
_Label_2033:
	.byte	'?'
	.ascii	"_temp_2030\0"
	.align
_Label_2034:
	.byte	'?'
	.ascii	"_temp_2029\0"
	.align
_Label_2035:
	.byte	'?'
	.ascii	"_temp_2028\0"
	.align
_Label_2036:
	.byte	'?'
	.ascii	"_temp_2027\0"
	.align
_Label_2037:
	.byte	'?'
	.ascii	"_temp_2026\0"
	.align
! 
! ===============  METHOD SynchReadSector  ===============
! 
_Method_P_Kernel_DiskDriver_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_2,r1
	push	r1
	mov	16,r1
_Label_3039:
	push	r0
	sub	r1,1,r1
	bne	_Label_3039
	mov	433,r13		! source line 433
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	446,r13		! source line 446
	mov	"\0\0SE",r10
!   _temp_2038 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-52]
!   Send message Lock
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	447,r13		! source line 447
	mov	"\0\0WH",r10
_Label_2039:
!	jmp	_Label_2040
_Label_2040:
	mov	447,r13		! source line 447
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	449,r13		! source line 449
	mov	"\0\0SE",r10
!   _temp_2042 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_2043) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=sectorAddr  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=numberOfSectors  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=memoryAddr  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=_temp_2042  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+16]
!   Send message StartReadSector
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	451,r13		! source line 451
	mov	"\0\0SE",r10
!   _temp_2044 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-40]
!   Send message Down
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SWITCH STATEMENT (using series of tests)...
	mov	454,r13		! source line 454
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2053 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_2047
	cmp	r1,2
	be	_Label_2048
	cmp	r1,3
	be	_Label_2049
	cmp	r1,4
	be	_Label_2050
	cmp	r1,5
	be	_Label_2051
	cmp	r1,6
	be	_Label_2052
	jmp	_Label_2045
! CASE 1...
_Label_2047:
! SEND STATEMENT...
	mov	456,r13		! source line 456
	mov	"\0\0SE",r10
!   _temp_2054 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-32]
!   Send message Unlock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	457,r13		! source line 457
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_2048:
! CALL STATEMENT...
!   _temp_2055 = _StringConst_154
	set	_StringConst_154,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2055  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	459,r13		! source line 459
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_2049:
! CALL STATEMENT...
!   _temp_2056 = _StringConst_155
	set	_StringConst_155,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2056  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	461,r13		! source line 461
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_2050:
! CALL STATEMENT...
!   _temp_2057 = _StringConst_156
	set	_StringConst_156,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2057  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	463,r13		! source line 463
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_2051:
! BREAK STATEMENT...
	mov	467,r13		! source line 467
	mov	"\0\0BR",r10
	jmp	_Label_2046
! CASE 6...
_Label_2052:
! CALL STATEMENT...
!   _temp_2058 = _StringConst_157
	set	_StringConst_157,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2058  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	469,r13		! source line 469
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_2045:
! CALL STATEMENT...
!   _temp_2059 = _StringConst_158
	set	_StringConst_158,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2059  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	471,r13		! source line 471
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_2046:
! END WHILE...
	jmp	_Label_2039
_Label_2041:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_2:
	.word	_sourceFileName
	.word	_Label_2060
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_2061
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2062
	.word	12
	.word	4
	.word	_Label_2063
	.word	16
	.word	4
	.word	_Label_2064
	.word	20
	.word	4
	.word	_Label_2065
	.word	-12
	.word	4
	.word	_Label_2066
	.word	-16
	.word	4
	.word	_Label_2067
	.word	-20
	.word	4
	.word	_Label_2068
	.word	-24
	.word	4
	.word	_Label_2069
	.word	-28
	.word	4
	.word	_Label_2070
	.word	-32
	.word	4
	.word	_Label_2071
	.word	-36
	.word	4
	.word	_Label_2072
	.word	-40
	.word	4
	.word	_Label_2073
	.word	-44
	.word	4
	.word	_Label_2074
	.word	-48
	.word	4
	.word	_Label_2075
	.word	-52
	.word	4
	.word	0
_Label_2060:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchReadSector\0"
	.align
_Label_2061:
	.ascii	"Pself\0"
	.align
_Label_2062:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2063:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2064:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2065:
	.byte	'?'
	.ascii	"_temp_2059\0"
	.align
_Label_2066:
	.byte	'?'
	.ascii	"_temp_2058\0"
	.align
_Label_2067:
	.byte	'?'
	.ascii	"_temp_2057\0"
	.align
_Label_2068:
	.byte	'?'
	.ascii	"_temp_2056\0"
	.align
_Label_2069:
	.byte	'?'
	.ascii	"_temp_2055\0"
	.align
_Label_2070:
	.byte	'?'
	.ascii	"_temp_2054\0"
	.align
_Label_2071:
	.byte	'?'
	.ascii	"_temp_2053\0"
	.align
_Label_2072:
	.byte	'?'
	.ascii	"_temp_2044\0"
	.align
_Label_2073:
	.byte	'?'
	.ascii	"_temp_2043\0"
	.align
_Label_2074:
	.byte	'?'
	.ascii	"_temp_2042\0"
	.align
_Label_2075:
	.byte	'?'
	.ascii	"_temp_2038\0"
	.align
! 
! ===============  METHOD StartReadSector  ===============
! 
_Method_P_Kernel_DiskDriver_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_3,r1
	push	r1
	mov	480,r13		! source line 480
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	495,r13		! source line 495
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	498,r13		! source line 498
	mov	"\0\0AS",r10
!   if intIsZero (DISK_MEMORY_ADDRESS_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_MEMORY_ADDRESS_REGISTER = memoryAddr  (sizeInBytes=4)
	load	[r14+20],r1
	load	[r14+8],r2
	load	[r2+12],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	499,r13		! source line 499
	mov	"\0\0AS",r10
!   if intIsZero (DISK_SECTOR_NUMBER_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_SECTOR_NUMBER_REGISTER = sectorAddr  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r14+8],r2
	load	[r2+16],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	500,r13		! source line 500
	mov	"\0\0AS",r10
!   if intIsZero (DISK_SECTOR_COUNT_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_SECTOR_COUNT_REGISTER = numberOfSectors  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+8],r2
	load	[r2+20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	501,r13		! source line 501
	mov	"\0\0AS",r10
!   if intIsZero (DISK_COMMAND_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_COMMAND_WORD_ADDRESS = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+8],r2
	load	[r2+8],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	501,r13		! source line 501
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_3:
	.word	_sourceFileName
	.word	_Label_2076
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_2077
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2078
	.word	12
	.word	4
	.word	_Label_2079
	.word	16
	.word	4
	.word	_Label_2080
	.word	20
	.word	4
	.word	_Label_2081
	.word	24
	.word	4
	.word	0
_Label_2076:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartReadSector\0"
	.align
_Label_2077:
	.ascii	"Pself\0"
	.align
_Label_2078:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2079:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2080:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2081:
	.byte	'P'
	.ascii	"whoCares\0"
	.align
! 
! ===============  METHOD SynchWriteSector  ===============
! 
_Method_P_Kernel_DiskDriver_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_4,r1
	push	r1
	mov	16,r1
_Label_3040:
	push	r0
	sub	r1,1,r1
	bne	_Label_3040
	mov	506,r13		! source line 506
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	518,r13		! source line 518
	mov	"\0\0SE",r10
!   _temp_2082 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-52]
!   Send message Lock
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	519,r13		! source line 519
	mov	"\0\0WH",r10
_Label_2083:
!	jmp	_Label_2084
_Label_2084:
	mov	519,r13		! source line 519
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	520,r13		! source line 520
	mov	"\0\0SE",r10
!   _temp_2086 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_2087) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=sectorAddr  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=numberOfSectors  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=memoryAddr  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=_temp_2086  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+16]
!   Send message StartWriteSector
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	522,r13		! source line 522
	mov	"\0\0SE",r10
!   _temp_2088 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-40]
!   Send message Down
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SWITCH STATEMENT (using series of tests)...
	mov	525,r13		! source line 525
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2097 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_2091
	cmp	r1,2
	be	_Label_2092
	cmp	r1,3
	be	_Label_2093
	cmp	r1,4
	be	_Label_2094
	cmp	r1,5
	be	_Label_2095
	cmp	r1,6
	be	_Label_2096
	jmp	_Label_2089
! CASE 1...
_Label_2091:
! SEND STATEMENT...
	mov	527,r13		! source line 527
	mov	"\0\0SE",r10
!   _temp_2098 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-32]
!   Send message Unlock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	528,r13		! source line 528
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_2092:
! CALL STATEMENT...
!   _temp_2099 = _StringConst_159
	set	_StringConst_159,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2099  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	530,r13		! source line 530
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_2093:
! CALL STATEMENT...
!   _temp_2100 = _StringConst_160
	set	_StringConst_160,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2100  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	532,r13		! source line 532
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_2094:
! CALL STATEMENT...
!   _temp_2101 = _StringConst_161
	set	_StringConst_161,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2101  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	534,r13		! source line 534
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_2095:
! BREAK STATEMENT...
	mov	538,r13		! source line 538
	mov	"\0\0BR",r10
	jmp	_Label_2090
! CASE 6...
_Label_2096:
! CALL STATEMENT...
!   _temp_2102 = _StringConst_162
	set	_StringConst_162,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2102  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	540,r13		! source line 540
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_2089:
! CALL STATEMENT...
!   _temp_2103 = _StringConst_163
	set	_StringConst_163,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2103  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	542,r13		! source line 542
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_2090:
! END WHILE...
	jmp	_Label_2083
_Label_2085:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_4:
	.word	_sourceFileName
	.word	_Label_2104
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_2105
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2106
	.word	12
	.word	4
	.word	_Label_2107
	.word	16
	.word	4
	.word	_Label_2108
	.word	20
	.word	4
	.word	_Label_2109
	.word	-12
	.word	4
	.word	_Label_2110
	.word	-16
	.word	4
	.word	_Label_2111
	.word	-20
	.word	4
	.word	_Label_2112
	.word	-24
	.word	4
	.word	_Label_2113
	.word	-28
	.word	4
	.word	_Label_2114
	.word	-32
	.word	4
	.word	_Label_2115
	.word	-36
	.word	4
	.word	_Label_2116
	.word	-40
	.word	4
	.word	_Label_2117
	.word	-44
	.word	4
	.word	_Label_2118
	.word	-48
	.word	4
	.word	_Label_2119
	.word	-52
	.word	4
	.word	0
_Label_2104:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchWriteSector\0"
	.align
_Label_2105:
	.ascii	"Pself\0"
	.align
_Label_2106:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2107:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2108:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2109:
	.byte	'?'
	.ascii	"_temp_2103\0"
	.align
_Label_2110:
	.byte	'?'
	.ascii	"_temp_2102\0"
	.align
_Label_2111:
	.byte	'?'
	.ascii	"_temp_2101\0"
	.align
_Label_2112:
	.byte	'?'
	.ascii	"_temp_2100\0"
	.align
_Label_2113:
	.byte	'?'
	.ascii	"_temp_2099\0"
	.align
_Label_2114:
	.byte	'?'
	.ascii	"_temp_2098\0"
	.align
_Label_2115:
	.byte	'?'
	.ascii	"_temp_2097\0"
	.align
_Label_2116:
	.byte	'?'
	.ascii	"_temp_2088\0"
	.align
_Label_2117:
	.byte	'?'
	.ascii	"_temp_2087\0"
	.align
_Label_2118:
	.byte	'?'
	.ascii	"_temp_2086\0"
	.align
_Label_2119:
	.byte	'?'
	.ascii	"_temp_2082\0"
	.align
! 
! ===============  METHOD StartWriteSector  ===============
! 
_Method_P_Kernel_DiskDriver_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_5,r1
	push	r1
	mov	551,r13		! source line 551
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	566,r13		! source line 566
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	568,r13		! source line 568
	mov	"\0\0AS",r10
!   if intIsZero (DISK_MEMORY_ADDRESS_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_MEMORY_ADDRESS_REGISTER = memoryAddr  (sizeInBytes=4)
	load	[r14+20],r1
	load	[r14+8],r2
	load	[r2+12],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	569,r13		! source line 569
	mov	"\0\0AS",r10
!   if intIsZero (DISK_SECTOR_NUMBER_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_SECTOR_NUMBER_REGISTER = sectorAddr  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r14+8],r2
	load	[r2+16],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	570,r13		! source line 570
	mov	"\0\0AS",r10
!   if intIsZero (DISK_SECTOR_COUNT_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_SECTOR_COUNT_REGISTER = numberOfSectors  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+8],r2
	load	[r2+20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	571,r13		! source line 571
	mov	"\0\0AS",r10
!   if intIsZero (DISK_COMMAND_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_COMMAND_WORD_ADDRESS = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+8],r2
	load	[r2+8],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	571,r13		! source line 571
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_5:
	.word	_sourceFileName
	.word	_Label_2120
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_2121
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2122
	.word	12
	.word	4
	.word	_Label_2123
	.word	16
	.word	4
	.word	_Label_2124
	.word	20
	.word	4
	.word	_Label_2125
	.word	24
	.word	4
	.word	0
_Label_2120:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartWriteSector\0"
	.align
_Label_2121:
	.ascii	"Pself\0"
	.align
_Label_2122:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2123:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2124:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2125:
	.byte	'P'
	.ascii	"whoCares\0"
	.align
! 
! ===============  CLASS FileManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileManager:
	.word	_Label_2126
	jmp	_Method_P_Kernel_FileManager_1	! 4:	Init
	jmp	_Method_P_Kernel_FileManager_2	! 8:	Print
	jmp	_Method_P_Kernel_FileManager_4	! 12:	FindFCB
	jmp	_Method_P_Kernel_FileManager_3	! 16:	Open
	jmp	_Method_P_Kernel_FileManager_5	! 20:	Close
	jmp	_Method_P_Kernel_FileManager_6	! 24:	Flush
	jmp	_Method_P_Kernel_FileManager_7	! 28:	SynchRead
	jmp	_Method_P_Kernel_FileManager_8	! 32:	SynchWrite
	.word	0
! 
! Class descriptor:
! 
_Label_2126:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2127
	.word	_sourceFileName
	.word	332		! line number
	.word	800		! size of instances, in bytes
	.word	_P_Kernel_FileManager
	.word	_P_System_Object
	.word	0
_Label_2127:
	.ascii	"FileManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_FileManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_1,r1
	push	r1
	mov	238,r1
_Label_3041:
	push	r0
	sub	r1,1,r1
	bne	_Label_3041
	mov	582,r13		! source line 582
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2128 = _StringConst_164
	set	_StringConst_164,r1
	store	r1,[r14+-940]
!   Prepare Argument: offset=8  value=_temp_2128  sizeInBytes=4
	load	[r14+-940],r1
	store	r1,[r15+0]
!   Call the function
	mov	589,r13		! source line 589
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	590,r13		! source line 590
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: fileManagerLock = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,4,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   fileManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! SEND STATEMENT...
	mov	591,r13		! source line 591
	mov	"\0\0SE",r10
!   _temp_2130 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-932]
!   Send message Init
	load	[r14+-932],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	594,r13		! source line 594
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: fcbFreeList = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,444,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   fcbFreeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+444]
! ASSIGNMENT STATEMENT...
	mov	595,r13		! source line 595
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: anFCBBecameFree = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,428,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   anFCBBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+428]
! SEND STATEMENT...
	mov	596,r13		! source line 596
	mov	"\0\0SE",r10
!   _temp_2133 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-920]
!   Send message Init
	load	[r14+-920],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	597,r13		! source line 597
	mov	"\0\0AS",r10
!   _temp_2134 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-916]
!   NEW ARRAY Constructor...
!   _temp_2136 = &_temp_2135
	add	r14,-912,r1
	store	r1,[r14+-508]
!   _temp_2136 = _temp_2136 + 4
	load	[r14+-508],r1
	add	r1,4,r1
	store	r1,[r14+-508]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2138 = zeros  (sizeInBytes=40)
	add	r14,-500,r4
	mov	10,r3
_Label_3042:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3042
!   _temp_2138 = _P_Kernel_FileControlBlock
	set	_P_Kernel_FileControlBlock,r1
	store	r1,[r14+-500]
	mov	10,r1
	store	r1,[r14+-504]
_Label_2140:
!   Data Move: *_temp_2136 = _temp_2138  (sizeInBytes=40)
	add	r14,-500,r5
	load	[r14+-508],r4
	mov	10,r3
_Label_3043:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3043
!   _temp_2136 = _temp_2136 + 40
	load	[r14+-508],r1
	add	r1,40,r1
	store	r1,[r14+-508]
!   _temp_2137 = _temp_2137 + -1
	load	[r14+-504],r1
	add	r1,-1,r1
	store	r1,[r14+-504]
!   if intNotZero (_temp_2137) then goto _Label_2140
	load	[r14+-504],r1
	cmp	r1,r0
	bne	_Label_2140
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-912]
!   _temp_2141 = &_temp_2135
	add	r14,-912,r1
	store	r1,[r14+-456]
!   make sure array has size 10
	load	[r14+-916],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3044
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3044:
!   make sure array has size 10
	load	[r14+-456],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2134 = *_temp_2141  (sizeInBytes=404)
	load	[r14+-456],r5
	load	[r14+-916],r4
	mov	101,r3
_Label_3045:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3045
! FOR STATEMENT...
	mov	599,r13		! source line 599
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2146 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-452]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2147 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-448]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2146  (sizeInBytes=4)
	load	[r14+-452],r1
	store	r1,[r14+-944]
_Label_2142:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2147 then goto _Label_2145		
	load	[r14+-944],r1
	load	[r14+-448],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2145
_Label_2143:
	mov	599,r13		! source line 599
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	600,r13		! source line 600
	mov	"\0\0AS",r10
!   _temp_2148 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-444]
!   Move address of _temp_2148 [i ] into _temp_2149
!     make sure index expr is >= 0
	load	[r14+-944],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-444],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-440]
!   _temp_2150 = _temp_2149 + 12
	load	[r14+-440],r1
	add	r1,12,r1
	store	r1,[r14+-436]
!   Data Move: *_temp_2150 = i  (sizeInBytes=4)
	load	[r14+-944],r1
	load	[r14+-436],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	601,r13		! source line 601
	mov	"\0\0SE",r10
!   _temp_2151 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-432]
!   Move address of _temp_2151 [i ] into _temp_2152
!     make sure index expr is >= 0
	load	[r14+-944],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-432],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-428]
!   Send message Init
	load	[r14+-428],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	602,r13		! source line 602
	mov	"\0\0SE",r10
!   _temp_2154 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-420]
!   Move address of _temp_2154 [i ] into _temp_2155
!     make sure index expr is >= 0
	load	[r14+-944],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-420],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-416]
!   _temp_2153 = _temp_2155		(4 bytes)
	load	[r14+-416],r1
	store	r1,[r14+-424]
!   _temp_2156 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-412]
!   Prepare Argument: offset=12  value=_temp_2153  sizeInBytes=4
	load	[r14+-424],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-412],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_2144:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_2142
! END FOR
_Label_2145:
! ASSIGNMENT STATEMENT...
	mov	606,r13		! source line 606
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: openFileFreeList = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,756,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   openFileFreeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+756]
! ASSIGNMENT STATEMENT...
	mov	607,r13		! source line 607
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: anOpenFileBecameFree = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,740,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   anOpenFileBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+740]
! SEND STATEMENT...
	mov	608,r13		! source line 608
	mov	"\0\0SE",r10
!   _temp_2159 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-400]
!   Send message Init
	load	[r14+-400],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	609,r13		! source line 609
	mov	"\0\0AS",r10
!   _temp_2160 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-396]
!   NEW ARRAY Constructor...
!   _temp_2162 = &_temp_2161
	add	r14,-392,r1
	store	r1,[r14+-108]
!   _temp_2162 = _temp_2162 + 4
	load	[r14+-108],r1
	add	r1,4,r1
	store	r1,[r14+-108]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2164 = zeros  (sizeInBytes=28)
	add	r14,-100,r4
	mov	7,r3
_Label_3046:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3046
!   _temp_2164 = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	store	r1,[r14+-100]
	mov	10,r1
	store	r1,[r14+-104]
_Label_2166:
!   Data Move: *_temp_2162 = _temp_2164  (sizeInBytes=28)
	add	r14,-100,r5
	load	[r14+-108],r4
	mov	7,r3
_Label_3047:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3047
!   _temp_2162 = _temp_2162 + 28
	load	[r14+-108],r1
	add	r1,28,r1
	store	r1,[r14+-108]
!   _temp_2163 = _temp_2163 + -1
	load	[r14+-104],r1
	add	r1,-1,r1
	store	r1,[r14+-104]
!   if intNotZero (_temp_2163) then goto _Label_2166
	load	[r14+-104],r1
	cmp	r1,r0
	bne	_Label_2166
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-392]
!   _temp_2167 = &_temp_2161
	add	r14,-392,r1
	store	r1,[r14+-68]
!   make sure array has size 10
	load	[r14+-396],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3048
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3048:
!   make sure array has size 10
	load	[r14+-68],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2160 = *_temp_2167  (sizeInBytes=284)
	load	[r14+-68],r5
	load	[r14+-396],r4
	mov	71,r3
_Label_3049:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3049
! FOR STATEMENT...
	mov	611,r13		! source line 611
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2172 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2173 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2172  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-944]
_Label_2168:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2173 then goto _Label_2171		
	load	[r14+-944],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2171
_Label_2169:
	mov	611,r13		! source line 611
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	612,r13		! source line 612
	mov	"\0\0AS",r10
!   _temp_2174 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-56]
!   Move address of _temp_2174 [i ] into _temp_2175
!     make sure index expr is >= 0
	load	[r14+-944],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-56],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	28,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-52]
!   _temp_2176 = _temp_2175 + 12
	load	[r14+-52],r1
	add	r1,12,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_2176 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-48],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	613,r13		! source line 613
	mov	"\0\0SE",r10
!   _temp_2178 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-40]
!   Move address of _temp_2178 [i ] into _temp_2179
!     make sure index expr is >= 0
	load	[r14+-944],r2
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
	set	28,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-36]
!   _temp_2177 = _temp_2179		(4 bytes)
	load	[r14+-36],r1
	store	r1,[r14+-44]
!   _temp_2180 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_2177  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_2170:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_2168
! END FOR
_Label_2171:
! ASSIGNMENT STATEMENT...
	mov	617,r13		! source line 617
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: serialTerminalFile = zeros  (sizeInBytes=28)
	load	[r14+8],r4
	add	r4,772,r4
	mov	7,r3
_Label_3050:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3050
!   serialTerminalFile = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	load	[r14+8],r2
	store	r1,[r2+772]
! ASSIGNMENT STATEMENT...
	mov	618,r13		! source line 618
	mov	"\0\0AS",r10
!   _temp_2182 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-24]
!   _temp_2183 = _temp_2182 + 12
	load	[r14+-24],r1
	add	r1,12,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2183 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	623,r13		! source line 623
	mov	"\0\0AS",r10
	mov	623,r13		! source line 623
	mov	"\0\0SE",r10
!   _temp_2184 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-16]
!   Send message GetAFrame
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=directoryFrame  sizeInBytes=4
	load	[r15],r1
	load	[r14+8],r2
	store	r1,[r2+768]
! SEND STATEMENT...
	mov	624,r13		! source line 624
	mov	"\0\0SE",r10
!   _temp_2185 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=directoryFrame  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+768],r1
	store	r1,[r15+12]
!   Send message SynchReadSector
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	624,r13		! source line 624
	mov	"\0\0RE",r10
	add	r15,956,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_1:
	.word	_sourceFileName
	.word	_Label_2186
	.word	4		! total size of parameters
	.word	952		! frame size = 952
	.word	_Label_2187
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2188
	.word	-12
	.word	4
	.word	_Label_2189
	.word	-16
	.word	4
	.word	_Label_2190
	.word	-20
	.word	4
	.word	_Label_2191
	.word	-24
	.word	4
	.word	_Label_2192
	.word	-28
	.word	4
	.word	_Label_2193
	.word	-32
	.word	4
	.word	_Label_2194
	.word	-36
	.word	4
	.word	_Label_2195
	.word	-40
	.word	4
	.word	_Label_2196
	.word	-44
	.word	4
	.word	_Label_2197
	.word	-48
	.word	4
	.word	_Label_2198
	.word	-52
	.word	4
	.word	_Label_2199
	.word	-56
	.word	4
	.word	_Label_2200
	.word	-60
	.word	4
	.word	_Label_2201
	.word	-64
	.word	4
	.word	_Label_2202
	.word	-68
	.word	4
	.word	_Label_2203
	.word	-72
	.word	4
	.word	_Label_2204
	.word	-100
	.word	28
	.word	_Label_2205
	.word	-104
	.word	4
	.word	_Label_2206
	.word	-108
	.word	4
	.word	_Label_2207
	.word	-392
	.word	284
	.word	_Label_2208
	.word	-396
	.word	4
	.word	_Label_2209
	.word	-400
	.word	4
	.word	_Label_2210
	.word	-404
	.word	4
	.word	_Label_2211
	.word	-408
	.word	4
	.word	_Label_2212
	.word	-412
	.word	4
	.word	_Label_2213
	.word	-416
	.word	4
	.word	_Label_2214
	.word	-420
	.word	4
	.word	_Label_2215
	.word	-424
	.word	4
	.word	_Label_2216
	.word	-428
	.word	4
	.word	_Label_2217
	.word	-432
	.word	4
	.word	_Label_2218
	.word	-436
	.word	4
	.word	_Label_2219
	.word	-440
	.word	4
	.word	_Label_2220
	.word	-444
	.word	4
	.word	_Label_2221
	.word	-448
	.word	4
	.word	_Label_2222
	.word	-452
	.word	4
	.word	_Label_2223
	.word	-456
	.word	4
	.word	_Label_2224
	.word	-460
	.word	4
	.word	_Label_2225
	.word	-500
	.word	40
	.word	_Label_2226
	.word	-504
	.word	4
	.word	_Label_2227
	.word	-508
	.word	4
	.word	_Label_2228
	.word	-912
	.word	404
	.word	_Label_2229
	.word	-916
	.word	4
	.word	_Label_2230
	.word	-920
	.word	4
	.word	_Label_2231
	.word	-924
	.word	4
	.word	_Label_2232
	.word	-928
	.word	4
	.word	_Label_2233
	.word	-932
	.word	4
	.word	_Label_2234
	.word	-936
	.word	4
	.word	_Label_2235
	.word	-940
	.word	4
	.word	_Label_2236
	.word	-944
	.word	4
	.word	0
_Label_2186:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2187:
	.ascii	"Pself\0"
	.align
_Label_2188:
	.byte	'?'
	.ascii	"_temp_2185\0"
	.align
_Label_2189:
	.byte	'?'
	.ascii	"_temp_2184\0"
	.align
_Label_2190:
	.byte	'?'
	.ascii	"_temp_2183\0"
	.align
_Label_2191:
	.byte	'?'
	.ascii	"_temp_2182\0"
	.align
_Label_2192:
	.byte	'?'
	.ascii	"_temp_2181\0"
	.align
_Label_2193:
	.byte	'?'
	.ascii	"_temp_2180\0"
	.align
_Label_2194:
	.byte	'?'
	.ascii	"_temp_2179\0"
	.align
_Label_2195:
	.byte	'?'
	.ascii	"_temp_2178\0"
	.align
_Label_2196:
	.byte	'?'
	.ascii	"_temp_2177\0"
	.align
_Label_2197:
	.byte	'?'
	.ascii	"_temp_2176\0"
	.align
_Label_2198:
	.byte	'?'
	.ascii	"_temp_2175\0"
	.align
_Label_2199:
	.byte	'?'
	.ascii	"_temp_2174\0"
	.align
_Label_2200:
	.byte	'?'
	.ascii	"_temp_2173\0"
	.align
_Label_2201:
	.byte	'?'
	.ascii	"_temp_2172\0"
	.align
_Label_2202:
	.byte	'?'
	.ascii	"_temp_2167\0"
	.align
_Label_2203:
	.byte	'?'
	.ascii	"_temp_2165\0"
	.align
_Label_2204:
	.byte	'?'
	.ascii	"_temp_2164\0"
	.align
_Label_2205:
	.byte	'?'
	.ascii	"_temp_2163\0"
	.align
_Label_2206:
	.byte	'?'
	.ascii	"_temp_2162\0"
	.align
_Label_2207:
	.byte	'?'
	.ascii	"_temp_2161\0"
	.align
_Label_2208:
	.byte	'?'
	.ascii	"_temp_2160\0"
	.align
_Label_2209:
	.byte	'?'
	.ascii	"_temp_2159\0"
	.align
_Label_2210:
	.byte	'?'
	.ascii	"_temp_2158\0"
	.align
_Label_2211:
	.byte	'?'
	.ascii	"_temp_2157\0"
	.align
_Label_2212:
	.byte	'?'
	.ascii	"_temp_2156\0"
	.align
_Label_2213:
	.byte	'?'
	.ascii	"_temp_2155\0"
	.align
_Label_2214:
	.byte	'?'
	.ascii	"_temp_2154\0"
	.align
_Label_2215:
	.byte	'?'
	.ascii	"_temp_2153\0"
	.align
_Label_2216:
	.byte	'?'
	.ascii	"_temp_2152\0"
	.align
_Label_2217:
	.byte	'?'
	.ascii	"_temp_2151\0"
	.align
_Label_2218:
	.byte	'?'
	.ascii	"_temp_2150\0"
	.align
_Label_2219:
	.byte	'?'
	.ascii	"_temp_2149\0"
	.align
_Label_2220:
	.byte	'?'
	.ascii	"_temp_2148\0"
	.align
_Label_2221:
	.byte	'?'
	.ascii	"_temp_2147\0"
	.align
_Label_2222:
	.byte	'?'
	.ascii	"_temp_2146\0"
	.align
_Label_2223:
	.byte	'?'
	.ascii	"_temp_2141\0"
	.align
_Label_2224:
	.byte	'?'
	.ascii	"_temp_2139\0"
	.align
_Label_2225:
	.byte	'?'
	.ascii	"_temp_2138\0"
	.align
_Label_2226:
	.byte	'?'
	.ascii	"_temp_2137\0"
	.align
_Label_2227:
	.byte	'?'
	.ascii	"_temp_2136\0"
	.align
_Label_2228:
	.byte	'?'
	.ascii	"_temp_2135\0"
	.align
_Label_2229:
	.byte	'?'
	.ascii	"_temp_2134\0"
	.align
_Label_2230:
	.byte	'?'
	.ascii	"_temp_2133\0"
	.align
_Label_2231:
	.byte	'?'
	.ascii	"_temp_2132\0"
	.align
_Label_2232:
	.byte	'?'
	.ascii	"_temp_2131\0"
	.align
_Label_2233:
	.byte	'?'
	.ascii	"_temp_2130\0"
	.align
_Label_2234:
	.byte	'?'
	.ascii	"_temp_2129\0"
	.align
_Label_2235:
	.byte	'?'
	.ascii	"_temp_2128\0"
	.align
_Label_2236:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_FileManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_2,r1
	push	r1
	mov	29,r1
_Label_3051:
	push	r0
	sub	r1,1,r1
	bne	_Label_3051
	mov	631,r13		! source line 631
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	633,r13		! source line 633
	mov	"\0\0SE",r10
!   _temp_2237 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-112]
!   Send message Lock
	load	[r14+-112],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_2238 = _StringConst_165
	set	_StringConst_165,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_2238  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	634,r13		! source line 634
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	635,r13		! source line 635
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2243 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-104]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2244 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-100]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2243  (sizeInBytes=4)
	load	[r14+-104],r1
	store	r1,[r14+-116]
_Label_2239:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2244 then goto _Label_2242		
	load	[r14+-116],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2242
_Label_2240:
	mov	635,r13		! source line 635
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2245 = _StringConst_166
	set	_StringConst_166,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_2245  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	636,r13		! source line 636
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	637,r13		! source line 637
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2246 = _StringConst_167
	set	_StringConst_167,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_2246  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	638,r13		! source line 638
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	639,r13		! source line 639
	mov	"\0\0SE",r10
!   _temp_2247 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-88]
!   Move address of _temp_2247 [i ] into _temp_2248
!     make sure index expr is >= 0
	load	[r14+-116],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-88],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-84]
!   Send message Print
	load	[r14+-84],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_2241:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_2239
! END FOR
_Label_2242:
! CALL STATEMENT...
!   _temp_2249 = _StringConst_168
	set	_StringConst_168,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2249  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	641,r13		! source line 641
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	642,r13		! source line 642
	mov	"\0\0SE",r10
!   _temp_2250 = _function_209_printFCB
	set	_function_209_printFCB,r1
	store	r1,[r14+-76]
!   _temp_2251 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_2250  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	643,r13		! source line 643
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_2252 = _StringConst_169
	set	_StringConst_169,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_2252  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	644,r13		! source line 644
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	645,r13		! source line 645
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2257 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2258 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2257  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-116]
_Label_2253:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2258 then goto _Label_2256		
	load	[r14+-116],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2256
_Label_2254:
	mov	645,r13		! source line 645
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2259 = _StringConst_170
	set	_StringConst_170,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_2259  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	646,r13		! source line 646
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	647,r13		! source line 647
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2260 = _StringConst_171
	set	_StringConst_171,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_2260  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	648,r13		! source line 648
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2262 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-44]
!   Move address of _temp_2262 [i ] into _temp_2263
!     make sure index expr is >= 0
	load	[r14+-116],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-44],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	28,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-40]
!   _temp_2261 = _temp_2263		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2261  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	649,r13		! source line 649
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2264 = _StringConst_172
	set	_StringConst_172,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2264  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	650,r13		! source line 650
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	651,r13		! source line 651
	mov	"\0\0SE",r10
!   _temp_2265 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-32]
!   Move address of _temp_2265 [i ] into _temp_2266
!     make sure index expr is >= 0
	load	[r14+-116],r2
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
	set	28,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   Send message Print
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_2255:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_2253
! END FOR
_Label_2256:
! CALL STATEMENT...
!   _temp_2267 = _StringConst_173
	set	_StringConst_173,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2267  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	653,r13		! source line 653
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	654,r13		! source line 654
	mov	"\0\0SE",r10
!   _temp_2268 = _function_208_printOpen
	set	_function_208_printOpen,r1
	store	r1,[r14+-20]
!   _temp_2269 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2268  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	655,r13		! source line 655
	mov	"\0\0SE",r10
!   _temp_2270 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
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
	mov	655,r13		! source line 655
	mov	"\0\0RE",r10
	add	r15,120,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_2:
	.word	_sourceFileName
	.word	_Label_2271
	.word	4		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_2272
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2273
	.word	-12
	.word	4
	.word	_Label_2274
	.word	-16
	.word	4
	.word	_Label_2275
	.word	-20
	.word	4
	.word	_Label_2276
	.word	-24
	.word	4
	.word	_Label_2277
	.word	-28
	.word	4
	.word	_Label_2278
	.word	-32
	.word	4
	.word	_Label_2279
	.word	-36
	.word	4
	.word	_Label_2280
	.word	-40
	.word	4
	.word	_Label_2281
	.word	-44
	.word	4
	.word	_Label_2282
	.word	-48
	.word	4
	.word	_Label_2283
	.word	-52
	.word	4
	.word	_Label_2284
	.word	-56
	.word	4
	.word	_Label_2285
	.word	-60
	.word	4
	.word	_Label_2286
	.word	-64
	.word	4
	.word	_Label_2287
	.word	-68
	.word	4
	.word	_Label_2288
	.word	-72
	.word	4
	.word	_Label_2289
	.word	-76
	.word	4
	.word	_Label_2290
	.word	-80
	.word	4
	.word	_Label_2291
	.word	-84
	.word	4
	.word	_Label_2292
	.word	-88
	.word	4
	.word	_Label_2293
	.word	-92
	.word	4
	.word	_Label_2294
	.word	-96
	.word	4
	.word	_Label_2295
	.word	-100
	.word	4
	.word	_Label_2296
	.word	-104
	.word	4
	.word	_Label_2297
	.word	-108
	.word	4
	.word	_Label_2298
	.word	-112
	.word	4
	.word	_Label_2299
	.word	-116
	.word	4
	.word	0
_Label_2271:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2272:
	.ascii	"Pself\0"
	.align
_Label_2273:
	.byte	'?'
	.ascii	"_temp_2270\0"
	.align
_Label_2274:
	.byte	'?'
	.ascii	"_temp_2269\0"
	.align
_Label_2275:
	.byte	'?'
	.ascii	"_temp_2268\0"
	.align
_Label_2276:
	.byte	'?'
	.ascii	"_temp_2267\0"
	.align
_Label_2277:
	.byte	'?'
	.ascii	"_temp_2266\0"
	.align
_Label_2278:
	.byte	'?'
	.ascii	"_temp_2265\0"
	.align
_Label_2279:
	.byte	'?'
	.ascii	"_temp_2264\0"
	.align
_Label_2280:
	.byte	'?'
	.ascii	"_temp_2263\0"
	.align
_Label_2281:
	.byte	'?'
	.ascii	"_temp_2262\0"
	.align
_Label_2282:
	.byte	'?'
	.ascii	"_temp_2261\0"
	.align
_Label_2283:
	.byte	'?'
	.ascii	"_temp_2260\0"
	.align
_Label_2284:
	.byte	'?'
	.ascii	"_temp_2259\0"
	.align
_Label_2285:
	.byte	'?'
	.ascii	"_temp_2258\0"
	.align
_Label_2286:
	.byte	'?'
	.ascii	"_temp_2257\0"
	.align
_Label_2287:
	.byte	'?'
	.ascii	"_temp_2252\0"
	.align
_Label_2288:
	.byte	'?'
	.ascii	"_temp_2251\0"
	.align
_Label_2289:
	.byte	'?'
	.ascii	"_temp_2250\0"
	.align
_Label_2290:
	.byte	'?'
	.ascii	"_temp_2249\0"
	.align
_Label_2291:
	.byte	'?'
	.ascii	"_temp_2248\0"
	.align
_Label_2292:
	.byte	'?'
	.ascii	"_temp_2247\0"
	.align
_Label_2293:
	.byte	'?'
	.ascii	"_temp_2246\0"
	.align
_Label_2294:
	.byte	'?'
	.ascii	"_temp_2245\0"
	.align
_Label_2295:
	.byte	'?'
	.ascii	"_temp_2244\0"
	.align
_Label_2296:
	.byte	'?'
	.ascii	"_temp_2243\0"
	.align
_Label_2297:
	.byte	'?'
	.ascii	"_temp_2238\0"
	.align
_Label_2298:
	.byte	'?'
	.ascii	"_temp_2237\0"
	.align
_Label_2299:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Open  ===============
! 
_Method_P_Kernel_FileManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_3,r1
	push	r1
	mov	14,r1
_Label_3052:
	push	r0
	sub	r1,1,r1
	bne	_Label_3052
	mov	660,r13		! source line 660
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	676,r13		! source line 676
	mov	"\0\0AS",r10
	mov	676,r13		! source line 676
	mov	"\0\0SE",r10
!   _temp_2300 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=filename  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message FindFCB
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=fcb  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! IF STATEMENT...
	mov	677,r13		! source line 677
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _Label_2301
	load	[r14+-56],r1
	cmp	r1,r0
	be	_Label_2301
	jmp	_Label_2302
_Label_2301:
! THEN...
	mov	678,r13		! source line 678
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	678,r13		! source line 678
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2302:
! SEND STATEMENT...
	mov	682,r13		! source line 682
	mov	"\0\0SE",r10
!   _temp_2303 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Send message Lock
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	683,r13		! source line 683
	mov	"\0\0WH",r10
_Label_2304:
	mov	683,r13		! source line 683
	mov	"\0\0SE",r10
!   _temp_2307 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-40]
!   Send message IsEmpty
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_2305 else goto _Label_2306
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2306
	jmp	_Label_2305
_Label_2305:
	mov	683,r13		! source line 683
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	684,r13		! source line 684
	mov	"\0\0SE",r10
!   _temp_2308 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   _temp_2309 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_2308  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_2304
_Label_2306:
! ASSIGNMENT STATEMENT...
	mov	686,r13		! source line 686
	mov	"\0\0AS",r10
	mov	686,r13		! source line 686
	mov	"\0\0SE",r10
!   _temp_2310 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-28]
!   Send message Remove
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=open  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! ASSIGNMENT STATEMENT...
	mov	689,r13		! source line 689
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2311 = open + 20
	load	[r14+-52],r1
	add	r1,20,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2311 = fcb  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	690,r13		! source line 690
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2312 = open + 24
	load	[r14+-52],r1
	add	r1,24,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2312 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	693,r13		! source line 693
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2313 = open + 16
	load	[r14+-52],r1
	add	r1,16,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_2313 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	695,r13		! source line 695
	mov	"\0\0SE",r10
!   _temp_2314 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
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
	mov	696,r13		! source line 696
	mov	"\0\0RE",r10
!   ReturnResult: open  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_3:
	.word	_sourceFileName
	.word	_Label_2315
	.word	8		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_2316
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2317
	.word	12
	.word	4
	.word	_Label_2318
	.word	-12
	.word	4
	.word	_Label_2319
	.word	-16
	.word	4
	.word	_Label_2320
	.word	-20
	.word	4
	.word	_Label_2321
	.word	-24
	.word	4
	.word	_Label_2322
	.word	-28
	.word	4
	.word	_Label_2323
	.word	-32
	.word	4
	.word	_Label_2324
	.word	-36
	.word	4
	.word	_Label_2325
	.word	-40
	.word	4
	.word	_Label_2326
	.word	-44
	.word	4
	.word	_Label_2327
	.word	-48
	.word	4
	.word	_Label_2328
	.word	-52
	.word	4
	.word	_Label_2329
	.word	-56
	.word	4
	.word	0
_Label_2315:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Open\0"
	.align
_Label_2316:
	.ascii	"Pself\0"
	.align
_Label_2317:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_2318:
	.byte	'?'
	.ascii	"_temp_2314\0"
	.align
_Label_2319:
	.byte	'?'
	.ascii	"_temp_2313\0"
	.align
_Label_2320:
	.byte	'?'
	.ascii	"_temp_2312\0"
	.align
_Label_2321:
	.byte	'?'
	.ascii	"_temp_2311\0"
	.align
_Label_2322:
	.byte	'?'
	.ascii	"_temp_2310\0"
	.align
_Label_2323:
	.byte	'?'
	.ascii	"_temp_2309\0"
	.align
_Label_2324:
	.byte	'?'
	.ascii	"_temp_2308\0"
	.align
_Label_2325:
	.byte	'?'
	.ascii	"_temp_2307\0"
	.align
_Label_2326:
	.byte	'?'
	.ascii	"_temp_2303\0"
	.align
_Label_2327:
	.byte	'?'
	.ascii	"_temp_2300\0"
	.align
_Label_2328:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2329:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  METHOD FindFCB  ===============
! 
_Method_P_Kernel_FileManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_4,r1
	push	r1
	mov	41,r1
_Label_3053:
	push	r0
	sub	r1,1,r1
	bne	_Label_3053
	mov	701,r13		! source line 701
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	726,r13		! source line 726
	mov	"\0\0AS",r10
!   p = directoryFrame		(4 bytes)
	load	[r14+8],r1
	load	[r1+768],r1
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	729,r13		! source line 729
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: i = *p  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-136]
! ASSIGNMENT STATEMENT...
	mov	730,r13		! source line 730
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	731,r13		! source line 731
	mov	"\0\0IF",r10
!   if i == 1937012066 then goto _Label_2331		(int)
	load	[r14+-136],r1
	set	1937012066,r2
	cmp	r1,r2
	be	_Label_2331
!	jmp	_Label_2330
_Label_2330:
! THEN...
	mov	732,r13		! source line 732
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2332 = _StringConst_174
	set	_StringConst_174,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_2332  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	732,r13		! source line 732
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2331:
! ASSIGNMENT STATEMENT...
	mov	736,r13		! source line 736
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: numFiles = *p  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-144]
! ASSIGNMENT STATEMENT...
	mov	737,r13		! source line 737
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	738,r13		! source line 738
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: i = *p  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-136]
! ASSIGNMENT STATEMENT...
	mov	739,r13		! source line 739
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! WHILE STATEMENT...
	mov	742,r13		! source line 742
	mov	"\0\0WH",r10
_Label_2333:
!   if numFiles <= 0 then goto _Label_2335		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2335
!	jmp	_Label_2334
_Label_2334:
	mov	742,r13		! source line 742
	mov	"\0\0WB",r10
! CALL STATEMENT...
!   _temp_2336 = &start
	add	r14,-140,r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_2336  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	743,r13		! source line 743
	mov	"\0\0CA",r10
	call	_function_210_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	744,r13		! source line 744
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_2337 = &fileLen
	add	r14,-148,r1
	store	r1,[r14+-124]
!   Prepare Argument: offset=8  value=_temp_2337  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	745,r13		! source line 745
	mov	"\0\0CA",r10
	call	_function_210_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	746,r13		! source line 746
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_2338 = &fileNameLen
	add	r14,-152,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_2338  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	747,r13		! source line 747
	mov	"\0\0CA",r10
	call	_function_210_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	748,r13		! source line 748
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	749,r13		! source line 749
	mov	"\0\0IF",r10
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2342 = *filename  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if fileNameLen != _temp_2342 then goto _Label_2340		(int)
	load	[r14+-152],r1
	load	[r14+-116],r2
	cmp	r1,r2
	bne	_Label_2340
!	jmp	_Label_2341
_Label_2341:
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of filename [0 ] into _temp_2344
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+12],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-108]
!   _temp_2343 = _temp_2344		(4 bytes)
	load	[r14+-108],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2343  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=fileNameLen  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+8]
!   Call the function
	mov	750,r13		! source line 750
	mov	"\0\0CA",r10
	call	_P_System_MemoryEqual
!   if result==true then goto _Label_2339 else goto _Label_2340
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2340
	jmp	_Label_2339
_Label_2339:
! THEN...
	mov	751,r13		! source line 751
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	751,r13		! source line 751
	mov	"\0\0BR",r10
	jmp	_Label_2335
! END IF...
_Label_2340:
! ASSIGNMENT STATEMENT...
	mov	753,r13		! source line 753
	mov	"\0\0AS",r10
!   p = p + fileNameLen		(int)
	load	[r14+-160],r1
	load	[r14+-152],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	754,r13		! source line 754
	mov	"\0\0AS",r10
!   numFiles = numFiles - 1		(int)
	load	[r14+-144],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
! END WHILE...
	jmp	_Label_2333
_Label_2335:
! IF STATEMENT...
	mov	758,r13		! source line 758
	mov	"\0\0IF",r10
!   if numFiles > 0 then goto _Label_2346		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2346
!	jmp	_Label_2345
_Label_2345:
! THEN...
	mov	759,r13		! source line 759
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	759,r13		! source line 759
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2346:
! SEND STATEMENT...
	mov	762,r13		! source line 762
	mov	"\0\0SE",r10
!   _temp_2347 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-104]
!   Send message Lock
	load	[r14+-104],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! FOR STATEMENT...
	mov	764,r13		! source line 764
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2352 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-100]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2353 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-96]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2352  (sizeInBytes=4)
	load	[r14+-100],r1
	store	r1,[r14+-136]
_Label_2348:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2353 then goto _Label_2351		
	load	[r14+-136],r1
	load	[r14+-96],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2351
_Label_2349:
	mov	764,r13		! source line 764
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	765,r13		! source line 765
	mov	"\0\0AS",r10
!   _temp_2354 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-92]
!   Move address of _temp_2354 [i ] into _temp_2355
!     make sure index expr is >= 0
	load	[r14+-136],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-92],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-88]
!   fcb = _temp_2355		(4 bytes)
	load	[r14+-88],r1
	store	r1,[r14+-156]
! IF STATEMENT...
	mov	766,r13		! source line 766
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2359 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-80]
!   Data Move: _temp_2358 = *_temp_2359  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if _temp_2358 != start then goto _Label_2357		(int)
	load	[r14+-84],r1
	load	[r14+-140],r2
	cmp	r1,r2
	bne	_Label_2357
!	jmp	_Label_2356
_Label_2356:
! THEN...
	mov	767,r13		! source line 767
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	767,r13		! source line 767
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2360 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-76]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2363 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2362 = *_temp_2363  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   _temp_2361 = _temp_2362 + 1		(int)
	load	[r14+-68],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
!   Data Move: *_temp_2360 = _temp_2361  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r14+-76],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	768,r13		! source line 768
	mov	"\0\0SE",r10
!   _temp_2364 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-60]
!   Send message Unlock
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	769,r13		! source line 769
	mov	"\0\0RE",r10
!   ReturnResult: fcb  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2357:
!   Increment the FOR-LOOP index variable and jump back
_Label_2350:
!   i = i + 1
	load	[r14+-136],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
	jmp	_Label_2348
! END FOR
_Label_2351:
! WHILE STATEMENT...
	mov	774,r13		! source line 774
	mov	"\0\0WH",r10
_Label_2365:
	mov	774,r13		! source line 774
	mov	"\0\0SE",r10
!   _temp_2368 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-56]
!   Send message IsEmpty
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_2366 else goto _Label_2367
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2367
	jmp	_Label_2366
_Label_2366:
	mov	774,r13		! source line 774
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	775,r13		! source line 775
	mov	"\0\0SE",r10
!   _temp_2369 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   _temp_2370 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_2369  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_2365
_Label_2367:
! ASSIGNMENT STATEMENT...
	mov	777,r13		! source line 777
	mov	"\0\0AS",r10
	mov	777,r13		! source line 777
	mov	"\0\0SE",r10
!   _temp_2371 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-44]
!   Send message Remove
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=fcb  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-156]
! SEND STATEMENT...
	mov	780,r13		! source line 780
	mov	"\0\0SE",r10
!   _temp_2372 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Send message Unlock
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	783,r13		! source line 783
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2373 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_2373 = start  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	784,r13		! source line 784
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2374 = fcb + 24
	load	[r14+-156],r1
	add	r1,24,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_2374 = fileLen  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	785,r13		! source line 785
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2375 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2375 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-28],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	786,r13		! source line 786
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2380 = fcb + 32
	load	[r14+-156],r1
	add	r1,32,r1
	store	r1,[r14+-20]
!   Data Move: _temp_2379 = *_temp_2380  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_2379 < 0 then goto _Label_2378		(int)
	load	[r14+-24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2378
	jmp	_Label_2376
_Label_2378:
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2381 = fcb + 36
	load	[r14+-156],r1
	add	r1,36,r1
	store	r1,[r14+-16]
!   if boolIsZero (_temp_2381 ) then goto _Label_2377		(int)
	load	[r14+-16],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_2377
!	jmp	_Label_2376
_Label_2376:
! THEN...
	mov	787,r13		! source line 787
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2382 = _StringConst_175
	set	_StringConst_175,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2382  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	787,r13		! source line 787
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2377:
! RETURN STATEMENT...
	mov	789,r13		! source line 789
	mov	"\0\0RE",r10
!   ReturnResult: fcb  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_4:
	.word	_sourceFileName
	.word	_Label_2383
	.word	8		! total size of parameters
	.word	164		! frame size = 164
	.word	_Label_2384
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2385
	.word	12
	.word	4
	.word	_Label_2386
	.word	-12
	.word	4
	.word	_Label_2387
	.word	-16
	.word	4
	.word	_Label_2388
	.word	-20
	.word	4
	.word	_Label_2389
	.word	-24
	.word	4
	.word	_Label_2390
	.word	-28
	.word	4
	.word	_Label_2391
	.word	-32
	.word	4
	.word	_Label_2392
	.word	-36
	.word	4
	.word	_Label_2393
	.word	-40
	.word	4
	.word	_Label_2394
	.word	-44
	.word	4
	.word	_Label_2395
	.word	-48
	.word	4
	.word	_Label_2396
	.word	-52
	.word	4
	.word	_Label_2397
	.word	-56
	.word	4
	.word	_Label_2398
	.word	-60
	.word	4
	.word	_Label_2399
	.word	-64
	.word	4
	.word	_Label_2400
	.word	-68
	.word	4
	.word	_Label_2401
	.word	-72
	.word	4
	.word	_Label_2402
	.word	-76
	.word	4
	.word	_Label_2403
	.word	-80
	.word	4
	.word	_Label_2404
	.word	-84
	.word	4
	.word	_Label_2405
	.word	-88
	.word	4
	.word	_Label_2406
	.word	-92
	.word	4
	.word	_Label_2407
	.word	-96
	.word	4
	.word	_Label_2408
	.word	-100
	.word	4
	.word	_Label_2409
	.word	-104
	.word	4
	.word	_Label_2410
	.word	-108
	.word	4
	.word	_Label_2411
	.word	-112
	.word	4
	.word	_Label_2412
	.word	-116
	.word	4
	.word	_Label_2413
	.word	-120
	.word	4
	.word	_Label_2414
	.word	-124
	.word	4
	.word	_Label_2415
	.word	-128
	.word	4
	.word	_Label_2416
	.word	-132
	.word	4
	.word	_Label_2417
	.word	-136
	.word	4
	.word	_Label_2418
	.word	-140
	.word	4
	.word	_Label_2419
	.word	-144
	.word	4
	.word	_Label_2420
	.word	-148
	.word	4
	.word	_Label_2421
	.word	-152
	.word	4
	.word	_Label_2422
	.word	-156
	.word	4
	.word	_Label_2423
	.word	-160
	.word	4
	.word	0
_Label_2383:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"FindFCB\0"
	.align
_Label_2384:
	.ascii	"Pself\0"
	.align
_Label_2385:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_2386:
	.byte	'?'
	.ascii	"_temp_2382\0"
	.align
_Label_2387:
	.byte	'?'
	.ascii	"_temp_2381\0"
	.align
_Label_2388:
	.byte	'?'
	.ascii	"_temp_2380\0"
	.align
_Label_2389:
	.byte	'?'
	.ascii	"_temp_2379\0"
	.align
_Label_2390:
	.byte	'?'
	.ascii	"_temp_2375\0"
	.align
_Label_2391:
	.byte	'?'
	.ascii	"_temp_2374\0"
	.align
_Label_2392:
	.byte	'?'
	.ascii	"_temp_2373\0"
	.align
_Label_2393:
	.byte	'?'
	.ascii	"_temp_2372\0"
	.align
_Label_2394:
	.byte	'?'
	.ascii	"_temp_2371\0"
	.align
_Label_2395:
	.byte	'?'
	.ascii	"_temp_2370\0"
	.align
_Label_2396:
	.byte	'?'
	.ascii	"_temp_2369\0"
	.align
_Label_2397:
	.byte	'?'
	.ascii	"_temp_2368\0"
	.align
_Label_2398:
	.byte	'?'
	.ascii	"_temp_2364\0"
	.align
_Label_2399:
	.byte	'?'
	.ascii	"_temp_2363\0"
	.align
_Label_2400:
	.byte	'?'
	.ascii	"_temp_2362\0"
	.align
_Label_2401:
	.byte	'?'
	.ascii	"_temp_2361\0"
	.align
_Label_2402:
	.byte	'?'
	.ascii	"_temp_2360\0"
	.align
_Label_2403:
	.byte	'?'
	.ascii	"_temp_2359\0"
	.align
_Label_2404:
	.byte	'?'
	.ascii	"_temp_2358\0"
	.align
_Label_2405:
	.byte	'?'
	.ascii	"_temp_2355\0"
	.align
_Label_2406:
	.byte	'?'
	.ascii	"_temp_2354\0"
	.align
_Label_2407:
	.byte	'?'
	.ascii	"_temp_2353\0"
	.align
_Label_2408:
	.byte	'?'
	.ascii	"_temp_2352\0"
	.align
_Label_2409:
	.byte	'?'
	.ascii	"_temp_2347\0"
	.align
_Label_2410:
	.byte	'?'
	.ascii	"_temp_2344\0"
	.align
_Label_2411:
	.byte	'?'
	.ascii	"_temp_2343\0"
	.align
_Label_2412:
	.byte	'?'
	.ascii	"_temp_2342\0"
	.align
_Label_2413:
	.byte	'?'
	.ascii	"_temp_2338\0"
	.align
_Label_2414:
	.byte	'?'
	.ascii	"_temp_2337\0"
	.align
_Label_2415:
	.byte	'?'
	.ascii	"_temp_2336\0"
	.align
_Label_2416:
	.byte	'?'
	.ascii	"_temp_2332\0"
	.align
_Label_2417:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2418:
	.byte	'I'
	.ascii	"start\0"
	.align
_Label_2419:
	.byte	'I'
	.ascii	"numFiles\0"
	.align
_Label_2420:
	.byte	'I'
	.ascii	"fileLen\0"
	.align
_Label_2421:
	.byte	'I'
	.ascii	"fileNameLen\0"
	.align
_Label_2422:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_2423:
	.byte	'P'
	.ascii	"p\0"
	.align
! 
! ===============  METHOD Close  ===============
! 
_Method_P_Kernel_FileManager_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_5,r1
	push	r1
	mov	26,r1
_Label_3054:
	push	r0
	sub	r1,1,r1
	bne	_Label_3054
	mov	802,r13		! source line 802
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	804,r13		! source line 804
	mov	"\0\0IF",r10
!   _temp_2426 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-100]
!   if open != _temp_2426 then goto _Label_2425		(int)
	load	[r14+12],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bne	_Label_2425
!	jmp	_Label_2424
_Label_2424:
! THEN...
	mov	805,r13		! source line 805
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	805,r13		! source line 805
	mov	"\0\0RE",r10
	add	r15,108,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2425:
! SEND STATEMENT...
	mov	807,r13		! source line 807
	mov	"\0\0SE",r10
!   _temp_2427 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-96]
!   Send message Lock
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	808,r13		! source line 808
	mov	"\0\0SE",r10
!   _temp_2428 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message Flush
	load	[r14+-92],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	809,r13		! source line 809
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2429 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: fcb = *_temp_2429  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-104]
! ASSIGNMENT STATEMENT...
	mov	810,r13		! source line 810
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2430 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-84]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2433 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-72]
!   Data Move: _temp_2432 = *_temp_2433  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   _temp_2431 = _temp_2432 - 1		(int)
	load	[r14+-76],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
!   Data Move: *_temp_2430 = _temp_2431  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r14+-84],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	811,r13		! source line 811
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2437 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2436 = *_temp_2437  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if _temp_2436 > 0 then goto _Label_2435		(int)
	load	[r14+-68],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2435
!	jmp	_Label_2434
_Label_2434:
! THEN...
	mov	812,r13		! source line 812
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	812,r13		! source line 812
	mov	"\0\0SE",r10
!   _temp_2438 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	813,r13		! source line 813
	mov	"\0\0SE",r10
!   _temp_2439 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   _temp_2440 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_2439  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	814,r13		! source line 814
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2441 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2444 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-36]
!   Data Move: _temp_2443 = *_temp_2444  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   _temp_2442 = _temp_2443 - 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
!   Data Move: *_temp_2441 = _temp_2442  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r14+-48],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	815,r13		! source line 815
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2448 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: _temp_2447 = *_temp_2448  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_2447 > 0 then goto _Label_2446		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2446
!	jmp	_Label_2445
_Label_2445:
! THEN...
	mov	816,r13		! source line 816
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	816,r13		! source line 816
	mov	"\0\0SE",r10
!   _temp_2449 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=fcb  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	817,r13		! source line 817
	mov	"\0\0SE",r10
!   _temp_2450 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_2451 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2450  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_2446:
! END IF...
_Label_2435:
! SEND STATEMENT...
	mov	820,r13		! source line 820
	mov	"\0\0SE",r10
!   _temp_2452 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
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
	mov	820,r13		! source line 820
	mov	"\0\0RE",r10
	add	r15,108,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_5:
	.word	_sourceFileName
	.word	_Label_2453
	.word	8		! total size of parameters
	.word	104		! frame size = 104
	.word	_Label_2454
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2455
	.word	12
	.word	4
	.word	_Label_2456
	.word	-12
	.word	4
	.word	_Label_2457
	.word	-16
	.word	4
	.word	_Label_2458
	.word	-20
	.word	4
	.word	_Label_2459
	.word	-24
	.word	4
	.word	_Label_2460
	.word	-28
	.word	4
	.word	_Label_2461
	.word	-32
	.word	4
	.word	_Label_2462
	.word	-36
	.word	4
	.word	_Label_2463
	.word	-40
	.word	4
	.word	_Label_2464
	.word	-44
	.word	4
	.word	_Label_2465
	.word	-48
	.word	4
	.word	_Label_2466
	.word	-52
	.word	4
	.word	_Label_2467
	.word	-56
	.word	4
	.word	_Label_2468
	.word	-60
	.word	4
	.word	_Label_2469
	.word	-64
	.word	4
	.word	_Label_2470
	.word	-68
	.word	4
	.word	_Label_2471
	.word	-72
	.word	4
	.word	_Label_2472
	.word	-76
	.word	4
	.word	_Label_2473
	.word	-80
	.word	4
	.word	_Label_2474
	.word	-84
	.word	4
	.word	_Label_2475
	.word	-88
	.word	4
	.word	_Label_2476
	.word	-92
	.word	4
	.word	_Label_2477
	.word	-96
	.word	4
	.word	_Label_2478
	.word	-100
	.word	4
	.word	_Label_2479
	.word	-104
	.word	4
	.word	0
_Label_2453:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Close\0"
	.align
_Label_2454:
	.ascii	"Pself\0"
	.align
_Label_2455:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2456:
	.byte	'?'
	.ascii	"_temp_2452\0"
	.align
_Label_2457:
	.byte	'?'
	.ascii	"_temp_2451\0"
	.align
_Label_2458:
	.byte	'?'
	.ascii	"_temp_2450\0"
	.align
_Label_2459:
	.byte	'?'
	.ascii	"_temp_2449\0"
	.align
_Label_2460:
	.byte	'?'
	.ascii	"_temp_2448\0"
	.align
_Label_2461:
	.byte	'?'
	.ascii	"_temp_2447\0"
	.align
_Label_2462:
	.byte	'?'
	.ascii	"_temp_2444\0"
	.align
_Label_2463:
	.byte	'?'
	.ascii	"_temp_2443\0"
	.align
_Label_2464:
	.byte	'?'
	.ascii	"_temp_2442\0"
	.align
_Label_2465:
	.byte	'?'
	.ascii	"_temp_2441\0"
	.align
_Label_2466:
	.byte	'?'
	.ascii	"_temp_2440\0"
	.align
_Label_2467:
	.byte	'?'
	.ascii	"_temp_2439\0"
	.align
_Label_2468:
	.byte	'?'
	.ascii	"_temp_2438\0"
	.align
_Label_2469:
	.byte	'?'
	.ascii	"_temp_2437\0"
	.align
_Label_2470:
	.byte	'?'
	.ascii	"_temp_2436\0"
	.align
_Label_2471:
	.byte	'?'
	.ascii	"_temp_2433\0"
	.align
_Label_2472:
	.byte	'?'
	.ascii	"_temp_2432\0"
	.align
_Label_2473:
	.byte	'?'
	.ascii	"_temp_2431\0"
	.align
_Label_2474:
	.byte	'?'
	.ascii	"_temp_2430\0"
	.align
_Label_2475:
	.byte	'?'
	.ascii	"_temp_2429\0"
	.align
_Label_2476:
	.byte	'?'
	.ascii	"_temp_2428\0"
	.align
_Label_2477:
	.byte	'?'
	.ascii	"_temp_2427\0"
	.align
_Label_2478:
	.byte	'?'
	.ascii	"_temp_2426\0"
	.align
_Label_2479:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  METHOD Flush  ===============
! 
_Method_P_Kernel_FileManager_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_6,r1
	push	r1
	mov	29,r1
_Label_3055:
	push	r0
	sub	r1,1,r1
	bne	_Label_3055
	mov	825,r13		! source line 825
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	830,r13		! source line 830
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2483 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-104]
!   Data Move: _temp_2482 = *_temp_2483  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_2482) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2484 = _temp_2482 + 36
	load	[r14+-108],r1
	add	r1,36,r1
	store	r1,[r14+-100]
!   if boolIsZero (_temp_2484 ) then goto _Label_2481		(int)
	load	[r14+-100],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_2481
!	jmp	_Label_2480
_Label_2480:
! THEN...
	mov	831,r13		! source line 831
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	831,r13		! source line 831
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2489 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_2488 = *_temp_2489  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2488) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2490 = _temp_2488 + 32
	load	[r14+-92],r1
	add	r1,32,r1
	store	r1,[r14+-84]
!   Data Move: _temp_2487 = *_temp_2490  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_2487 >= 0 then goto _Label_2486		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2486
!	jmp	_Label_2485
_Label_2485:
! THEN...
	mov	832,r13		! source line 832
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2491 = _StringConst_176
	set	_StringConst_176,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2491  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	832,r13		! source line 832
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2486:
! ASSIGNMENT STATEMENT...
	mov	834,r13		! source line 834
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2493 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-72]
!   Data Move: _temp_2492 = *_temp_2493  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_2492) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2494 = _temp_2492 + 36
	load	[r14+-76],r1
	add	r1,36,r1
	store	r1,[r14+-68]
!   Data Move: *_temp_2494 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-68],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	835,r13		! source line 835
	mov	"\0\0SE",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2498 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2497 = *_temp_2498  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_2497) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2499 = _temp_2497 + 32
	load	[r14+-56],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   Data Move: _temp_2496 = *_temp_2499  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2502 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: _temp_2501 = *_temp_2502  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_2501) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2503 = _temp_2501 + 20
	load	[r14+-40],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: _temp_2500 = *_temp_2503  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_2495 = _temp_2496 + _temp_2500		(int)
	load	[r14+-60],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2506 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   Data Move: _temp_2505 = *_temp_2506  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2505) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2507 = _temp_2505 + 28
	load	[r14+-24],r1
	add	r1,28,r1
	store	r1,[r14+-16]
!   Data Move: _temp_2504 = *_temp_2507  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   _temp_2508 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2495  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2504  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+12]
!   Send message SynchWriteSector
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END IF...
_Label_2481:
! RETURN STATEMENT...
	mov	830,r13		! source line 830
	mov	"\0\0RE",r10
	add	r15,120,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_6:
	.word	_sourceFileName
	.word	_Label_2509
	.word	8		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_2510
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2511
	.word	12
	.word	4
	.word	_Label_2512
	.word	-12
	.word	4
	.word	_Label_2513
	.word	-16
	.word	4
	.word	_Label_2514
	.word	-20
	.word	4
	.word	_Label_2515
	.word	-24
	.word	4
	.word	_Label_2516
	.word	-28
	.word	4
	.word	_Label_2517
	.word	-32
	.word	4
	.word	_Label_2518
	.word	-36
	.word	4
	.word	_Label_2519
	.word	-40
	.word	4
	.word	_Label_2520
	.word	-44
	.word	4
	.word	_Label_2521
	.word	-48
	.word	4
	.word	_Label_2522
	.word	-52
	.word	4
	.word	_Label_2523
	.word	-56
	.word	4
	.word	_Label_2524
	.word	-60
	.word	4
	.word	_Label_2525
	.word	-64
	.word	4
	.word	_Label_2526
	.word	-68
	.word	4
	.word	_Label_2527
	.word	-72
	.word	4
	.word	_Label_2528
	.word	-76
	.word	4
	.word	_Label_2529
	.word	-80
	.word	4
	.word	_Label_2530
	.word	-84
	.word	4
	.word	_Label_2531
	.word	-88
	.word	4
	.word	_Label_2532
	.word	-92
	.word	4
	.word	_Label_2533
	.word	-96
	.word	4
	.word	_Label_2534
	.word	-100
	.word	4
	.word	_Label_2535
	.word	-104
	.word	4
	.word	_Label_2536
	.word	-108
	.word	4
	.word	0
_Label_2509:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Flush\0"
	.align
_Label_2510:
	.ascii	"Pself\0"
	.align
_Label_2511:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2512:
	.byte	'?'
	.ascii	"_temp_2508\0"
	.align
_Label_2513:
	.byte	'?'
	.ascii	"_temp_2507\0"
	.align
_Label_2514:
	.byte	'?'
	.ascii	"_temp_2506\0"
	.align
_Label_2515:
	.byte	'?'
	.ascii	"_temp_2505\0"
	.align
_Label_2516:
	.byte	'?'
	.ascii	"_temp_2504\0"
	.align
_Label_2517:
	.byte	'?'
	.ascii	"_temp_2503\0"
	.align
_Label_2518:
	.byte	'?'
	.ascii	"_temp_2502\0"
	.align
_Label_2519:
	.byte	'?'
	.ascii	"_temp_2501\0"
	.align
_Label_2520:
	.byte	'?'
	.ascii	"_temp_2500\0"
	.align
_Label_2521:
	.byte	'?'
	.ascii	"_temp_2499\0"
	.align
_Label_2522:
	.byte	'?'
	.ascii	"_temp_2498\0"
	.align
_Label_2523:
	.byte	'?'
	.ascii	"_temp_2497\0"
	.align
_Label_2524:
	.byte	'?'
	.ascii	"_temp_2496\0"
	.align
_Label_2525:
	.byte	'?'
	.ascii	"_temp_2495\0"
	.align
_Label_2526:
	.byte	'?'
	.ascii	"_temp_2494\0"
	.align
_Label_2527:
	.byte	'?'
	.ascii	"_temp_2493\0"
	.align
_Label_2528:
	.byte	'?'
	.ascii	"_temp_2492\0"
	.align
_Label_2529:
	.byte	'?'
	.ascii	"_temp_2491\0"
	.align
_Label_2530:
	.byte	'?'
	.ascii	"_temp_2490\0"
	.align
_Label_2531:
	.byte	'?'
	.ascii	"_temp_2489\0"
	.align
_Label_2532:
	.byte	'?'
	.ascii	"_temp_2488\0"
	.align
_Label_2533:
	.byte	'?'
	.ascii	"_temp_2487\0"
	.align
_Label_2534:
	.byte	'?'
	.ascii	"_temp_2484\0"
	.align
_Label_2535:
	.byte	'?'
	.ascii	"_temp_2483\0"
	.align
_Label_2536:
	.byte	'?'
	.ascii	"_temp_2482\0"
	.align
! 
! ===============  METHOD SynchRead  ===============
! 
_Method_P_Kernel_FileManager_7:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_7,r1
	push	r1
	mov	34,r1
_Label_3056:
	push	r0
	sub	r1,1,r1
	bne	_Label_3056
	mov	844,r13		! source line 844
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	859,r13		! source line 859
	mov	"\0\0SE",r10
!   _temp_2537 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-108]
!   Send message Lock
	load	[r14+-108],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	860,r13		! source line 860
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_2543		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2543
!   _temp_2542 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_2544
_Label_2543:
!   _temp_2542 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_2544:
!   if _temp_2542 then goto _Label_2541 else goto _Label_2538
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2538
	jmp	_Label_2541
_Label_2541:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2547 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-100]
!   Data Move: _temp_2546 = *_temp_2547  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_2546 == 0 then goto _Label_2548		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2548
!   _temp_2545 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2549
_Label_2548:
!   _temp_2545 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2549:
!   if _temp_2545 then goto _Label_2540 else goto _Label_2538
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2538
	jmp	_Label_2540
_Label_2540:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2552 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_2551 = *_temp_2552  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2551) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2553 = _temp_2551 + 20
	load	[r14+-92],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: _temp_2550 = *_temp_2553  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_2550 >= 0 then goto _Label_2539		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2539
!	jmp	_Label_2538
_Label_2538:
! THEN...
	mov	861,r13		! source line 861
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2554 = _StringConst_177
	set	_StringConst_177,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2554  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	861,r13		! source line 861
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2539:
! ASSIGNMENT STATEMENT...
	mov	863,r13		! source line 863
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2555 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-76]
!   Data Move: fcb = *_temp_2555  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-128]
! WHILE STATEMENT...
	mov	864,r13		! source line 864
	mov	"\0\0WH",r10
_Label_2556:
!   if numBytes <= 0 then goto _Label_2558		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2558
!	jmp	_Label_2557
_Label_2557:
	mov	864,r13		! source line 864
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	873,r13		! source line 873
	mov	"\0\0AS",r10
!   sector = bytePos div 8192		(int)
	load	[r14+20],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
! ASSIGNMENT STATEMENT...
	mov	874,r13		! source line 874
	mov	"\0\0AS",r10
!   offset = bytePos rem 8192		(int)
	load	[r14+20],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
! IF STATEMENT...
	mov	878,r13		! source line 878
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2562 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-68]
!   Data Move: _temp_2561 = *_temp_2562  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if _temp_2561 == sector then goto _Label_2560		(int)
	load	[r14+-72],r1
	load	[r14+-112],r2
	cmp	r1,r2
	be	_Label_2560
!	jmp	_Label_2559
_Label_2559:
! THEN...
	mov	879,r13		! source line 879
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	879,r13		! source line 879
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_2563) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message Flush
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! SEND STATEMENT...
	mov	881,r13		! source line 881
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2566 = fcb + 20
	load	[r14+-128],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2565 = *_temp_2566  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   _temp_2564 = sector + _temp_2565		(int)
	load	[r14+-112],r1
	load	[r14+-56],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2568 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-44]
!   Data Move: _temp_2567 = *_temp_2568  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   _temp_2569 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_2564  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2567  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+12]
!   Send message SynchReadSector
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	884,r13		! source line 884
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2570 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_2570 = sector  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	885,r13		! source line 885
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2571 = fcb + 36
	load	[r14+-128],r1
	add	r1,36,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_2571 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-32],r2
	storeb	r1,[r2]
! END IF...
_Label_2560:
! ASSIGNMENT STATEMENT...
	mov	887,r13		! source line 887
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2573 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-24]
!   Data Move: _temp_2572 = *_temp_2573  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   posInBuffer = _temp_2572 + offset		(int)
	load	[r14+-28],r1
	load	[r14+-116],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
! ASSIGNMENT STATEMENT...
	mov	888,r13		! source line 888
	mov	"\0\0AS",r10
!   _temp_2574 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-116],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2574  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Call the function
	mov	888,r13		! source line 888
	mov	"\0\0CA",r10
	call	_P_System_Min
!   Retrieve Result: targetName=bytesToMove  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-124]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=targetAddr  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=posInBuffer  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=bytesToMove  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+8]
!   Call the function
	mov	892,r13		! source line 892
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	893,r13		! source line 893
	mov	"\0\0AS",r10
!   targetAddr = targetAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	894,r13		! source line 894
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	895,r13		! source line 895
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_2556
_Label_2558:
! SEND STATEMENT...
	mov	902,r13		! source line 902
	mov	"\0\0SE",r10
!   _temp_2575 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	903,r13		! source line 903
	mov	"\0\0RE",r10
!   ReturnResult: 1  (sizeInBytes=1)
	mov	1,r1
	storeb	r1,[r14+8]
	add	r15,140,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_7:
	.word	_sourceFileName
	.word	_Label_2576
	.word	20		! total size of parameters
	.word	136		! frame size = 136
	.word	_Label_2577
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2578
	.word	12
	.word	4
	.word	_Label_2579
	.word	16
	.word	4
	.word	_Label_2580
	.word	20
	.word	4
	.word	_Label_2581
	.word	24
	.word	4
	.word	_Label_2582
	.word	-16
	.word	4
	.word	_Label_2583
	.word	-20
	.word	4
	.word	_Label_2584
	.word	-24
	.word	4
	.word	_Label_2585
	.word	-28
	.word	4
	.word	_Label_2586
	.word	-32
	.word	4
	.word	_Label_2587
	.word	-36
	.word	4
	.word	_Label_2588
	.word	-40
	.word	4
	.word	_Label_2589
	.word	-44
	.word	4
	.word	_Label_2590
	.word	-48
	.word	4
	.word	_Label_2591
	.word	-52
	.word	4
	.word	_Label_2592
	.word	-56
	.word	4
	.word	_Label_2593
	.word	-60
	.word	4
	.word	_Label_2594
	.word	-64
	.word	4
	.word	_Label_2595
	.word	-68
	.word	4
	.word	_Label_2596
	.word	-72
	.word	4
	.word	_Label_2597
	.word	-76
	.word	4
	.word	_Label_2598
	.word	-80
	.word	4
	.word	_Label_2599
	.word	-84
	.word	4
	.word	_Label_2600
	.word	-88
	.word	4
	.word	_Label_2601
	.word	-92
	.word	4
	.word	_Label_2602
	.word	-96
	.word	4
	.word	_Label_2603
	.word	-100
	.word	4
	.word	_Label_2604
	.word	-104
	.word	4
	.word	_Label_2605
	.word	-9
	.word	1
	.word	_Label_2606
	.word	-10
	.word	1
	.word	_Label_2607
	.word	-108
	.word	4
	.word	_Label_2608
	.word	-112
	.word	4
	.word	_Label_2609
	.word	-116
	.word	4
	.word	_Label_2610
	.word	-120
	.word	4
	.word	_Label_2611
	.word	-124
	.word	4
	.word	_Label_2612
	.word	-128
	.word	4
	.word	0
_Label_2576:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchRead\0"
	.align
_Label_2577:
	.ascii	"Pself\0"
	.align
_Label_2578:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2579:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_2580:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_2581:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2582:
	.byte	'?'
	.ascii	"_temp_2575\0"
	.align
_Label_2583:
	.byte	'?'
	.ascii	"_temp_2574\0"
	.align
_Label_2584:
	.byte	'?'
	.ascii	"_temp_2573\0"
	.align
_Label_2585:
	.byte	'?'
	.ascii	"_temp_2572\0"
	.align
_Label_2586:
	.byte	'?'
	.ascii	"_temp_2571\0"
	.align
_Label_2587:
	.byte	'?'
	.ascii	"_temp_2570\0"
	.align
_Label_2588:
	.byte	'?'
	.ascii	"_temp_2569\0"
	.align
_Label_2589:
	.byte	'?'
	.ascii	"_temp_2568\0"
	.align
_Label_2590:
	.byte	'?'
	.ascii	"_temp_2567\0"
	.align
_Label_2591:
	.byte	'?'
	.ascii	"_temp_2566\0"
	.align
_Label_2592:
	.byte	'?'
	.ascii	"_temp_2565\0"
	.align
_Label_2593:
	.byte	'?'
	.ascii	"_temp_2564\0"
	.align
_Label_2594:
	.byte	'?'
	.ascii	"_temp_2563\0"
	.align
_Label_2595:
	.byte	'?'
	.ascii	"_temp_2562\0"
	.align
_Label_2596:
	.byte	'?'
	.ascii	"_temp_2561\0"
	.align
_Label_2597:
	.byte	'?'
	.ascii	"_temp_2555\0"
	.align
_Label_2598:
	.byte	'?'
	.ascii	"_temp_2554\0"
	.align
_Label_2599:
	.byte	'?'
	.ascii	"_temp_2553\0"
	.align
_Label_2600:
	.byte	'?'
	.ascii	"_temp_2552\0"
	.align
_Label_2601:
	.byte	'?'
	.ascii	"_temp_2551\0"
	.align
_Label_2602:
	.byte	'?'
	.ascii	"_temp_2550\0"
	.align
_Label_2603:
	.byte	'?'
	.ascii	"_temp_2547\0"
	.align
_Label_2604:
	.byte	'?'
	.ascii	"_temp_2546\0"
	.align
_Label_2605:
	.byte	'C'
	.ascii	"_temp_2545\0"
	.align
_Label_2606:
	.byte	'C'
	.ascii	"_temp_2542\0"
	.align
_Label_2607:
	.byte	'?'
	.ascii	"_temp_2537\0"
	.align
_Label_2608:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_2609:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2610:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_2611:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_2612:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  METHOD SynchWrite  ===============
! 
_Method_P_Kernel_FileManager_8:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_8,r1
	push	r1
	mov	36,r1
_Label_3057:
	push	r0
	sub	r1,1,r1
	bne	_Label_3057
	mov	908,r13		! source line 908
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	924,r13		! source line 924
	mov	"\0\0SE",r10
!   _temp_2613 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-116]
!   Send message Lock
	load	[r14+-116],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	925,r13		! source line 925
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_2619		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2619
!   _temp_2618 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_2620
_Label_2619:
!   _temp_2618 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_2620:
!   if _temp_2618 then goto _Label_2617 else goto _Label_2614
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2614
	jmp	_Label_2617
_Label_2617:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2623 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-108]
!   Data Move: _temp_2622 = *_temp_2623  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if _temp_2622 == 0 then goto _Label_2624		(int)
	load	[r14+-112],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2624
!   _temp_2621 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2625
_Label_2624:
!   _temp_2621 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2625:
!   if _temp_2621 then goto _Label_2616 else goto _Label_2614
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2614
	jmp	_Label_2616
_Label_2616:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2628 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-96]
!   Data Move: _temp_2627 = *_temp_2628  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_2627) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2629 = _temp_2627 + 20
	load	[r14+-100],r1
	add	r1,20,r1
	store	r1,[r14+-92]
!   Data Move: _temp_2626 = *_temp_2629  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_2626 >= 0 then goto _Label_2615		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2615
!	jmp	_Label_2614
_Label_2614:
! THEN...
	mov	926,r13		! source line 926
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2630 = _StringConst_178
	set	_StringConst_178,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_2630  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	926,r13		! source line 926
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2615:
! ASSIGNMENT STATEMENT...
	mov	928,r13		! source line 928
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2631 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: fcb = *_temp_2631  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-136]
! WHILE STATEMENT...
	mov	929,r13		! source line 929
	mov	"\0\0WH",r10
_Label_2632:
!   if numBytes <= 0 then goto _Label_2634		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2634
!	jmp	_Label_2633
_Label_2633:
	mov	929,r13		! source line 929
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	938,r13		! source line 938
	mov	"\0\0AS",r10
!   sector = bytePos div 8192		(int)
	load	[r14+20],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
! ASSIGNMENT STATEMENT...
	mov	939,r13		! source line 939
	mov	"\0\0AS",r10
!   offset = bytePos rem 8192		(int)
	load	[r14+20],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
! IF STATEMENT...
	mov	943,r13		! source line 943
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2638 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-76]
!   Data Move: _temp_2637 = *_temp_2638  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_2637 == sector then goto _Label_2636		(int)
	load	[r14+-80],r1
	load	[r14+-120],r2
	cmp	r1,r2
	be	_Label_2636
!	jmp	_Label_2635
_Label_2635:
! THEN...
	mov	945,r13		! source line 945
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	945,r13		! source line 945
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_2639) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message Flush
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! END IF...
_Label_2636:
! ASSIGNMENT STATEMENT...
	mov	947,r13		! source line 947
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2641 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2640 = *_temp_2641  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   posInBuffer = _temp_2640 + offset		(int)
	load	[r14+-68],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
! ASSIGNMENT STATEMENT...
	mov	948,r13		! source line 948
	mov	"\0\0AS",r10
!   _temp_2642 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2642  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Call the function
	mov	948,r13		! source line 948
	mov	"\0\0CA",r10
	call	_P_System_Min
!   Retrieve Result: targetName=bytesToMove  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-132]
! IF STATEMENT...
	mov	949,r13		! source line 949
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2646 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2645 = *_temp_2646  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if _temp_2645 != sector then goto _Label_2644		(int)
	load	[r14+-56],r1
	load	[r14+-120],r2
	cmp	r1,r2
	bne	_Label_2644
!	jmp	_Label_2643
_Label_2643:
	jmp	_Label_2647
_Label_2644:
! ELSE...
	mov	951,r13		! source line 951
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	951,r13		! source line 951
	mov	"\0\0IF",r10
!   if intIsZero (offset) then goto _Label_2650
	load	[r14+-124],r1
	cmp	r1,r0
	be	_Label_2650
	jmp	_Label_2649
_Label_2650:
!   if bytesToMove != 8192 then goto _Label_2649		(int)
	load	[r14+-132],r1
	mov	8192,r2
	cmp	r1,r2
	bne	_Label_2649
!	jmp	_Label_2648
_Label_2648:
	jmp	_Label_2651
_Label_2649:
! ELSE...
	mov	955,r13		! source line 955
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	955,r13		! source line 955
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2654 = fcb + 20
	load	[r14+-136],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   Data Move: _temp_2653 = *_temp_2654  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_2652 = sector + _temp_2653		(int)
	load	[r14+-120],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2656 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-32]
!   Data Move: _temp_2655 = *_temp_2656  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   _temp_2657 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_2652  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2655  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+12]
!   Send message SynchReadSector
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_2651:
! END IF...
_Label_2647:
! ASSIGNMENT STATEMENT...
	mov	959,r13		! source line 959
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2658 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2658 = sector  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	960,r13		! source line 960
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2659 = fcb + 36
	load	[r14+-136],r1
	add	r1,36,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2659 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-20],r2
	storeb	r1,[r2]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=posInBuffer  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=sourceAddr  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=bytesToMove  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+8]
!   Call the function
	mov	964,r13		! source line 964
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	965,r13		! source line 965
	mov	"\0\0AS",r10
!   sourceAddr = sourceAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	966,r13		! source line 966
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	967,r13		! source line 967
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-132],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_2632
_Label_2634:
! SEND STATEMENT...
	mov	974,r13		! source line 974
	mov	"\0\0SE",r10
!   _temp_2660 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	976,r13		! source line 976
	mov	"\0\0RE",r10
!   ReturnResult: 1  (sizeInBytes=1)
	mov	1,r1
	storeb	r1,[r14+8]
	add	r15,148,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_8:
	.word	_sourceFileName
	.word	_Label_2661
	.word	20		! total size of parameters
	.word	144		! frame size = 144
	.word	_Label_2662
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2663
	.word	12
	.word	4
	.word	_Label_2664
	.word	16
	.word	4
	.word	_Label_2665
	.word	20
	.word	4
	.word	_Label_2666
	.word	24
	.word	4
	.word	_Label_2667
	.word	-16
	.word	4
	.word	_Label_2668
	.word	-20
	.word	4
	.word	_Label_2669
	.word	-24
	.word	4
	.word	_Label_2670
	.word	-28
	.word	4
	.word	_Label_2671
	.word	-32
	.word	4
	.word	_Label_2672
	.word	-36
	.word	4
	.word	_Label_2673
	.word	-40
	.word	4
	.word	_Label_2674
	.word	-44
	.word	4
	.word	_Label_2675
	.word	-48
	.word	4
	.word	_Label_2676
	.word	-52
	.word	4
	.word	_Label_2677
	.word	-56
	.word	4
	.word	_Label_2678
	.word	-60
	.word	4
	.word	_Label_2679
	.word	-64
	.word	4
	.word	_Label_2680
	.word	-68
	.word	4
	.word	_Label_2681
	.word	-72
	.word	4
	.word	_Label_2682
	.word	-76
	.word	4
	.word	_Label_2683
	.word	-80
	.word	4
	.word	_Label_2684
	.word	-84
	.word	4
	.word	_Label_2685
	.word	-88
	.word	4
	.word	_Label_2686
	.word	-92
	.word	4
	.word	_Label_2687
	.word	-96
	.word	4
	.word	_Label_2688
	.word	-100
	.word	4
	.word	_Label_2689
	.word	-104
	.word	4
	.word	_Label_2690
	.word	-108
	.word	4
	.word	_Label_2691
	.word	-112
	.word	4
	.word	_Label_2692
	.word	-9
	.word	1
	.word	_Label_2693
	.word	-10
	.word	1
	.word	_Label_2694
	.word	-116
	.word	4
	.word	_Label_2695
	.word	-120
	.word	4
	.word	_Label_2696
	.word	-124
	.word	4
	.word	_Label_2697
	.word	-128
	.word	4
	.word	_Label_2698
	.word	-132
	.word	4
	.word	_Label_2699
	.word	-136
	.word	4
	.word	0
_Label_2661:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchWrite\0"
	.align
_Label_2662:
	.ascii	"Pself\0"
	.align
_Label_2663:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2664:
	.byte	'I'
	.ascii	"sourceAddr\0"
	.align
_Label_2665:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_2666:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2667:
	.byte	'?'
	.ascii	"_temp_2660\0"
	.align
_Label_2668:
	.byte	'?'
	.ascii	"_temp_2659\0"
	.align
_Label_2669:
	.byte	'?'
	.ascii	"_temp_2658\0"
	.align
_Label_2670:
	.byte	'?'
	.ascii	"_temp_2657\0"
	.align
_Label_2671:
	.byte	'?'
	.ascii	"_temp_2656\0"
	.align
_Label_2672:
	.byte	'?'
	.ascii	"_temp_2655\0"
	.align
_Label_2673:
	.byte	'?'
	.ascii	"_temp_2654\0"
	.align
_Label_2674:
	.byte	'?'
	.ascii	"_temp_2653\0"
	.align
_Label_2675:
	.byte	'?'
	.ascii	"_temp_2652\0"
	.align
_Label_2676:
	.byte	'?'
	.ascii	"_temp_2646\0"
	.align
_Label_2677:
	.byte	'?'
	.ascii	"_temp_2645\0"
	.align
_Label_2678:
	.byte	'?'
	.ascii	"_temp_2642\0"
	.align
_Label_2679:
	.byte	'?'
	.ascii	"_temp_2641\0"
	.align
_Label_2680:
	.byte	'?'
	.ascii	"_temp_2640\0"
	.align
_Label_2681:
	.byte	'?'
	.ascii	"_temp_2639\0"
	.align
_Label_2682:
	.byte	'?'
	.ascii	"_temp_2638\0"
	.align
_Label_2683:
	.byte	'?'
	.ascii	"_temp_2637\0"
	.align
_Label_2684:
	.byte	'?'
	.ascii	"_temp_2631\0"
	.align
_Label_2685:
	.byte	'?'
	.ascii	"_temp_2630\0"
	.align
_Label_2686:
	.byte	'?'
	.ascii	"_temp_2629\0"
	.align
_Label_2687:
	.byte	'?'
	.ascii	"_temp_2628\0"
	.align
_Label_2688:
	.byte	'?'
	.ascii	"_temp_2627\0"
	.align
_Label_2689:
	.byte	'?'
	.ascii	"_temp_2626\0"
	.align
_Label_2690:
	.byte	'?'
	.ascii	"_temp_2623\0"
	.align
_Label_2691:
	.byte	'?'
	.ascii	"_temp_2622\0"
	.align
_Label_2692:
	.byte	'C'
	.ascii	"_temp_2621\0"
	.align
_Label_2693:
	.byte	'C'
	.ascii	"_temp_2618\0"
	.align
_Label_2694:
	.byte	'?'
	.ascii	"_temp_2613\0"
	.align
_Label_2695:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_2696:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2697:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_2698:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_2699:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  CLASS OpenFile  ===============
! 
! Dispatch Table:
! 
_P_Kernel_OpenFile:
	.word	_Label_2700
	jmp	_Method_P_Kernel_OpenFile_1	! 4:	Print
	jmp	_Method_P_Kernel_OpenFile_2	! 8:	ReadBytes
	jmp	_Method_P_Kernel_OpenFile_3	! 12:	ReadInt
	jmp	_Method_P_Kernel_OpenFile_4	! 16:	LoadExecutable
	.word	0
! 
! Class descriptor:
! 
_Label_2700:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2701
	.word	_sourceFileName
	.word	357		! line number
	.word	28		! size of instances, in bytes
	.word	_P_Kernel_OpenFile
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_2701:
	.ascii	"OpenFile\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_OpenFile_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_OpenFile_1,r1
	push	r1
	mov	4,r1
_Label_3058:
	push	r0
	sub	r1,1,r1
	bne	_Label_3058
	mov	1046,r13		! source line 1046
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2702 = _StringConst_179
	set	_StringConst_179,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2702  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1047,r13		! source line 1047
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=currentPos  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1048,r13		! source line 1048
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2703 = _StringConst_180
	set	_StringConst_180,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2703  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1049,r13		! source line 1049
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1050,r13		! source line 1050
	mov	"\0\0IF",r10
!   if fcb == 0 then goto _Label_2705		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2705
!	jmp	_Label_2704
_Label_2704:
! THEN...
	mov	1051,r13		! source line 1051
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1051,r13		! source line 1051
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	load	[r14+8],r1
	load	[r1+20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
	jmp	_Label_2706
_Label_2705:
! ELSE...
	mov	1053,r13		! source line 1053
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2707 = _StringConst_181
	set	_StringConst_181,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2707  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1053,r13		! source line 1053
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2706:
! RETURN STATEMENT...
	mov	1050,r13		! source line 1050
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_OpenFile_1:
	.word	_sourceFileName
	.word	_Label_2708
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_2709
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2710
	.word	-12
	.word	4
	.word	_Label_2711
	.word	-16
	.word	4
	.word	_Label_2712
	.word	-20
	.word	4
	.word	0
_Label_2708:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2709:
	.ascii	"Pself\0"
	.align
_Label_2710:
	.byte	'?'
	.ascii	"_temp_2707\0"
	.align
_Label_2711:
	.byte	'?'
	.ascii	"_temp_2703\0"
	.align
_Label_2712:
	.byte	'?'
	.ascii	"_temp_2702\0"
	.align
! 
! ===============  METHOD ReadBytes  ===============
! 
_Method_P_Kernel_OpenFile_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_OpenFile_2,r1
	push	r1
	mov	13,r1
_Label_3059:
	push	r0
	sub	r1,1,r1
	bne	_Label_3059
	mov	1059,r13		! source line 1059
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1069,r13		! source line 1069
	mov	"\0\0SE",r10
!   _temp_2713 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-36]
!   _temp_2714 = _temp_2713 + 4
	load	[r14+-36],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1070,r13		! source line 1070
	mov	"\0\0AS",r10
!   pos = currentPos		(4 bytes)
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1071,r13		! source line 1071
	mov	"\0\0AS",r10
!   currentPos = currentPos + numBytes		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! SEND STATEMENT...
	mov	1072,r13		! source line 1072
	mov	"\0\0SE",r10
!   _temp_2715 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   _temp_2716 = _temp_2715 + 4
	load	[r14+-28],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message Unlock
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1073,r13		! source line 1073
	mov	"\0\0RE",r10
	mov	1073,r13		! source line 1073
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   _temp_2719 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2718  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=targetAddr  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=pos  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=numBytes  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+16]
!   Send message SynchRead
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
!   Retrieve Result: targetName=_temp_2717  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   ReturnResult: _temp_2717  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_OpenFile_2:
	.word	_sourceFileName
	.word	_Label_2720
	.word	12		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_2721
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2722
	.word	12
	.word	4
	.word	_Label_2723
	.word	16
	.word	4
	.word	_Label_2724
	.word	-16
	.word	4
	.word	_Label_2725
	.word	-20
	.word	4
	.word	_Label_2726
	.word	-9
	.word	1
	.word	_Label_2727
	.word	-24
	.word	4
	.word	_Label_2728
	.word	-28
	.word	4
	.word	_Label_2729
	.word	-32
	.word	4
	.word	_Label_2730
	.word	-36
	.word	4
	.word	_Label_2731
	.word	-40
	.word	4
	.word	0
_Label_2720:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadBytes\0"
	.align
_Label_2721:
	.ascii	"Pself\0"
	.align
_Label_2722:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_2723:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2724:
	.byte	'?'
	.ascii	"_temp_2719\0"
	.align
_Label_2725:
	.byte	'?'
	.ascii	"_temp_2718\0"
	.align
_Label_2726:
	.byte	'C'
	.ascii	"_temp_2717\0"
	.align
_Label_2727:
	.byte	'?'
	.ascii	"_temp_2716\0"
	.align
_Label_2728:
	.byte	'?'
	.ascii	"_temp_2715\0"
	.align
_Label_2729:
	.byte	'?'
	.ascii	"_temp_2714\0"
	.align
_Label_2730:
	.byte	'?'
	.ascii	"_temp_2713\0"
	.align
_Label_2731:
	.byte	'I'
	.ascii	"pos\0"
	.align
! 
! ===============  METHOD ReadInt  ===============
! 
_Method_P_Kernel_OpenFile_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_OpenFile_3,r1
	push	r1
	mov	8,r1
_Label_3060:
	push	r0
	sub	r1,1,r1
	bne	_Label_3060
	mov	1078,r13		! source line 1078
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1083,r13		! source line 1083
	mov	"\0\0IF",r10
	mov	1083,r13		! source line 1083
	mov	"\0\0SE",r10
!   _temp_2735 = &i
	add	r14,-28,r1
	store	r1,[r14+-24]
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_2736) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2735  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+8]
!   Send message ReadBytes
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Retrieve Result: targetName=_temp_2734  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_2734 then goto _Label_2733 else goto _Label_2732
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2732
	jmp	_Label_2733
_Label_2732:
! THEN...
	mov	1084,r13		! source line 1084
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2737 = _StringConst_182
	set	_StringConst_182,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2737  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1084,r13		! source line 1084
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2733:
! RETURN STATEMENT...
	mov	1086,r13		! source line 1086
	mov	"\0\0RE",r10
!   ReturnResult: i  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_OpenFile_3:
	.word	_sourceFileName
	.word	_Label_2738
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_2739
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2740
	.word	-16
	.word	4
	.word	_Label_2741
	.word	-20
	.word	4
	.word	_Label_2742
	.word	-24
	.word	4
	.word	_Label_2743
	.word	-9
	.word	1
	.word	_Label_2744
	.word	-28
	.word	4
	.word	0
_Label_2738:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadInt\0"
	.align
_Label_2739:
	.ascii	"Pself\0"
	.align
_Label_2740:
	.byte	'?'
	.ascii	"_temp_2737\0"
	.align
_Label_2741:
	.byte	'?'
	.ascii	"_temp_2736\0"
	.align
_Label_2742:
	.byte	'?'
	.ascii	"_temp_2735\0"
	.align
_Label_2743:
	.byte	'C'
	.ascii	"_temp_2734\0"
	.align
_Label_2744:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD LoadExecutable  ===============
! 
_Method_P_Kernel_OpenFile_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_OpenFile_4,r1
	push	r1
	mov	68,r1
_Label_3061:
	push	r0
	sub	r1,1,r1
	bne	_Label_3061
	mov	1091,r13		! source line 1091
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1117,r13		! source line 1117
	mov	"\0\0IF",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2748 = addrSpace + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-216]
!   Data Move: _temp_2747 = *_temp_2748  (sizeInBytes=4)
	load	[r14+-216],r1
	load	[r1],r1
	store	r1,[r14+-220]
!   if intIsZero (_temp_2747) then goto _Label_2746
	load	[r14+-220],r1
	cmp	r1,r0
	be	_Label_2746
!	jmp	_Label_2745
_Label_2745:
! THEN...
	mov	1118,r13		! source line 1118
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2749 = _StringConst_183
	set	_StringConst_183,r1
	store	r1,[r14+-212]
!   Prepare Argument: offset=8  value=_temp_2749  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1118,r13		! source line 1118
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2746:
! IF STATEMENT...
	mov	1122,r13		! source line 1122
	mov	"\0\0IF",r10
	mov	1122,r13		! source line 1122
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-204]
!   if intIsZero (_temp_2753) then goto _runtimeErrorNullPointer
	load	[r14+-204],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-204],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_2752  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-208]
!   if _temp_2752 == 1112300152 then goto _Label_2751		(int)
	load	[r14+-208],r1
	set	1112300152,r2
	cmp	r1,r2
	be	_Label_2751
!	jmp	_Label_2750
_Label_2750:
! THEN...
	mov	1123,r13		! source line 1123
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2754 = _StringConst_184
	set	_StringConst_184,r1
	store	r1,[r14+-200]
!   Prepare Argument: offset=8  value=_temp_2754  sizeInBytes=4
	load	[r14+-200],r1
	store	r1,[r15+0]
!   Call the function
	mov	1123,r13		! source line 1123
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1124,r13		! source line 1124
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2751:
! ASSIGNMENT STATEMENT...
	mov	1128,r13		! source line 1128
	mov	"\0\0AS",r10
	mov	1128,r13		! source line 1128
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-196]
!   if intIsZero (_temp_2755) then goto _runtimeErrorNullPointer
	load	[r14+-196],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-196],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=textSize  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-232]
! ASSIGNMENT STATEMENT...
	mov	1129,r13		! source line 1129
	mov	"\0\0AS",r10
	mov	1129,r13		! source line 1129
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-192]
!   if intIsZero (_temp_2756) then goto _runtimeErrorNullPointer
	load	[r14+-192],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-192],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=dataSize  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-236]
! ASSIGNMENT STATEMENT...
	mov	1130,r13		! source line 1130
	mov	"\0\0AS",r10
	mov	1130,r13		! source line 1130
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_2757) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-188],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=bssSize  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-240]
! ASSIGNMENT STATEMENT...
	mov	1131,r13		! source line 1131
	mov	"\0\0AS",r10
	mov	1131,r13		! source line 1131
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-184]
!   if intIsZero (_temp_2758) then goto _runtimeErrorNullPointer
	load	[r14+-184],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-184],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=textStart  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-244]
! ASSIGNMENT STATEMENT...
	mov	1132,r13		! source line 1132
	mov	"\0\0AS",r10
	mov	1132,r13		! source line 1132
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-180]
!   if intIsZero (_temp_2759) then goto _runtimeErrorNullPointer
	load	[r14+-180],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-180],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=dataStart  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-248]
! ASSIGNMENT STATEMENT...
	mov	1133,r13		! source line 1133
	mov	"\0\0AS",r10
	mov	1133,r13		! source line 1133
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-176]
!   if intIsZero (_temp_2760) then goto _runtimeErrorNullPointer
	load	[r14+-176],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-176],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=bssStart  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-252]
! IF STATEMENT...
	mov	1136,r13		! source line 1136
	mov	"\0\0IF",r10
!   _temp_2763 = textSize rem 8192		(int)
	load	[r14+-232],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-172]
!   if intIsZero (_temp_2763) then goto _Label_2762
	load	[r14+-172],r1
	cmp	r1,r0
	be	_Label_2762
!	jmp	_Label_2761
_Label_2761:
! THEN...
	mov	1137,r13		! source line 1137
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2764 = _StringConst_185
	set	_StringConst_185,r1
	store	r1,[r14+-168]
!   Prepare Argument: offset=8  value=_temp_2764  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+0]
!   Call the function
	mov	1137,r13		! source line 1137
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1138,r13		! source line 1138
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2762:
! ASSIGNMENT STATEMENT...
	mov	1140,r13		! source line 1140
	mov	"\0\0AS",r10
!   textSizeInPages = textSize div 8192		(int)
	load	[r14+-232],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-260]
! IF STATEMENT...
	mov	1144,r13		! source line 1144
	mov	"\0\0IF",r10
!   if intIsZero (textStart) then goto _Label_2766
	load	[r14+-244],r1
	cmp	r1,r0
	be	_Label_2766
!	jmp	_Label_2765
_Label_2765:
! THEN...
	mov	1145,r13		! source line 1145
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2767 = _StringConst_186
	set	_StringConst_186,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_2767  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	1145,r13		! source line 1145
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1146,r13		! source line 1146
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2766:
! IF STATEMENT...
	mov	1150,r13		! source line 1150
	mov	"\0\0IF",r10
!   _temp_2770 = dataSize rem 8192		(int)
	load	[r14+-236],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
!   if intIsZero (_temp_2770) then goto _Label_2769
	load	[r14+-160],r1
	cmp	r1,r0
	be	_Label_2769
!	jmp	_Label_2768
_Label_2768:
! THEN...
	mov	1151,r13		! source line 1151
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2771 = _StringConst_187
	set	_StringConst_187,r1
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_2771  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	1151,r13		! source line 1151
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1152,r13		! source line 1152
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2769:
! IF STATEMENT...
	mov	1154,r13		! source line 1154
	mov	"\0\0IF",r10
!   _temp_2774 = textStart + textSize		(int)
	load	[r14+-244],r1
	load	[r14+-232],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   if dataStart == _temp_2774 then goto _Label_2773		(int)
	load	[r14+-248],r1
	load	[r14+-152],r2
	cmp	r1,r2
	be	_Label_2773
!	jmp	_Label_2772
_Label_2772:
! THEN...
	mov	1155,r13		! source line 1155
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2775 = _StringConst_188
	set	_StringConst_188,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_2775  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	1155,r13		! source line 1155
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1156,r13		! source line 1156
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2773:
! ASSIGNMENT STATEMENT...
	mov	1158,r13		! source line 1158
	mov	"\0\0AS",r10
!   dataSizeInPages = dataSize div 8192		(int)
	load	[r14+-236],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-264]
! IF STATEMENT...
	mov	1161,r13		! source line 1161
	mov	"\0\0IF",r10
!   _temp_2778 = bssSize rem 8192		(int)
	load	[r14+-240],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
!   if intIsZero (_temp_2778) then goto _Label_2777
	load	[r14+-144],r1
	cmp	r1,r0
	be	_Label_2777
!	jmp	_Label_2776
_Label_2776:
! THEN...
	mov	1162,r13		! source line 1162
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2779 = _StringConst_189
	set	_StringConst_189,r1
	store	r1,[r14+-140]
!   Prepare Argument: offset=8  value=_temp_2779  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+0]
!   Call the function
	mov	1162,r13		! source line 1162
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1163,r13		! source line 1163
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2777:
! IF STATEMENT...
	mov	1165,r13		! source line 1165
	mov	"\0\0IF",r10
!   _temp_2782 = dataStart + dataSize		(int)
	load	[r14+-248],r1
	load	[r14+-236],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
!   if bssStart == _temp_2782 then goto _Label_2781		(int)
	load	[r14+-252],r1
	load	[r14+-136],r2
	cmp	r1,r2
	be	_Label_2781
!	jmp	_Label_2780
_Label_2780:
! THEN...
	mov	1166,r13		! source line 1166
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2783 = _StringConst_190
	set	_StringConst_190,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_2783  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	1166,r13		! source line 1166
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1167,r13		! source line 1167
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2781:
! ASSIGNMENT STATEMENT...
	mov	1169,r13		! source line 1169
	mov	"\0\0AS",r10
!   bssSizeInPages = bssSize div 8192		(int)
	load	[r14+-240],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-268]
! ASSIGNMENT STATEMENT...
	mov	1172,r13		! source line 1172
	mov	"\0\0AS",r10
!   _temp_2786 = textSizeInPages + dataSizeInPages		(int)
	load	[r14+-260],r1
	load	[r14+-264],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
!   _temp_2785 = _temp_2786 + bssSizeInPages		(int)
	load	[r14+-120],r1
	load	[r14+-268],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
!   _temp_2784 = _temp_2785 + 1		(int)
	load	[r14+-124],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
!   i = _temp_2784 + 0		(int)
	load	[r14+-128],r1
	mov	0,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
! IF STATEMENT...
	mov	1187,r13		! source line 1187
	mov	"\0\0IF",r10
!   if i <= 20 then goto _Label_2788		(int)
	load	[r14+-256],r1
	mov	20,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2788
!	jmp	_Label_2787
_Label_2787:
! THEN...
	mov	1188,r13		! source line 1188
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2789 = _StringConst_191
	set	_StringConst_191,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_2789  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	1188,r13		! source line 1188
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2790 = _StringConst_192
	set	_StringConst_192,r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_2790  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-256],r1
	store	r1,[r15+4]
!   Call the function
	mov	1189,r13		! source line 1189
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_2791 = _StringConst_193
	set	_StringConst_193,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_2791  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+4]
!   Call the function
	mov	1190,r13		! source line 1190
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! RETURN STATEMENT...
	mov	1191,r13		! source line 1191
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2788:
! SEND STATEMENT...
	mov	1193,r13		! source line 1193
	mov	"\0\0SE",r10
!   _temp_2792 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=i  sizeInBytes=4
	load	[r14+-256],r1
	store	r1,[r15+8]
!   Send message GetNewFrames
	load	[r14+-104],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! IF STATEMENT...
	mov	1199,r13		! source line 1199
	mov	"\0\0IF",r10
	mov	1199,r13		! source line 1199
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-96]
!   if intIsZero (_temp_2796) then goto _runtimeErrorNullPointer
	load	[r14+-96],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_2795  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-100]
!   if _temp_2795 == 707406378 then goto _Label_2794		(int)
	load	[r14+-100],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_2794
!	jmp	_Label_2793
_Label_2793:
! THEN...
	mov	1200,r13		! source line 1200
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2797 = _StringConst_194
	set	_StringConst_194,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_2797  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	1200,r13		! source line 1200
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1201,r13		! source line 1201
	mov	"\0\0SE",r10
!   _temp_2798 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-88],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	1202,r13		! source line 1202
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2794:
! ASSIGNMENT STATEMENT...
	mov	1206,r13		! source line 1206
	mov	"\0\0AS",r10
!   nextVirtPage = textStart div 8192		(int)
	load	[r14+-244],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
! FOR STATEMENT...
	mov	1207,r13		! source line 1207
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2803 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-84]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2804 = textSizeInPages		(4 bytes)
	load	[r14+-260],r1
	store	r1,[r14+-80]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2803  (sizeInBytes=4)
	load	[r14+-84],r1
	store	r1,[r14+-256]
_Label_2799:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2804 then goto _Label_2802		
	load	[r14+-256],r1
	load	[r14+-80],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2802
_Label_2800:
	mov	1207,r13		! source line 1207
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1208,r13		! source line 1208
	mov	"\0\0AS",r10
	mov	1208,r13		! source line 1208
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=nextVirtPage  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=addr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-228]
! IF STATEMENT...
	mov	1211,r13		! source line 1211
	mov	"\0\0IF",r10
	mov	1211,r13		! source line 1211
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_2808) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=addr  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=8192  sizeInBytes=4
	mov	8192,r1
	store	r1,[r15+8]
!   Send message ReadBytes
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Retrieve Result: targetName=_temp_2807  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2807 then goto _Label_2806 else goto _Label_2805
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2805
	jmp	_Label_2806
_Label_2805:
! THEN...
	mov	1212,r13		! source line 1212
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2809 = _StringConst_195
	set	_StringConst_195,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_2809  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	1212,r13		! source line 1212
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1213,r13		! source line 1213
	mov	"\0\0SE",r10
!   _temp_2810 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	1214,r13		! source line 1214
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2806:
! SEND STATEMENT...
	mov	1216,r13		! source line 1216
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=nextVirtPage  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+4]
!   Send message ClearWritable
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,64,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1217,r13		! source line 1217
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_2801:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_2799
! END FOR
_Label_2802:
! IF STATEMENT...
	mov	1221,r13		! source line 1221
	mov	"\0\0IF",r10
	mov	1221,r13		! source line 1221
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_2814) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_2813  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-64]
!   if _temp_2813 == 707406378 then goto _Label_2812		(int)
	load	[r14+-64],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_2812
!	jmp	_Label_2811
_Label_2811:
! THEN...
	mov	1222,r13		! source line 1222
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2815 = _StringConst_196
	set	_StringConst_196,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_2815  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	1222,r13		! source line 1222
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1223,r13		! source line 1223
	mov	"\0\0SE",r10
!   _temp_2816 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	1224,r13		! source line 1224
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2812:
! FOR STATEMENT...
	mov	1228,r13		! source line 1228
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2821 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2822 = dataSizeInPages		(4 bytes)
	load	[r14+-264],r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2821  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-256]
_Label_2817:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2822 then goto _Label_2820		
	load	[r14+-256],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2820
_Label_2818:
	mov	1228,r13		! source line 1228
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1229,r13		! source line 1229
	mov	"\0\0AS",r10
	mov	1229,r13		! source line 1229
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=nextVirtPage  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=addr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-228]
! IF STATEMENT...
	mov	1232,r13		! source line 1232
	mov	"\0\0IF",r10
	mov	1232,r13		! source line 1232
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_2826) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=addr  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=8192  sizeInBytes=4
	mov	8192,r1
	store	r1,[r15+8]
!   Send message ReadBytes
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Retrieve Result: targetName=_temp_2825  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_2825 then goto _Label_2824 else goto _Label_2823
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2823
	jmp	_Label_2824
_Label_2823:
! THEN...
	mov	1233,r13		! source line 1233
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2827 = _StringConst_197
	set	_StringConst_197,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2827  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1233,r13		! source line 1233
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1234,r13		! source line 1234
	mov	"\0\0SE",r10
!   _temp_2828 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	1235,r13		! source line 1235
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2824:
! ASSIGNMENT STATEMENT...
	mov	1237,r13		! source line 1237
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_2819:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_2817
! END FOR
_Label_2820:
! IF STATEMENT...
	mov	1241,r13		! source line 1241
	mov	"\0\0IF",r10
	mov	1241,r13		! source line 1241
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2832) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_2831  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   if _temp_2831 == 707406378 then goto _Label_2830		(int)
	load	[r14+-28],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_2830
!	jmp	_Label_2829
_Label_2829:
! THEN...
	mov	1242,r13		! source line 1242
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2833 = _StringConst_198
	set	_StringConst_198,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2833  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1242,r13		! source line 1242
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1243,r13		! source line 1243
	mov	"\0\0SE",r10
!   _temp_2834 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	1244,r13		! source line 1244
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2830:
! ASSIGNMENT STATEMENT...
	mov	1248,r13		! source line 1248
	mov	"\0\0AS",r10
	mov	1248,r13		! source line 1248
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=nextVirtPage  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=addr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-228]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=addr  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=bssSize  sizeInBytes=4
	load	[r14+-240],r1
	store	r1,[r15+4]
!   Call the function
	mov	1252,r13		! source line 1252
	mov	"\0\0CE",r10
	call	MemoryZero
! RETURN STATEMENT...
	mov	1255,r13		! source line 1255
	mov	"\0\0RE",r10
!   ReturnResult: textStart  (sizeInBytes=4)
	load	[r14+-244],r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_OpenFile_4:
	.word	_sourceFileName
	.word	_Label_2835
	.word	8		! total size of parameters
	.word	272		! frame size = 272
	.word	_Label_2836
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2837
	.word	12
	.word	4
	.word	_Label_2838
	.word	-16
	.word	4
	.word	_Label_2839
	.word	-20
	.word	4
	.word	_Label_2840
	.word	-24
	.word	4
	.word	_Label_2841
	.word	-28
	.word	4
	.word	_Label_2842
	.word	-32
	.word	4
	.word	_Label_2843
	.word	-36
	.word	4
	.word	_Label_2844
	.word	-40
	.word	4
	.word	_Label_2845
	.word	-9
	.word	1
	.word	_Label_2846
	.word	-44
	.word	4
	.word	_Label_2847
	.word	-48
	.word	4
	.word	_Label_2848
	.word	-52
	.word	4
	.word	_Label_2849
	.word	-56
	.word	4
	.word	_Label_2850
	.word	-60
	.word	4
	.word	_Label_2851
	.word	-64
	.word	4
	.word	_Label_2852
	.word	-68
	.word	4
	.word	_Label_2853
	.word	-72
	.word	4
	.word	_Label_2854
	.word	-76
	.word	4
	.word	_Label_2855
	.word	-10
	.word	1
	.word	_Label_2856
	.word	-80
	.word	4
	.word	_Label_2857
	.word	-84
	.word	4
	.word	_Label_2858
	.word	-88
	.word	4
	.word	_Label_2859
	.word	-92
	.word	4
	.word	_Label_2860
	.word	-96
	.word	4
	.word	_Label_2861
	.word	-100
	.word	4
	.word	_Label_2862
	.word	-104
	.word	4
	.word	_Label_2863
	.word	-108
	.word	4
	.word	_Label_2864
	.word	-112
	.word	4
	.word	_Label_2865
	.word	-116
	.word	4
	.word	_Label_2866
	.word	-120
	.word	4
	.word	_Label_2867
	.word	-124
	.word	4
	.word	_Label_2868
	.word	-128
	.word	4
	.word	_Label_2869
	.word	-132
	.word	4
	.word	_Label_2870
	.word	-136
	.word	4
	.word	_Label_2871
	.word	-140
	.word	4
	.word	_Label_2872
	.word	-144
	.word	4
	.word	_Label_2873
	.word	-148
	.word	4
	.word	_Label_2874
	.word	-152
	.word	4
	.word	_Label_2875
	.word	-156
	.word	4
	.word	_Label_2876
	.word	-160
	.word	4
	.word	_Label_2877
	.word	-164
	.word	4
	.word	_Label_2878
	.word	-168
	.word	4
	.word	_Label_2879
	.word	-172
	.word	4
	.word	_Label_2880
	.word	-176
	.word	4
	.word	_Label_2881
	.word	-180
	.word	4
	.word	_Label_2882
	.word	-184
	.word	4
	.word	_Label_2883
	.word	-188
	.word	4
	.word	_Label_2884
	.word	-192
	.word	4
	.word	_Label_2885
	.word	-196
	.word	4
	.word	_Label_2886
	.word	-200
	.word	4
	.word	_Label_2887
	.word	-204
	.word	4
	.word	_Label_2888
	.word	-208
	.word	4
	.word	_Label_2889
	.word	-212
	.word	4
	.word	_Label_2890
	.word	-216
	.word	4
	.word	_Label_2891
	.word	-220
	.word	4
	.word	_Label_2892
	.word	-224
	.word	4
	.word	_Label_2893
	.word	-228
	.word	4
	.word	_Label_2894
	.word	-232
	.word	4
	.word	_Label_2895
	.word	-236
	.word	4
	.word	_Label_2896
	.word	-240
	.word	4
	.word	_Label_2897
	.word	-244
	.word	4
	.word	_Label_2898
	.word	-248
	.word	4
	.word	_Label_2899
	.word	-252
	.word	4
	.word	_Label_2900
	.word	-256
	.word	4
	.word	_Label_2901
	.word	-260
	.word	4
	.word	_Label_2902
	.word	-264
	.word	4
	.word	_Label_2903
	.word	-268
	.word	4
	.word	0
_Label_2835:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"LoadExecutable\0"
	.align
_Label_2836:
	.ascii	"Pself\0"
	.align
_Label_2837:
	.byte	'P'
	.ascii	"addrSpace\0"
	.align
_Label_2838:
	.byte	'?'
	.ascii	"_temp_2834\0"
	.align
_Label_2839:
	.byte	'?'
	.ascii	"_temp_2833\0"
	.align
_Label_2840:
	.byte	'?'
	.ascii	"_temp_2832\0"
	.align
_Label_2841:
	.byte	'?'
	.ascii	"_temp_2831\0"
	.align
_Label_2842:
	.byte	'?'
	.ascii	"_temp_2828\0"
	.align
_Label_2843:
	.byte	'?'
	.ascii	"_temp_2827\0"
	.align
_Label_2844:
	.byte	'?'
	.ascii	"_temp_2826\0"
	.align
_Label_2845:
	.byte	'C'
	.ascii	"_temp_2825\0"
	.align
_Label_2846:
	.byte	'?'
	.ascii	"_temp_2822\0"
	.align
_Label_2847:
	.byte	'?'
	.ascii	"_temp_2821\0"
	.align
_Label_2848:
	.byte	'?'
	.ascii	"_temp_2816\0"
	.align
_Label_2849:
	.byte	'?'
	.ascii	"_temp_2815\0"
	.align
_Label_2850:
	.byte	'?'
	.ascii	"_temp_2814\0"
	.align
_Label_2851:
	.byte	'?'
	.ascii	"_temp_2813\0"
	.align
_Label_2852:
	.byte	'?'
	.ascii	"_temp_2810\0"
	.align
_Label_2853:
	.byte	'?'
	.ascii	"_temp_2809\0"
	.align
_Label_2854:
	.byte	'?'
	.ascii	"_temp_2808\0"
	.align
_Label_2855:
	.byte	'C'
	.ascii	"_temp_2807\0"
	.align
_Label_2856:
	.byte	'?'
	.ascii	"_temp_2804\0"
	.align
_Label_2857:
	.byte	'?'
	.ascii	"_temp_2803\0"
	.align
_Label_2858:
	.byte	'?'
	.ascii	"_temp_2798\0"
	.align
_Label_2859:
	.byte	'?'
	.ascii	"_temp_2797\0"
	.align
_Label_2860:
	.byte	'?'
	.ascii	"_temp_2796\0"
	.align
_Label_2861:
	.byte	'?'
	.ascii	"_temp_2795\0"
	.align
_Label_2862:
	.byte	'?'
	.ascii	"_temp_2792\0"
	.align
_Label_2863:
	.byte	'?'
	.ascii	"_temp_2791\0"
	.align
_Label_2864:
	.byte	'?'
	.ascii	"_temp_2790\0"
	.align
_Label_2865:
	.byte	'?'
	.ascii	"_temp_2789\0"
	.align
_Label_2866:
	.byte	'?'
	.ascii	"_temp_2786\0"
	.align
_Label_2867:
	.byte	'?'
	.ascii	"_temp_2785\0"
	.align
_Label_2868:
	.byte	'?'
	.ascii	"_temp_2784\0"
	.align
_Label_2869:
	.byte	'?'
	.ascii	"_temp_2783\0"
	.align
_Label_2870:
	.byte	'?'
	.ascii	"_temp_2782\0"
	.align
_Label_2871:
	.byte	'?'
	.ascii	"_temp_2779\0"
	.align
_Label_2872:
	.byte	'?'
	.ascii	"_temp_2778\0"
	.align
_Label_2873:
	.byte	'?'
	.ascii	"_temp_2775\0"
	.align
_Label_2874:
	.byte	'?'
	.ascii	"_temp_2774\0"
	.align
_Label_2875:
	.byte	'?'
	.ascii	"_temp_2771\0"
	.align
_Label_2876:
	.byte	'?'
	.ascii	"_temp_2770\0"
	.align
_Label_2877:
	.byte	'?'
	.ascii	"_temp_2767\0"
	.align
_Label_2878:
	.byte	'?'
	.ascii	"_temp_2764\0"
	.align
_Label_2879:
	.byte	'?'
	.ascii	"_temp_2763\0"
	.align
_Label_2880:
	.byte	'?'
	.ascii	"_temp_2760\0"
	.align
_Label_2881:
	.byte	'?'
	.ascii	"_temp_2759\0"
	.align
_Label_2882:
	.byte	'?'
	.ascii	"_temp_2758\0"
	.align
_Label_2883:
	.byte	'?'
	.ascii	"_temp_2757\0"
	.align
_Label_2884:
	.byte	'?'
	.ascii	"_temp_2756\0"
	.align
_Label_2885:
	.byte	'?'
	.ascii	"_temp_2755\0"
	.align
_Label_2886:
	.byte	'?'
	.ascii	"_temp_2754\0"
	.align
_Label_2887:
	.byte	'?'
	.ascii	"_temp_2753\0"
	.align
_Label_2888:
	.byte	'?'
	.ascii	"_temp_2752\0"
	.align
_Label_2889:
	.byte	'?'
	.ascii	"_temp_2749\0"
	.align
_Label_2890:
	.byte	'?'
	.ascii	"_temp_2748\0"
	.align
_Label_2891:
	.byte	'?'
	.ascii	"_temp_2747\0"
	.align
_Label_2892:
	.byte	'I'
	.ascii	"nextVirtPage\0"
	.align
_Label_2893:
	.byte	'I'
	.ascii	"addr\0"
	.align
_Label_2894:
	.byte	'I'
	.ascii	"textSize\0"
	.align
_Label_2895:
	.byte	'I'
	.ascii	"dataSize\0"
	.align
_Label_2896:
	.byte	'I'
	.ascii	"bssSize\0"
	.align
_Label_2897:
	.byte	'I'
	.ascii	"textStart\0"
	.align
_Label_2898:
	.byte	'I'
	.ascii	"dataStart\0"
	.align
_Label_2899:
	.byte	'I'
	.ascii	"bssStart\0"
	.align
_Label_2900:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2901:
	.byte	'I'
	.ascii	"textSizeInPages\0"
	.align
_Label_2902:
	.byte	'I'
	.ascii	"dataSizeInPages\0"
	.align
_Label_2903:
	.byte	'I'
	.ascii	"bssSizeInPages\0"
	.align
! 
! ===============  CLASS FileControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileControlBlock:
	.word	_Label_2904
	jmp	_Method_P_Kernel_FileControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_FileControlBlock_2	! 8:	Print
	.word	0
! 
! Class descriptor:
! 
_Label_2904:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2905
	.word	_sourceFileName
	.word	371		! line number
	.word	40		! size of instances, in bytes
	.word	_P_Kernel_FileControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_2905:
	.ascii	"FileControlBlock\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_FileControlBlock_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileControlBlock_1,r1
	push	r1
	mov	2,r1
_Label_3062:
	push	r0
	sub	r1,1,r1
	bne	_Label_3062
	mov	1012,r13		! source line 1012
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1013,r13		! source line 1013
	mov	"\0\0AS",r10
!   numberOfUsers = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	1014,r13		! source line 1014
	mov	"\0\0AS",r10
	mov	1014,r13		! source line 1014
	mov	"\0\0SE",r10
!   _temp_2906 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-12]
!   Send message GetAFrame
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=bufferPtr  sizeInBytes=4
	load	[r15],r1
	load	[r14+8],r2
	store	r1,[r2+28]
! ASSIGNMENT STATEMENT...
	mov	1015,r13		! source line 1015
	mov	"\0\0AS",r10
!   relativeSectorInBuffer = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! ASSIGNMENT STATEMENT...
	mov	1016,r13		! source line 1016
	mov	"\0\0AS",r10
!   bufferIsDirty = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+36]
! ASSIGNMENT STATEMENT...
	mov	1017,r13		! source line 1017
	mov	"\0\0AS",r10
!   startingSectorOfFile = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! RETURN STATEMENT...
	mov	1017,r13		! source line 1017
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileControlBlock_1:
	.word	_sourceFileName
	.word	_Label_2907
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_2908
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2909
	.word	-12
	.word	4
	.word	0
_Label_2907:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2908:
	.ascii	"Pself\0"
	.align
_Label_2909:
	.byte	'?'
	.ascii	"_temp_2906\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_FileControlBlock_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileControlBlock_2,r1
	push	r1
	mov	7,r1
_Label_3063:
	push	r0
	sub	r1,1,r1
	bne	_Label_3063
	mov	1022,r13		! source line 1022
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2910 = _StringConst_199
	set	_StringConst_199,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2910  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1023,r13		! source line 1023
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fcbID  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1024,r13		! source line 1024
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2911 = _StringConst_200
	set	_StringConst_200,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2911  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1025,r13		! source line 1025
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=numberOfUsers  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1026,r13		! source line 1026
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2912 = _StringConst_201
	set	_StringConst_201,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2912  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1027,r13		! source line 1027
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=startingSectorOfFile  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1028,r13		! source line 1028
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2913 = _StringConst_202
	set	_StringConst_202,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2913  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1029,r13		! source line 1029
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeOfFileInBytes  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1030,r13		! source line 1030
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2914 = _StringConst_203
	set	_StringConst_203,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2914  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1031,r13		! source line 1031
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=bufferPtr  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1032,r13		! source line 1032
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2915 = _StringConst_204
	set	_StringConst_204,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2915  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1033,r13		! source line 1033
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=relativeSectorInBuffer  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1034,r13		! source line 1034
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1035,r13		! source line 1035
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1035,r13		! source line 1035
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileControlBlock_2:
	.word	_sourceFileName
	.word	_Label_2916
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2917
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2918
	.word	-12
	.word	4
	.word	_Label_2919
	.word	-16
	.word	4
	.word	_Label_2920
	.word	-20
	.word	4
	.word	_Label_2921
	.word	-24
	.word	4
	.word	_Label_2922
	.word	-28
	.word	4
	.word	_Label_2923
	.word	-32
	.word	4
	.word	0
_Label_2916:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2917:
	.ascii	"Pself\0"
	.align
_Label_2918:
	.byte	'?'
	.ascii	"_temp_2915\0"
	.align
_Label_2919:
	.byte	'?'
	.ascii	"_temp_2914\0"
	.align
_Label_2920:
	.byte	'?'
	.ascii	"_temp_2913\0"
	.align
_Label_2921:
	.byte	'?'
	.ascii	"_temp_2912\0"
	.align
_Label_2922:
	.byte	'?'
	.ascii	"_temp_2911\0"
	.align
_Label_2923:
	.byte	'?'
	.ascii	"_temp_2910\0"
	.align
