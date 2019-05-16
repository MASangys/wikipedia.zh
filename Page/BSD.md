**伯克利軟件套件**（，縮寫為BSD），也被稱為**伯克利Unix**（{{ lang|en|Berkeley
Unix}}），是一個衍生自[Unix](https://zh.wikipedia.org/wiki/Unix "wikilink")（[類Unix](https://zh.wikipedia.org/wiki/類Unix "wikilink")）的[操作系统](../Page/操作系统.md "wikilink")，1970年代由[伯克利加州大學的學生](https://zh.wikipedia.org/wiki/伯克利加州大學 "wikilink")[比爾·喬伊](https://zh.wikipedia.org/wiki/比爾·喬伊 "wikilink")（Bill
Joy）開創，也被用來代表其衍生出的各種套件。

[BSD许可证非常地寬鬆](../Page/BSD许可证.md "wikilink")，因此BSD常被當作[工作站級別的Unix系統](../Page/工作站.md "wikilink")，許多1980年代成立的計算機公司都從BSD中獲益，比較著名的例子如[DEC的](https://zh.wikipedia.org/wiki/DEC "wikilink")[Ultrix](https://zh.wikipedia.org/wiki/Ultrix "wikilink")，以及[Sun公司的](https://zh.wikipedia.org/wiki/昇陽 "wikilink")[SunOS](../Page/SunOS.md "wikilink")。
1990年代，BSD很大程度上被[System
V](https://zh.wikipedia.org/wiki/System_V "wikilink")
4.x版以及[OSF/1系統所取代](https://zh.wikipedia.org/wiki/OSF/1 "wikilink")，但其[開源版本被採用](https://zh.wikipedia.org/wiki/開源 "wikilink")，促進了因特网的開發。

[Unix_history-simple.png](https://zh.wikipedia.org/wiki/File:Unix_history-simple.png "fig:Unix_history-simple.png")

## 歷史

### PDP-11開始

最初的Unix套件源自1970年代的[貝爾實驗室](https://zh.wikipedia.org/wiki/貝爾實驗室 "wikilink")，操作系统中包含[源碼](https://zh.wikipedia.org/wiki/源碼 "wikilink")，這樣研究人員以及大學都可以參與修改擴充。1974年，第一個伯克利的Unix系統被安裝在[PDP-11機器上](../Page/PDP-11.md "wikilink")，[計算機科學係而後將其用作擴展研究](https://zh.wikipedia.org/wiki/計算機科學 "wikilink")。

其他大學開始對伯克利的軟件感興趣，在1977年，伯克利的研究生比爾·喬伊將程序整理到磁帶上，作為First Berkeley Software
Distribution（**1BSD**）發行。
1BSD被作為第六版Unix系列，而不是單獨的操作系统。主要程序包括[Pascal](https://zh.wikipedia.org/wiki/Pascal "wikilink")[編譯器](../Page/編譯器.md "wikilink")，以及比爾·喬伊的[ex](https://zh.wikipedia.org/wiki/Ex_\(文本編輯器\) "wikilink")[行編輯器](https://zh.wikipedia.org/wiki/行編輯器 "wikilink")。

Second Berkeley Software
Distribution（**2BSD**）於1978年發布，除了對1BSD中的軟件進行升級，還包括了比爾·喬伊寫的兩個新程序：[vi文本編輯器](https://zh.wikipedia.org/wiki/vi "wikilink")（[ex的](https://zh.wikipedia.org/wiki/Ex_\(文本編輯器\) "wikilink")[可視版本](https://zh.wikipedia.org/wiki/可視編輯器 "wikilink")），以及[C
Shell](../Page/C_Shell.md "wikilink")。這兩個新添的程序，在Unix系統中至今仍被使用。

2BSD以後的版本逐漸從[PDP-11結構向](../Page/PDP-11.md "wikilink")[VAX計算機移植](../Page/VAX.md "wikilink")。最新的**2.11BSD**於1992年發布，更新維護一直持續到2003年。

### VAX版本

1978年，伯克利安裝了第一台VAX計算機，但將Unix移植到VAX構架的[UNIX/32V](https://zh.wikipedia.org/wiki/UNIX/32V "wikilink")，並沒有利用VAX[虛擬內存的能力](https://zh.wikipedia.org/wiki/虛擬內存 "wikilink")。伯克利的學生重寫了32V的大部分[內核](https://zh.wikipedia.org/wiki/內核 "wikilink")，以實現虛擬內存的支持。1979年，**3BSD**誕生了，這個新系統完整包括了一個新內核、從2BSD移植到VAX的工具，還有32V原來的工具。

3BSD的成功使得美國[國防高等研究計劃署](../Page/國防高等研究計劃署.md "wikilink")（DARPA）決定資助伯克利的[计算机系统研究小组](https://zh.wikipedia.org/wiki/计算机系统研究小组 "wikilink")（CSRG），以開發一個Unix標準平台，供DARPA未來研究。1980年10月，該小组發布了**4BSD**，此版本對3BSD有許多改進。

相較於VAX機器的主流系統[VMS](https://zh.wikipedia.org/wiki/VMS "wikilink")，用戶對BSD時有批評。1981年6月，**4.1BSD**發布，比爾·喬伊大幅度提高了該版本內核的性能，使之在多個平台上與VMS相媲美。為了避免與[AT\&T的](../Page/AT&T.md "wikilink")[UNIX
System V](../Page/UNIX_System_V.md "wikilink")（UNIX第五版）混淆，這個版本沒有取名為5BSD。

**4.2BSD**歷經兩年後才得以問世，實現了多項重大改進。之前有三個中間版本相繼推出：4.1a引入了[BBN科技預試中的](../Page/BBN科技.md "wikilink")[TCP/IP协议栈的修改版](https://zh.wikipedia.org/wiki/TCP/IP "wikilink")；4.1b引入了由實現的新型文件系统（[Berkeley
Fast File
System](https://zh.wikipedia.org/wiki/Berkeley_Fast_File_System "wikilink")，FFS）；4.1c是4.2BSD開發最後幾個月的過渡版。

1983年8月，**4.2BSD**正式發布。這是1982年比爾·喬伊離開小组、前去創建[Sun公司後的第一個版本](https://zh.wikipedia.org/wiki/昇陽 "wikilink")，自那时起馬紹爾·克爾克·麥庫錫克和和一直負責領導該項目。值得一提的是，這次[BSD小惡魔正式出場](../Page/BSD小惡魔.md "wikilink")，最初是馬紹爾·克爾克·麥庫錫克的畫作，出現在打印好的文檔封面上，由[USENIX發行](../Page/USENIX.md "wikilink")。

### BSD版本

1986年6月，**4.3BSD**發布。該版本主要是將4.2BSD的許多新貢獻作性能上的提高，原來的4.1BSD沒有很好地協調。在該版本之前，BSD的TCP/IP實現已經跟BBN的官方實現有較大差異。經過數月測試後，DARPA認為4.2BSD更合適，所以在4.3BSD中作了保留。
（參見[互聯網歷史](https://zh.wikipedia.org/wiki/互聯網歷史 "wikilink")）

4.3BSD後，BSD逐漸拋開老式的VAX平台。 Computer Consoles有限公司開發的[Power
6/32平台](https://zh.wikipedia.org/wiki/Power_6/32 "wikilink")（代號為"Tahoe"），當時看來大有可為，但不久即被他們的開發員所遺棄。然後，1988年6月移植的**4.3BSD-Tahoe**卻表現不俗，BSD將依賴於機器跟不依賴於機器的代碼分離，為未來系統的可移植性打下了良好的基礎。

到此為止，所有的BSD版本都混合了專屬的AT\&T
UNIX代碼，這樣繼續使用就需要從[AT\&T獲得許可證](../Page/AT&T.md "wikilink")。源碼許可證當時非常地昂貴，幾個其他組織對單獨的網絡代碼版感興趣，完全獨立於AT\&T，這樣就可不受許可證的支配。
1989年6月，**Networking Release
1**（**Net/1**）誕生了，沒有AT\&T授權也能使用，可遵照[BSD許可證進行](https://zh.wikipedia.org/wiki/BSD許可證 "wikilink")[自由再發布](https://zh.wikipedia.org/wiki/自由軟件 "wikilink")。

1990年初，推出了**4.3BSD-Reno**。該版本是4.4BSD早期開發的過渡版，使用該版本被戲稱為是一種賭博，因為Reno就是[內華達州的賭城](https://zh.wikipedia.org/wiki/內華達州 "wikilink")[雷諾](https://zh.wikipedia.org/wiki/雷諾 "wikilink")。

### Net/2以及法律問題

Net/1以後，提議，BSD系統中應該有更多的非AT\&T部分，以Net/1的協議發布。隨後，他開始一個項目，著手重新實現一些Unix標準工具，其中不使用原來的AT\&T代碼。例如，[Vi](../Page/Vi.md "wikilink")，也就是基於最初Unix上的編輯器，被重寫為[nvi](https://zh.wikipedia.org/wiki/nvi "wikilink")（new
vi）。
18個月後，所有AT\&T的工具被替換，剩下的只是存留在內核的一些AT\&T文件。殘余文件被剔除後，1991年6月，**Net/2**誕生了，這是一個全新的操作系统，並且可以自由發布。

Net/2成為[Intel
80386構架上兩種移植版的主要組成部分](../Page/Intel_80386.md "wikilink")，包括由負責，自由的；以及[專屬的](https://zh.wikipedia.org/wiki/專屬軟件 "wikilink")[BSD/OS](https://zh.wikipedia.org/wiki/BSD/OS "wikilink")，由（BSDi）負責。386BSD本身雖然短命，但在不久之後成為了[NetBSD和](../Page/NetBSD.md "wikilink")[FreeBSD原始代碼的基礎](../Page/FreeBSD.md "wikilink")。

BSDi很快就與AT\&T的[Unix系统实验室](https://zh.wikipedia.org/wiki/Unix系统实验室 "wikilink")（Unix
System Laboratories，USL）附屬公司產生了法律糾紛，後者將擁有System V版權，以及Unix商標。
1992年，USL正式對BSDi提起訴訟，這導致Net/2發布被中止，直到其源碼能夠被鑑定為符合USL的版權。

由於最後判決懸而未決，這樁法律訴訟將BSD後裔，特別是[自由軟件後裔的開發](https://zh.wikipedia.org/wiki/自由軟件 "wikilink")，延遲了兩年，這導致沒有法律問題的[Linux內核獲得了極大的支持](https://zh.wikipedia.org/wiki/Linux內核 "wikilink")。Linux跟386BSD的開發幾乎同時起步，其作者[林納斯·托瓦茲曾說](https://zh.wikipedia.org/wiki/林納斯·托瓦茲 "wikilink")，當時如果有基於[80386平台的自由](https://zh.wikipedia.org/wiki/80386 "wikilink")[类Unix操作系统](https://zh.wikipedia.org/wiki/类Unix "wikilink")，他就可能不會創造Linux。儘管無法預料這給以後的軟件業究竟造成了什麼樣的影響，但有一點可以肯定，Linux更加豐富了這塊土壤。

### 4.4BSD及其後裔

這樁訴訟在1994年1月了結，更多地滿足了伯克利的利益。伯克利套件的18,000個文件中，只有3個文件被要求刪除，另有70個文件被要求修改，並顯示USL的版權說明。這項調解另外要求，USL不得對下面的4.4BSD提起訴訟，不管是用戶還是伯克利代碼的分發者。

1994年6月，**4.4BSD**以兩種形式發布：可自由再發布的**4.4BSD-Lite**，不包含AT\&T源碼；另有**4.4BSD-Encumbered**，跟以前的版本一樣，遵照AT\&T的許可證。

伯克利的最終版本是1995年的**4.4BSD-Lite Release
2**，而後[CSRG解散](https://zh.wikipedia.org/wiki/CSRG "wikilink")，在伯克利的BSD開發告一段落。在這之後，幾種基於4.4BSD的套件（比如[FreeBSD](../Page/FreeBSD.md "wikilink")、[OpenBSD和](../Page/OpenBSD.md "wikilink")[NetBSD](../Page/NetBSD.md "wikilink")）得以繼續維護。

另外，由於[BSD許可證的寬容](https://zh.wikipedia.org/wiki/BSD許可證 "wikilink")，許多其他的操作系统，不管是自由還是專屬，都採用了BSD的代碼。例如，[Microsoft
Windows在](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")[TCP/IP的實現上引入了BSD代碼](https://zh.wikipedia.org/wiki/TCP/IP "wikilink")；經過重新編譯，在當前Windows版本中，還採用了許多BSD命令行下的網絡工具。

## 技術

BSD率先包含了支持[互聯網協議棧](https://zh.wikipedia.org/wiki/互聯網協議 "wikilink")（Stack）、伯克利[套接字](https://zh.wikipedia.org/wiki/套接字 "wikilink")（sockets）的函数库。通過將套接字與Unix操作系统的[文件描述符相整合](../Page/文件描述符.md "wikilink")，庫用戶通過[計算機網絡讀寫數據](https://zh.wikipedia.org/wiki/計算機網絡 "wikilink")，跟直接在磁盤上操作一樣容易。AT\&T最後也發布了他們的STREAMS庫，在軟件棧中引入類似的功能，雖然結構層有所改進，但此时套接字庫已經廣泛使用。由於STREAMS少了對開放套接字的輪詢功能（類似於伯克利庫中的[select調用](https://zh.wikipedia.org/wiki/select_\(Unix\) "wikilink")），使得將軟件移植到這個新的API很困難。

時至今日，BSD仍在學術機構，乃至許多商業或自由產品的高科技實驗中，繼續被用作試驗平台，甚至在嵌入式設備中，其使用也在增長。由於BSD設計出眾，代碼編寫清晰，包括它的文檔（特別是參考文檔，常被稱為“man
pages”），使得這樣的系統，幾乎成為程序員眼中的樂土。

許多公司都使用BSD衍生出的代碼，如此便可以支持他們的[知識產權](https://zh.wikipedia.org/wiki/知識產權 "wikilink")。許多[自由軟件](https://zh.wikipedia.org/wiki/自由軟件 "wikilink")，如[Linux](../Page/Linux.md "wikilink")、[GNU工程都遵照](../Page/GNU.md "wikilink")[GNU
GPL协议](https://zh.wikipedia.org/wiki/GNU_GPL "wikilink")，與之相比，BSD許可協議要更加靈活。當然，這也導致人們的機器上運行著一些BSD軟件，但自己卻並不知情。有興趣的話，可以試著找找符號“University
of California,
Berkeley”，比如在產品文檔內，二進制代碼中的靜態數據段，或者[ROM中](https://zh.wikipedia.org/wiki/ROM "wikilink")，還有通過一些產品的用戶界面看看“about”（關於）內容。

有意思的是，通過一個二進制[兼容層](https://zh.wikipedia.org/wiki/兼容層 "wikilink")（compatibility
layer），在BSD操作系统上，可以運行相同構架下其他操作系统上的原程序。這比[模擬器要快得多](https://zh.wikipedia.org/wiki/模擬器 "wikilink")，通過這個方法，針對[Linux的應用程序](../Page/Linux.md "wikilink")，也可以在BSD上全速運行。所以，BSD不僅適合作為[服務器](https://zh.wikipedia.org/wiki/服務器 "wikilink")，也可作為工作站來使用，眾所周知，現在針對[Linux的商業或封閉源碼軟件越來越多](../Page/Linux.md "wikilink")。管理員也可以將一些原本只用於商業Unix變種的專屬軟件，轉移到BSD，這樣在保持原有功能的同時，操作系统更趨現代，可繼續使用這些軟件，直到有更好的替代。

結末，當前的BSD操作系统變種支持各種通用標準，包括[IEEE](https://zh.wikipedia.org/wiki/IEEE "wikilink")、[ANSI](https://zh.wikipedia.org/wiki/ANSI "wikilink")、[ISO以及](https://zh.wikipedia.org/wiki/ISO "wikilink")[POSIX](https://zh.wikipedia.org/wiki/POSIX "wikilink")，同時保持傳統BSD的良好風範。

## BSD家族

當前衍生自BSD的[類Unix操作系统可應用於多種硬件構架](https://zh.wikipedia.org/wiki/Unix-like "wikilink")。

  - BSD/OS（已倒閉）
  - [FreeBSD](../Page/FreeBSD.md "wikilink")
      - [Debian
        GNU/kFreeBSD](https://zh.wikipedia.org/wiki/Debian_GNU/kFreeBSD "wikilink")
      - [DragonFly BSD](../Page/DragonFly_BSD.md "wikilink")，一個由FreeBSD
        4-STABLE分支出來的項目
          - FireflyBSD
      - [DesktopBSD](https://zh.wikipedia.org/wiki/DesktopBSD "wikilink")
      - [TrueOS](../Page/TrueOS.md "wikilink")
          - [GhostBSD](https://zh.wikipedia.org/wiki/GhostBSD "wikilink")
      - PicoBSD，為在單張1.44MB[软盘執行而設計的FreeBSD精簡版本](../Page/软盘.md "wikilink")
      - [TrustedBSD](https://zh.wikipedia.org/wiki/TrustedBSD "wikilink")，非操作系统，而是為FreeBSD和[Darwin構件擴展的一個項目](https://zh.wikipedia.org/wiki/Darwin "wikilink")
      - ClosedBSD
      - [pfSense](http://www.pfsense.com/)
      - [FreeNAS](../Page/FreeNAS.md "wikilink")，一個基於FreeBSD的輕量級[NAS](../Page/網路附加儲存.md "wikilink")[伺服器](https://zh.wikipedia.org/wiki/伺服器 "wikilink")
      - [FreeSBIE項目](https://zh.wikipedia.org/wiki/FreeSBIE "wikilink")，提供FreeBSD各個發行版本的[Live
        CD](../Page/Live_CD.md "wikilink")，類似於基於Linux的[Knoppix項目](https://zh.wikipedia.org/wiki/Knoppix "wikilink")
      - Frenzy LiveCD，基於FreeBSD的Live CD項目，主要針對俄語用戶
      - BSDeviant，一個FreeBSD的Live CD項目，產生可以存在一張迷你CD-R上的系統
      - [m0n0wall是一個基於FreeBSD的](https://zh.wikipedia.org/wiki/m0n0wall "wikilink")[防火牆項目](https://zh.wikipedia.org/wiki/防火牆 "wikilink")
  - [NetBSD](../Page/NetBSD.md "wikilink")
      - [Debian
        GNU/NetBSD](https://zh.wikipedia.org/wiki/Debian_GNU/NetBSD "wikilink")
      - [OpenBSD](../Page/OpenBSD.md "wikilink")
          - ekkoBSD（已倒閉）
          - MicroBSD
          - MirOS BSD
  - [HPBSD](http://www.flux.utah.edu/~mike/hpbsd/hpbsd.html)（已倒閉）
  - RedBSD：嵌入式系统镜像，使用BSD和[Ruby內核](../Page/Ruby.md "wikilink")

## 結構

跟[AT\&T
Unix一樣](https://zh.wikipedia.org/wiki/AT&T_Unix "wikilink")，**BSD**也採用[單內核](https://zh.wikipedia.org/wiki/內核 "wikilink")，這意味著[內核中的設備驅動](https://zh.wikipedia.org/wiki/內核 "wikilink")，在[核心態下運行](https://zh.wikipedia.org/wiki/核心態 "wikilink")，從而作為[操作系统的核心部分](../Page/操作系统.md "wikilink")。
**BSD**的早期版本被用作組建[Sun公司的](https://zh.wikipedia.org/wiki/昇陽 "wikilink")[SunOS](../Page/SunOS.md "wikilink")，造就了Unix
工作站的第一波熱潮。

## 注释

## 参考文献

## 外部連結

  - [BSD.org組織](http://www.BSD.org/)
  - [DragonFlyBSD官方網站](http://www.DragonFlyBSD.org)
  - [FreeBSD官方網站](http://www.FreeBSD.org)
  - [NetBSD官方網站](http://www.NetBSD.org)
  - [OpenBSD官方網站](http://www.OpenBSD.org)
  - [BSD認證小組](http://www.BSDCertification.org)
  - [BSD以及UNIX研究年譜](http://www.FreeBSD.org/cgi/cvsweb.cgi/~checkout~/src/share/misc/bsd-family-tree?rev=HEAD)
  - [UNIX和BSD的歷史（圖表描述）](http://www.Levenez.com/unix/)
  - [Google對BSD Unix的搜索專頁](http://www.google.com/search?q=oper)
  - [拉脫維亞的第一個BSD用戶組](http://www.BUG.lv)

## 延伸閱讀

  - Marshall Kirk McKusick，[《Open Sources: Voices from the Open Source
    RevolutionOpenSources》](http://www.oreilly.com/catalog/opensources/book/toc.html)（影印版）
  - 伯克利Unix二十年——從AT\&T獨有，到可自由發布 《[Twenty Years of Berkeley Unix - From
    AT\&T-Owned to Freely
    Redistributable](http://www.oreilly.com/catalog/opensources/book/kirkmck.html)》（O'Reilly
    & Associates ，2003年，ISBN 7-302-06591-8

## 參見

  - [Bill Joy](https://zh.wikipedia.org/wiki/Bill_Joy "wikilink")
  - [Marshall Kirk
    McKusick](https://zh.wikipedia.org/wiki/Marshall_Kirk_McKusick "wikilink")
  - [Keith
    Bostic](https://zh.wikipedia.org/wiki/Keith_Bostic "wikilink")
  - [386BSD](https://zh.wikipedia.org/wiki/386BSD "wikilink")
  - [bug.lv](https://zh.wikipedia.org/wiki/bug.lv "wikilink")
  - [BSD許可證](https://zh.wikipedia.org/wiki/BSD許可證 "wikilink")

{{-}}

[Category:1977年軟件](https://zh.wikipedia.org/wiki/Category:1977年軟件 "wikilink")
[Category:BSD](https://zh.wikipedia.org/wiki/Category:BSD "wikilink")
[Category:自由作業系統](https://zh.wikipedia.org/wiki/Category:自由作業系統 "wikilink")
[Category:Unix](https://zh.wikipedia.org/wiki/Category:Unix "wikilink")
[Category:已停止開發的作業系統](https://zh.wikipedia.org/wiki/Category:已停止開發的作業系統 "wikilink")