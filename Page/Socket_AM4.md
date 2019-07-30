**Socket AM4**是[超微半導體公司開發的](https://zh.wikipedia.org/wiki/超微半導體 "wikilink")[中央處理器插座](../Page/CPU插座.md "wikilink")，用於[Zen微架構的](https://zh.wikipedia.org/wiki/Zen微架構 "wikilink")[Ryzen處理器以及ARM公司授權AMD開發的](../Page/AMD_Ryzen.md "wikilink")[ARM架構處理器上](https://zh.wikipedia.org/wiki/ARM架構 "wikilink")。\[1\]\[2\]

在此之前AMD在消費級市場的劃分中，高性能[台式机採用的是](https://zh.wikipedia.org/wiki/台式机 "wikilink")[Socket AM3+](../Page/Socket_AM3+.md "wikilink")，主流性能桌上型電腦採用的是[Socket FM2+](../Page/Socket_FM2+.md "wikilink")，入門級台式机則是另立[Socket AM1](../Page/Socket_AM1.md "wikilink")，如此多的連接器規格令成本增加，並且用户的選擇范围變得狹窄，因此AMD使用Socket AM4的目的便是將目前繁多的處理器連接器規格統一起來。\[3\]\[4\] 2015年6月，AMD的技術發展規劃將原定主流性能台式机使用的FM3也更換為AM4。\[5\]行動平台則是改成了使用[Socket FP4介面](https://zh.wikipedia.org/wiki/Socket_FP4 "wikilink")，伺服器/工作站採用的是高規格的[Socket SP3](../Page/Socket_SP3.md "wikilink")，並衍生有Ryzen ThreadRipper系列使用的[Socket TR4](../Page/Socket_TR4.md "wikilink")。

## 技術特性

[Socket_AM4_X370_multi_GPU.svg](https://zh.wikipedia.org/wiki/File:Socket_AM4_X370_multi_GPU.svg "fig:Socket_AM4_X370_multi_GPU.svg") Socket AM4的連接器擁有1,331個管腳，相較於Socket AM3+、FM2+以及AM1，管腳排列大幅變動、管腳數量增加。插座的尺寸仍然維持在 40mm × 40mm，插針陣列封裝，不過儘管如此，Socket AM4的散熱器扣具仍有所變動，不能完全相容AM2至AM3+時代的[散熱器](https://zh.wikipedia.org/wiki/散熱模組 "wikilink")，部分副廠設計的散熱器需要更換新的扣具方能安裝於Socket AM4上。\[6\]\[7\]處理器的最大[熱設計功耗是](https://zh.wikipedia.org/wiki/熱設計功耗 "wikilink")140W。\[8\]另外，CPU晶粒採用和AMD以往的[Socket 754平台一樣的裸露處理器](../Page/Socket_754.md "wikilink")[晶粒](../Page/晶粒.md "wikilink")形式，不過AMD在此代中，和[自家的GPU產品一樣](https://zh.wikipedia.org/wiki/AMD_Radeon "wikilink")，加上了金屬保護框來降低晶片被壓碎的機率，這樣做的散熱效能比對手[英特爾的金屬保護蓋](https://zh.wikipedia.org/wiki/英特爾 "wikilink")+[導熱膏的要好](https://zh.wikipedia.org/wiki/導熱膏 "wikilink")。\[9\]不過首款採用Zen微架構的處理器產品AMD Ryzen，仍然使用硬釬焊（金属铟）將金屬頂蓋覆蓋處理器晶片之上的設計。\[10\]

採用Socket AM4插座的[電腦平台](https://zh.wikipedia.org/wiki/電腦 "wikilink")，只能使用[DDR4記憶體](../Page/DDR4_SDRAM.md "wikilink")，原生支援DDR4-2400記憶體規格，最高暫定支援至DDR4-3200，支援[雙通道記憶體配置](https://zh.wikipedia.org/wiki/雙通道 "wikilink")，每通道可容納兩個[DIMM](../Page/DIMM.md "wikilink")記憶體模組。同樣[主機板的主晶片佈局與Socket](https://zh.wikipedia.org/wiki/主機板 "wikilink") FMx平台以及現行的英特爾桌上型電腦類似，[北橋晶片被整合至處理器內](https://zh.wikipedia.org/wiki/北橋 "wikilink")，剩餘的[南橋晶片作為](https://zh.wikipedia.org/wiki/南橋 "wikilink")[FCH那樣的低速I](https://zh.wikipedia.org/wiki/AMD_FCH "wikilink")/O匯流排控制器。\[11\]不過，AMD在AM4處理器上也整合了部分南橋功能（如部分[USB 3.x](../Page/USB_3.0.md "wikilink")，部分[NVMe](https://zh.wikipedia.org/wiki/NVMe "wikilink")/[SATA](../Page/SATA.md "wikilink")）\[12\]，主機板上的FCH晶片則是作為擴充用途。\[13\]

Socket AM4處理器均內建的[PCIe控制器](https://zh.wikipedia.org/wiki/PCIe "wikilink")，最多可提供24條PCIe匯流排通道，其中4條供晶片組使用，16條供單個或多個GPU使用（內建GPU的[Ryzen](https://zh.wikipedia.org/wiki/Ryzen "wikilink") APU和[APU僅提供](https://zh.wikipedia.org/wiki/AMD加速處理器 "wikilink")8條PCIe用於顯示卡等PCIe[擴充卡的擴充](https://zh.wikipedia.org/wiki/擴充卡 "wikilink")），餘下4條可用於儲存裝置（如[NVMe](https://zh.wikipedia.org/wiki/NVMe "wikilink")/[SATA](../Page/SATA.md "wikilink")），目前支援至PCIe 3.0規格。但是，由AMD 300/400系列晶片組提供的PCIe通道只支援到PCIe 2.0規格\[14\]\[15\]。Zen 2微架構的Ryzen 3000處理器和AMD X570晶片組可支援[PCI Express](../Page/PCI_Express.md "wikilink") 4.0（內建顯示核心的Ryzen 3000仍是PCIe 3.0）\[16\]\[17\]。

## 部署使用

### 晶片組

首個使用Socket AM4的[FCH晶片組是B](https://zh.wikipedia.org/wiki/AMD_FCH "wikilink")350、A320，用於核心代號為「Bristol Ridge」的AMD加速處理器。這些[晶片組支援](https://zh.wikipedia.org/wiki/晶片組 "wikilink")[USB 3.1](../Page/USB_3.1.md "wikilink")、[SATA](../Page/SATA.md "wikilink")、[NVMe等功能](https://zh.wikipedia.org/wiki/NVMe "wikilink")。AMD Ryzen發表時還有性能級型號X370發表，\[18\]\[19\]\[20\]\[21\]這些晶片組是AMD委託台灣祥碩科技設計而來。\[22\]主機板尺寸除了[ATX](../Page/ATX規格.md "wikilink")、[M-ATX以外](../Page/MicroATX.md "wikilink")，還有以往極其罕見的基於AMD旗艦CPU系統平台的[ITX尺寸的導入使用](../Page/Mini-ITX.md "wikilink")。\[23\]

### 微處理器

首批使用Socket AM4的AMD處理器是使用[Excavator微架構](https://zh.wikipedia.org/wiki/Excavator微架構 "wikilink")、核心代號「Bristol Ridge」的AMD APU。\[24\]這些CPU都內建了南橋的功能，但是可以同時使用主機板上的FCH晶片提供的南橋功能。\[25\]

  - 雙模組4執行緒型號：A12-9800、A12-9800E、A10-9700、A10-9700E、A8-9600、Athlon X4 950\[26\]
  - 單模組2執行緒型號：A6-9500、A6-9500E

2017年3月初美商超微發表的AMD Ryzen，是首款採用Zen微架構的處理器系列，核心代號「Summit Ridge」，桌上型電腦使用的Ryzen 3、5、7系列全部使用採用了Socket AM4，後續推出的核心代號為「Raven Ridge」的桌上型APU產品線、「Pinnacle Ridge」改進型Ryzen系列也使用這個插槽，全為4核心至8核心、雙通道記憶體支援、由處理器提供的16條或8條PCIe通道。不過8核心以上配置的Ryzen Threadripper系列則是採用了[Socket TR4介面](../Page/Socket_TR4.md "wikilink")；行動型處理器Ryzen Mobile系列採用輕薄化的BGA封裝（即Socket FP5介面）\[27\]。

## 參見

  - [Zen微架構](../Page/AMD_Zen.md "wikilink")
  - [AMD Ryzen](../Page/AMD_Ryzen.md "wikilink")
  - [AMD Ryzen處理器列表](https://zh.wikipedia.org/wiki/AMD_Ryzen處理器列表 "wikilink")
  - [AMD加速處理器列表](../Page/AMD加速處理器列表.md "wikilink")
  - [AMD晶片組列表](../Page/AMD晶片組列表.md "wikilink")

## 參考資料

## 外部連結

  - [AMD Confirms x86 Zen Based Enthusiast FX CPUs and 7th Generation APUs in 2016 – Compatible With AM4 Socket](http://wccftech.com/amd-confirms-x86-zen-based-enthsiuast-fx-cpus-7th-generation-apus-2016-compatible-am4-socket/)
  - [AMD Zen处理器和AM4接口实物曝光](http://diy.pconline.com.cn/837/8376120.html)

[Category:CPU插座](https://zh.wikipedia.org/wiki/Category:CPU插座 "wikilink")

1.  <cite class="citation news">Tyson, Mark (5 September). ["7th Generation AMD A-Series desktop PC systems start to ship"](http://hexus.net/tech/news/cpu/96565-7th-generation-amd-a-series-desktop-pc-systems-start-ship/). </cite>

2.  <cite class="citation news">Mah Ung, Gordon (5 September 2016). </cite>

3.  <cite class="citation web">["AMD's 2016-2017 x86 Roadmap: Zen Is In, Skybridge Is Out"](http://www.anandtech.com/show/9231/amds-20162017-x86-roadmap-zen-is-in). </cite>

4.  <http://wccftech.com/amd-confirms-x86-zen-based-enthsiuast-fx-cpus-7th-generation-apus-2016-compatible-am4-socket/>

5.  <http://www.kitguru.net/components/cpu/anton-shilov/amd-set-to-release-first-zen-based-microprocessors-in-late-2016-document/>

6.

7.

8.  <http://www.pcper.com/news/Cases-and-Cooling/Report-AMD-Socket-AM4-Compatible-Existing-AM2AM3-Coolers>

9.

10.

11.

12. <https://rog.asus.com/articles/technologies/your-guide-to-the-ryzen-am4-platform-and-its-x370-b350-and-a320-chipsets/>

13.

14.

15. <https://rog.asus.com/articles/technologies/your-guide-to-the-ryzen-am4-platform-and-its-x370-b350-and-a320-chipsets/>

16. <https://www.amd.com/zh-hant/chipsets/x570>

17. <https://www.amd.com/zh-hant/products/apu/amd-ryzen-5-3400g>

18.

19.
20.

21.

22.

23.

24.

25.
26. ，無內顯版本的AMD APU

27.