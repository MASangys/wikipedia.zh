**視窗驅動程式模型**（**Windows Driver Model**，簡稱WDM），是[微軟](https://zh.wikipedia.org/wiki/微軟 "wikilink")[視窗作業系統的](https://zh.wikipedia.org/wiki/視窗作業系統 "wikilink")[驅動程式設計架構](https://zh.wikipedia.org/wiki/驅動程式 "wikilink")，包括對於各項裝置（Device）的支援，如鍵盤（Keyboard）、滑鼠（Mouse）、網路卡（Network Driver Interface Specification，Ndis）、通用序列匯流排（Universal Serial Bus，USB）等。WDM可支援Windows 98, Windows 98 Second Edition, Windows Me, Windows 2000, Windows XP以及Windows Server 2003在x86平台上的建制工作。這個架構分成好幾個管理層面：

  - 核心（Kernel）
  - 物件管理（Object Manager）
  - 執行（Executive）
  - 輸入輸出管理（I/O Manager）
  - 記憶體管理（Memory Manager）
  - 行程服務（Process Service）
  - 執行時期函式庫（Run-time Library）
  - 電源管理（Power Manager）
  - 隨插即用子系統（Plug and Play Subsystem）
  - 視窗管理指令（Windows Management Instrumentation，WMI）
  - 核心流（Kernel Streaming）
  - 硬體抽象層（Hardware Abstraction Layer）

## 種類

驅動程式的種類有[匯流排驅動程式](https://zh.wikipedia.org/wiki/匯流排驅動程式 "wikilink")（bus driver）、[功能驅動程式](https://zh.wikipedia.org/wiki/功能驅動程式 "wikilink")（function driver）、[篩選驅動程式](https://zh.wikipedia.org/wiki/篩選驅動程式 "wikilink")（filter driver）三種：

  - 匯流排驅動程式（bus drivers）
      - 虛擬匯流排驅動程式（Virtual bus drivers）：呼叫IoInvalidateDeviceRelations通知PnP Manager。
  - 功能驅動程式（function drivers）
      - 微埠型驅動程式（[miniport drivers](https://zh.wikipedia.org/wiki/miniport_driver "wikilink")）：屬於USB, Audio, SCSI以及network的轉換器（adapters）。
      - 虛擬裝置驅動程式（Virtual device drivers）
      - 類型驅動程式（Class drivers）
  - 篩選性驅動程式（filter drivers）
      - 上層篩選性驅動程式（upper-filter drivers）
      - 下層篩選性驅動程式（lower-filter drivers）

## 程式進入點

如同許多語言從main函式開始，WDM驅動程式的載入（Loading）乃至於動作，以及其卸載（Unload）行為，都有其步驟與規則。WDM驅動程式可以動態式的載入與卸載，當偵測到裝置（Device）插入的時候，依據「PnP Manager」會自動地載入相對應的裝置驅動程式，然後成為「Driver Object」，並呼叫DriverEntry函式。所有的WDM驅動程式，都必須擁有這個DriverEntry常式（routine），而且「此一名稱不可改變」的，所有的驅動程式也是從這裡開始執行的，I/O Manager首先呼叫驱动程式的`DriverEntry()`。DriverEntry在DDK Compiler編譯出來的輸出符號表是“`DriverEntry@8`”，原因是微軟的C編譯器把stdcall函示（例如VcDCall）的名稱加上“記號”，加上一個＠符號，在附上參數的總位元組個數，8指此function的所有參數所佔的byte數。

DriverEntry函式有兩個參數，其中第一个参数`PDRIVER_OBJECT DriverObject`是指向该驅動程式对应的物件指標；`PUNICODE_STRING RegistryPath`，驅動程式的服务主要鍵碼，這個參數的使用時機並不多。以下是一個簡單而標準的DriverEntry基本實作：

``` c
 NTSTATUS DriverEntry(PDRIVER_OBJECT DriverObject, PUNICODE_STRING pRegistryString)
 {
   //PDEVICE_OBJECT DriverObject;
   UNICODE_STRING deviceName;
   RtlInitUnicodeString( &deviceName, DEVICE_NAME );

   status = IoCreateDevice( DriverObject, 0, &deviceName,
      FILE_DEVICE_UNKNOWN, FILE_DEVICE_SECURE_OPEN, true, &pDeviceObj );

   UNICODE_STRING linkName;
   RtlInitUnicodeString( &linkName, LINK_NAME );
   status = IoCreateSymbolicLink( &linkName, &deviceName );

   DriverObject->DriverUnload = DriverUnload;
   DriverObject->MajorFunction[IRP_MJ_CREATE] =
   DriverObject->MajorFunction[IRP_MJ_CLOSE] =
   DriverObject->MajorFunction[IRP_MJ_DEVICE_CONTROL] = xxDriverDispatch;
   DriverObject->DriverUnload = xxUnload;

   return STATUS_SUCCESS;
 }
```

## IRQL

DriverEntry運作在IRQL = PASSIVE_LEVEL等級，所以可以使用分頁內存。WDM有數個經常實作的PASSIVE_LEVEL等級如下：

  - DriverEntry
  - Dispatch Function：DispatchXxx
  - Unload：UnloadXxx
  - AddDevice: XxxAddDevice
  - Reinitialize: XxxReinitialize

另外還有幾個DISPATCH_LEVEL等級的函式如下：

  - StartIo
  - AdapterControl
  - ControllerControl
  - IoTimer
  - Dpc（延遲程序呼叫，Deferred Procedure Call）

## 派送行程

當*DriverEntry*函式完成物件的初始化與系統註冊之後，接下來的重點便會落在Dispatch Function身上。每當I/O Manager得到一個請求時（例如按鍵，移動滑鼠），它使用請求的函數代碼（IoControlCode）呼叫驅動程序中幾個Dispatch行程。

``` c
 NTSTATUS xxDispatch (IN PDEVICE_OBJECT DeviceObject,IN PIRP pIrp)
 {
    NTSTATUS ntStatus = STATUS_SUCCESS;
    ULONG IoControlCodes = 0;
    PIO_STACK_LOCATION IrpStack=NULL;

    pIrp->IoStatus.Status = STATUS_SUCCESS;
    pIrp->IoStatus.Information = 0;

    IrpStack = IoGetCurrentIrpStackLocation(pIrp);

    switch (IrpStack->MajorFunction)
    {
        case IRP_MJ_CREATE:
            break;
        case IRP_MJ_CLOSE:
            break;
        case IRP_MJ_DEVICE_CONTROL:
            IoControlCodes=IrpStack->Parameters.DeviceIoControl.IoControlCode;
            switch (IoControlCodes)
            {
                case IOCTL_1:
                    break;
                case IOCTL_2:
                    break;
                default:
                    pIrp->IoStatus.Status = STATUS_INVALID_PARAMETER;
                    break;
            }
            break;
        default:
            break;
    }
    ntStatus=pIrp->IoStatus.Status;

    IoCompleteRequest(pIrp,IO_NO_INCREMENT);

    return ntStatus;
 }
```

## 卸載

Unload負責在驅動程式被停止前做一些必要的處理動作，如释放资源，记录最後状态等。

``` c
 VOID DriverUnLoad (IN PDRIVER_OBJECT DriverObject)
 {
   if (DeviceObject) {
   IoUnregisterFileSystem(DeviceObject);
   IoDeleteDevice(DeviceObject);
   //DeviceObject = 0;
 }
```

## 編譯

驅動程式的编译需要使用DDK（*Device Driver Kit*）中的build指令，它是一道命令行程序，一般會在後面加上參數：**-ceZ**。例如：

``` dos
 C:\driver sample>build.exe -ceZ
```

DDK可用於建立用於 Windows 2000、Windows XP、Microsoft Windows Server 2003、Vista的建置環境，但在Windows作業系統並非預設的功能，必須另行安裝。安装完成後你會看到Build Enviroment，**free是指release版，check則是debug版**。

  - Windows XP checked 64 Bit Build Environment
  - Windows XP checked Build Environment
  - Windows XP free 64 Bit Build Environment
  - Windows XP free Build Environment

build指令一開始呼叫Build.exe編譯連結器，從系統「環境變數」（Environment Variable）Include中得到引用文件的地址，然後呼叫**Visual C++**的编译链接器Nmake.exe进行实际的编译链接工作。在編譯過程中遇到的错误，遇到的警告，會記錄到buildxxx.log，buildxxx.wrn，buildxxx.err等文件中。

## 安裝

安裝過程分成兩個步驟：

  - 首先將编译成的.sys文件複製到Windows NT的System32\\\\Drivers\\\\目錄下；
  - 接著在Registry的HKEY_LOCAL_MACHINE\\\\SYSTEM\\\\CurrentControlSet\\\\Services\\\\下建立和.sys文件同名的键，然后在之下建立名为Start、Type、ErrorControl的三種REG_DWORD類型的键值。

## 範例

Microsoft DDK提供了大量的WDM範例（samples）參考，這些範例隨著DDK的安裝，會進駐我們的系統之中（WINDDK\\xx00\\src）。一般人不大可能從輪子造起一個新的驅動程式，大部份要靠“既有的範例”來改良一個新的驅動程式。

  - 1394
  - Audio
  - AVStream
  - filesys
  - general
  - hid
  - input
  - ir
  - kernel

## 批評

  - WDM學習曲線過長。
  - 電源管理（power management）事件與隨插即用（Plug-and-play）差異太大。導致系統的睡眠（sleep）與清醒（wake up）狀態容易產生問題。
  - I/O cancellation幾乎不可能達成。
  - 每支驅動程式動輒要撰寫數千行的程式碼。
  - 不支援純使用者模式（pure user-mode）驅動程式。

## 相關條目

  - [Windows Driver Foundation](https://zh.wikipedia.org/wiki/Windows_Driver_Foundation "wikilink")
  - [Windows Display Driver Model](../Page/Windows_Display_Driver_Model.md "wikilink")
  - [VxD](../Page/VxD.md "wikilink")

## 外部連結

  - [Windows Driver Foundation Homepage](https://web.archive.org/web/20080206174045/http://www.microsoft.com/whdc/driver/wdf/default.mspx)
  - [Introducing Windows Driver Framework](http://www.wd-3.com/archive/FrameworkIntro.htm)，written by well-known Windows driver developer, Walter Oney.
  - [Building and deploying a basic WDF Kernel Mode Driver](https://web.archive.org/web/20060422192541/http://www.codeproject.com/system/wdf_kmdf_basic.asp)，CodeProject
  - [Developing a WDF USB Kernel Mode Driver for the OSR USB FX2](https://web.archive.org/web/20071014004348/http://www.codeproject.com/system/kmdf_osr_usb_fx2.asp)，CodeProject
  - [A simple demo for WDM Driver development](https://web.archive.org/web/20061106062912/http://www.codeproject.com/system/WDM_Driver_development.asp)

## 參考

  - Walter Oney，《Windows Driver Model》

[Category:微軟API](https://zh.wikipedia.org/wiki/Category:微軟API "wikilink") [Category:驱动程序](https://zh.wikipedia.org/wiki/Category:驱动程序 "wikilink")