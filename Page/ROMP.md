[Romp.jpg](https://zh.wikipedia.org/wiki/File:Romp.jpg "fig:Romp.jpg")

**ROMP**的全稱是**R**esearch (**O**ffice Products Division) **M**icro
**P**rocessor\[1\]，它是[IBM公司所研製的一顆](../Page/IBM.md "wikilink")[微處理器](https://zh.wikipedia.org/wiki/微處理器 "wikilink")，第一顆ROMP晶片於1981年問世，並在之後用於辦公事務的機器設備內，事實上這顆處理器的研發用意是用來取代自1970年中期就開始使用的OPD
Mini Processor（OPD迷你處理器）\[2\]OPD迷你處理器主要是用在文字編輯\[3\]的系統設備內，如IBM的Office
System/6及DisplayWriter等。

ROMP處理器最初是用在IBM
RT/PC的系列產品內，該系列產品於1986年發表，之後ROMP處理器也被用在IBM的[雷射印表機內](https://zh.wikipedia.org/wiki/雷射印表機 "wikilink")。此外有一段時間IBM有意讓IBM
RT/PC成為[個人電腦產品](https://zh.wikipedia.org/wiki/個人電腦 "wikilink")，並用自有的ROMP處理器來取代[Intel公司的](https://zh.wikipedia.org/wiki/Intel "wikilink")[8088處理器](../Page/Intel_8088.md "wikilink")，不過實際上其軟體方面卻比較偏向於工程用的[工作站](../Page/工作站.md "wikilink")。

## 內部架構設計

在IBM最原初的設計提案上，ROMP其實是一顆24[位元](../Page/位元.md "wikilink")（24-bit）的[精簡指令集](https://zh.wikipedia.org/wiki/RISC "wikilink")（RISC）處理架構，然而在後續數年的實際研發過程中此架構也進行調修擴充，變成了32位元的精簡指令集架構，之後在首次的實際製造上是以2[微米](../Page/微米.md "wikilink")（2um）的[NMOS製程技術來實現](https://zh.wikipedia.org/wiki/NMOS "wikilink")。

ROMP處理器內有6個32位元的泛用型\[4\]暫存器，並且用在32位元的位址及資料路徑的聯繫、對應存取上。至於指令集方面，ROMP總共具有118個指令，每個指令的寬度不是2位元組（2-Byte）就是4位元組（4-Byte）\[5\]。

ROMP由於採行此種內部組織設計，使得所有「暫存器-對-暫存器」型態的指令，幾乎都能在一個時脈週期內完成執行。此外，IBM也研發了能與ROMP處理器搭配的先進記憶體管理晶片（Advanced
Memory Management
Chip），透過此晶片不僅可以存取、控制記憶體，更重要的是能執行[虛擬記憶體的位址對應](https://zh.wikipedia.org/wiki/虛擬記憶體 "wikilink")、轉換。

## 縮編型指令集

若溯及更早，ROMP的架構早在1977年春就已開始，ROMP處理器可說是T.J. Watson
Research（華生研究室）[801處理器的另一個分立衍生](https://zh.wikipedia.org/wiki/IBM_801 "wikilink")（ROMP中的R，Research即是指華生研究室）。另外，ROMP的架構中有多數都是為了節省成本而作條修變更，例如加入了16位元長度的指令，指令的長度較32位元、24位元都短，如此有助於節省執行程式的空間佔量。

使用短指令讓程式總體耗用空間得以縮減，這確實是當年採行16位元指令的主要用意，不過，即便到硬體資源充沛的今日，在某些場合運用中也依然很重視執行容量空間的精省，例如嵌入式應用即是一例，同樣的ARM、MIPS等處理器架構也都有加入16位元寬度的指令，用意也都是為了精省空間佔量，且在加入16位元指令前都只能用較耗佔指令長度、程式空間的32位元指令。

## 構想宏遠，實務脫節

由於首顆ROMP是在1981年初發表，因此ROMP也可能是首顆商業化運用的RISC處理器，不過這仍有兩點認定必須成立才算數，一是認同ROMP是真正的RISC架構處理器，就某些角度與論點而言或許會被人認為ROMP仍是個全然的RISC架構設計；另一是ROMP推出的時間雖為1981年，但並非當年就立即應用到商業產品的機內，認定的年份是以處理器問世即成立，還是以正式投入商業產品的應用中才成立，這也無人明確界定，若以真正用於商業產品中，那麼ROMP的年份就必須認定成1986年才行。

ROMP發表於1981年，真正投入實用卻拖延到1986年，期間相隔五年以上，如此長時間延誤的原因在於軟體，即是IBM
RT/PC所用的作業系統，由於IBM對這一套[作業系統有過度的期許與企圖](https://zh.wikipedia.org/wiki/作業系統 "wikilink")，才使得軟體遲遲無法完成。

此作業系統的最大特點也最難產處在於「虛擬化功效」，該功效能夠以自身作業系統作為「主體」\[6\]，往上再增闢多個「客體」作業系統並同時執行，如此只要將作業系統\[7\]進行轉移、移植（Port），就能夠以客體身份在虛擬功效上執行。就當年而言，此種遠大企圖心遠勝過同時間的[昇陽電腦](../Page/昇陽電腦.md "wikilink")（Sun
Microsystems）、[阿波羅電腦](../Page/阿波羅電腦.md "wikilink")（Apollo
Computer）等業者，當時他們的電腦系統（多為工作站）都不具虛擬化功效，如此作業系統便無法以虛擬化方式轉移執行，任何作業系統都必須以掌控實體全機的方式來改寫、轉移。

## 附註說明

<references/>

## 參考引據

1.  英語版維基百科的
2.  [人類的POWER -
    IBM的晶片製造歷史](http://www-128.ibm.com/developerworks/cn/linux/l-powhist/)

3.  [IBM
    RISC成長日記](https://web.archive.org/web/20060906234321/http://www.cpw.com.cn/Article/2006-6/200668140152631418.Htm)


## 關連條目

  - [IBM產品列表](https://zh.wikipedia.org/wiki/IBM產品列表 "wikilink")（）

<!-- end list -->

  -
    ROMP微處理器過去用於IBM的商用產品中。

<!-- end list -->

  - [IBM 801](https://zh.wikipedia.org/wiki/IBM_801 "wikilink")（）

<!-- end list -->

  -
    名為801的技術專案、研究計畫，主要在於研發一套精簡指令集的微處理器架構。

<!-- end list -->

  - [IBM RT](https://zh.wikipedia.org/wiki/IBM_RT "wikilink")（）

<!-- end list -->

  -
    也稱IBM RT/PC，全寫是Risc Technology/Personal Computer，是沿用原有[IBM PC
    AT硬體架構](https://zh.wikipedia.org/wiki/IBM_PC_AT "wikilink")（主要是PC-AT的16位元匯流排，也稱：AT
    Bus），但將處理器從[Intel
    8088](../Page/Intel_8088.md "wikilink")／[80286改換成IBM](../Page/Intel_80286.md "wikilink")
    ROMP的另一種個人電腦。

## 外部連結

  - [IBM
    ROMP處理器及記憶體管理單元架構](http://domino.research.ibm.com/tchjr/journalindex.nsf/0/f6570ad450831a2485256bfa00685bda?OpenDocument)


[Category:微處理器](https://zh.wikipedia.org/wiki/Category:微處理器 "wikilink")
[Category:IBM处理器](https://zh.wikipedia.org/wiki/Category:IBM处理器 "wikilink")

1.  ROMP處理器在一些圈子裏頭也稱為**032**。
2.  就電路的整合密度而言，「迷你處理器」不及「微處理器」，迷你為Mini，微則是Micro，比微更小的則是奈Nano。
3.  文字編輯原文為Text editing，比文書處理的Word processing更早，但功效機制上也更「簡陋」、「原始」。
4.  General purpose也常翻譯成：一般性用途、通用。
5.  言下之意ROMP指令集的設計合乎RISC的整齊原則，每個指令最好都是一樣的位元長度，使執行能夠通暢快速，相對的[CISC的複雜指令集的長度不一](https://zh.wikipedia.org/wiki/CISC "wikilink")，如x86架構的指令最少為1Byte，最多可以到15Bytes
6.  主體性作業系統今日也多稱為Supervisor、Hypervisor，目前尚無合適、普遍的中文翻譯名稱。
7.  當時真正完成轉移並順利在該RT/PC作業系統上執行的，也只有UNIX作業系統。