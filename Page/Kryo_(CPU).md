**Kryo**是[高通](../Page/高通.md "wikilink")設計的或高通基於ARM Cortex-A系列客製的[64位元](../Page/64位元.md "wikilink")[ARMv8相容](https://zh.wikipedia.org/wiki/ARM架構 "wikilink")[中央處理單元系列](https://zh.wikipedia.org/wiki/中央處理單元 "wikilink")，用於其自家的[驍龍產品線](https://zh.wikipedia.org/wiki/驍龍 "wikilink")，接替[32位元](../Page/32位元.md "wikilink")ARMv7相容的[Krait處理器單元](../Page/Krait_\(CPU\).md "wikilink")。

## Kryo 200

Kryo CPU核心的首次發表是2015年9月公佈的驍龍820[系統晶片](https://zh.wikipedia.org/wiki/SoC "wikilink")，型號Kryo 200，\[1\]採用[三星電子](../Page/三星電子.md "wikilink")的14奈米[FinFET製程](https://zh.wikipedia.org/wiki/多柵極電晶體 "wikilink")。Kryo 200可用於[big.LITTLE結構上](https://zh.wikipedia.org/wiki/ARM_big.LITTLE "wikilink")，既可充當LITTLE叢集（低時脈、小容量快取），也可充當big叢集（高時脈、大容量快取）。在驍龍820的實作上，採用了兩個雙Kryo 200 CPU核心的叢集，一個由兩顆低時脈（1.36/1.6 GHz）和小容量L2快取（512 KiB）組成的LITTLE叢集，和一個由兩顆高時脈（1.8/2.15 GHz）和大容量L2快取（1 MiB）組成的big叢集，以HMP方式運作。高通最初在驍龍61x系列和驍龍808/810上使用類似的設計（也是高通第一次使用big.LITTLE設計），不過當時由於製程工藝問題導致驍龍61x系列的效能表現不良。Kryo 200的設計方式與Karit的類似，不過支援的功能更多。\[2\]\[3\]

  - 64位元ARMv8-A相容
  - 五個指令解碼端，[超純量](../Page/超純量.md "wikilink")管線化設計，[亂序執行](https://zh.wikipedia.org/wiki/亂序執行 "wikilink")
  - 32 KiB資料 + 32 KiB指令一級快取
  - 512 KiB 或 1 MiB二級快取，前者用於LITTLE叢集，後者用於big叢集
  - 效能：6.3 DMIPS/MHz
  - TrustZone安全擴展支援
  - 硬體[虛擬化](../Page/虛擬化.md "wikilink")支援
  - 適用於big叢集或LITTLE叢集，2+2佈局
  - 時脈1.36\~2.25GHz

## Kryo 280

Kryo 280與驍龍835 SoC一同於2016年11月發表，主打高階行動裝置市場。\[4\]

與高通根據ARM指令集架構授權而自行設計的ARMv8相容的Kryo不同，Kryo 280是高通基於ARM新的IP核半客制授權協議下修改的產物。\[5\]Kryo 280相比Kryo有更好的整數運算效能，更適合一般應用場合，但是相對的，Kryo 280的[浮點運算效能則是不如Kryo](https://zh.wikipedia.org/wiki/浮點運算 "wikilink")。搭載Kryo 280的驍龍835採用與一般ARM big.LITTLE的HMP設計，4顆低耗電CPU核心和4顆高效能CPU核心的配置，使用三星電子的10纳米FinFET製程。\[6\]

  - 推測基於Cortex-A73、客製而來，分別作高效能版本及低耗電版本\[7\]
  - 更佳的整數運算效能及快取效能，高效能叢集具備2MiB二級快取，低耗電叢集也具備1MiB二級快取
  - 高效能CPU核心時脈可達2.45GHz，低耗電CPU核心也有1.9GHz的時脈

## Kryo 260

Kryo 260與驍龍660 SoC一同於2017年5月發表，主打主流效能市場。驍龍660採用的是三星電子的14奈米LPP製程。\[8\]

  - 基於[Cortex-A73](https://zh.wikipedia.org/wiki/ARM_Cortex-A73 "wikilink")（高效能版本）、[Cortex-A53](https://zh.wikipedia.org/wiki/ARM_Cortex-A53 "wikilink")（低耗電版本）客製而來\[9\].
  - big.LITTLE相容，4顆低耗電CPU核心和4顆高效能CPU核心的配置
  - 高效能叢集的二級快取容量爲1MiB，低耗電叢集的二級快取1MiB
  - 高效能CPU核心時脈可達2.2GHz

## Kryo 385

Kryo 385與驍龍845 SoC一同於2017年12月發表。驍龍845是ARM處理器當中首個使用DynamIQ的SoC，採用三星電子的10奈米製程製造。\[10\]高通稱高效能CPU核心比上一代Kryo 280的效能高25\~30%，低耗電CPU核心也有15%的效能提升。

  - 基於[Cortex-A75](https://zh.wikipedia.org/wiki/ARM_Cortex-A75 "wikilink")、[Cortex-A55客製而來](https://zh.wikipedia.org/wiki/ARM_Cortex-A55 "wikilink")，前者作爲高效能CPU核心「Kryo 385『Gold』」，後者作爲低耗電CPU核心「Kryo 385『Silver』」
  - DynamIQ相容，不適用於big.LITTLE。但驍龍845依舊採用了4顆低耗電CPU核心和4顆高效能CPU核心的配置
  - 高效能叢集的二級快取容量爲1MiB，低耗電叢集的二級快取512KiB，雖然容量有所減少但頻寬更高
  - 所有叢集共用容量達2MiB的三級快取
  - 高效能CPU核心時脈可達2.8GHz，低耗電CPU核心時脈也達到1.8GHz

## 參見

  -
  - [高通驍龍元件列表](../Page/高通驍龍元件列表.md "wikilink")

## 參考資料

[Category:ARM架構](https://zh.wikipedia.org/wiki/Category:ARM架構 "wikilink") [Category:高通](https://zh.wikipedia.org/wiki/Category:高通 "wikilink")

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