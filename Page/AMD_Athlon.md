**Athlon**是美國[AMD公司的一種為](https://zh.wikipedia.org/wiki/AMD "wikilink")[x86計算機平台而設的](https://zh.wikipedia.org/wiki/x86 "wikilink")[微處理器](https://zh.wikipedia.org/wiki/微處理器 "wikilink")，也是迄今为止AMD最为成功的一代处理器架构，其研发负责人是前AMD首席执行官[Dirk
Meyer](https://zh.wikipedia.org/wiki/Dirk_Meyer "wikilink")。其中文官方名稱為「**速龍**」。第一款Athlon處理器屬於AMD的第七代（K7），與當時[英特爾的Pentium](https://zh.wikipedia.org/wiki/英特爾 "wikilink")
3處理器競爭，及後出現Athlon
XP、MP等。現時最新的Athlon處理器有屬於[Zen架構的Athlon](../Page/AMD_Zen.md "wikilink")
APU系列。

## Athlon发展史

第一款Athlon處理器於1999年6月23日首度亮相，其名稱取自田徑運動的「[十項全能](../Page/十項全能.md "wikilink")」
(Decathlon)。首批處理器的時脈介於500到700 MHz之間，其插槽為[Slot
A](https://zh.wikipedia.org/wiki/Slot_A "wikilink")，核心修訂版本是"K7"，延續它家族中前輩[K6處理器的命名規則](https://zh.wikipedia.org/wiki/K6 "wikilink")。並帶有512
KB的半速L2
cache，及後搶在[Intel之前推出](https://zh.wikipedia.org/wiki/Intel "wikilink")1Ghz處理器的版本。AMD首席研發工程師Chen
Chih-Jye（陳志杰）於1998年8月提出[Slot
A的橋接邏輯](https://zh.wikipedia.org/wiki/Slot_A "wikilink")，隨後次年就正式量產，這些處理器使用插槽，與[Pentium
II的](https://zh.wikipedia.org/wiki/Pentium_II "wikilink")[Slot
1相似](../Page/Slot_1.md "wikilink")，但兩款插槽並不相容（反轉180度）。

從内部而言，Athlon是完整的第七代x86處理器。也是同類型K7處理器中的首位。這個微處理器是由AMD工程師和新雇用其它的[DEC工程师联合开发的](https://zh.wikipedia.org/wiki/DEC "wikilink")，而数年之后这群外来的工程师无一例外的成为AMD的绝对核心研发团队。所以融合AMD以前的[CPU和DEC](https://zh.wikipedia.org/wiki/CPU "wikilink")
[Alpha
21264處理器的技術](https://zh.wikipedia.org/wiki/Alpha_21264處理器 "wikilink")。正如AMD的[K5和](https://zh.wikipedia.org/wiki/K5 "wikilink")[K6處理器](https://zh.wikipedia.org/wiki/K6 "wikilink")，Athlon是一个[RISC](https://zh.wikipedia.org/wiki/RISC "wikilink")（精简指令集）的微处理器，能够即時解譯[x86指令到她自己的内部指令](https://zh.wikipedia.org/wiki/x86 "wikilink")。Athlon是一个突破传统的设计，她利用DEC
Alpha
[EV6架构和](https://zh.wikipedia.org/wiki/EV6 "wikilink")[DDR](https://zh.wikipedia.org/wiki/DDR "wikilink")（双倍资料传输率）技术。尽管Athlon开始只有100MHZ[外频](https://zh.wikipedia.org/wiki/外频 "wikilink")，但是DDR技术连接到总线方式可以提供比Intel
[GTL+总线](https://zh.wikipedia.org/wiki/GTL+ "wikilink")（为[奔腾III使用](https://zh.wikipedia.org/wiki/奔腾III "wikilink")）更高的頻宽。
AMD设计的这个CPU提供更加稳定的x86指令编譯相容性，使她可以同时处理更多的数据。Athlon的[CISC](https://zh.wikipedia.org/wiki/CISC "wikilink")（相对[RISC而言](https://zh.wikipedia.org/wiki/RISC "wikilink")，复杂指令集）－RISC三组解譯器在理想狀態下，能够每个时脈周期解码6个x86指令操作，不过在現實中不太可能实现。[关键分支预测单元](https://zh.wikipedia.org/wiki/关键分支预测单元 "wikilink")（Critical
Branch Predictor
Unit）相比K6處理器得到增强，这是因为Athlon更长的[管线使得高精确的分支预测成为必要](https://zh.wikipedia.org/wiki/管线 "wikilink")，否则将会导致使性能下降的管线延迟。而长管线设计使得高频更容易实现。反观短管线的K6－III＋即使使用180nm[制程](https://zh.wikipedia.org/wiki/制程 "wikilink")，主频最高也只能达到570MHZ，而Athlon可以比她高得多。

AMD也凭借着Althon的超级流水线[浮点运算单元结束长期以来AMD处理器浮点运算能力差的尴尬](https://zh.wikipedia.org/wiki/浮点运算单元 "wikilink")，反而凌驾于对手INTEL处理器之上。每个Athlon
CPU内部集成3个浮点運算单元，每个单元都能够自己选择计算最佳类型的指令，为使用率高的指令提供[冗余](https://zh.wikipedia.org/wiki/冗余 "wikilink")。由于拥有多个单元，同时执行多条浮点指令成为可能。这种浮点运算单元的推出对AMD来说无疑是一个巨大的前进。反观K6的浮点运算单元相比Intel
P6架構的弱势，新的Athlon浮点单元甚至令奔腾III处于下风。AMD为Athlon添加一个修订过的[3DNow\!多媒體指令集](../Page/3DNow!.md "wikilink")，叫做“增强3DNow\!”，新添加[DSP指令集和一些Intel](https://zh.wikipedia.org/wiki/DSP "wikilink")
[SSE指令集中有关扩展](../Page/SSE.md "wikilink")[MMX的指令](../Page/MMX.md "wikilink")。

Athlon有两个不同的[快取](https://zh.wikipedia.org/wiki/快取 "wikilink")。[一级缓存的容量突破x](https://zh.wikipedia.org/wiki/一级缓存 "wikilink")86的历史纪录——分离的128[KB的](https://zh.wikipedia.org/wiki/KB "wikilink")2路關联缓存，其中64KB用于存储指令，另外64KB用于存储数据。相当于K6一级缓存的两倍，奔腾
II和III的4倍。正如Intel奔腾II和以“Katamai”为代号的奔腾III，Athlon也有512KB的二级缓存。不过此二级缓存不是封入CPU内部的，而且在比CPU低的速度下运作。它插在一个64位的[总线上](../Page/总线.md "wikilink")，类似于AMD的K6-III和Intel的奔腾Pro。此64位的总线允许CPU同时访问缓存和内存，因此极大地提高效率和带宽。改善在K6-2架构中，由于二级缓存和内存共享[前端总线而造成效率低下的问题](../Page/前端总线.md "wikilink")。开始这个二级缓存被设定为CPU[主频的一半](https://zh.wikipedia.org/wiki/主频 "wikilink")，后来又在某些Slot-A处理器上设为2/5（最高850MHz）或者1/3（最高1GHz）。一个1.0 GHz
带有扩展缓存的Slot-A Athlon
CPU，如果其[倍频器设为](https://zh.wikipedia.org/wiki/倍频器 "wikilink")1/2，其芯片组就要运行在500
MHz下。但是那时候的[SRAM不能达到这种速度](https://zh.wikipedia.org/wiki/SRAM "wikilink")，这是由于缓存芯片的技术限制和高速运行缓存所造成的复杂的延迟两方面原因造成的。之后的Athlon处理器就好像奔腾III的做法一样，把二级缓存封装入[核心](https://zh.wikipedia.org/wiki/核心 "wikilink")，使它可以运行在更高的速度。在“雷鸟”之前的Athlon使用把一级缓存的数据复制到二级缓存的包含式缓存方案，这是与Intel
处理器的做法是一样的，不过不同于日后的AMD处理器。

采用Slot－A接口的Athlon是首个锁倍频的AMD
CPU。这么做的一部分原因是由于有些不良商家把旧CPU修改倍频，重新打磨后再出售，這種行為被稱為[Remark](https://zh.wikipedia.org/wiki/Remark "wikilink")。全球都出现这种情况。旧的CPU能够根据用户的主板设定在任何频率下运作，客观上使得打磨CPU的制作易如反掌。这些打磨过的CPU超频的时候也没有都经过合适的测试，因此不稳定。这损害AMD的名声。尽管Athlon锁倍频，但是某些技术狂人最后还是发现只需要在CPU的PCB板上的“[金手指](https://zh.wikipedia.org/wiki/金手指 "wikilink")”加装一个破解设备即可调节倍频和[电压](https://zh.wikipedia.org/wiki/电压 "wikilink")。

自发布开始，Athlon就是世界上最快的x86 CPU，此后陆续发布的其它版本Athlon
CPU自1999年8月到2002年1月继续保持领先优势。Athlon几乎在各个方面打败Intel的奔腾III处理器，即使与数年后最好的基于[Netburst架构的奔腾](https://zh.wikipedia.org/wiki/Netburst "wikilink")4处理器在某些方面也能够并驾齐驱。

在商业领域，早期的Athlon取得巨大的成功。这不但是由于它自身的价值使然，也因为Intel正在承受产能、设计和质量控制等问题的困扰——特别是从1999年开始，2000年中结束的向[0.18
μm制程过渡中所出现的混乱](https://zh.wikipedia.org/wiki/0.18微米製程 "wikilink")。另外奔腾III部分的产能的严重低下也为[AMD制造机会](https://zh.wikipedia.org/wiki/AMD "wikilink")。而[AMD](https://zh.wikipedia.org/wiki/AMD "wikilink")，相反地，非常成功的实现制程的平滑过渡，产能充足，Athlon的销售业绩不断上升。不少Intel的老顾客为Athlon良好的性能和合理的价格所吸引；而可能成为AMD持股人的前景更成为他们不可抵抗的诱惑。这种巨大的需求直接导致AMD停止生产K6-III
CPU。

## Athlon Thunderbird

AMD于[2000年6月发布了](https://zh.wikipedia.org/wiki/2000年6月 "wikilink")"**Thunderbird**"核心的Athlon處理器，由其核心英文含义而被俗称为“雷鸟”。该系列的Athlon處理器以0.18微米工艺制造，并率先使用较为先进的铜互连工艺，但却使用了较为落后的陶瓷封装。此系列有100
MHz和133 MHz两种外频的型号，频率从650 MHz到1400 MHz，带有256 KB的全速L2 cache，使用[Socket
A接口](../Page/Socket_A.md "wikilink")。

随后AMD发布了在该系列Athlon基础上简化而来的面向低端市场的[Duron處理器](https://zh.wikipedia.org/wiki/Duron "wikilink")。

## Athlon MP

這是AMD Athlon 系列中，支援兩顆或更多 CPU 運算的CPU。她和Althon XP的区别是支援多一顆或以上的CPU
。官方支持的晶片組有支持兩顆CPU 的AMD-760MP和AMD-760MPX。

## Athlon XP

[AMD-AthlonXP-1700.jpg](https://zh.wikipedia.org/wiki/File:AMD-AthlonXP-1700.jpg "fig:AMD-AthlonXP-1700.jpg")
Athlon
XP是AMD在Thunderbird核心的Athlon基础上改进而来，前后共发布了**Palomino**、**Thoroughbred**、**Barton**、**Thorton**四种核心的Athlon
XP，同样使用Socket
A接口，却改用更为先进的[OPGA封装](https://zh.wikipedia.org/wiki/OPGA "wikilink")。并在这一系列處理器上AMD重新使用了[PR值来标称處理器性能](https://zh.wikipedia.org/wiki/PR值 "wikilink")。

  - **Palomino**采用0.18微米工艺制造，采用133 MHz外频，带有256 KB的全速L2
    cache，该系列PR值为1500+至2100+之间。
  - **Thoroughbred**采用[0.13微米工艺制造](https://zh.wikipedia.org/wiki/0.13微米製程 "wikilink")，带有256
    KB的全速L2 cache。这一核心的Athlon XP细分为早期的使用A0步进的版本和随后经过改进的B0步进版本。A0版的拥有133
    MHz外频，PR值为1700+至2200+之间。随后的B0版拥有133 MHz和166
    MHz两种外频的型号，PR值为1700+至2800+之间，其中B0版的1700+和1800+曾一度在零售市场上几乎完全压制住了INTEL的[CELERON处理器](https://zh.wikipedia.org/wiki/赛扬 "wikilink")。
  - **Barton**采用0.13微米工艺制造，带有512 KB的全速L2 cache，拥有166 MHz和200
    MHz两种外频的型号。PR值为2500+至3200+之间。
  - **Thorton**是在Barton的基础上简化而来。同样采用0.13微米工艺制造，拥有133 MHz外频，但只带有256
    KB的全速L2 cache，有2000+、2200+、2400+三种型号。

## Athlon 64

**Athlon 64**處理器是一款64位元微處理器，代號為ClawHammer，於2003年9月23日發佈。第一款的型號是Athlon 64
3200+，實際時脈為2.0 GHz，使用的插座是[Socket 754](../Page/Socket_754.md "wikilink")。

Athlon 64分為64、X2和64-FX三種不同版本，當中以[Athlon 64
FX的效能較前者為強大](../Page/Athlon_64_FX.md "wikilink")，與[Opteron相似](../Page/Opteron.md "wikilink")。Athlon
64除支援[AMD64外](https://zh.wikipedia.org/wiki/AMD64 "wikilink")，還相容16位和32位的x86平臺。

## Athlon X2

Athlon X2是AMD的雙核心處理器，為了與當時Intel的[Pentium
D處理器進行競爭](https://zh.wikipedia.org/wiki/Pentium_D "wikilink")，由於核心功耗相對Pentium
D處理器為低加上效能突出，處理器讀取記憶體無須像對手一般需經過[北橋](https://zh.wikipedia.org/wiki/北橋 "wikilink")，當時成為最具效能的x86處理器架構。

## Athlon II

Athlon
II是AMD的45nm多核中央處理器產品系列之一，2009年推出，有2、3和4核心版本，全部均是45nm製程，以廉價市場作為定位，也作為[Phenom
II處理器系列的另一選擇](https://zh.wikipedia.org/wiki/Phenom_II "wikilink")。

## Athlon APU

採用Socket FM1插座或Socket FM2插座的Athlon x4採用四核心設計，不整合GPU。

另有低功耗Athlon，2014年推出，以廉價及低功耗市場作為定位，4核心、28nm製程及25W[熱設計功耗](https://zh.wikipedia.org/wiki/熱設計功耗 "wikilink")，整合AMD
Radeon
R3[圖形處理器](../Page/圖形處理器.md "wikilink")，整合[北橋和](https://zh.wikipedia.org/wiki/北橋 "wikilink")[南橋](https://zh.wikipedia.org/wiki/南橋 "wikilink")，使用[Socket
AM1](../Page/Socket_AM1.md "wikilink")[插座](../Page/CPU插座.md "wikilink")。

## Zen Athlon

於2018年推出的Zen
Athlon，採用[Zen微架構](https://zh.wikipedia.org/wiki/Zen微架構 "wikilink")，主要面向低階家用市場，競爭對手是[Pentium](https://zh.wikipedia.org/wiki/Pentium "wikilink")。首款產品Athlon
200GE採用雙核四執行緒設計。中高階產品則是[AMD Ryzen](../Page/AMD_Ryzen.md "wikilink")。

## 优点与缺点

AMD比起英特爾，產品價格較便宜，在早年[Athlon
64和](https://zh.wikipedia.org/wiki/Athlon_64 "wikilink")[Athlon 64
X2效能](https://zh.wikipedia.org/wiki/Athlon_64_X2 "wikilink")、功耗上優於Intel的[Pentium
4和](https://zh.wikipedia.org/wiki/Pentium_4 "wikilink")[Pentium
D](https://zh.wikipedia.org/wiki/Pentium_D "wikilink")，但Intel於2006年推出[Core
2並成功反擊AMD](https://zh.wikipedia.org/wiki/Core_2 "wikilink")。

## 參看

  - [AMD Athlon處理器列表](../Page/AMD_Athlon處理器列表.md "wikilink")
  - [AMD Athlon XP處理器列表](../Page/AMD_Athlon_XP處理器列表.md "wikilink")
  - [AMD Sempron處理器列表](../Page/AMD_Sempron處理器列表.md "wikilink")
  - [AMD Athlon 64處理器列表](../Page/AMD_Athlon_64處理器列表.md "wikilink")

[hu:Advanced Micro
Devices\#Athlon](https://zh.wikipedia.org/wiki/hu:Advanced_Micro_Devices#Athlon "wikilink")

[Category:AMD处理器](https://zh.wikipedia.org/wiki/Category:AMD处理器 "wikilink")
[Category:X86架構](https://zh.wikipedia.org/wiki/Category:X86架構 "wikilink")