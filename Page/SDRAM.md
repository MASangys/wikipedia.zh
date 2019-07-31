[SDR_SDRAM-1.jpg](https://zh.wikipedia.org/wiki/File:SDR_SDRAM-1.jpg "fig:SDR_SDRAM-1.jpg")

**同步動態隨機存取記憶體**（synchronous dynamic random-access memory，简称SDRAM）是有一個[同步接口的動態隨機存取記憶體](https://zh.wikipedia.org/wiki/同步接口 "wikilink")（[DRAM](https://zh.wikipedia.org/wiki/DRAM "wikilink")）。通常DRAM是有一个异步接口的，这样它可以随时响应控制输入的变化。而SDRAM有一个同步接口，在响应控制[输入前会等待一个](https://zh.wikipedia.org/wiki/输入 "wikilink")[时钟信号](https://zh.wikipedia.org/wiki/时钟信号 "wikilink")，这样就能和计算机的[系统总线同步](https://zh.wikipedia.org/wiki/系统总线 "wikilink")。时钟被用来驱动一个有限状态机，对进入的指令进行[管線](https://zh.wikipedia.org/wiki/cmn:流水线_\(计算机\) "wikilink")(Pipeline)操作。这使得SDRAM与没有同步接口的异步DRAM(asynchronous DRAM)相比，可以有一个更复杂的操作模式。

[管線意味着芯片可以在处理完之前的指令前](https://zh.wikipedia.org/wiki/cmn:流水线_\(计算机\) "wikilink")，接受一个新的[指令](https://zh.wikipedia.org/wiki/指令 "wikilink")。在一个写入的[管線中](https://zh.wikipedia.org/wiki/cmn:流水线_\(计算机\) "wikilink")，写入命令在另一个指令执行完之后可以立刻执行，而不需要等待数据写入-{zh-hans:存储队列; zh-hant:儲存佇列}-的时间。在一个读取的流水线中，需要的[数据在读取指令发出之后固定数量的时钟频率后到达](https://zh.wikipedia.org/wiki/数据 "wikilink")，而这个等待的过程可以发出其它附加指令。这种延迟被称为等待时间(Latency)，在为计算机购买記憶體时是一个很重要的参数。

SDRAM在计算机中被广泛使用，从起初的SDRAM到之后一代的DDR（或称DDR1），然后是[DDR2和](https://zh.wikipedia.org/wiki/DDR2 "wikilink")[DDR3进入大众市场](https://zh.wikipedia.org/wiki/DDR3 "wikilink")，2015年開始[DDR4進入消費市场](https://zh.wikipedia.org/wiki/DDR4 "wikilink")。

## SDRAM歷史

[Desktop_DDR_Memory_Comparison.svg](https://zh.wikipedia.org/wiki/File:Desktop_DDR_Memory_Comparison.svg "fig:Desktop_DDR_Memory_Comparison.svg"), [DDR2](https://zh.wikipedia.org/wiki/DDR2 "wikilink") 和[DDR3的佈局](https://zh.wikipedia.org/wiki/DDR3 "wikilink")\]\] 儘管SDRAM的概念至少從20世紀70年代就已經被人們所熟悉，在早期的[Intel處理器上也已被採用](https://zh.wikipedia.org/wiki/Intel "wikilink")，但要說到它在電子工業被廣泛接受，那是從1993年才開始的。1993年，[三星開始展示其新出品的KM](../Page/三星電子.md "wikilink")48SL2000 SDRAM，到2000年，SDRAM因為其卓越的性能，實際上取代了其它類型的[DRAM在現代計算機中的位置](https://zh.wikipedia.org/wiki/DRAM "wikilink")。

SDRAM本身的延遲其實並不比異步[DRAM更低](https://zh.wikipedia.org/wiki/DRAM "wikilink")（延遲更低意指速度更快）。其實，早期的SDRAM因為其構造中的附加邏輯單元，在速度上比同時期的爆發式延伸數據輸出[DRAM](https://zh.wikipedia.org/wiki/DRAM "wikilink")(Burst EDO DRAM)還有所不及。而SDRAM的內建緩衝則可以使得運算交叉進入-{zh-hans:多行存儲; zh-hant:多個儲存單元}-，這樣就可以有效提高带寬，速度更快。

時至今日，所有的SDRAM實際上都依照[JEDEC](../Page/JEDEC.md "wikilink")(一個電子工業聯盟，選定開放的標準，使電子元件的互容性更好)制定的標準製造。[JEDEC](../Page/JEDEC.md "wikilink")於1993年正式採用其第一個有關SDRAM的標準，隨後是其它SDRAM的標準，包括了[DDR](https://zh.wikipedia.org/wiki/隨機存取記憶體 "wikilink")、[DDR2和](https://zh.wikipedia.org/wiki/DDR2 "wikilink")[DDR3](https://zh.wikipedia.org/wiki/DDR3 "wikilink") SDRAM。

時至2012年，168-pin(pin指內存插入實際接觸的金手指數量)的SDRAM雙線內存模組（DIMM）在新的個人電腦上已經不再使用，被大量的184-pin的[DDR記憶體代替](https://zh.wikipedia.org/wiki/隨機存取記憶體 "wikilink")。在新的個人電腦，[DDR2](https://zh.wikipedia.org/wiki/DDR2 "wikilink") SDRAM又已經普遍取代[DDR](https://zh.wikipedia.org/wiki/隨機存取記憶體 "wikilink") SDRAM，但目前-{zh-hans:支持; zh-hant:支援}-[DDR3的](https://zh.wikipedia.org/wiki/DDR3 "wikilink")-{zh-hans:主板; zh-hant:主機板}-和記憶體比[DDR2](https://zh.wikipedia.org/wiki/DDR2 "wikilink") SDRAM被更廣泛地使用，成為主流，所以[DDR3目前的價格比非主流的](https://zh.wikipedia.org/wiki/DDR3 "wikilink")[DDR2產品便宜了不少](https://zh.wikipedia.org/wiki/DDR2 "wikilink")。

如今世界有三強SDRAM顆粒製造商：南韓的[三星電子](../Page/三星電子.md "wikilink")(Samsung Electronics)和海力士([Hynix](https://zh.wikipedia.org/wiki/Hynix "wikilink"))，及美國的[美光科技](../Page/美光科技.md "wikilink")(Micron Technology)。三者[壟斷超過](https://zh.wikipedia.org/wiki/壟斷 "wikilink")90%的全球市場，包括PC RAM、手機RAM和伺服器RAM。\[1\] 另外，以上三間公司及日本[東芝亦壟斷了全球](https://zh.wikipedia.org/wiki/東芝 "wikilink")90%的[NAND](https://zh.wikipedia.org/wiki/NAND "wikilink")[快閃記憶體市場](https://zh.wikipedia.org/wiki/快閃記憶體 "wikilink")，這種記憶體主要用來製造[SD卡](../Page/SD卡.md "wikilink")和[SSD](https://zh.wikipedia.org/wiki/SSD "wikilink")。\[2\]

## SDRAM时序

有几个DRAM性能的极限，最有名的就是读取周期时间，是指对一个开放的行进行连续读操作之间的间隔。这个时间从100MHZ频率的SDRAM的10纳秒缩减为DDR-400的5纳秒，但是从DDR2-800和DDR3-1600就保持相对不变。然而，-{zh-hans:通过; zh-hant:透過}-操作接口电路，使基本读取速度成倍提高，可实现带宽的迅速增加。

另一个极限是[CAS等待时间](https://zh.wikipedia.org/wiki/CAS "wikilink")，是指提供一个-{zh-hans:地址; zh-hant:位址}-与接受到相关-{zh-hans:数据; zh-hant:資料}-之间的间隔。这个也保持了相对稳定，最近几代DDR SDRAM的这个数据为10-15纳秒。 在操作上,對DRAM控制器來說CAS latency是一個已知的clock cycles特定數字, 這數字會被登錄在SDRAM模式註冊表中.在时钟速率很快的情况下，CAS等待时间相对的时钟周期数自然就会增加。10-15纳秒对200[MHZ时钟频率的DDR](https://zh.wikipedia.org/wiki/MHZ "wikilink")-400 SDRAM就是2-3个周期，对DDR2-800就是4-6个周期，DDR3-1600就是8-12个周期。比较慢的时钟周期，CAS等待时间相对的周期数也会比较少。

100MHz的SDRAM[芯片第一次出现时](https://zh.wikipedia.org/wiki/芯片 "wikilink")，有些制造商开始贩卖“100 MHz”的模组，而这些模组是不能在那个时钟频率下正常工作的。有鉴于此，Intel发布了PC100的标准，描述了具体要求，为生产能在100MHz频率下工作的内存模组提供了指引。这个标准影响深远，“PC100”这个术语很快成了100MHz SDRAM模组的通用标识。如今，模组通常被冠以“PC”为前缀的一组数字的名称（PC66、PC100或者PC133—尽管数字代表的实际含义早就不是其原有的）。\[3\]

## 單資料流SDRAM

[Micron_48LC32M8A2-AB.jpg](https://zh.wikipedia.org/wiki/File:Micron_48LC32M8A2-AB.jpg "fig:Micron_48LC32M8A2-AB.jpg")聲霸卡上，用了兩顆 [Micron](https://zh.wikipedia.org/wiki/Micron_Technology "wikilink") 48LC32M8A2-75 C SDRAM 的 133 MHz (7.5 ns) 8-bit 晶片 \[4\]\]\]

單資料流SDRAM（SDR SDRAM）被視最早的SDRAM，單資料流SDRAM在每个時脈可以接收一個指令和傳輸一個位元組。典型的時脈為100和133MHz。晶片有多種不同的-{zh-hans:数据; zh-hant:資料}-匯流排寬度（最常見的是4、8或16bits），但是晶片一般被做成168-pin的DIMM模组，可以同時讀寫64bits(非ECC)或72bits(ECC)。 \[5\] -{zh-hans:数据; zh-hant:資料}-匯流排的存取機制很複雜，需要一个複雜的DRAM控制器。這是因為寫入DRAM的-{zh-hans:数据; zh-hant:資料}-必需和一個寫入指令在同一個時脈中，而讀取-{zh-hans:数据; zh-hant:資料}-可以在讀取指令後的2到3個時脈進行。DRAM控制器必須確保-{zh-hans:数据; zh-hant:資料}-匯流排不會同時進行讀寫。

典型的單資料流SDRAM時脈為66、100和133MHz(周期分别为15、10和7.5奈秒)時脈到150MHz的則可用於性能的發燒友。

### SDRAM操作

一個512[MB的SDRAM](https://zh.wikipedia.org/wiki/MB "wikilink") DIMM[記憶體模组一般由](https://zh.wikipedia.org/wiki/記憶體 "wikilink")8個到9個SDRAM晶片组成，每个晶片包含有512Mbit的-{zh-hans:存储空间; zh-hant:儲存空間}-，每顆晶片為模组的匯流排提供了8個bit的寬度。一個典型的512Mbit SDRAM[晶片内部包含了](https://zh.wikipedia.org/wiki/晶片 "wikilink")4個獨立的16Mbyte大小的-{zh-hans:库; zh-hant:區塊}-。每個-{zh-hans:库; zh-hant:區塊}-都有8,192行，16,384bits。一個-{zh-hans:库; zh-hant:區塊}-或者處於-{zh-hans:空闲; zh-hant:閒置}-狀態、忙碌狀態，或者介於兩者狀態之間。\[6\]\[7\]

一個-{zh-hans:激活; zh-hant:初始化}-指令會將一個-{zh-hans:空闲; zh-hant:閒置}-狀態的-{zh-hans:库; zh-hant:區塊}--{zh-hans:激活; zh-hant:初始化}-。它占用2-bit的-{zh-hans:库地址; zh-hant:區塊位址}-（BA0–BA1）和13-bit的行-{zh-hans:地址; zh-hant:位址}-（A0–A12），然後將那一行讀取入有着16,384個讀取放大器的-{zh-hans:库; zh-hant:區塊}-的-{zh-hans:队列; zh-hant:佇列}-。這也被稱為“開啟”行。

只有該行已被-{zh-hans:激活; zh-hant:初始化}-或者“開啟”，讀寫指令才可以進行。每個指令都需要一個列-{zh-hans:地址; zh-hant:位址}-，但是因为每個晶片同時能處理8-bit，因此有2048个可能的列-{zh-hans:地址; zh-hant:位址}-，不过只需要11個-{zh-hans:地址; zh-hant:位址}-行（A0–A9, A11）。-{zh-hans:激活; zh-hant:初始化}-需要一個最小周期，稱為行到列延遲，或者t<sub>RCD</sub>。\[8\]

## 參見

  - [DDR SDRAM](../Page/DDR_SDRAM.md "wikilink")
  - [DDR2 SDRAM](../Page/DDR2_SDRAM.md "wikilink")
  - [SGRAM](https://zh.wikipedia.org/wiki/SGRAM "wikilink")
  - [RDRAM](../Page/RDRAM.md "wikilink")
  - [雙通道](https://zh.wikipedia.org/wiki/雙通道 "wikilink")

## 参考资料

[fi:DRAM\#SDRAM](https://zh.wikipedia.org/wiki/fi:DRAM#SDRAM "wikilink")

[Category:電腦記憶體](https://zh.wikipedia.org/wiki/Category:電腦記憶體 "wikilink")

1.
2.
3.  <http://www.semiaccurate.com/2010/08/16/ddr4-not-expected-until-2015/>
4.   070928 micron.com
5.
6.  [Looking forward to DDR4](http://www.pcpro.co.uk/news/220257/idf-ddr3-wont-catch-up-with-ddr2-during-2009.html)
7.  [DDR3 successor](http://www.heise-online.co.uk/news/IDF-DDR4-the-successor-to-DDR3-memory--/111367)
8.   *[English translation](http://translate.google.com/translate?hl=en&sl=de&u=http://www.hardware-infos.com/news.php%3Fnews%3D2332&ei=bi44Sv_wBouZjAfVzYyjDQ&sa=X&oi=translate&resnum=1&ct=result&prev=/search%3Fq%3Dhttp://www.hardware-infos.com/news.php%253Fnews%253D2332%26hl%3Den%26safe%3Doff%26num%3D100)*