[微軟視窗系統支援一種被稱為](https://zh.wikipedia.org/wiki/微軟視窗系統 "wikilink")[動態連結庫的共享程式庫](https://zh.wikipedia.org/wiki/動態連結庫 "wikilink")。正如這種程式庫檔案的命名，它只需要被載入[記憶體一次](https://zh.wikipedia.org/wiki/記憶體 "wikilink")，即可被多於一個[處理程序使用](https://zh.wikipedia.org/wiki/處理程序 "wikilink")。本條目將會對以下伴隨Windows而安裝到電腦，作為Windows系統的基礎組成部份的動態連結程式庫進行介紹。

## 內部元件

這些程式庫檔案通常不會被程式直接使用，不過它們卻是用來實現其他程式庫功能的重要程式庫。

### Hal.dll

Windows系統的[硬件抽象層就是由Hal](https://zh.wikipedia.org/wiki/硬件抽象層 "wikilink").dll實現\[1\]。HAL提供很多函式，而這些函式在不同的硬件平台（以下皆指[晶片組](https://zh.wikipedia.org/wiki/晶片組 "wikilink")）皆有不一樣的實現方式。因為Windows提供HAL這一個功能，所以大部份程式可以隨意呼叫這些函式，而不需要顧及程式在何種平台上執行。舉個例子，回應一個中斷要求的方法在一台有或沒有[進階可編程中斷控制器](https://zh.wikipedia.org/wiki/進階可編程中斷控制器 "wikilink")（APIC,
Advanced Programmable Interrupt
Controller）的電腦是可以有很大分別的，但HAL卻提供了便利，使程式不需要顧及這一個分別。

因為HAL是被載入到[核心記憶體](https://zh.wikipedia.org/wiki/核心記憶體 "wikilink")，並且在[核心模式執行](https://zh.wikipedia.org/wiki/核心模式 "wikilink")，所以HAL裡的函式是無法被應用程式直接呼叫的，並且HAL沒有提供任何使用者模式的API。因此HAL的主要服務對像是Windows核心和核心模式的驅動程式。雖然大部份驅動程式也是存放在獨立的.sys檔案，但有些核心的驅動程式卻是被直接編譯到Hal.dll裡。

一些核心模式的驅動程式為了對I/O埠和裝置的寄存器進行直接的存取，所以需要直接呼叫Hal.dll裡的函式。因為正如上面提到，在不同的平台做一樣的事情是有不同的實行方法，所以使用Hal.dll的函式可以確保一份驅動程式能在不同的平台和架構上被使用。

在[Windows
x86的安裝媒體上一般存放著不同版本的HAL檔案](https://zh.wikipedia.org/wiki/Windows_x86 "wikilink")，在安裝Windows時會根據現時電腦的平台而把恰當的版本安裝進去。判斷的條件一般包括BIOS類型，或是否有多個處理器。

### Ntdll.dll

Ntdll.dll和ntoskrnl.exe裡含有Windows的[原生API](https://zh.wikipedia.org/wiki/Native_API "wikilink")，通常被一些必須要在Win32子系統以外的環境下執行的應用程式使用，而這些程式也被稱為原生應用程式。大部份API函式的名字通常以Nt開頭，例如NtDisplayString。Ntdll.dll除了被原生應用程式呼叫外，它還會被Kernel32.dll裡大部份API所使用\[2\]\[3\]\[4\]。很大部份的視窗應用程式也不會直接呼叫Ntdll.dll\[5\]。

原生應用程式使用Ntdll.dll裡的函式，一般需要比Win32子系統啟動成功前更早的執行。例如csrss.exe，Win32子系統的處理程序，因為Win32應用程式必須要在csrss.exe上執行，所以執行它的應用程序，smss.exe（會話管理員）必須要是原生應用程式。
儘管原生應用程序有.exe的副檔名，但它們並無法被使用者直接執行。例子如autochk.exe，一個用來在開機期間執行chkdsk進行磁碟檢查的程式。

因為原生應用程式不能依赖Win32子系统，所以它們的程式入口不是一般Win32應用程式的MainCRTStartup\[6\]，而是NtProcessStartup。原生程式執行完畢後，它們會呼叫NtTerminateProcess並將執行結果返回。

## Win32 API

以下程式庫包含Win32應用程式常用的函式。

### Kernel32.dll

Kernel32.dll提供應用程式一些Win32下的基底API，包括[記憶體管理](../Page/記憶體管理.md "wikilink")、輸入/輸出操作和同步函式。它們大部份函式皆由原生應用程式實現，例如Ntdll.dll\[7\]。

### Gdi32.dll

Gdi32.dll提供跟圖形裝置界面有關的函式，例如輸出到[顯示卡和](https://zh.wikipedia.org/wiki/顯示卡 "wikilink")[列印機的原生繪圖功能](https://zh.wikipedia.org/wiki/列印機 "wikilink")。呼叫這個程式庫裡函式的應用程式通常是為了執行底層的繪圖功能、文字輸出、字型管理或其他相似功能\[8\]\[9\]。

初時GDI只支援16或256色的EGA/VGA顯示卡和單色列印機，不過GDI的功能已經漸漸升。直到現在它更支援[TrueType](../Page/TrueType.md "wikilink")字型、半透明通道和多螢幕支援。

### User32.dll

User32.dll提供創建和管理Windows[圖形界面的功能](https://zh.wikipedia.org/wiki/圖形界面 "wikilink")，例如[桌面](https://zh.wikipedia.org/wiki/桌面 "wikilink")、[視窗](../Page/視窗.md "wikilink")和[功能表](https://zh.wikipedia.org/wiki/功能表 "wikilink")。裡面的函式可以讓應用程式建立及管理視窗、接收[Windows訊息](https://zh.wikipedia.org/wiki/Windows訊息 "wikilink")（諸如使用者的輸入或系統的通知）、在視窗中顯示文字，及顯示一個訊息視窗。

這個函式庫裡面大部份函式也需要倚靠Gdi32.dll提供的繪圖功能，來對使用者界面進行渲染。有些程式還會直接使用GDI函式，來對先前由User32.dll所建立的視窗進行底層繪圖。

### Comctl32.dll

comctl32.dll主要提供各種標準視窗界面元件。它提供對話框如開啟檔案、存檔及另存新檔，或視窗元件如按鈕和進度列。它倚靠user32.dll和Gdi32.dll來建立及管理這些界面元素。

## 參見

  - [Windows NT](../Page/Windows_NT.md "wikilink")
  - [Windows API](../Page/Windows_API.md "wikilink")
  - [動態連結庫](https://zh.wikipedia.org/wiki/動態連結庫 "wikilink")

## 參考

## 外部連結

  - [API calls list -
    USER32.DLL](http://www.andreavb.com/API_USER32.html) - Tips for
    using the User API Client Library with Visual Basic
  - [API calls list -
    Kernel32.dll](http://www.andreavb.com/API_KERNEL32.html) - Tips for
    using the Kernel API Client Library with Visual Basic
  - [Native API
    reference](https://web.archive.org/web/20060315213024/http://www.sysinternals.com/Information/NativeApi.html)
  - [Unofficial website that documents most of the Native API
    methods](http://undocumented.ntinternals.net/)
  - [Retrieving the kernel32.dll base
    address](http://uberskill.blogspot.com/2012/07/retrieving-kernel32dll-base-address.html)

[Category:微軟API](https://zh.wikipedia.org/wiki/Category:微軟API "wikilink")
[Category:Windows组件](https://zh.wikipedia.org/wiki/Category:Windows组件 "wikilink")
[Category:Microsoft_Windows](https://zh.wikipedia.org/wiki/Category:Microsoft_Windows "wikilink")
[Category:Windows_NT](https://zh.wikipedia.org/wiki/Category:Windows_NT "wikilink")

1.

2.

3.

4.

5.

6.
7.  [Visual Studio Developer Center: Identifying Functions in
    DLLs](http://msdn.microsoft.com/en-us/library/31d242h4.aspx)

8.
9.  See also, the documentation for the
    [Wine](https://zh.wikipedia.org/wiki/Wine_\(emulator\) "wikilink")
    implementation of gdi32.dll: [Wine API:
    gdi32.dll](http://source.winehq.org/WineAPI/gdi32.html)