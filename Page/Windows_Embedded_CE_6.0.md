**Windows Embedded CE
6.0**(代號"Yamazaki")，是第6個版本的[微軟的](../Page/微軟.md "wikilink")[內嵌式作業系統](../Page/內嵌式作業系統.md "wikilink")，可提供[智能手机與](../Page/智能手机.md "wikilink")[PDA使用](../Page/PDA.md "wikilink")。2006年11月1日釋出，包含部份的[原始碼](../Page/原始碼.md "wikilink")（partial
source code），并使现有的[Platform
Builder集成](../Page/Platform_Builder.md "wikilink")[开发环境](../Page/开发环境.md "wikilink")（IDE）成为Visual
Studio 2005的一个[插件](../Page/插件.md "wikilink")。

Windows Embedded CE
6.0重新設計的內核，支持最多32768个进程，远多于上一版的32个。每个进程的[虚拟内存空间也从上一版](../Page/虚拟内存.md "wikilink")32MB提高到2GB。

Windows Embedded CE 6.0還是[Windows Phone
7的基礎](../Page/Windows_Phone_7.md "wikilink")，代號為“Photon”。

## 特色

Windows CE 6.0這個版本在[核心部分較](../Page/核心.md "wikilink")[Windows CE
5.0有很大的進步](../Page/Windows_CE_5.0.md "wikilink")：

  - 所有[系統元件都由EXE改為](../Page/系統元件.md "wikilink")[DLL](../Page/DLL.md "wikilink")，並移到[kernel
    space](../Page/kernel_space.md "wikilink")。
  - 全新設計的[虛擬記憶體架構](../Page/虛擬記憶體.md "wikilink")，虛擬位址空間提高為每個程序2
    [GB的](../Page/GB.md "wikilink")[位址空間](../Page/位址空間.md "wikilink")。
  - 全新的裝置驅動程式架構，同時支持[User Mode與](../Page/User_Mode.md "wikilink")[Kernel
    Mode兩種](../Page/Kernel_Mode.md "wikilink")[驅動程式](../Page/驅動程式.md "wikilink")。
  - 突破只能執行 32 個[工作元](../Page/工作元.md "wikilink")（process）的限制，可以執行 32768
    個工作元。
  - 每一工作元的的虛擬記憶體限制由32 M 增加到全系統總虛擬記憶體。
  - Platform Builder IDE 整合到 Microsoft Visual Studio 2005。
  - 新的安全架構，確保只有被信任的軟體可以在系統中執行。
  - [UDF](../Page/UDF.md "wikilink")2.5 檔案系統。
  - 支持[802.11i](../Page/802.11i.md "wikilink")（[WPA2](../Page/WPA2.md "wikilink")）及[802.11e](../Page/802.11e.md "wikilink")（[QoS](../Page/QoS.md "wikilink")）等無線規格，及多重
    radio support。
  - 支持 x86, ARM, SH4, MIPS 等各種處理器。
  - 提供新的 Cellcore components 使系統在行動電話網路中更容易建立資料連結及啟動通話。

## 程式碼差異

Windows CE 5.0
或更早的版本使用[MapCallerPtr來控制](../Page/MapCallerPtr.md "wikilink")[IOCTLs](../Page/IOCTLs.md "wikilink")，6.0以後使用[CeOpenCallerBuffer來控制驅動程式](../Page/CeOpenCallerBuffer.md "wikilink")。

## 外部連結

  - [History of Windows
    CE](http://www.hpcfactor.com/qlink/?linkID=20)，by HPC:Factor with
    screenshots of the various versions.
  - [Bor-Ming Hsieh and Sue Loh: 3rd Generation Kernel for Windows
    CE](http://channel9.msdn.com/Showpost.aspx?postid=233124) — Channel
    9 Interview.
  - [Juggs Ravalia: Windows Embedded CE 6.0 Device Driver
    Model](http://channel9.msdn.com/Showpost.aspx?postid=233119) —
    Channel 9 Interview.
  - [1](http://blogs.msdn.com/mikehall) — Mike Hall's WEBlog.
  - [2](http://www.bsquare.com/blog) — Jason Browne's Windows Embedded
    CE 6.0 Blog.

[Category:Windows_CE](https://zh.wikipedia.org/wiki/Category:Windows_CE "wikilink")