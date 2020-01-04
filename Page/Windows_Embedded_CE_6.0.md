> 本文内容由[Windows Embedded CE 6.0](https://zh.wikipedia.org/wiki/Windows_Embedded_CE_6.0)转换而来。


**Windows Embedded CE 6.0**(代號"Yamazaki")，是第6個版本的[微軟的](https://zh.wikipedia.org/wiki/微軟 "wikilink")[內嵌式作業系統](https://zh.wikipedia.org/wiki/內嵌式作業系統 "wikilink")，可提供[智能手机](../Page/智能手机.md "wikilink")與[PDA使用](https://zh.wikipedia.org/wiki/PDA "wikilink")。2006年11月1日釋出，包含部份的[原始碼](https://zh.wikipedia.org/wiki/原始碼 "wikilink")（partial source code），并使现有的[Platform Builder集成](https://zh.wikipedia.org/wiki/Platform_Builder "wikilink")[开发环境](https://zh.wikipedia.org/wiki/开发环境 "wikilink")（IDE）成为Visual Studio 2005的一个[插件](../Page/插件.md "wikilink")。

Windows Embedded CE 6.0重新設計的內核，支持最多32768个进程，远多于上一版的32个。每个进程的[虚拟内存](../Page/虚拟内存.md "wikilink")空间也从上一版32MB提高到2GB。

Windows Embedded CE 6.0還是[Windows Phone 7的基礎](https://zh.wikipedia.org/wiki/Windows_Phone_7 "wikilink")，代號為“Photon”。

## 特色

Windows CE 6.0這個版本在[核心部分較](https://zh.wikipedia.org/wiki/核心 "wikilink")[Windows CE 5.0有很大的進步](../Page/Windows_CE_5.0.md "wikilink")：

  - 所有[系統元件都由EXE改為](https://zh.wikipedia.org/wiki/系統元件 "wikilink")[DLL](https://zh.wikipedia.org/wiki/DLL "wikilink")，並移到[kernel space](https://zh.wikipedia.org/wiki/kernel_space "wikilink")。
  - 全新設計的[虛擬記憶體架構](https://zh.wikipedia.org/wiki/虛擬記憶體 "wikilink")，虛擬位址空間提高為每個程序2 [GB的](https://zh.wikipedia.org/wiki/GB "wikilink")[位址空間](https://zh.wikipedia.org/wiki/位址空間 "wikilink")。
  - 全新的裝置驅動程式架構，同時支持[User Mode與](https://zh.wikipedia.org/wiki/User_Mode "wikilink")[Kernel Mode兩種](https://zh.wikipedia.org/wiki/Kernel_Mode "wikilink")[驅動程式](https://zh.wikipedia.org/wiki/驅動程式 "wikilink")。
  - 突破只能執行 32 個[工作元](https://zh.wikipedia.org/wiki/工作元 "wikilink")（process）的限制，可以執行 32768 個工作元。
  - 每一工作元的的虛擬記憶體限制由32 M 增加到全系統總虛擬記憶體。
  - Platform Builder IDE 整合到 Microsoft Visual Studio 2005。
  - 新的安全架構，確保只有被信任的軟體可以在系統中執行。
  - [UDF](https://zh.wikipedia.org/wiki/UDF "wikilink")2.5 檔案系統。
  - 支持[802.11i](https://zh.wikipedia.org/wiki/802.11i "wikilink")（[WPA2](https://zh.wikipedia.org/wiki/WPA2 "wikilink")）及[802.11e](https://zh.wikipedia.org/wiki/802.11e "wikilink")（[QoS](https://zh.wikipedia.org/wiki/QoS "wikilink")）等無線規格，及多重 radio support。
  - 支持 x86, ARM, SH4, MIPS 等各種處理器。
  - 提供新的 Cellcore components 使系統在行動電話網路中更容易建立資料連結及啟動通話。

## 程式碼差異

Windows CE 5.0 或更早的版本使用[MapCallerPtr來控制](https://zh.wikipedia.org/wiki/MapCallerPtr "wikilink")[IOCTLs](https://zh.wikipedia.org/wiki/IOCTLs "wikilink")，6.0以後使用[CeOpenCallerBuffer來控制驅動程式](https://zh.wikipedia.org/wiki/CeOpenCallerBuffer "wikilink")。

## 外部連結

  - [History of Windows CE](http://www.hpcfactor.com/qlink/?linkID=20)，by HPC:Factor with screenshots of the various versions.
  - [Bor-Ming Hsieh and Sue Loh: 3rd Generation Kernel for Windows CE](http://channel9.msdn.com/Showpost.aspx?postid=233124) — Channel 9 Interview.
  - [Juggs Ravalia: Windows Embedded CE 6.0 Device Driver Model](http://channel9.msdn.com/Showpost.aspx?postid=233119) — Channel 9 Interview.
  - [1](http://blogs.msdn.com/mikehall) — Mike Hall's WEBlog.
  - [2](https://web.archive.org/web/20080218210744/http://www.bsquare.com/blog/) — Jason Browne's Windows Embedded CE 6.0 Blog.

[Category:Windows_CE](https://zh.wikipedia.org/wiki/Category:Windows_CE "wikilink")