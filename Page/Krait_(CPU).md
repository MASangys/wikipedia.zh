> 本文内容由[Krait \(CPU\)](https://zh.wikipedia.org/wiki/Krait_\(CPU\))转换而来。


**Krait**是[高通](../Page/高通.md "wikilink")設計的[ARMv7相容](https://zh.wikipedia.org/wiki/ARM架構 "wikilink")[中央處理單元](https://zh.wikipedia.org/wiki/中央處理單元 "wikilink")，使用於[驍龍S](https://zh.wikipedia.org/wiki/驍龍 "wikilink")4及驍龍400/600/800/801/805系列系統晶片（[SoC](https://zh.wikipedia.org/wiki/SoC "wikilink")）上，於2012年發表並接替舊有的Scorpion處理器核心，大致的效能相當於至[Cortex-A15的水準](../Page/ARM_Cortex-A15_MPCore.md "wikilink")，但並不適用於[big.LITTLE結構](https://zh.wikipedia.org/wiki/big.LITTLE "wikilink")。\[1\]

## 概觀

  - 11級、帶三路解碼的整數流水線，四路帶[預測執行的](https://zh.wikipedia.org/wiki/分支預測 "wikilink")[超純量](../Page/超純量.md "wikilink")[亂序執行](https://zh.wikipedia.org/wiki/亂序執行 "wikilink")
  - [指令管線化](../Page/指令管線化.md "wikilink")的VFPv4\[2\]，128位元寬度的[NEON](https://zh.wikipedia.org/wiki/ARM架構#進階SIMD（NEON） "wikilink") [SIMD單元](https://zh.wikipedia.org/wiki/SIMD "wikilink")
  - 7個執行端口
  - 4 KB資料 + 4 KB指令直接映射快取（L0 [cache](https://zh.wikipedia.org/wiki/CPU快取 "wikilink")）
  - 16 KB資料 + 16 KB指令，4路組合的一級快取
  - 1 MB（雙CPU核心）或 2 MB（四CPU核心），8路組合的二級快取
  - [雙CPU核心或](../Page/多核心處理器.md "wikilink") 4 CPU核心配置
  - 效能（DMIPS/MHz）：
      - Krait 200: 3.3 （28奈米LP[製程](https://zh.wikipedia.org/wiki/製程 "wikilink")）
      - Krait 300: 3.39\[3\]（28[奈米LP製程](https://zh.wikipedia.org/wiki/奈米 "wikilink")）
      - Krait 400: 3.39（28奈米HPm製程）
      - Krait 450: 3.51（28奈米HPm製程）
  - 驍龍S4及驍龍400使用Krait 200核心，驍龍600以及部份驍龍S4 Pro （APQ8064 1AA）使用Krait 300核心，驍龍800/801使用Krait 400核心，Krait 450則用於驍龍805 SoC上

## 參見

  -
  - [高通驍龍元件列表](../Page/高通驍龍元件列表.md "wikilink")

## 參考資料

[Category:ARM架構](https://zh.wikipedia.org/wiki/Category:ARM架構 "wikilink") [Category:高通](https://zh.wikipedia.org/wiki/Category:高通 "wikilink")

1.
2.
3.