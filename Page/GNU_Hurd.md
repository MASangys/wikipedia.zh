**GNU
Hurd**是一套[作業系統](https://zh.wikipedia.org/wiki/作業系統 "wikilink")-{zh-tw:[核心](https://zh.wikipedia.org/wiki/核心 "wikilink");zh-cn:[內核](https://zh.wikipedia.org/wiki/內核 "wikilink")}-，以-{zh-tw:[微核心](https://zh.wikipedia.org/wiki/微核心 "wikilink");zh-cn:[微內核](../Page/微內核.md "wikilink")}-架構設計。Hurd是[GNU操作系统的核心部份](../Page/GNU.md "wikilink")。[GNU計畫从](https://zh.wikipedia.org/wiki/GNU計畫 "wikilink")1990年开始开发GNU
Hurd，并且将它作为一个遵循[GPL的自由软件发布](https://zh.wikipedia.org/wiki/GPL "wikilink")。Hurd的目标是从功能、安全性和稳定性上全面超越传统[Unix](https://zh.wikipedia.org/wiki/Unix "wikilink")-{zh-tw:[核心](https://zh.wikipedia.org/wiki/核心 "wikilink");zh-cn:[內核](https://zh.wikipedia.org/wiki/內核 "wikilink")}-，而同时又能保持对其的兼容性，为此Hurd遵守[POSIX标准](https://zh.wikipedia.org/wiki/POSIX "wikilink")。

「**HURD**」是一个间接[递归](../Page/递归.md "wikilink")[缩写](https://zh.wikipedia.org/wiki/缩写 "wikilink")，来自「HIRD
of [Unix](https://zh.wikipedia.org/wiki/Unix "wikilink") Replacing
Daemons」，其中「**HIRD**」表示「HURD of Interfaces Representing Depth」\[1\]。

## 歷史

1983年，[理查德·斯托曼提出](../Page/理查德·斯托曼.md "wikilink")[GNU計劃](../Page/GNU計劃.md "wikilink")，希望發展出一套完整的開放原始碼作業系統來取代Unix，计划中的作業系統，名為[GNU](../Page/GNU.md "wikilink")。根據[湯瑪斯·布什內爾的回憶](https://zh.wikipedia.org/wiki/湯瑪斯·布什內爾 "wikilink")，最早自由軟體基金會使用[TRIX來開發作業系統](https://zh.wikipedia.org/wiki/TRIX "wikilink")，但在1986年放棄這個計畫。在此後，他們原希望以輕量化後的4.4[BSD為基礎進行開發](../Page/BSD.md "wikilink")。

1987年，[理查德·斯托曼決定以](../Page/理查德·斯托曼.md "wikilink")[Mach](../Page/Mach.md "wikilink")-{zh-tw:[微核心](https://zh.wikipedia.org/wiki/微核心 "wikilink");zh-cn:[微內核](../Page/微內核.md "wikilink")}-进行开发，認為可以借此加速作業系統的開發，但因為一直不確定[卡内基梅隆大学何時要將核心原始碼釋出](https://zh.wikipedia.org/wiki/卡内基梅隆大学 "wikilink")，造成計畫三年进展缓慢。他在之後承認這是個錯誤。

1989年，GNU計畫中的其他部份，如編輯器、編譯器、[Shell等都已經完成](https://zh.wikipedia.org/wiki/Shell "wikilink")，獨缺作業系統核心。1990年，自由軟體基金會開始正式發展Hurd。

1991年，Linux内核首次发布，GNU计划中，-{zh-tw:運作;zh-cn:运行}-用户层级的应用軟體经过修改[移植后](https://zh.wikipedia.org/wiki/移植_\(软件\) "wikilink")，可以在Linux之上使用，因而很多開發者轉向Linux。Linux成為最常見的GNU系统軟體-{zh-tw:運作;zh-cn:运行}-平台。

2005年，Hurd的开发者[Neal
Walfield完成了Hurd](https://zh.wikipedia.org/wiki/Neal_Walfield "wikilink")/[L4基本的](../Page/L4微内核系列.md "wikilink")-{zh-tw:記憶體;zh-cn:内存}-管理-{zh-tw:架構;zh-cn:框架}-，[Marcus
Brinkmann移植了](https://zh.wikipedia.org/wiki/Marcus_Brinkmann "wikilink")[glibc的重要部分](https://zh.wikipedia.org/wiki/glibc "wikilink")。2006年，[Coyotos開發者嘗試將](https://zh.wikipedia.org/wiki/Coyotos "wikilink")[Coyotos核心移植到Hurd下](https://zh.wikipedia.org/wiki/Coyotos "wikilink")。

但是，Hurd开发者在2007年又放弃了L4與Coyotos，重新着手开发-{zh-tw:以Mach為基礎;zh-cn:基于Mach微内核}-的[GNU
Mach上](../Page/GNU_Mach.md "wikilink")。

## 相关

### 常见误区

Hurd经常被人误认为是一个-{zh-tw:核心;zh-cn:内核}-，事实上它只是一套-{zh-tw:微核心伺服程序;zh-cn:微内核守护进程}-，而真正的-{zh-tw:核心;zh-cn:内核}-部分则是在其下方。\[2\]而关于最底层的-{zh-tw:核心;zh-cn:内核}-，除了Mach外，Hurd开发团队还曾选择过L4。

### 與Linux的差别

如果沒有Hurd的计划，而[Linux内核已经出现的話](../Page/Linux内核.md "wikilink")，GNU可能不會有这一计划。但在Linux之前，GNU
Mach就已經被计划。GNU则希望這先進的架構能夠讓自由軟體更具有威力。

GNU的作業系統中預期的核心就是Hurd/GNU
Mach。而不是Linux，一般常見的[Linux操作系统又可稱為GNU](../Page/Linux.md "wikilink")/Linux。而GNU操作系统則是維持以Hurd和GNU
Mach作為未來的發展計畫。

### 基于GNU/Hurd的操作系统发行版

  - [Bee
    GNU/Hurd](https://zh.wikipedia.org/wiki/Bee_GNU/Hurd "wikilink")
  - [Debian
    GNU/Hurd](https://zh.wikipedia.org/wiki/Debian_GNU/Hurd "wikilink")
  - [Arch Hurd](../Page/Arch_Hurd.md "wikilink")

## 外部链接

  - [GNU Hurd](http://www.gnu.org/software/hurd/hurd.html)

  - [Arch
    Hurd](https://web.archive.org/web/20110725012919/http://www.archhurd.org/)

  - [Debian Hurd](https://www.debian.org/ports/hurd/)

## 参考资料

[Category:GNU](https://zh.wikipedia.org/wiki/Category:GNU "wikilink")
[Category:GNU計劃軟體](https://zh.wikipedia.org/wiki/Category:GNU計劃軟體 "wikilink")
[Category:LiveCD](https://zh.wikipedia.org/wiki/Category:LiveCD "wikilink")
[Category:微內核](https://zh.wikipedia.org/wiki/Category:微內核 "wikilink")

1.
2.  [Hurd是什么](http://www.gnu.org/software/hurd/hurd/what_is_the_gnu_hurd.html)