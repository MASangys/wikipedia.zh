**SuperH**（或稱**SH**）是可靠[單片機與](../Page/單片機.md "wikilink")[微處理器架構的品牌名稱](../Page/微處理器.md "wikilink")。SuperH
是以 32
位元存取的[精簡指令集架構](../Page/精簡指令集.md "wikilink")，多用在[嵌入式系統](../Page/嵌入式系統.md "wikilink")。

## 历史

SuperH
處理器核心家族在九零年代早期由[日立開始開發](../Page/日立.md "wikilink")。許多[單片機與](../Page/單片機.md "wikilink")[微處理器都在這個架構下](../Page/微處理器.md "wikilink")。其中最有名可能是
[惠普](../Page/惠普公司.md "wikilink") Jornada
[PDA](../Page/PDA.md "wikilink") 用的 SH7709。

日立開發能完全向下相容的 [CPU](../Page/CPU.md "wikilink")
核心[指令集](../Page/指令集.md "wikilink")。起初，SH-1 與 SH-2 用在
[Sega Saturn](../Page/Sega_Saturn.md "wikilink") 及 Sega
32X，後來也用在許多[嵌入式系統的微處理器上](../Page/嵌入式系統.md "wikilink")。它是
16 位元[指令集](../Page/指令集.md "wikilink")，暫存器長度與資料通道是 32 位元，故讓指令極密實。當時記憶體很貴。

數年後，SH-3 核心加入這個家族，並帶來其它的中斷概念、記憶體管理單元 (MMU) 與可修改的快取概念。SH-3 核心並加入延伸 DSP，稱
SH-3-DSP 核心。延展資料通道讓 [DSP](../Page/DSP.md "wikilink") 更有效率，特別緩衝器與
MAC-type DSP 引擎，核心統一數位訊號處理器與精簡指令集處理器。衍生而來的 SH-2 核心，稱為 SH-DSP。

為了 [Sega](../Page/Sega.md "wikilink")
[Dreamcast](../Page/Dreamcast.md "wikilink")，[日立發展了](../Page/日立.md "wikilink")
SH-4
架構。這是從原核心的極大延伸。[超純量](../Page/超純量.md "wikilink")（2路）指令執行與平行向量浮點運算器是這架構的重點。這顆
[CPU](../Page/CPU.md "wikilink") 核心並用在許多高效需求的嵌入式程式。大致而言 SH-4 基礎架構晶片在
1998年左右。

不久後，[日立與](../Page/日立.md "wikilink")[意法半导体成立了持有專利的](../Page/意法半导体.md "wikilink")
SuperH 公司，提供 SH-4 核心給其它公司並開發 SH-5 架構。首度將 SuperH 推向 64 位元領域。SuperH 公司賣這些
CPU 核心的相關專利。

SH-5 設計上加入了稱之為 SHmedia
的[单指令流多数据流指令集](../Page/单指令流多数据流.md "wikilink")，亦加入相當於在
SH-4 user-mode 部份的 SHcompact 指令集。實作與 [ARM](../Page/ARM.md "wikilink")
相容的 Thumb 指令集。

之後，SuperH 架構的進化仍持續進行。最後的演進發生在 2003年 ，SH2 至 SH-4 統一成超純量的 SH-X
核心，有點類似之前架構的超集合。

目前，SuperH [CPU](../Page/CPU.md "wikilink")
是由[日立與](../Page/日立.md "wikilink")[三菱電機半導體事業部合併的](../Page/三菱電機.md "wikilink")[瑞萨科技繼續發展架構與產品](../Page/瑞萨科技.md "wikilink")。

## 版本

SuperH 家族包括：
[HD6417095_01.jpg](https://zh.wikipedia.org/wiki/File:HD6417095_01.jpg "fig:HD6417095_01.jpg")
[SH7091_01.jpg](https://zh.wikipedia.org/wiki/File:SH7091_01.jpg "fig:SH7091_01.jpg")

  - SH-1 -
    用於需用[微處理器的嵌入裝置](../Page/微處理器.md "wikilink")（[CD-ROM裝置](../Page/CD-ROM.md "wikilink")、[家用電器等等](../Page/家用電器.md "wikilink")）
  - SH-2 -
    用在需高效能的[微處理器裝置](../Page/微處理器.md "wikilink")，亦用在自動控制諸如[引擎控制單元或網路設備](../Page/引擎控制單元.md "wikilink")。
  - SH-DSP - 初期為了[行動電話市場開發](../Page/行動電話.md "wikilink")，之後用在許多需
    [DSP](../Page/DSP.md "wikilink") 效能的客制化裝置，如
    [JPEG](../Page/JPEG.md "wikilink") 壓縮等等。
  - SH-3 - 使用在手持裝置等使用 [Windows CE](../Page/Windows_CE.md "wikilink")
    的設備，並用於車用導航市場。
  - SH-3-DSP -
    主要使用於多媒體終端機與網路設備，亦用於[印表機或](../Page/印表機.md "wikilink")[傳真機](../Page/傳真機.md "wikilink")。
  - SH-4 -
    使用在非高效能不行的裝置如多媒體終端機、[電視遊樂器或](../Page/電視遊樂器.md "wikilink")[機頂盒](../Page/機頂盒.md "wikilink")。
  - SH-5 - 使用在高階多媒體裝置。
  - SH-X - 主流用於不同的引擎控制器（有／無 DSP 及 FPU 單元）、車用多媒體裝置、機頂盒或行動電話。

SuperH 並支援 [RTOS](../Page/实时操作系统.md "wikilink")，相關工具廠商佈於全球。

## 外部連結

  - [產品，核心，工具，手冊，資訊](http://www.renesas.com/)
  - [RTEMS](../Page/RTEMS.md "wikilink") 即時作業系統

SuperH 上的 [Linux](../Page/Linux.md "wikilink")

  - <https://web.archive.org/web/20061127083524/http://www.kpitgnutools.com/>,
    Official free SH GNU Toolchain with Support
  - <http://www.linux-sh.org/>, <http://linuxsh.sourceforge.net/>
  - <https://web.archive.org/web/20001109204200/http://www.sh-linux.org/>
    gcc toolchain
  - <https://web.archive.org/web/20060910072943/http://www.shlinux.com/>
    MPC Data SHLinux support

SuperH 的 [Linux套件列表](../Page/Linux套件列表.md "wikilink")

  - [Jlime](../Page/Jlime.md "wikilink") (Jornada Linux Mobility
    Edition) 是[惠普](../Page/惠普公司.md "wikilink") Jornada
    620LX/660LX/680/690 手持裝置的套件；JLime 可能是 SuperH 最大的套件。
  - [Gentoo Linux](../Page/Gentoo_Linux.md "wikilink")
  - [STLinux](http://www.STLinux.com/)

SuperH 上的 NetBSD

  - <http://www.netbsd.org/Ports/sh3/>
  - <https://web.archive.org/web/20060907145203/http://www.netbsd.org/Ports/sh5/>

[Category:微處理器](https://zh.wikipedia.org/wiki/Category:微處理器 "wikilink")
[Category:日立製作所](https://zh.wikipedia.org/wiki/Category:日立製作所 "wikilink")
[Category:日本發明](https://zh.wikipedia.org/wiki/Category:日本發明 "wikilink")