[Kde_Vnc_01.png](https://zh.wikipedia.org/wiki/File:Kde_Vnc_01.png "fig:Kde_Vnc_01.png")內的VNC顯示遠端Windows的畫面\]\]
**VNC**（Virtual Network
Computing），為一種使用[RFB協定的螢幕畫面分享及遠端操作軟體](../Page/RFB協定.md "wikilink")。此軟體藉由網路，可傳送鍵盤與滑鼠的動作及即時的螢幕畫面。

VNC與作業系統無關，因此可跨平台使用，例如可用[Windows連線到某](../Page/Windows.md "wikilink")[Linux的電腦](../Page/Linux.md "wikilink")，反之亦同。甚至在沒有安裝用戶端程式的電腦中，只要有支援[JAVA的](../Page/JAVA.md "wikilink")[瀏覽器](../Page/瀏覽器.md "wikilink")，也可使用。

## 簡史

VNC由Olivetti &
Oracle研究室所開發，此研究室在1999年併入[美國電話電報公司](../Page/美國電話電報公司.md "wikilink")（AT\&T）。AT\&T於2002年中止了此研究室的運作，並把VNC以[GPL釋出](../Page/GPL.md "wikilink")。

因为它是免费的，以及可用于数量庞大的不同操作系统，它的简单，可靠，和向后兼容性，使之进化成为最为广泛使用的远程控制软件，多平台的支持对网络管理员是十分重要的，这使得网络管理员可以使用一种工具管理几乎所有系统。

原来的AT\&T版本已经不再使用，因为更多有重大改善的分支版本已经出现，像是RealVNC，VNC
tight和UltraVNC，他们具有全面的向后兼容。至少对于基本的远程控制功能而言。Real
VNC是当前最活跃和强大的主流应用。

VNC对于简单的远程控制几乎完美，但是缺少对于大机构的桌面帮助功能，主要是日志记录和安全功能没有足以达到此目的。VNC为远程工作人员或受客户机也没有做好准备，因为目前还没有支持远程应用程序的本地打印。

因为VNC本来是开发用在局域网的环境，因此用在互联网上存在安全问题，当您计划在远程位置访问远程PC，你应该考虑一个专用的调制解调器或ISDN的拨号连接，VPN隧道，所有使用SSL或包裹VNC通信。

參與VNC開發的人員有：

  - Tristan Richardson（發明者）
  - Andy Harter（專案經理）
  - Quentin Stafford-Fraser
  - James Weatherall
  - Ken Wood
  - Andy Hopper
  - Charles McLachlan
  - Paul Webster

2002年研究室中止運作之後，部份團隊中的成員另起爐灶開發出[RealVNC](../Page/RealVNC.md "wikilink")。

## 原理

VNC系统由客户端，服务端和一个协议组成

VNC的服务端目的是分享其所运行机器的屏幕，服务端被动的允许客户端控制它。VNC客户端（或Viewer）观察控制服务端，与服务端交互。VNC协议Protocol（RFB）是一个简单的协议，传送服务端的原始图像到客户端（一个X,Y位置上的正方形的点阵数据），客户端传送事件消息到服务端。

服务器发送小方块的帧缓存给客户端，在最简单的情况，VNC协议使用大量的带宽，因此各种各样的方法被发明出来减少通讯的开支，举例来说，有各种各样的编码方法来决定最有效率的方法来传送这些点阵方块）

协议允许客户端和服务端去协议哪种编码会被使用，最简单的编码，被大多数客户端和服务端所支持的是，从左到右的像素扫描数据的原始编码，当原始的满屏被发送后，只发送变化的方块区域。这种编码在幁间只有小部分屏幕变化的情况下工作的非常好（像是鼠标键在桌面移动的情况，或在光标处敲击文字），不过如果大量的像素同时变化带宽将会增加的非常高，像是拖动一个窗口或观看全屏录像。

VNC預設使用[TCP埠](../Page/TCP.md "wikilink")5900至5906，而JAVA的VNC用戶端使用5800至5806。一个服务端可以在5900端口用“监听模式”连接一个客户端，使用监听模式的一个好处是服务端不需要设置防火墙。

[UNIX上的VNC稱為xvnc](../Page/UNIX.md "wikilink")，同時扮演兩種角色，對[X
Window系統的應用程式來說它是X](../Page/X_Window系統.md "wikilink")
server，對於VNC用戶端來說它是VNC伺服程式。

## 安全性

VNC並非是安全的協定，雖然VNC伺服程式需設定密碼才可接受外來連線，且VNC用戶端與VNC伺服程式之間的密碼傳輸經過加密，但仍可被輕易的攔截到並使用[暴力破解法破解](../Page/暴力破解法.md "wikilink")。不過VNC可設計以[SSH或](../Page/SSH.md "wikilink")[VPN傳輸](../Page/VPN.md "wikilink")，以增加安全性。

有些VNC軟體，如UltraVNC，更進一步支援[Active
Directory及](../Page/Active_Directory.md "wikilink")[NTLM的帳號密碼認證](../Page/NTLM.md "wikilink")。

## VNC軟體

由於VNC以GPL授權，衍生出了幾個VNC軟體：

  - [RealVNC](../Page/RealVNC.md "wikilink")：由VNC團隊部份成員開發，分為全功能商業版及免費版。
  - [TightVNC](../Page/TightVNC.md "wikilink")：強調節省頻寬使用。
  - [UltraVNC](../Page/UltraVNC.md "wikilink")：加入了TightVNC的部份程式及加強效能的圖型映射驅動程式，並結合Active
    Directory及NTLM的帳號密碼認證，但僅有Windows版本。
  - [Vine Viewer](../Page/Vine_Viewer.md "wikilink")：MacOSX的VNC用戶端。

這些軟體各有所長，例如UltraVNC支援檔案傳輸以及全螢幕模式。而這些軟體間大多遵循基本的VNC協定，因此大多可互通使用。

## 另見

  - [遠端桌面](../Page/遠端桌面.md "wikilink")，即RDP（Windows的遠端操作軟體）
  - [Xdmcp](../Page/X显示管理器#X.E6.98.BE.E7.A4.BA.E7.AE.A1.E7.90.86.E5.99.A8.E6.8E.A7.E5.88.B6.E5.8D.8F.E8.AE.AE.28XDMCP.29.md "wikilink")（基于X
    Window系统的远程操作）

## 外部連結

  - [VNC](http://www.cl.cam.ac.uk/research/dtg/attarchive/vnc/index.html)
    AT\&T的VNC原始版本存檔頁
  - [Gentoo-wiki/VNC](https://web.archive.org/web/20071126043334/http://gentoo-wiki.com/VNC)
  - [RFB 3.8 Protocol Standard](http://realvnc.com/docs/rfbproto.pdf)
  - [RealVNC](http://www.realvnc.com/products/download.html)
  - [TightVNC](http://www.tightvnc.com/)
  - [UltraVNC](http://ultravnc.com/)
  - [Vine
    Viewer](https://web.archive.org/web/20071124025542/http://www.redstonesoftware.com/products/vine/viewer/index.html)
    - A VNC client for OSX
  - [MobileVNC - Server VNC Windows Mobile + Windows
    CE](http://www.smartlab.at/mobilevnc/)
  - [Windows版本UltraVNC使用](http://www.ytyzx.net/index.php/%E5%A6%82%E4%BD%95%E4%BD%BF%E7%94%A8UltraVNC)

[Category:自由軟體](https://zh.wikipedia.org/wiki/Category:自由軟體 "wikilink")
[Category:远程管理软件](https://zh.wikipedia.org/wiki/Category:远程管理软件 "wikilink")