{{ expert|subject=计算机科学 }}

**Minix**，是一個迷你版本的[類Unix作業系統](../Page/類Unix.md "wikilink")，由[塔能鲍姆教授為了教學之用而創作](../Page/安德鲁·斯图尔特·塔能鲍姆.md "wikilink")，採用[微核心設計](../Page/微核心.md "wikilink")。它啟發了[Linux核心的創作](../Page/Linux核心.md "wikilink")。

它的名稱取自的縮寫。與[Xinu](../Page/Xinu.md "wikilink")、[Idris](../Page/Idris.md "wikilink")、[Coherent和](../Page/Coherent.md "wikilink")[Uniflex等類](../Page/Uniflex.md "wikilink")[Unix作業系統類似](../Page/Unix.md "wikilink")，衍生自[Version
7
Unix](../Page/Version_7_Unix.md "wikilink")，但並沒有使用任何[AT\&T的程式碼](../Page/AT&T.md "wikilink")。第一版於1987年釋出，只需要購買它的磁片，就提供完整的原始碼給大學系所與學生，做為授課及學習之用。2000年4月，重新以[BSD授權條款釋出](../Page/BSD授權條款.md "wikilink")，成為[開放原始碼軟體](../Page/開放原始碼.md "wikilink")。

## 歷史與版本

### MINIX 1.0

Minix原來是[荷蘭](../Page/荷蘭.md "wikilink")[阿姆斯特丹](../Page/阿姆斯特丹.md "wikilink")[自由大学計算機科學系的](../Page/阿姆斯特丹自由大学.md "wikilink")[塔能鲍姆教授](../Page/安德鲁·斯图尔特·塔能鲍姆.md "wikilink")（Prof.
Andrew S. Tanenbaum）所發展的一個類[Unix作業系統](../Page/Unix.md "wikilink")。

因為AT\&T的政策改變，在[Version 7
Unix推出之後](../Page/Version_7_Unix.md "wikilink")，發布新的使用授權條款，將UNIX原始碼私有化，在大學中不再能使用UNIX原始碼。塔能鮑姆教授為了能在課堂上教授學生作業系統運作的實務細節，決定在不使用任何AT\&T的原始碼前提下，自行開發與UNIX相容的作業系統，以避免版權上的爭議。他以小型UNIX（mini-UNIX）之意，將它稱為MINIX。

Minix以[C語言寫成](../Page/C語言.md "wikilink")，與[Version 7
Unix相容](../Page/Version_7_Unix.md "wikilink")，全部的程式碼共約12,000行，並置於他的著作《作業系統：設計與實作》（*Operating
Systems: Design and Implementation*，ISBN
0-13-637331-3）的附錄裡作為範例。Minix的系統要求在當時來說非常簡單，只要三片磁片就可以起動。

Minix原始是設計給1980年代到1990年代的[IBM PC和](../Page/IBM_PC.md "wikilink")[IBM
PC/AT相容電腦上執行](../Page/IBM_PC/AT.md "wikilink")，主要運作於16-bits的[Intel
8080平台](../Page/Intel_8080.md "wikilink")，以[軟碟起動](../Page/軟碟.md "wikilink")。

### MINIX 1.5

1.5版也有移植到已[Motorola
68000系列](../Page/Motorola_68000.md "wikilink")[CPU為基礎的電腦上](../Page/CPU.md "wikilink")（如[Atari
ST](../Page/Atari_ST.md "wikilink")，[Amiga](../Page/Amiga.md "wikilink")，和早期的[Apple
Macintosh](../Page/Apple_Macintosh.md "wikilink")）和以[SPARC為基礎的機器](../Page/SPARC.md "wikilink")（如[昇陽](../Page/昇陽.md "wikilink")（Sun）公司的[工作站](../Page/工作站.md "wikilink")）。

### MINIX 2.0

1997年，隨著教科書改版，塔能鮑姆釋出[Minix
2](../Page/Minix_2.md "wikilink")，在這版中，它改成可以在[Intel
80386等](../Page/Intel_80386.md "wikilink")[x86平台上運作](../Page/x86.md "wikilink")，從[硬碟上開機](../Page/硬碟.md "wikilink")。

#### Minix-vmd

### MINIX 3

2004年，塔能鮑姆重新架構與設計了整個系統，更進一步的將程式模組化，推出[Minix
3](../Page/Minix_3.md "wikilink")。
所有2015年之后发布的[英特尔芯片都在内部运行着MINIX](../Page/英特尔.md "wikilink")
3，作为[Intel管理引擎](../Page/Intel主动管理技术.md "wikilink")(Intel
Management Engine)的组件。\[1\]

## 技術內容

全套Minix除了启動的部份以[汇编语言編寫以外](../Page/汇编語言.md "wikilink")，其他大部份都是純粹用[C語言編寫](../Page/C語言.md "wikilink")。分為：[核心](../Page/核心.md "wikilink")、[記憶體管理及](../Page/記憶體管理.md "wikilink")[文件系统三部份](../Page/MINIX檔案系統.md "wikilink")。

Minix在設計之初，為了使程式簡化，它將程式模組化，如[檔案系統與](../Page/檔案系統.md "wikilink")[記憶體管理](../Page/記憶體管理.md "wikilink")，都不是在作業系統[核心中運作](../Page/核心.md "wikilink")，而是在使用者空間運作。至Minix
3時，連IO裝置都被移到使用者空間運作。

另一個特點，則是Minix主要目的是用於教學，因此程式碼撰寫上極力重視簡潔與可讀性。

## Minix與Linux

[Linux是其作者受到Minix的影響而作成的](../Page/Linux.md "wikilink")（[林納斯·托瓦茲不喜歡他的](../Page/林納斯·托瓦茲.md "wikilink")[386電腦上的](../Page/Intel_80386.md "wikilink")[MS-DOS作業系統](../Page/MS-DOS.md "wikilink")，而安裝了Minix，並以它為样本開發了原始的[Linux核心](../Page/Linux核心.md "wikilink")）。但是这种影响更多在于非技术层面，确切地说是一种精神上的“鼓舞”。在設計上，[Linux則和Minix相差很大](../Page/Linux.md "wikilink")，在[Linux系统还没有自己的原生檔案系统之前](../Page/Linux.md "wikilink")，曾采用Minix的檔案系统。Minix在核心設計上採用[微核心](../Page/微核心.md "wikilink")，即将作業系統分成微核心和其上的提供檔案系统、記憶體管理、驱动程式等服务的服务程式；而[Linux則和原始的](../Page/Linux.md "wikilink")[Unix都採用](../Page/Unix.md "wikilink")[單核心](../Page/單核心.md "wikilink")。在[Linux發展之初](../Page/Linux.md "wikilink")，雙方還于1992年在[新聞群組上有過一場精彩的爭論](../Page/新聞群組.md "wikilink")，被稱為[塔能鮑姆-林納斯辯論](../Page/塔能鮑姆-林納斯辯論.md "wikilink")。Minix的作者和支持者认为使用單核心是技术上的退步，而Linux的支持者认为Minix本身没有实用性。

## 授權方式

在授權方式上，Minix的版權宣告在早期被認為是相當自由的：塔能鮑姆教授在希望拿Minix作為一個公開的教材與出版社希望保護程式碼[著作權的平衡下](../Page/著作權.md "wikilink")，它只要求一個相當低的[授權費](../Page/授權費.md "wikilink")。但因為它並不是一個[開放原始碼的授權方案](../Page/開放原始碼.md "wikilink")，所以志願工作者在以[GPL方式散佈的](../Page/GPL.md "wikilink")[Linux核心出現後就多轉向](../Page/Linux.md "wikilink")[Linux平台](../Page/Linux.md "wikilink")。而[Unix也在](../Page/Unix.md "wikilink")[BSD與](../Page/BSD.md "wikilink")[AT\&T達成協議後](../Page/AT&T.md "wikilink")，出現了以[BSD許可證授權散佈的](../Page/BSD許可證.md "wikilink")[FreeBSD開放平台](../Page/FreeBSD.md "wikilink")。Minix雖然在2000年改用BSD授權條款，但這時其它的作業系統在功能上大幅超越了它，而它失去了發展成一個廣泛使用的作業系統的機會，只留下，如塔能鮑姆教授原來期望的，作為一個開放的教材的用途。直到Minix
3出現後，Minix才又改頭換面，現在它是一個朝向小型系統的可靠作業系統。

## 参考资料

## 相關網站

  - [Minix3官方网站](http://www.minix3.org)

[Category:自由作業系統](https://zh.wikipedia.org/wiki/Category:自由作業系統 "wikilink")
[Category:微核心](https://zh.wikipedia.org/wiki/Category:微核心 "wikilink")
[Category:类Unix系统](https://zh.wikipedia.org/wiki/Category:类Unix系统 "wikilink")

1.