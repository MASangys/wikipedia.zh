{{ expert|subject=计算机科学 }}

**Minix**，是一個迷你版本的[類Unix作業系統](https://zh.wikipedia.org/wiki/類Unix "wikilink")，由[塔能鲍姆教授為了教學之用而創作](../Page/安德鲁·斯图尔特·塔能鲍姆.md "wikilink")，採用[微核心設計](https://zh.wikipedia.org/wiki/微核心 "wikilink")。它啟發了[Linux核心的創作](https://zh.wikipedia.org/wiki/Linux核心 "wikilink")。

它的名稱取自的縮寫。與[Xinu](https://zh.wikipedia.org/wiki/Xinu "wikilink")、[Idris](../Page/Idris.md "wikilink")、[Coherent和](https://zh.wikipedia.org/wiki/Coherent "wikilink")[Uniflex等類](https://zh.wikipedia.org/wiki/Uniflex "wikilink")[Unix作業系統類似](https://zh.wikipedia.org/wiki/Unix "wikilink")，衍生自[Version
7
Unix](https://zh.wikipedia.org/wiki/Version_7_Unix "wikilink")，但並沒有使用任何[AT\&T的程式碼](../Page/AT&T.md "wikilink")。第一版於1987年釋出，只需要購買它的磁片，就提供完整的原始碼給大學系所與學生，做為授課及學習之用。2000年4月，重新以[BSD授權條款釋出](https://zh.wikipedia.org/wiki/BSD授權條款 "wikilink")，成為[開放原始碼軟體](https://zh.wikipedia.org/wiki/開放原始碼 "wikilink")。

## 歷史與版本

### MINIX 1.0

Minix原來是[荷蘭](https://zh.wikipedia.org/wiki/荷蘭 "wikilink")[阿姆斯特丹](../Page/阿姆斯特丹.md "wikilink")[自由大学計算機科學系的](../Page/阿姆斯特丹自由大学.md "wikilink")[塔能鲍姆教授](../Page/安德鲁·斯图尔特·塔能鲍姆.md "wikilink")（Prof.
Andrew S.
Tanenbaum）所發展的一個類[Unix作業系統](https://zh.wikipedia.org/wiki/Unix "wikilink")。

因為AT\&T的政策改變，在[Version 7
Unix推出之後](https://zh.wikipedia.org/wiki/Version_7_Unix "wikilink")，發布新的使用授權條款，將UNIX原始碼私有化，在大學中不再能使用UNIX原始碼。塔能鮑姆教授為了能在課堂上教授學生作業系統運作的實務細節，決定在不使用任何AT\&T的原始碼前提下，自行開發與UNIX相容的作業系統，以避免版權上的爭議。他以小型UNIX（mini-UNIX）之意，將它稱為MINIX。

Minix以[C語言寫成](https://zh.wikipedia.org/wiki/C語言 "wikilink")，與[Version 7
Unix相容](https://zh.wikipedia.org/wiki/Version_7_Unix "wikilink")，全部的程式碼共約12,000行，並置於他的著作《作業系統：設計與實作》（*Operating
Systems: Design and Implementation*，ISBN
0-13-637331-3）的附錄裡作為範例。Minix的系統要求在當時來說非常簡單，只要三片磁片就可以起動。

Minix原始是設計給1980年代到1990年代的[IBM PC和](../Page/IBM_PC.md "wikilink")[IBM
PC/AT相容電腦上執行](https://zh.wikipedia.org/wiki/IBM_PC/AT "wikilink")，主要運作於16-bits的[Intel
8080平台](https://zh.wikipedia.org/wiki/Intel_8080 "wikilink")，以[軟碟起動](https://zh.wikipedia.org/wiki/軟碟 "wikilink")。

### MINIX 1.5

1.5版也有移植到已[Motorola
68000系列](https://zh.wikipedia.org/wiki/Motorola_68000 "wikilink")[CPU為基礎的電腦上](https://zh.wikipedia.org/wiki/CPU "wikilink")（如[Atari
ST](https://zh.wikipedia.org/wiki/Atari_ST "wikilink")，[Amiga](../Page/Amiga.md "wikilink")，和早期的[Apple
Macintosh](https://zh.wikipedia.org/wiki/Apple_Macintosh "wikilink")）和以[SPARC為基礎的機器](../Page/SPARC.md "wikilink")（如[昇陽](https://zh.wikipedia.org/wiki/昇陽 "wikilink")（Sun）公司的[工作站](../Page/工作站.md "wikilink")）。

### MINIX 2.0

1997年，隨著教科書改版，塔能鮑姆釋出[Minix
2](https://zh.wikipedia.org/wiki/Minix_2 "wikilink")，在這版中，它改成可以在[Intel
80386等](../Page/Intel_80386.md "wikilink")[x86平台上運作](https://zh.wikipedia.org/wiki/x86 "wikilink")，從[硬碟上開機](https://zh.wikipedia.org/wiki/硬碟 "wikilink")。

#### Minix-vmd

### MINIX 3

2004年，塔能鮑姆重新架構與設計了整個系統，更進一步的將程式模組化，推出[Minix
3](https://zh.wikipedia.org/wiki/Minix_3 "wikilink")。
所有2015年之后发布的[英特尔芯片都在内部运行着MINIX](../Page/英特尔.md "wikilink")
3，作为[Intel管理引擎](https://zh.wikipedia.org/wiki/Intel主动管理技术 "wikilink")(Intel
Management Engine)的组件。\[1\]

## 技術內容

全套Minix除了启動的部份以[汇编语言編寫以外](https://zh.wikipedia.org/wiki/汇编語言 "wikilink")，其他大部份都是純粹用[C語言編寫](https://zh.wikipedia.org/wiki/C語言 "wikilink")。分為：[核心](https://zh.wikipedia.org/wiki/核心 "wikilink")、[記憶體管理及](../Page/記憶體管理.md "wikilink")[文件系统三部份](https://zh.wikipedia.org/wiki/MINIX檔案系統 "wikilink")。

Minix在設計之初，為了使程式簡化，它將程式模組化，如[檔案系統與](https://zh.wikipedia.org/wiki/檔案系統 "wikilink")[記憶體管理](../Page/記憶體管理.md "wikilink")，都不是在作業系統[核心中運作](https://zh.wikipedia.org/wiki/核心 "wikilink")，而是在使用者空間運作。至Minix
3時，連IO裝置都被移到使用者空間運作。

另一個特點，則是Minix主要目的是用於教學，因此程式碼撰寫上極力重視簡潔與可讀性。

## Minix與Linux

[Linux是其作者受到Minix的影響而作成的](../Page/Linux.md "wikilink")（[林納斯·托瓦茲不喜歡他的](https://zh.wikipedia.org/wiki/林納斯·托瓦茲 "wikilink")[386電腦上的](../Page/Intel_80386.md "wikilink")[MS-DOS作業系統](../Page/MS-DOS.md "wikilink")，而安裝了Minix，並以它為样本開發了原始的[Linux核心](https://zh.wikipedia.org/wiki/Linux核心 "wikilink")）。但是这种影响更多在于非技术层面，确切地说是一种精神上的“鼓舞”。在設計上，[Linux則和Minix相差很大](../Page/Linux.md "wikilink")，在[Linux系统还没有自己的原生檔案系统之前](../Page/Linux.md "wikilink")，曾采用Minix的檔案系统。Minix在核心設計上採用[微核心](https://zh.wikipedia.org/wiki/微核心 "wikilink")，即将作業系統分成微核心和其上的提供檔案系统、記憶體管理、驱动程式等服务的服务程式；而[Linux則和原始的](../Page/Linux.md "wikilink")[Unix都採用](https://zh.wikipedia.org/wiki/Unix "wikilink")[單核心](https://zh.wikipedia.org/wiki/單核心 "wikilink")。在[Linux發展之初](../Page/Linux.md "wikilink")，雙方還于1992年在[新聞群組上有過一場精彩的爭論](https://zh.wikipedia.org/wiki/新聞群組 "wikilink")，被稱為[塔能鮑姆-林納斯辯論](https://zh.wikipedia.org/wiki/塔能鮑姆-林納斯辯論 "wikilink")。Minix的作者和支持者认为使用單核心是技术上的退步，而Linux的支持者认为Minix本身没有实用性。

## 授權方式

在授權方式上，Minix的版權宣告在早期被認為是相當自由的：塔能鮑姆教授在希望拿Minix作為一個公開的教材與出版社希望保護程式碼[著作權的平衡下](../Page/著作權.md "wikilink")，它只要求一個相當低的[授權費](https://zh.wikipedia.org/wiki/授權費 "wikilink")。但因為它並不是一個[開放原始碼的授權方案](https://zh.wikipedia.org/wiki/開放原始碼 "wikilink")，所以志願工作者在以[GPL方式散佈的](https://zh.wikipedia.org/wiki/GPL "wikilink")[Linux核心出現後就多轉向](../Page/Linux.md "wikilink")[Linux平台](../Page/Linux.md "wikilink")。而[Unix也在](https://zh.wikipedia.org/wiki/Unix "wikilink")[BSD與](../Page/BSD.md "wikilink")[AT\&T達成協議後](../Page/AT&T.md "wikilink")，出現了以[BSD許可證授權散佈的](https://zh.wikipedia.org/wiki/BSD許可證 "wikilink")[FreeBSD開放平台](../Page/FreeBSD.md "wikilink")。Minix雖然在2000年改用BSD授權條款，但這時其它的作業系統在功能上大幅超越了它，而它失去了發展成一個廣泛使用的作業系統的機會，只留下，如塔能鮑姆教授原來期望的，作為一個開放的教材的用途。直到Minix
3出現後，Minix才又改頭換面，現在它是一個朝向小型系統的可靠作業系統。

## 参考资料

## 相關網站

  - [Minix3官方网站](http://www.minix3.org)

[Category:自由作業系統](https://zh.wikipedia.org/wiki/Category:自由作業系統 "wikilink")
[Category:微核心](https://zh.wikipedia.org/wiki/Category:微核心 "wikilink")
[Category:类Unix系统](https://zh.wikipedia.org/wiki/Category:类Unix系统 "wikilink")

1.