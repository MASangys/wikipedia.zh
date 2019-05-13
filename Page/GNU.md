**GNU**是一個[自由的](https://zh.wikipedia.org/wiki/自由軟體 "wikilink")[作業系統](https://zh.wikipedia.org/wiki/作業系統 "wikilink")，其內容軟體完全以[GPL方式釋出](https://zh.wikipedia.org/wiki/GPL "wikilink")。這個作業系統是[GNU計劃的主要目標](../Page/GNU計劃.md "wikilink")，名稱來自的[遞迴縮寫](https://zh.wikipedia.org/wiki/遞迴縮寫 "wikilink")，因為GNU的設計類似[Unix](../Page/Unix.md "wikilink")，但它不包含具著作權的Unix代碼。GNU的創始人，[理察·馬修·斯托曼](https://zh.wikipedia.org/wiki/理察·馬修·斯托曼 "wikilink")，將GNU視為「達成社會目的技術方法」。

作為作業系統，GNU的發展仍未完成，其中最大的問題是具有完備功能的內核尚未被開發成功。GNU的內核，稱為[Hurd](../Page/GNU_Hurd.md "wikilink")，是[自由軟體基金會發展的重點](https://zh.wikipedia.org/wiki/自由軟體基金會 "wikilink")，但是其發展尚未成熟。在實際使用上，多半使用[Linux內核](https://zh.wikipedia.org/wiki/Linux內核 "wikilink")、[FreeBSD等替代方案](../Page/FreeBSD.md "wikilink")，作為系統核心，其中主要的操作系统是Linux的發行版。[Linux作業系統包涵了](../Page/Linux.md "wikilink")[Linux內核與其他自由軟體計畫中的GNU組件和軟體](https://zh.wikipedia.org/wiki/Linux內核 "wikilink")，可以被稱為[GNU/Linux](https://zh.wikipedia.org/wiki/GNU/Linux "wikilink")（見[GNU/Linux命名爭議](https://zh.wikipedia.org/wiki/GNU/Linux命名爭議 "wikilink")）。

## 歷史

[Richard_Stallman_-_Fête_de_l'Humanité_2014_-_010.jpg](https://zh.wikipedia.org/wiki/File:Richard_Stallman_-_Fête_de_l'Humanité_2014_-_010.jpg "fig:Richard_Stallman_-_Fête_de_l'Humanité_2014_-_010.jpg"),
GNU計劃的建立者\]\]

GNU操作系统起源於[GNU計劃](../Page/GNU計劃.md "wikilink")，由[理查·斯托曼在](https://zh.wikipedia.org/wiki/理查·斯托曼 "wikilink")[麻省理工學院人工智能實驗室發起](https://zh.wikipedia.org/wiki/麻省理工學院 "wikilink")，希望發展出一套完整的開放原始碼作業系統來取代Unix，計劃中的作業系統，名為GNU。1983年9月27日，[理查·斯托曼在](https://zh.wikipedia.org/wiki/理查·斯托曼 "wikilink")
net.unix-wizards 和
net.usoft[新聞群組中公布這項計劃](https://zh.wikipedia.org/wiki/新聞群組 "wikilink")。
\[1\]\[2\]。理查德·斯托曼通過使用變化單詞的各種手法來選擇名稱，包括曲目**。\[3\]

斯托曼的目標是成立一個完全自由的操作系统，他希望電腦用戶是能夠“自由使用”的。因為在20世紀60年代和70年代 -
大多數人都能自由學習軟件的源代碼，自由地與他人分享的軟件，可自由修改軟件的行為，自由發布的軟件的修改後的版本。這種理念，在1985年3月出版的[GNU宣言嶄露無遺](../Page/GNU宣言.md "wikilink")。\[4\]

1984年1月5日，正式開始開發軟體，為了防止這些軟體將來可能被主張所有權，影響到自由軟體的發展，斯托曼辭去了在實驗室的工作。\[5\]。理查·斯托曼使用
(ITS)\[6\]（一種早期的作業系統，使用[彙編語言撰寫](https://zh.wikipedia.org/wiki/彙編語言 "wikilink")，因其所運行的稱爲
[PDP-10的電腦系統架構停止發展而變得過時](https://zh.wikipedia.org/wiki/PDP-10 "wikilink")）的經驗，導致了需要一种可移植系統的决定。\[7\]\[8\]因此，會議決定，將開發新的系統，並使用
[C](https://zh.wikipedia.org/wiki/C语言 "wikilink")
和[Lisp作為系統編程語言](../Page/Lisp.md "wikilink")。\[9\]
且GNU將與UNIX兼容。\[10\]
當時，UNIX已經是一個流行的專有操作系统。而Unix的設計是模塊化的，所以它可以被逐步分塊的實現。\[11\]

1984年，開始發展編輯器Emacs等軟體。1985年，發表[GNU宣言](../Page/GNU宣言.md "wikilink")。1989年，發表[GNU通用公共授權條款](https://zh.wikipedia.org/wiki/GNU_General_Public_License "wikilink")。GNU計劃中的其他部份，如編輯器、編譯器、shell等都已經完成，獨缺作業系統核心。1990年，自由軟體基金會開始正式發展[Hurd](https://zh.wikipedia.org/wiki/Hurd "wikilink")，作為GNU計畫中的作業系統。根據[湯瑪斯·布什內爾的回憶](https://zh.wikipedia.org/wiki/湯瑪斯·布什內爾 "wikilink")，最早自由軟體基金會使用Trix來開發作業系統，但在1986年放棄這個計畫。在此後，他們原希望以輕量化後的4.4BSD為基礎進行開發。1987年，[理查德·斯托曼決定以](../Page/理查德·斯托曼.md "wikilink")[GNU
Mach](../Page/GNU_Mach.md "wikilink")[微内核进行开发](https://zh.wikipedia.org/wiki/微内核 "wikilink")，認為可以借此加速作業系統的開發，但因為一直不確定[卡内基梅隆大学何時要將核心原始碼釋出](https://zh.wikipedia.org/wiki/卡内基梅隆大学 "wikilink")，造成計劃延宕三年。他在之後承認這是個錯誤。

許多必要的軟體需要從零寫起，但已存在的第三方組件，如 [TeX](../Page/TeX.md "wikilink")、[X Window
System](https://zh.wikipedia.org/wiki/X_Window_System "wikilink")\[12\]和[Mach微內核等等組成了](../Page/Mach.md "wikilink")
[GNU Hurd](../Page/GNU_Hurd.md "wikilink") 的核心.\[13\]
除了上述的第三方組件外，大多數的GNU軟體是由許多志願者，在他們的空閒時間，或由公司、\[14\]
教育機構和非營利性組織贊助下撰寫。1985年10月，理查·斯托曼建立[自由軟體基金會](https://zh.wikipedia.org/wiki/自由軟體基金會 "wikilink")
(FSF)。在1980到1990年代，他們雇用軟體發展工程師去轉寫GNU必須的軟體。\[15\]\[16\]

1991年，Linux出現。1993年，[FreeBSD釋出](../Page/FreeBSD.md "wikilink")。所有GNU計劃中，運行於使用者空間的軟體，都可以在Linux或FreeBSD上使用。許多開發者轉向於Linux或FreeBSD。其中，Linux成為常見的GNU計劃軟體運行平台。[理查德·斯托曼主張](../Page/理查德·斯托曼.md "wikilink")，Linux作業系統使用了許多GNU計劃軟體，應正名為[GNU/Linux](https://zh.wikipedia.org/wiki/GNU/Linux "wikilink")，但沒有得到Linux社群的一致認同，形成[GNU/Linux命名爭議](https://zh.wikipedia.org/wiki/GNU/Linux命名爭議 "wikilink")。

由於GNU頗具知名度，有興趣的商家開始促進發展或出售GNU軟件和技術支持。其中最突出的和成功的，是[Cygnus
Solutions](https://zh.wikipedia.org/wiki/Cygnus_Solutions "wikilink")，\[17\]現在[紅帽公司的一部分](../Page/紅帽公司.md "wikilink")。

## 組成

該系統的基本組成包括GNU編譯器套裝（[GCC](../Page/GCC.md "wikilink")）、GNU的C函式庫（[glibc](https://zh.wikipedia.org/wiki/glibc "wikilink")）、以及GNU核心工具組（[coreutils](https://zh.wikipedia.org/wiki/coreutils "wikilink")）\[18\]，另外也是GNU除錯器（[GDB](https://zh.wikipedia.org/wiki/GDB "wikilink")）、GNU二進制實用程序（[binutils](https://zh.wikipedia.org/wiki/binutils "wikilink")）\[19\]的[GNU
Cash](https://zh.wikipedia.org/wiki/GNU_Cash "wikilink") shell中\[20\]
和GNOME桌面環境。\[21\] GNU開發人員已經向GNU應用程序和工具的Linux
[移植](https://zh.wikipedia.org/wiki/移植_\(軟體\) "wikilink")
，現在也廣泛應用在其它操作系统中使用，如[BSD變體的](https://zh.wikipedia.org/wiki/Berkeley_Software_Distribution "wikilink")[Solaris](../Page/Solaris.md "wikilink")，和[OS
X作出了貢獻](https://zh.wikipedia.org/wiki/OS_X "wikilink")。\[22\]

許多GNU程序已經被移植到其他操作系统，包括[專有軟體](https://zh.wikipedia.org/wiki/proprietary_software "wikilink")，如[Microsoft
Windows](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")\[23\]和OS
X.\[24\] GNU計劃已經被證明是比他們的專有Unix更為可靠。\[25\] 截至2015年11月，全國共有466
GNU軟件包（包括退役，但不包括383 ）主辦的官方GNU開發的網站。\[26\]

## GNU 變種

GNU項目的官方核心是[GNU
Hurd](../Page/GNU_Hurd.md "wikilink")；然而，截至2012年，[Linux核心正式以](https://zh.wikipedia.org/wiki/Linux核心 "wikilink")[Linux-libre為名成為GNU計畫中的一部份](https://zh.wikipedia.org/wiki/Linux-libre "wikilink")，並刪除了所有專有組件的變種。\[27\]

像FreeBSD內核其他核心依然和GNU軟件合作，形成一個工作的作業系統。\[28\]
FSF認為[Linux核心](https://zh.wikipedia.org/wiki/Linux核心 "wikilink")，與GNU工具和實用程序使用時，應承認自己為[GNU變種](../Page/GNU_variants.md "wikilink")，並促進改成
*GNU/Linux*
的這類系統名稱（導致[GNU/Linux命名爭議](https://zh.wikipedia.org/wiki/GNU/Linux命名爭議 "wikilink")）
。\[29\]\[30\]\[31\]
GNU工程已認可的Linux發行版，如[gNewSense](../Page/gNewSense.md "wikilink")
，
[TRISQUEL和](https://zh.wikipedia.org/wiki/Trisquel "wikilink")[Parabola
GNU/Linux-libre](https://zh.wikipedia.org/wiki/Parabola_GNU/Linux-libre "wikilink")。\[32\]
不使用Hurd作為核心的GNU的其他變種包括的Debian GNU / kFreeBSD和Debian GNU /
NetBSD的，將得以對BSD的核心實現GNU的早期計劃。

<File:GNewSense>
screenshot.png|[gNewSense](../Page/gNewSense.md "wikilink"), an example
of an [FSF approved
distribution](https://zh.wikipedia.org/wiki/List_of_GNU/Linux_distributions_endorsed_by_the_Free_Software_Foundation "wikilink")
<File:Parabola12.png>|[Parabola
GNU/Linux-libre](https://zh.wikipedia.org/wiki/Parabola_GNU/Linux-libre "wikilink"),
an example of an FSF approved distribution that uses a [rolling
release](https://zh.wikipedia.org/wiki/rolling_release "wikilink") model
|[Trisquel](https://zh.wikipedia.org/wiki/Trisquel "wikilink"), FSF
endorsed Linux distribution ([GNU
screenshot](https://www.gnu.org/distros/screenshot.html))

## 商標

[File:Gnu-30-banner-without-background.svg|GNU](File:Gnu-30-banner-without-background.svg%7CGNU)
30周年紀念商標
[File:Gnu-color-reiss-head.jpg|上色版本](File:Gnu-color-reiss-head.jpg%7C上色版本)
<File:Heckert> GNU white.svg|粗體版本

GNU的商標是GNU頭。
原先版本是Etienne Suvasa所設計，而今比較流行的粗體版本則是Aurelio Heckert所設計。 \[33\]
GNU商標出現在GNU的電子文件中，也是[自由軟體基金會的元素](https://zh.wikipedia.org/wiki/自由軟體基金會 "wikilink")。

30周年商標是原商標的修正版本，是由[自由軟體基金會創作](https://zh.wikipedia.org/wiki/自由軟體基金會 "wikilink")，其目的為慶祝30周年。

## 参考文献

## 外部連結

  -
## 参见

  - [創用CC](https://zh.wikipedia.org/wiki/創用CC "wikilink")
  - [自由软件运动](../Page/自由软件运动.md "wikilink")
  - [自由软件历史](https://zh.wikipedia.org/wiki/自由软件历史 "wikilink")
  - [GNU软件包列表](https://zh.wikipedia.org/wiki/GNU软件包列表 "wikilink")

{{-}}

[Category:GNU](https://zh.wikipedia.org/wiki/Category:GNU "wikilink")
[Category:作業系統](https://zh.wikipedia.org/wiki/Category:作業系統 "wikilink")
[Category:GNU计划软件](https://zh.wikipedia.org/wiki/Category:GNU计划软件 "wikilink")
[Category:自由作業系統](https://zh.wikipedia.org/wiki/Category:自由作業系統 "wikilink")

1.

2.

3.

4.
5.

6.
7.
8.

9.

10.

11.
12.
13.

14.

15.

16.

17.
18.

19.

20.

21.

22.

23.

24.

25. [Fuzz Revisited: A Re-examination of the Reliability of UNIX
    Utilities and
    Services](http://ftp.cs.wisc.edu/pub/paradyn/technical_papers/fuzz-revisited.ps)
    - October 1995 - Computer Sciences Department,University of
    Wisconsin

26.

27.

28.

29.

30.

31.

32. .

33.