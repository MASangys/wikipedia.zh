**X Window系统**（**X Window
System**，也常稱為**X11**或**X**）是一种以[位图方式显示的軟體](../Page/位图.md "wikilink")[視窗系統](../Page/視窗系統.md "wikilink")。最初是1984年[麻省理工學院的研究](../Page/麻省理工学院.md "wikilink")，之後變成[UNIX](../Page/UNIX.md "wikilink")、[类UNIX](https://zh.wikipedia.org/wiki/类UNIX "wikilink")、以及[OpenVMS等](https://zh.wikipedia.org/wiki/OpenVMS "wikilink")[操作系统所一致適用的標準化軟體工具套件及顯示架構的運作協定](../Page/操作系统.md "wikilink")。X
Window系统透過軟體工具及架構協定來建立作業系統所用的[图形用户界面](../Page/图形用户界面.md "wikilink")，此後則逐漸擴展適用到各形各色的其他作業系統上。现在幾乎所有的作業系統都能支援與使用X。更重要的是，今日知名的[桌面環境](https://zh.wikipedia.org/wiki/桌面環境 "wikilink")——[GNOME和](../Page/GNOME.md "wikilink")[KDE也都是以X](../Page/KDE.md "wikilink")
Window系统為基礎建構成的。

由於X只是工具套件及架構規範，本身並無實際參與運作的實體，所以必須有人依據此標準進行開發撰寫。如此才有真正可用、可執行的實體，始可稱為實現體。目前依據X的規範架構所開發撰寫成的實現體中，以[X.Org最為普遍且最受歡迎](../Page/X.Org_Server.md "wikilink")。X.Org所用的協定版本，X11，是在1987年9月所發佈。而今最新的[參考實作](https://zh.wikipedia.org/wiki/參考實作 "wikilink")（參考性、示範性的實作體）版本則是X11
Release
7.7（簡稱：X11R7.7），而此專案由[X.Org基金会所領導](../Page/X.Org基金会.md "wikilink")，且是以[MIT授權和相似的授權許可的](../Page/MIT許可證.md "wikilink")[自由軟體](../Page/自由软件.md "wikilink")。\[1\]

[GNOME_3.32.1.png](https://zh.wikipedia.org/wiki/File:GNOME_3.32.1.png "fig:GNOME_3.32.1.png")
3.32\]\]

## X的C/S模式和网络透明性

X能為[GUI環境提供基本的框架](../Page/图形用户界面.md "wikilink")：在[屏幕上描繪](../Page/显示器.md "wikilink")、呈現圖像與移動程式[視窗](../Page/視窗.md "wikilink")，同時也受理、執行、及管理電腦與[滑鼠](../Page/鼠标.md "wikilink")、[鍵盤的互動程序](https://zh.wikipedia.org/wiki/键盘 "wikilink")。不過，X並沒有管轄到[使用者介面的部份](../Page/人机交互.md "wikilink")，而是由其他以X為基礎的實現體來負責，也因為如此，以X為基礎環境所開發成的視覺樣式非常地多；不同的程式可能有截然不同的介面呈現。

X採用[C/S的架構模型](https://zh.wikipedia.org/wiki/C/S结构 "wikilink")，由一个*X服务器*与多個*X客户端*程序進行通讯，服务器接受对于图形输出（窗口）的请求并反馈用户输入（键盘、鼠标、触摸屏），服务器可能是一个能显示到其他显示系统的应用程序，也可能是控制某个PC的视频输出的系统程序，也可能是個特殊硬件。

X的一大特點在於“[網路透明性](https://zh.wikipedia.org/wiki/网络 "wikilink")”\[2\]：應用程式（“客戶端”應用程式）所執行的機器，不一定是使用者本地的機器（顯示的“伺服器”）。X中所提及的“[客戶端](https://zh.wikipedia.org/wiki/客户端 "wikilink")”和“[伺服器](../Page/服务器.md "wikilink")”等字眼用詞也經常與人們一般想定的相反，“伺服器”反而是在使用者本地端的自有機器上執行，而非是在遠端的另一部機器上執行。

[X_client_server_example.svg](https://zh.wikipedia.org/wiki/File:X_client_server_example.svg "fig:X_client_server_example.svg")及[終端機模擬器則在用戶端的本機系統上執行](https://zh.wikipedia.org/wiki/終端機模擬器 "wikilink")。此外用戶端也透過網路與遠端的機器、伺服器保持聯繫，以保訊息狀態的更新。如此的機制及架構能使遠端執行的軟體如同在本機端執行一樣。\]\]

服务器和客户端之间的[通信协议的运作对](../Page/网络传输协议.md "wikilink")[计算机网络是透明的](../Page/计算机网络.md "wikilink")：客户端和服务器可以在同一台计算机上，也可以不是，或许其[架构和](../Page/计算机系统结构.md "wikilink")[操作系统也不同](../Page/操作系统.md "wikilink")，但都能运行。客户机和服务器还能够使用安全连接在[互联网上](../Page/互联网.md "wikilink")[安全地通讯](../Page/计算机安全.md "wikilink")。

为了使远端客户程序显示到本地服务器，用户一般需要启动一个[终端窗口和到达远端计算机的](https://zh.wikipedia.org/wiki/终端模拟器 "wikilink")[telnet或者](https://zh.wikipedia.org/wiki/telnet "wikilink")[ssh](../Page/Secure_Shell.md "wikilink")，令其显示到用户计算机，（例如：在运行[bash的远端计算机上](https://zh.wikipedia.org/wiki/bash "wikilink")`export
DISPLAY=`*\[用户的计算机\]*`:0`）然后启动客户端。然后客户端就会连接到本地计算机，并且远端应用程序会显示到本地屏幕并被本地输入设备所控制。与之对应，本地计算机上也可以执行一个连接到远端计算机的小型代理程序，并在該端启动與執行自有需求與指定的应用程序。

实际的远端客户端的例子有：图形化管理远程计算机；在远端UNIX计算机上运行计算密集的仿真程序并把结果显示到本地的Windows桌面计算机；用一套显示器、键盘和鼠标控制同时运行在多台计算机上的图形化软件。

## X的設計原則

X的設計原則，早在最初仍在麻省理工學院的階段（1984年）就已經成形，由和兩人制訂出X最早的開發、強化、改進原則，原則大體如下：

  - 除非沒有它就無法完成一個真正完整的應用程式，否則不用增加新的功能。
  - 決定一個系統不是什麼和決定它是什麼同樣重要。與其去適應整個世界的需要，寧可使得系統可以擴展，如此才能以持續相容的方式來滿足新增需求
  - 只有完全沒實例時，才會比只有一個實例來的糟。
  - 如果問題沒完全弄懂，最好不要去解決它\[3\]
  - 如果可以透過10％的工作量得到90％的預期效果，應該用更簡單的辦法解決。（**參見：**[更糟就是更好](https://zh.wikipedia.org/wiki/更糟就是更好 "wikilink")）
  - 盡量避免複雜性。
  - 提供機制而不是策略，有關使用者介面的開發實現，交給實際應用者自主。

之後，上述原則中的第一項原則在設計X11時被加以修改，修訂成：*「除非已有真正的應用程式，真的需要X為其修訂、增訂等支援，否則不會為X增加新功能。」*X基本上一直遵循這些原則，參考實現的擴展及改進也是以此原則的角度來著手，也因為奉行上述原則，使至今的最新版X仍能與最初（1987年）發佈的協定標準近乎完全相容。

[DECwindows-openvms-v7.3-1.png](https://zh.wikipedia.org/wiki/File:DECwindows-openvms-v7.3-1.png "fig:DECwindows-openvms-v7.3-1.png")
7.3-1上執行的DECwindows CDE\]\]

## 使用者界面

X刻意不去規範應用程式在[使用者界面上的具體細節設計](../Page/用户界面.md "wikilink")，這些包括[按鈕](https://zh.wikipedia.org/wiki/按鈕 "wikilink")、[選單和視窗的](https://zh.wikipedia.org/wiki/选单 "wikilink")[標題欄等等](https://zh.wikipedia.org/wiki/標題欄 "wikilink")，這些都由[視窗管理器](https://zh.wikipedia.org/wiki/窗口管理器 "wikilink")（window
manager）、GUI[構件工具包](https://zh.wikipedia.org/wiki/構件工具包 "wikilink")、[桌面環境](https://zh.wikipedia.org/wiki/桌面環境 "wikilink")（desktop
environment）或者應用程序指定的GUI（如[POS](../Page/銷售時點情報系統.md "wikilink")）等等的用戶軟件來提供，然而因為架構設計上保留了高度的彈性發揮空間，致使多年來X在“基礎、典型、一般性”的使用者介面上，也都有數目驚人的多樣性選擇。

在X的系統架構中，視窗管理器用於控制視窗程式的位置和外觀，其界面類似Microsoft的Windows或者Macintosh（例如：KDE的[KWin或者GNOME的](../Page/KWin.md "wikilink")[Metacity](../Page/Metacity.md "wikilink")），不過在控制機制上卻截然不同（例如：X提供的基本視窗管理器[twm](https://zh.wikipedia.org/wiki/twm "wikilink")）。視窗管理器可能只是個框架（例如：twm），但也可能提供了全套的桌面環境功能（例如：[Enlightenment](../Page/Enlightenment.md "wikilink")）。

雖然不同的X使用者介面可以有很大的差距、差異，然而絕大多數的用戶在使用X時，多是用已經高度全套化的[桌面環境](https://zh.wikipedia.org/wiki/桌面環境 "wikilink")，桌面環境不僅有視窗管理器，還具備各種應用程式以及協調一致的界面，目前最流行的桌面環境是[GNOME和](../Page/GNOME.md "wikilink")[KDE](../Page/KDE.md "wikilink")，此兩者已普遍使用於Linux作業系統上，而UNIX所用的標準桌面環境多是[通用桌面環境CDE](https://zh.wikipedia.org/wiki/cDE "wikilink")，然而也有些UNIX也開始採行GNOME。

此外，X桌面環境及組件雖然極其多樣，但同時也需要保持相容性與互通性，關於此則有[freedesktop.org積極與努力地維持各種不同X桌面環境的相容性](https://zh.wikipedia.org/wiki/freedesktop.org "wikilink")，使相競態勢下仍不失X的相容本色。

## 实现

X的标准实现是X.Org的[参考实现](https://zh.wikipedia.org/wiki/参考实现 "wikilink")。由于其[许可证比较宽松](https://zh.wikipedia.org/wiki/许可证 "wikilink")，出现了大量[自由的或者](../Page/自由软件.md "wikilink")[专有的实现](../Page/专有软件.md "wikilink")。商业的UNIX商家倾向于采用参考实现并使之适应其硬件，例如高度定制并加入专有的扩展。

直到2004年，在自由的[类UNIX系统上最常见的X变体是](../Page/类Unix系统.md "wikilink")[XFree86](../Page/XFree86.md "wikilink")。顾名思义，它源于X的[386兼容的PC机的](https://zh.wikipedia.org/wiki/intel_80386 "wikilink")[移植](https://zh.wikipedia.org/wiki/移植_\(軟體\) "wikilink")，到了上個（20）世纪90年代末期成为X的技术创新的主要来源和X开发的事实标准\[4\]。但是从2004年起，最流行的X服务器是XFree86的[分支](https://zh.wikipedia.org/wiki/fork "wikilink")—[X.Org的参考实现](../Page/X.Org_Server.md "wikilink")。

虽然X一般和UNIX联系在一起，X服务器也能够自然地存在于其他图形环境。[DEC](../Page/迪吉多.md "wikilink")／[COMPAQ](https://zh.wikipedia.org/wiki/康柏电脑 "wikilink")／[HP的](https://zh.wikipedia.org/wiki/惠普公司 "wikilink")[OpenVMS操作系统用X加上](https://zh.wikipedia.org/wiki/OpenVMS "wikilink")[CDE做为其标准桌面环境](../Page/CDE.md "wikilink")，称为[DECwindows](https://zh.wikipedia.org/wiki/DECwindows "wikilink")。[苹果公司的](https://zh.wikipedia.org/wiki/蘋果公司 "wikilink")[Mac
OS X
v10.3](https://zh.wikipedia.org/wiki/Mac_OS_X_v10.3 "wikilink")（研發時的代號：Panther，美洲豹）包括[Apple
X11](https://zh.wikipedia.org/wiki/Apple_X11 "wikilink")，它基于XFree86
4.3和X11R6.6，并能和[Mac OS
X更好地集成](https://zh.wikipedia.org/wiki/Mac_OS_X "wikilink")。

[Microsoft的](../Page/微软.md "wikilink")[Windows本身不包含对X的支持](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")，但是有不少第三方的实现可用，其中有[自由软件如](../Page/自由软件.md "wikilink")[Cygwin/X](https://zh.wikipedia.org/wiki/Cygwin/X "wikilink")、[Xming](https://zh.wikipedia.org/wiki/Xming "wikilink")、WeirdMind\[5\]和[WeirdX](https://zh.wikipedia.org/wiki/WeirdX "wikilink")，另外專有、專屬性的也有[Xmanager](https://zh.wikipedia.org/wiki/Xmanager "wikilink")、[X-Deep/32](https://zh.wikipedia.org/wiki/X-Deep/32 "wikilink")、[X-Win32](https://zh.wikipedia.org/wiki/X-Win32 "wikilink")、[WiredX和](https://zh.wikipedia.org/wiki/WiredX "wikilink")[Exceed](https://zh.wikipedia.org/wiki/Exceed "wikilink")。它们多用于控制远程X客户端。

当X寄生在其他窗口系统（例如：Windows或Mac
OS）时，X系统一般是“rootless，無根”的，也就是说：宿主（主體）窗口系统担当根窗口（背景和相关菜单）并管理寄生（客體）的X窗口的位置。但是也有些服务器，例如Exceed，能够在宿主系统上创建根窗口使得远程客户端能够做为分离的窗口在其上显示。

### X终端機

**X终端機**（**X
Terminal**）是做为仅运行X服务器的[瘦客户机的专用硬件](../Page/瘦客户端.md "wikilink")。该架构广泛用于为了使多人同时使用同一个大型服务器而构造终端。这也符合MIT的计划的初衷。

X终端搜索网络，使用[XDMCP产生允许其运行客户机的主机列表](https://zh.wikipedia.org/wiki/XDMCP "wikilink")。初始主机需要執行[X显示管理器](../Page/X显示管理器.md "wikilink")。

专用的X终端機（硬件）现在已经不太常见了，现在经常使用[个人计算机並搭配執行X終端機的實效模擬程式](../Page/个人电脑.md "wikilink")（Emulator）来完成相同的功能，過去（1990年代初期）業界在推行X終端機時也將其稱為「窮人的UNIX工作站」。

## X的局限和批评

在《》一書中有個章節為："X視窗所造成的災禍（The X-Windows
Disaster）"\[6\]，該書用此整個章節的篇幅內容來讨论X在20世纪80年代末到同世紀90年代初的问题與困擾。

### 视频硬件

#### PC

在[PC世界裡](../Page/个人电脑.md "wikilink")，需要第三方硬件的驱动的非主流的个人计算机软件往往不能支持所有为[Microsoft
Windows出品的设备](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")。X
Window也不例外，它的实现往往缺少较新（或者非常旧）的[显示卡高效驱动程序](../Page/显示卡.md "wikilink")。

[X.org和](../Page/X.Org基金会.md "wikilink")[XFree86这样的](../Page/XFree86.md "wikilink")[开源X实现中](../Page/开放源代码.md "wikilink")，开发社区通过复用已有代码，可以很快更新改进驱动程序，从而能够为较陈旧的或者很通用的硬件开发出高质量的驱动。

高性能图形计算目前是顶级的图形功能，一般由厂家通过专有驱动来实现，而且往往优先考虑是[Windows](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")（最大的消费市场）。由于高性能视频市场的显赫地位，一些硬件／驱动厂商会考虑通过将技术细节变为商业秘密或者将其中创新变为[软件专利](https://zh.wikipedia.org/wiki/软件专利 "wikilink")，而这阻碍了开源驱动的实现。

#### 其他设备

在[PC机之外的世界裡](../Page/个人电脑.md "wikilink")，很多X的实现是为非传统设备如[PDA和](https://zh.wikipedia.org/wiki/PDA "wikilink")[手机而编写](../Page/移动电话.md "wikilink")（或者移植）的。这样的实现必须提供为在此之上运行的平台提供至少且必须的设备支持。

#### 性能

X
Window的**C/S体系**（主從式架構）设计在应用程序和视频硬件之间多加了一层软件，导致繪圖效率下降，所以引起了一些批评。因此开发了若干扩展，在设备和客户机在同一个系统上时，通过在取得适当许可的情况下，以直接访问设备来改善这一问题。而在[Linux上](../Page/Linux.md "wikilink")，一些视频驱动已经部分移入[内核以提高效率](../Page/内核.md "wikilink")。

#### 稳定性

另一方面，X也被批评为需要（或者提供）了过多的对硬件的直接访问，从而影响了系统稳定性。行为不良的显卡驱动（有时也可能是应用程序）甚至能够导致整个系统崩溃或者重启；有时即使操作系统仍在工作，它也不能继续渲染其显示（这时除了重启，缺乏好的恢复手段）。

根本上，目前所有的桌面GUI操作系统都提供某种对硬件的直接访问，支持者认为市场已经证明为了提供图形性能牺牲一点稳定性是值得的。或许将来随着技术和用户的演化这一平衡会有所变化。

### 用户界面特征

X刻意不去规范用户界面和程序之间大多数的通信，导致出现了几种非常不同的界面，同时程序之间协同困难；而客户机之间的互操作规范[ICCCM以难以正确实现而闻名](https://zh.wikipedia.org/wiki/Inter-Client_Communication_Conventions_Manual "wikilink")。后来的标准化尝试，如[Motif和](../Page/Motif.md "wikilink")[CDE](../Page/CDE.md "wikilink")，也于事无补。长久以来这已经成为用户和程序员的巨大的挫折的源头\[7\]。目前，程序的感观一致性和通信一般是通过为特定桌面环境或者构件工具箱编程来处理，这也避免了直接和ICCCM接触。

X缺乏良好的网络與透明的音效系统。当用户对音效日益期盼时，各种不兼容的音效子系统便出现了。过去，大多数程序员只好忽略网络问题，简单地使用本地的并且是OS专用的音效[API](../Page/应用程序接口.md "wikilink")。第一代客户机-服务器音效系统有[rplay和](https://zh.wikipedia.org/wiki/rplay "wikilink")[Network
Audio
System](https://zh.wikipedia.org/wiki/Network_Audio_System "wikilink")。而最近的努力产生了[EsounD](https://zh.wikipedia.org/wiki/EsounD "wikilink")（GNOME）和[ARts](https://zh.wikipedia.org/wiki/ARts "wikilink")（KDE），而这也并非标准。而其他系统如[Media
Application
Server则正在开发当中](https://zh.wikipedia.org/wiki/Media_Application_Server "wikilink")。

直到最近，X也没有好的顯示印表機所列印的内容（[所見即所得](https://zh.wikipedia.org/wiki/所見即所得 "wikilink")）的解决方案。许多X客户机完全用[PostScript实现打印](../Page/PostScript.md "wikilink")，而这与发送到服务器的几乎整个是分离的。从X11R6.3起包含了[Xprint](https://zh.wikipedia.org/wiki/Xprint "wikilink")，此时客户机已经不错，但是服务器实现还不行。而从X11R6.8起实现的质量已经很好\[8\]，并且获得了[部件的支持](../Page/部件工具箱.md "wikilink")。

### 网络

X不能像[VNC那样把客户端的通訊从一个服务器卸下然后再附加到另一个上](../Page/VNC.md "wikilink")，但正在進行為X增加此功能的工作，另外还要实现通过VNC实现X服务器的显示。

X服务器和远端客户机之间的网络通信使用明文的缺陷，讓攻击者使用[封包擷取程式就能够截获和阅读它](https://zh.wikipedia.org/wiki/封包擷取程式 "wikilink")。这一缺陷一般可以通过在[SSH通訊上使用X来解决](../Page/Secure_Shell.md "wikilink")。

设备中立和客户机与服务器分离还带来了一定开销。X的网络透明性要求客户机和服务器分别运行。在其早期，与同时的采取窗口系统嵌入操作系统这一方法的[Microsoft
Windows和](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")[Mac
OS比较](https://zh.wikipedia.org/wiki/Mac_OS "wikilink")，这给独立系统带来明显的性能影响。为了获得可以接受的性能，推荐起码要4到8[MB的](https://zh.wikipedia.org/wiki/MB "wikilink")[RAM](../Page/随机存取存储器.md "wikilink")，但在1990年代之前，这被认为与Windows或者Mac
OS相比太超過了。

当前版本的Windows和[Mac OS
X](https://zh.wikipedia.org/wiki/Mac_OS_X "wikilink")
[Quartz也包含了和X的客户机](https://zh.wikipedia.org/wiki/Quartz "wikilink")／服务器相类似的子系统划分，其性能和资源需求同X加上[KDE或者](../Page/KDE.md "wikilink")[GNOME也类似](../Page/GNOME.md "wikilink")。现在主要的消耗来自于客户机和服务器之间的网络往返延迟（非协议本身产生的滞后时间），应该通过应用程序的设计来改善\[9\]。

## X的竞争者

X在[類UNIX系统上几乎完全占据统治地位](../Page/类Unix系统.md "wikilink")。但是仍然有人尝试提供替代品和更多的选择。过去曾经有[Sun的](https://zh.wikipedia.org/wiki/昇陽 "wikilink")[NeWS](https://zh.wikipedia.org/wiki/NeWS "wikilink")，但它遭到市场淘汰；还有[NeXT的](../Page/NeXT.md "wikilink")[Display
PostScript](https://zh.wikipedia.org/wiki/Display_PostScript "wikilink")，它最终转变为[苹果电脑的](https://zh.wikipedia.org/wiki/蘋果公司 "wikilink")[Mac
OS
X內的](https://zh.wikipedia.org/wiki/Mac_OS_X "wikilink")[Quartz](https://zh.wikipedia.org/wiki/Quartz "wikilink")。

应对对于X的批评的更前卫的尝试有Berlin/[Fresco和](https://zh.wikipedia.org/wiki/Fresco "wikilink")[Y
Window
System这样的完全替换](https://zh.wikipedia.org/wiki/Y_Window_System "wikilink")。这些代用品被认为不值得采用，而任何不能做到与X向后兼容的的替代品的可行性都被广泛置疑。

其他有的竞争者通过直接操作硬件来避免X的开销，这样的项目包括[DirectFB](https://zh.wikipedia.org/wiki/DirectFB "wikilink")。但是由于[DRI正在致力于使用可靠的内核级接口提供帧缓冲](https://zh.wikipedia.org/wiki/DRI "wikilink")，这些努力可能变成是多余的。

freedesktop.org所主持的[Wayland顯示伺服器同時運用了前述兩種方法處理X的缺點](../Page/Wayland.md "wikilink")，它完全替換了X的架構而且運用DRI來直接操作硬體。[Canonical公司替他旗下的](https://zh.wikipedia.org/wiki/Canonical公司 "wikilink")[Ubuntu
Linux作業系統開發中的](https://zh.wikipedia.org/wiki/Ubuntu_Linux "wikilink")[Mir是一個類似的計劃](https://zh.wikipedia.org/wiki/Mir_\(顯示伺服器\) "wikilink")。預計支援[ARM晶片組和](https://zh.wikipedia.org/wiki/ARM架構 "wikilink")[x86架構的電腦](https://zh.wikipedia.org/wiki/x86 "wikilink")。Mir透過Xmir向後兼容使用X
Window的程式。

其他以图形终端服务形式达到网络透明性的尝试还有VNC（很底层的系统，通过网络发送压缩的位图；UNIX上的实现包括X服务器）、[Citrix
MetaFrame](https://zh.wikipedia.org/wiki/Citrix_MetaFrame "wikilink")（类似X的Windows软件）、[Tarantella](https://zh.wikipedia.org/wiki/Tarantella "wikilink")（为网络浏览器提供Java客户机）和[NX技術](https://zh.wikipedia.org/wiki/NX技術 "wikilink")（用于远程显示的节省带宽的协议）。

## 历史

### 前身

事實上，早在X出現前已有幾個[-{zh-hans:位图;zh-hk:點陣圖;zh-tw:點陣圖;}-式的軟體顯示系統已經存在](../Page/位图.md "wikilink")，例如[帕洛阿尔托研究中心](../Page/帕羅奧多研究中心.md "wikilink")（[施乐公司](../Page/施乐.md "wikilink")）提出的[Alto](https://zh.wikipedia.org/wiki/Xerox_Alto "wikilink")（1973年）和[Star](https://zh.wikipedia.org/wiki/Xerox_Star "wikilink")（1981年）、[蘋果電腦提出的](https://zh.wikipedia.org/wiki/蘋果公司 "wikilink")[Lisa](../Page/Apple_Lisa.md "wikilink")（1983年）和[麥金塔](https://zh.wikipedia.org/wiki/麦金塔电脑 "wikilink")（1984年）、在[UNIX世界也有](../Page/UNIX.md "wikilink")-{zh-hans:雅典娜工程;zh-hk:Athena計畫;zh-tw:Athena計畫;}-（1982年）和[Rob
Pike的](https://zh.wikipedia.org/wiki/Rob_Pike "wikilink")[Blit終端機](https://zh.wikipedia.org/wiki/Blit終端機 "wikilink")（1984年）。

X從1983年之前稱為[W
Window系統的視窗系統中](../Page/W_Window系统.md "wikilink")，推衍出它的名字當作是繼任者（在拉丁字母裡面X直接接在W後面）。W
Window系統是運行於[V](https://zh.wikipedia.org/wiki/V（作業系統） "wikilink")[作業系統](../Page/操作系统.md "wikilink")。W使用一個支援終端機和圖形視窗的網路協定，而伺服器維護顯示的列表。

### 起源和早期的發展

X起初是[MIT於](../Page/麻省理工学院.md "wikilink")1984年的構想，當作為[-{zh-hans:雅典娜工程;zh-hk:Athena計畫;zh-tw:Athena計畫;}-的](../Page/雅典娜工程.md "wikilink")和MIT電腦科學實驗室的的共同研究。Scheifler需要一個可以使用的顯示環境來對[Argus系統除錯](https://zh.wikipedia.org/wiki/Argus系統 "wikilink")。-{zh-hans:雅典娜工程;zh-hk:Athena計畫;zh-tw:Athena計畫;}-，是[DEC](../Page/迪吉多.md "wikilink")、MIT、和[IBM之間的聯合計畫](../Page/IBM.md "wikilink")，用來提供給需要一個平台獨立顯示系統，可把不同種類多個製造商之系統連結在一起，給所有學生容易存取電腦資源；該視窗系統曾經在[卡耐基美隆大學](https://zh.wikipedia.org/wiki/卡内基梅隆大学 "wikilink")（Carnegie
Mellon
University，CMU）的-{zh-hans:雅典娜工程;zh-hk:Athena計畫;zh-tw:Athena計畫;}-中發展過，但是在授權上並可能得到且沒有其他可替代可選擇。

該計畫藉由創立一個可以執行本地應用程式且能夠拜訪遠端資源的協定來解決這個問題。起初在1983年中期W視窗系統的UNIX移植在V作業系統下以1/4速度運行；在1984年5月，Scheilfer將W的[同步](https://zh.wikipedia.org/wiki/非同步 "wikilink")[協定換成](https://zh.wikipedia.org/wiki/協定 "wikilink")[非同步協定](https://zh.wikipedia.org/wiki/非同步 "wikilink")，以及將顯示列表換成直接模式繪圖，而創造出X的版本1。X是第一個真正的硬體和製造商無關的視窗系統環境。

Scheifler、Gettys和[Ron
Newman著手工作且X快速地進展著](https://zh.wikipedia.org/wiki/Ron_Newman（電腦程式設計師） "wikilink")。版本6於1985年1月推出。DEC正準備要推出它的第一個[Ultrix工作站](https://zh.wikipedia.org/wiki/Ultrix "wikilink")，且X是唯一最有希望即時準備妥當的視窗系統。於是X6被移植到[MicroVAX的DEC](https://zh.wikipedia.org/wiki/MicroVAX "wikilink")
QVSS顯示器。

1985年第二季，为了支持DEC的[VAXstation](https://zh.wikipedia.org/wiki/VAXstation "wikilink")-II/GPX增加了色彩支持，由此形成了版本9。尽管MIT此前已经免费许可X6给一些外部群体，它此时决定在后来演变为[MIT授權的许可证下发放对X](../Page/MIT許可證.md "wikilink")9和后续版本。X9于1985年9月发布。

[布朗大学的一些人将版本](../Page/布朗大学.md "wikilink")9移植到[IBM](../Page/IBM.md "wikilink")
[RT/PC](https://zh.wikipedia.org/wiki/RT/PC "wikilink")，为了读取RT的非对齐数据对协议做了不兼容的修改，导致1985年稍后发布版本10。1986年有若干外部团体对X提出需要。X10R2发布于1986年1月。1986年2月的X10R3是第一个广泛发行的版本，DEC和[惠普都基于它发布产品](https://zh.wikipedia.org/wiki/惠普公司 "wikilink")。别的一些团体把X10移植到[Apollo或者](../Page/阿波羅電腦.md "wikilink")[Sun工作站甚至IBM](https://zh.wikipedia.org/wiki/昇陽 "wikilink")
[PC/AT](https://zh.wikipedia.org/wiki/IBM_PC_AT "wikilink")。X10的最后一个版本X10R4于1986年12月发布。

尽管X10既有趣又强大，但很明显在X被更加广泛地采纳前人们期待X的协议更加设备中立；但是这样大规模地完全重新设计所要求地资源超出了MIT自身能够提供的。于是DEC的[Western
Software
Laboratory跻身该项目](https://zh.wikipedia.org/wiki/Western_Software_Laboratory "wikilink")。DEC
WSL的[Smokey
Wallace](https://zh.wikipedia.org/wiki/Smokey_Wallace "wikilink")，另外还有Jim
Gettys提议X11在DEC
WSL创建，但能够使用与X9和X10同样的方法自由获取。该项目于1986年5月开始，协议部分于8月结束，软件的alpha（內部）测试于1987年2月就，beta（外部）测试开始于5月。X11最终于1987年9月15日发布。

X11协议设计由Scheifler领导，並在nascent
[Internet的开放邮件列表上广泛讨论](../Page/互联网.md "wikilink")。于是X成为最早的较大规模的开源软件项目之一。

### MIT X協會與X協會公司

1987年，随着X11取得明显成功，MIT希望免除X的管理责任。但是1987年6月與9个厂商举行会晤，这些厂商表示他们相信为了避免X由于商业因素而分裂，需要中立方的参与。1988年1月，X協會（X
Consortium）做为[非营利厂商团体而成立](../Page/非營利組織.md "wikilink")，由Scheifler擔任主管，而[Keith
Packard擔任高级](https://zh.wikipedia.org/wiki/Keith_Packard "wikilink")[开发人员](../Page/程序员.md "wikilink")，確保X能持續以中立超然的立場提供商業與學術教育所需的開發。此後**MIT
X協會**（MIT X Consortium）完成了一系列重要的X11版本，第一个就是1988年1月的版本2（X11R2）。

1993年，**X協會公司**（X Consortium,
Inc.；[非營利性質的公司](../Page/非營利組織.md "wikilink")）做为MIT
X協會的接继者而成立。它于1994年5月16日发布了X11R6。1995年X協會公司接手了UNIX系统的[Motif工具箱和](../Page/Motif.md "wikilink")[CDE](../Page/CDE.md "wikilink")（[Common
Desktop
Environment](https://zh.wikipedia.org/wiki/Common_Desktop_Environment "wikilink")）共通桌面環境。而原有的X協會在发布了最后一个版本的X11R6.3后，于1996年末解散。

### 開放團體

1997年中，X
Consortium将X的管理交给[開放團體](https://zh.wikipedia.org/wiki/開放團體 "wikilink")，而它是1996年由[開放軟體基金會](https://zh.wikipedia.org/wiki/開放軟體基金會 "wikilink")（OSF）和[X/Open合并成立的厂商团体](https://zh.wikipedia.org/wiki/X/Open "wikilink")。

開放團體於1998年首次发布X11R6.4。为了確保X开发上的资金，所以X11R6.4偏离传统的自由许可条款，進而引起争议\[10\]。新条款阻碍了许多项目（例如：XFree86）采纳它，甚至包括一些厂商。在XFree86以分离相威胁后\[11\]，X11R6.4于1998年9月在传统许可条款下发布\[12\]，而開放團體的最后一个发布是X11R6.4
patch 3，即第三度發佈的補強程式。

### X.Org

1999年5月開放團體组建了[X.Org](../Page/X.Org_Server.md "wikilink")。X.Org指导了X11R6.5.1之前的版本发布。在此期间X的开发死气沉沉\[13\]。2003年，随着Linux的流行X被大量安装。但是X.Org几乎无声无息，活跃的开发由XFree86承担。\[14\]

### XFree86

在1989年至1990年期间，托马斯·罗尔把X11R4分类器上提供的X服务器程序的源代码下载到运行速度仅为33MHz的386PC上，成功运行了被他称为是X38611.1的X服务器。这就是XFree86的雏形。

1992年后多数技术创新都发生在XFree86项目中。1999年，由于众多对于XFree86在Linux上应用有兴趣的硬件厂商\[15\]的推动，并也已经成为最普及的X版本，XFree86成为X.Org的荣誉成员（不付费）\[16\]。

但是自2003年开始，XFree86内部却发生了争论。它被认为太[教堂式了](../Page/大教堂和市集.md "wikilink")，如同它的开发模式；开发者不能通过[CVS做提交](../Page/協作版本系統.md "wikilink")\[17\]，而厂商被迫维护大量[补丁](https://zh.wikipedia.org/wiki/patch "wikilink")\[18\]。2003年3月，自从最初的MIT
X Consortium结束之后就参加XFree86的Keith Packard由于被认为态度不良而被驱逐\[19\]\[20\] \[21\]

X.Org和XFree86开始讨论能够有助于X开发的重组\[22\]\[23\]\[24\]Jim
Gettys早在2000年就热心于开放的开发模式\[25\]。Gettys、Packard和其他几个人开始讨论有效管理X和开放式开发的细节。

最终就像是X11R6.4许可证争议的回响，XFree86于2004年2月在更加严格许可证下发布了4.4。许多依赖X的项目认为该许可证无法接受\[26\]，特别是它和[GNU
General Public
License](../Page/GNU通用公共许可证.md "wikilink")\[27\]不兼容。这引起一场论战，许多人认为到了该对[XFree86分叉](../Page/XFree86.md "wikilink")（fork）\[28\]的时候了，许多Linux发行版，包括[Fedora](../Page/Fedora.md "wikilink")、[Gentoo都纷纷在最新的版本中使用](../Page/Gentoo_Linux.md "wikilink")[X.Org基金会的发布代替](../Page/X.Org基金会.md "wikilink")[XFree86](../Page/XFree86.md "wikilink")。

### X.Org基金会

2004年年初[X.Org基金会成立](../Page/X.Org基金会.md "wikilink")。这意味著X在管理上的根本转变。1988年以来X的管理者（包括过去的X.Org）都是厂商组织，而基金会由软件开发者领导，采用依靠外部参与的[集市模式的社区开发](../Page/大教堂和市集.md "wikilink")。其成员身份对个人开放，法人成员则成为赞助者。X.Org还开始同[freedesktop.org密切合作](https://zh.wikipedia.org/wiki/freedesktop.org "wikilink")。

在XFree86
4.4RC2基础上合并了X11R6.6的修改，基金会在2004年4月发布了X11R6.7。Gettys和Packard使用了在旧许可证下发布的XFree86的最后的版本，但是强调了开放的开发模式并保持了与GPL的兼容性，从而带来了很多过去XFree86的开发者\[29\]。

2004年9月X11R6.8发布。它加入重要的新特性，包括对半透明窗口的初步支持、很多复杂的视觉效果、屏幕放大和简图，以及与3D沉浸式显示系统（例如Sun的[Project
Looking
Glass和](https://zh.wikipedia.org/wiki/Project_Looking_Glass "wikilink")[Croquet
project](https://zh.wikipedia.org/wiki/Croquet_project "wikilink")）集成的设施。而外观策略由称为**合成管理器**（compositing
managers）的外部应用程序提供。

## 未来方向

有了X.Org基金会和freedesktop.org，X的开发再度加速。目前和未来的版本都将是可使用的最终产品，而不仅仅是在其上构筑产品的骨架。

随着硬件操作被移入内核，几乎对视频硬件的访问将通过[OpenGL](../Page/OpenGL.md "wikilink")（没有硬件OpenGL的系统使用[Mesa
3D](../Page/Mesa_3D.md "wikilink")）和[基层直接渲染模块进行](https://zh.wikipedia.org/wiki/基层直接渲染 "wikilink")\[30\]。这由XFree86
version 4引入并出现在X11R6.7及其后续版本。

参考实现的架构被模块化，每个独立模块做为分离的项目维护。X11R6.9将是单体[源代码而X](../Page/源代码.md "wikilink")11R7.0将有具备相同特征集的模块化源代码。\[31\]。

## 寫法、稱呼上的誤混

“X Window系统”一般也簡稱成“X11”或“X”，而“X Windows”的稱寫方式（類似“Microsoft
Windows”的稱寫）並沒有被正式認可，不過這種誤會的稱寫法卻很普遍且經常出現（例如在一書中）。

## 版本历史

<table>
<thead>
<tr class="header">
<th><p>版本</p></th>
<th><p>發表日期</p></th>
<th><p>重大變更</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>X1</p></td>
<td><p>1984年6月</p></td>
<td><p>首次使用"X"作為稱呼；基金會自此將W與X區隔。</p></td>
</tr>
<tr class="even">
<td><p>X6</p></td>
<td><p>1985年1月</p></td>
<td><p>首版授權給若干的外部公司。</p></td>
</tr>
<tr class="odd">
<td><p>X9</p></td>
<td><p>1985年9月</p></td>
<td><p>彩色化，以及首次以<a href="../Page/MIT許可證.md" title="wikilink">MIT授權方式發佈</a>。</p></td>
</tr>
<tr class="even">
<td><p>X10</p></td>
<td><p>1985年後期</p></td>
<td><p>開始能在IBM RT/PC、<a href="https://zh.wikipedia.org/wiki/IBM_PC_AT" title="wikilink">IBM PC AT</a>（使用<a href="../Page/MS-DOS.md" title="wikilink">DOS作業系統</a>）以及其他硬體上執行。</p></td>
</tr>
<tr class="odd">
<td><p>X10R2</p></td>
<td><p>1986年1月</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>X10R3</p></td>
<td><p>1986年2月</p></td>
<td><p>首次在MIT之外發佈。<a href="https://zh.wikipedia.org/wiki/uwm" title="wikilink">uwm使視窗管理員</a>（Window Manager）程式標準化。</p></td>
</tr>
<tr class="odd">
<td><p>X10R4</p></td>
<td><p>1986年12月</p></td>
<td><p>發佈X10的最後一版。</p></td>
</tr>
<tr class="even">
<td><p>X11</p></td>
<td><p>1987年9月15日</p></td>
<td><p>首次發佈現有X Window系統所用的協定（Protocol）。</p></td>
</tr>
<tr class="odd">
<td><p>X11R2</p></td>
<td><p>1988年2月</p></td>
<td><p>以X協會（Consortium）之名的首次發佈。[32]</p></td>
</tr>
<tr class="even">
<td><p>X11R3</p></td>
<td><p>1988年10月25日</p></td>
<td><p>發佈<a href="https://zh.wikipedia.org/wiki/XDM" title="wikilink">XDM</a>。</p></td>
</tr>
<tr class="odd">
<td><p>X11R4</p></td>
<td><p>1989年12月22日</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/XDMCP" title="wikilink">XDMCP</a>、<a href="https://zh.wikipedia.org/wiki/twm" title="wikilink">twm成為標準的視窗管理員</a>（Window Manager）程式，同時強化應用程式、發佈<a href="https://zh.wikipedia.org/wiki/Shape_extension" title="wikilink">Shape extension及新的字型</a>。</p></td>
</tr>
<tr class="even">
<td><p>X11R5</p></td>
<td><p>1991年12月5日</p></td>
<td><p>發佈<a href="https://zh.wikipedia.org/wiki/PHIGS" title="wikilink">PEX</a>、Xcms（<a href="../Page/色彩管理.md" title="wikilink">色彩管理功用</a>）、字型伺服器、X386。</p></td>
</tr>
<tr class="odd">
<td><p>X11R6</p></td>
<td><p>1994年5月16日</p></td>
<td><p>發佈<a href="https://zh.wikipedia.org/wiki/ICCCM" title="wikilink">ICCCM</a> v2.0；Inter-Client Exchange（用戶端間的交換）；X Session Management（行程管理程式）；X Synchronization extension（同步機制延伸程式）；X Image extension（影像延伸程式）；XTEST extension（XTEST延伸程式）；X Input（輸入用程式）；X Big Requests；XC-MISC；變更XFree86。</p></td>
</tr>
<tr class="even">
<td><p>X11R6.1</p></td>
<td><p>1996年3月14日</p></td>
<td><p>發佈X Double Buffer extension（雙重緩衝延伸程式）；<a href="https://zh.wikipedia.org/wiki/X_keyboard_extension" title="wikilink">X keyboard extension</a>（鍵盤延伸程式）；X Record extension（記錄延伸程式）。</p></td>
</tr>
<tr class="odd">
<td><p>X11R6.2<br />
X11R6.3<br />
（代號：百老匯）</p></td>
<td><p>1996年12月23日</p></td>
<td><p>發佈Web功能功效、<a href="https://zh.wikipedia.org/wiki/Low_Bandwidth_X" title="wikilink">LBX</a>。以X協會之名的最後一次發佈。X11R6.2是X11R6.3的子集合（subset），X11R6.3只針對原有X11R6.1進行特點強化，如XPrint以及可以直書的Xlib，以及可由使用者進行特性定義。[33]</p></td>
</tr>
<tr class="even">
<td><p>X11R6.4</p></td>
<td><p>1998年3月31日</p></td>
<td><p>發佈<a href="https://zh.wikipedia.org/wiki/Xinerama" title="wikilink">Xinerama</a>。[34]</p></td>
</tr>
<tr class="odd">
<td><p>X11R6.5</p></td>
<td></td>
<td><p>X.org的一次內部發佈，沒有對外公開。</p></td>
</tr>
<tr class="even">
<td><p>X11R6.5.1</p></td>
<td><p>2000年8月20日</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>X11R6.6</p></td>
<td><p>2001年4月4日</p></td>
<td><p>修復錯誤、變更XFree86。</p></td>
</tr>
<tr class="even">
<td><p>X11R6.7.0</p></td>
<td></td>
<td><p>首次由X.Org基金會進行發佈，此一發佈新增了XFree86 4.4rc2。此外也有完整的末端用戶的發行版本。移除XIE、<a href="https://zh.wikipedia.org/wiki/PHIGS" title="wikilink">PEX及libxml</a>2。[35]</p></td>
</tr>
<tr class="odd">
<td><p>X11R6.8.0</p></td>
<td></td>
<td><p>發佈Window translucency、XDamage、分散式多頭X、<a href="https://zh.wikipedia.org/wiki/XFixes" title="wikilink">XFixes</a>、Composite、XEvIE等。[36]</p></td>
</tr>
<tr class="even">
<td><p>X11R6.8.1</p></td>
<td></td>
<td><p>修補<a href="https://zh.wikipedia.org/wiki/XPM_(image_format)" title="wikilink">libxpm的安全防護功效</a>。[37]</p></td>
</tr>
<tr class="odd">
<td><p>X11R6.8.2</p></td>
<td></td>
<td><p>修補錯誤，更新驅動程式。[38]</p></td>
</tr>
<tr class="even">
<td><p>X11R6.9<br />
X11R7.0</p></td>
<td></td>
<td><p>發佈<a href="https://zh.wikipedia.org/wiki/EXA" title="wikilink">EXA</a>，主要的原始程式碼進行再拆解、組構。以相同的原始程式碼為基礎，衍生出模組化的7.0版以及一體性、團塊性的6.9版。[39]</p></td>
</tr>
<tr class="odd">
<td><p>X11R7.1</p></td>
<td></td>
<td><p>強化EXA，整合<a href="https://zh.wikipedia.org/wiki/Kdrive" title="wikilink">Kdrive</a>、<a href="https://zh.wikipedia.org/wiki/AIGLX" title="wikilink">AIGLX</a>，強化作業系統及平台的支援性。[40]</p></td>
</tr>
<tr class="even">
<td><p>X11R7.2</p></td>
<td></td>
<td><p>移除<a href="https://zh.wikipedia.org/wiki/LBX" title="wikilink">LBX</a>。[41]</p></td>
</tr>
<tr class="odd">
<td><p>X11R7.3</p></td>
<td></td>
<td><p>支持XServer 1.4，輸入<a href="https://zh.wikipedia.org/wiki/hotplug" title="wikilink">hotplug</a>，輸出hotplug (<a href="https://zh.wikipedia.org/wiki/RandR" title="wikilink">RandR</a> 1.2), <a href="https://zh.wikipedia.org/wiki/DTrace" title="wikilink">DTrace</a> probes, <a href="../Page/外设组件互连标准.md" title="wikilink">PCI</a> domain [42]</p></td>
</tr>
<tr class="even">
<td><p>X11R7.4</p></td>
<td></td>
<td><p>支持XServer 1.5.1, XACE, PCI-rework, EXA speed-ups, _X_EXPORT, <a href="https://zh.wikipedia.org/wiki/GLX" title="wikilink">GLX</a> 1.4，更快的啟動和關機。[43]</p></td>
</tr>
<tr class="odd">
<td><p>X11R7.5</p></td>
<td></td>
<td><p>支持XServer 1.7, <a href="https://zh.wikipedia.org/wiki/XKB" title="wikilink">XKB</a> 2及Xi 2, XGE, <a href="https://zh.wikipedia.org/wiki/RandR" title="wikilink">RandR</a> 1.3 (GPU object), <a href="https://zh.wikipedia.org/wiki/MPX" title="wikilink">MPX</a>, predictable pointer acceleration, <a href="https://zh.wikipedia.org/wiki/DRI" title="wikilink">DRI內存管理器</a>, DRI2, Shatter，進一步消除過時的libraries及擴展。[44]</p></td>
</tr>
<tr class="even">
<td><p>X11R7.6</p></td>
<td></td>
<td><p>支持XServer 1.9, Xi 3, XKB 2, UnixWare possible XCB requirement。[45]</p></td>
</tr>
<tr class="odd">
<td><p>X11R7.7</p></td>
<td></td>
<td><p>Xorg server 1.10改变, Xorg server 1.11改变, Xorg server 1.12改变; Sync扩展3.1:增加Fence object支持; Xi 2.2多点触控支持; XFixes 5.0: Pointer Barriers。[46]</p></td>
</tr>
</tbody>
</table>

## 参见

  - [視窗系統](../Page/視窗系統.md "wikilink")（Windowing system），針對一般的終端機。

  - [X Window系統的協議和架構](../Page/X_Window系統的協議和架構.md "wikilink")

  - [X Window核心協議](../Page/X_Window核心協議.md "wikilink")，功效機制等制訂、定義。

  - [X視窗管理器](https://zh.wikipedia.org/wiki/X窗口管理器 "wikilink")，軟體的建立原則。

  - ，政策原則標準依據。

  - ：相關的歷史零星事物。

  - [Xgl](../Page/Xgl.md "wikilink")，針對較現代、先進的顯示卡而設計的X伺服器架構。

  - ，簡稱GGI。一般性、共通性的圖形、圖像介面。

  - [AIGLX](https://zh.wikipedia.org/wiki/AIGLX "wikilink")，全稱**A**ccelerated
    **I**ndirect
    **GLX**，[X.Org基金会與](../Page/X.Org基金会.md "wikilink")[Fedora
    Core](../Page/Fedora.md "wikilink")
    Linux社群共同發起的[開放原碼專案](../Page/开放源代码.md "wikilink")，被期望以間接方式加速[GLX的繪圖著色功效](https://zh.wikipedia.org/wiki/GLX "wikilink")。

  - [VirtualGL](https://zh.wikipedia.org/wiki/VirtualGL "wikilink")，用於遠端顯示的程式，可顯示立體（3D）呈現的應用程式，且能發揮運用顯示卡的硬體加速著色功效。

  - [Y Window
    System](https://zh.wikipedia.org/wiki/Y_Window_System "wikilink")，也稱Y-Windows，是一套[視窗系統](../Page/視窗系統.md "wikilink")，由一個視窗伺服器與一個用戶端函式庫所組成，同時也是一套可供應用程式撰寫者呼用的[應用程式介面](../Page/应用程序接口.md "wikilink")。

## 参考资料

<div class='references-small'>

</div>

## 参考书籍

  -
  -
  -
  -
  -
  -
  -
  -
  -
  -
  -
## 外部链接

### 相關內容

<div class='references-small'>

  - [X.Org](http://www.x.org/)，X.Org基金會的官方網站。

  - [X視窗所造成的災禍](http://research.microsoft.com/%7Edaniel/UNIX-haters.html)，引自《UNIX-HATERS
    Handbook》一書。

  - [xwinman.org](https://web.archive.org/web/20040805030657/http://xwinman.org/)，X
    Window管理程式，或稱：X視窗管理員。

  - [《State of Linux
    Graphics》](https://web.archive.org/web/20070223151003/http://en.wikisource.org/wiki/State_of_Linux_Graphics)，收納於英文維基文库。

  - [RFC 1198](http://www.ietf.org/rfc/rfc1198.txt)，*FYI on the X Window
    System*

  - [《Writing a Graphics Device Driver and DDX for the DIGITAL UNIX X
    Server》](http://h30097.www3.hp.com/docs/dev_doc/DOCUMENTATION/HTML/AR5NHATE/TOC.HTM)，線上手冊、書籍。

  - [《Technical X Window System and Motif WWW
    Sites》](http://www.rahul.net/kenton/xsites.html)，線上手冊、書籍。

</div>

### 知名的實做

<div class='references-small'>

  - [XOrg Foundation Open Source Public Implementation of
    X11](http://xorg.freedesktop.org)，X11的正式实现體。

  - [XFree86](http://www.xfree86.org)，很多年來X系列最受歡迎的版本，特別是在開放原始碼的[类UNIX平台](../Page/类Unix系统.md "wikilink")。

  - [X11 for Mac OS X](http://www.apple.com/macosx/features/x11/)，與[Mac
    OS X緊密整合的](https://zh.wikipedia.org/wiki/Mac_OS_X "wikilink")[Apple
    X11](https://zh.wikipedia.org/wiki/Apple_X11 "wikilink")。

</div>

[Category:X服务器](https://zh.wikipedia.org/wiki/Category:X服务器 "wikilink")
[Category:X_Window系统](https://zh.wikipedia.org/wiki/Category:X_Window系统 "wikilink")
[Category:視窗系統](https://zh.wikipedia.org/wiki/Category:視窗系統 "wikilink")
[Category:應用程式介面](https://zh.wikipedia.org/wiki/Category:應用程式介面 "wikilink")
[Category:使用MIT许可证的软件](https://zh.wikipedia.org/wiki/Category:使用MIT许可证的软件 "wikilink")
[Category:Open_Group標準](https://zh.wikipedia.org/wiki/Category:Open_Group標準 "wikilink")

1.

2.  **註：**此處所說的“透明性”，更詳細地說是指：「通透性、無形、感受不到、無法察覺差異」等的含意。

3.  **註：**言下之意是：暫時、局部性的解決只會使事情更複雜、更難收拾。

4.  **參：**<http://www.xfree86.org/pipermail/forum/2004-February/003945.html>


5.  **參：**WeirdMind的網址：<http://www.tam.cornell.edu/Computer.old/remoteaccess/weirdmind/>


6.  **參：**<http://catalog.com/hopkins/UNIX-haters/x-windows/disaster.html>


7.  **參：**<http://lists.debian.org/debian-user/1996/11/msg00637.html>

8.  **參：**<http://xprint.mozdev.org/docs/Xprint_FAQ.html#contra_xprint>

9.  **參：**<http://keithp.com/~keithp/talks/lbxpost/paper.html>

10. **參：**<http://old.lwn.net/lwn/1998/0409/xstate.html>

11. **參：**<http://www.cat.org.au/maffew/cat/xfree-dawes.html>

12. **參：**<http://cbbrowne.com/info/x11r6.4.html>

13. **參：**<http://www.computerworld.com/softwaretopics/software/appdev/story/0,10801,67861,00.html>


14. **參：**<http://xfree86.org/pipermail/forum/2003-April/003127.html>

15. **參：**<http://slashdot.org/article.pl?sid=99/12/01/1342251>

16. **參：**<http://xfree86.org/pipermail/forum/2003-March/000418.html>

17. **參：**<http://www.xfree86.org/pipermail/forum/2003-March/002018.html>


18. **參：**<http://www.advogato.org/person/mharris/diary.html?start=5>

19. **參：**<http://www.xfree86.org/pipermail/forum/2003-March/001997.html>


20. **參：**<http://www.xfree86.org/pipermail/forum/2003-March/002165.html>


21. **參：**<http://www.xfree86.org/pipermail/forum/2003-April/003016.html>


22. **參：**<http://www.xfree86.org/pipermail/forum/2003-March/000554.html>


23. **參：**<http://www.xfree86.org/pipermail/forum/2003-March/002415.html>


24. **參：**<http://xfree86.org/pipermail/forum/2003-April/003144.html>

25. **參：**[<http://www.usenix.org/>.../Talk.htm](http://www.usenix.org/publications/library/proceedings/usenix2000/invitedtalks/gettys_html/Talk.htm)


26. **參：**<http://yro.slashdot.org/article.pl?sid=04/02/18/131223>

27. **參：**<http://www.dwheeler.com/essays/gpl-compatible.html#xfree86>

28. **參：**<http://www.osnews.com/story.php?news_id=6157>

29.
30. **參：**<http://keithp.com/~keithp/talks/xserver_ols2004/>

31. **參：**<http://wiki.x.org/wiki/ModularizationProposal>

32. **參：**<http://www.linuxdocs.org/HOWTOs/XWindow-User-HOWTO-2.html>

33. **參：**<http://www.xfree86.org/3.3.6/RELNOTES1.html>

34. **參：**<http://www.opengroup.org/tech/desktop/Press_Releases/x11r6.4ga.htm>


35.

36.

37.

38.

39.

40.

41. **參：**<http://xorg.freedesktop.org/wiki/ChangesForX11R72>

42.

43.

44.

45.

46.