> 本文内容由[SpeedStep](https://zh.wikipedia.org/wiki/SpeedStep)转换而来。


**SpeedStep**技术，最早用於[Pentium III Mobile处理器](https://zh.wikipedia.org/wiki/Pentium_III_Mobile "wikilink")——一种笔记本所用的移动版CPU中，使CPU能在高、低两个确定的频率间切换，而且这种切换不是即时调整的，通常设置为当用电池时降为低频，而在用交流电源时恢复到高频（全速）。由于降为低频的同时也会降低电压和功耗，一方面CPU本身耗电量减少，另一方面发热量也会减少，这样还能缩减甚至完全避免使用风扇散热，进一步的节约了用电，因此能延长电池的使用时间；另一方面在用交流电的时候又能恢复为全速工作以获得最高性能。

SpeedStep技术的升级版本EIST，全名為Enhanced Intel SpeedStep Technology（增强型Intel SpeedStep技术），是[Intel全新的節約能源技術](https://zh.wikipedia.org/wiki/Intel "wikilink")，最早用于Pentium 4 M處理器上，同样也是一款笔记本所用的移动版CPU。出于和AMD台式机处理器中的[Cool'n'Quiet](../Page/Cool'n'Quiet.md "wikilink")技术竞争的目的，EIST 技术现在也推广到Intel较新的台式机处理器中，目前使用这一技术的Intel台式机和移动版CPU包括Core系列、[Pentium D系統](https://zh.wikipedia.org/wiki/Pentium_D "wikilink")（不包括805、820、915）、[Pentium M系列和](https://zh.wikipedia.org/wiki/Pentium_M "wikilink")[超线程的](https://zh.wikipedia.org/wiki/超线程 "wikilink")[Pentium 4系列](https://zh.wikipedia.org/wiki/Pentium_4 "wikilink")（不包括5XX）。[Intel Core處理器](https://zh.wikipedia.org/wiki/Intel_Core "wikilink")，[Pentium Dual-Core和以後的](https://zh.wikipedia.org/wiki/Pentium_Dual-Core "wikilink")[Pentium處理器](https://zh.wikipedia.org/wiki/Pentium "wikilink")，[Celeron](https://zh.wikipedia.org/wiki/Celeron "wikilink")，[Atom均支援EIST](https://zh.wikipedia.org/wiki/Intel_Atom "wikilink")。

与早期的SpeedStep技术不同的是，增强型SpeedStep技术可以动态调整CPU频率，當CPU使用率低下或接近零的時候动态降低CPU的倍率，令其工作頻率下降，從而降低电压、功耗以及发热；而一旦监测到CPU使用率很高的时候，立即恢复到原始的速率工作。当然，对于移动版处理器，仍然可以设置在使用电池的时候永远不要调整到最高频率，而始终维持在低频率工作。

EIST技術由作業系統執行CPU頻率的調整，Windows XP及以上均提供支援，桌上型電腦可在BIOS中選擇EIST技術的開啟/關閉。Intel在[Skylake微架構](../Page/Skylake微架構.md "wikilink")中引入Speed Shift(Hardware P-State)技術。

[AMD的CPU有类似效果的技术](https://zh.wikipedia.org/wiki/AMD "wikilink")，称作[PowerNow\!](https://zh.wikipedia.org/wiki/PowerNow! "wikilink")（移动平台）或者[Cool'n'Quiet](../Page/Cool'n'Quiet.md "wikilink")（桌面平台）。

\(P = C V^2 f.\)

  - P = Power（消耗功率）
  - C = Capacitance（電容率）
  - V = Voltage （電壓）
  - f = frequency （頻率）

## 参见

  - [降频](https://zh.wikipedia.org/wiki/降频 "wikilink")
  - [Cool'n'Quiet](../Page/Cool'n'Quiet.md "wikilink")
  - [Intel Turbo Boost](https://zh.wikipedia.org/wiki/Intel_Turbo_Boost "wikilink")

## 外部链接

  - \[詞解:TSC SpeedStep省電機制的副作用\] - 使用SpeedStep省電機制的CPU，其時戳計數器的精確度將受到影響。
  - [什么是英特尔®增强型SpeedStep®技术 ？](http://www.intel.com/cd/products/services/apac/zho/notebook/processors/84970.htm#11)

[Category:英特爾](https://zh.wikipedia.org/wiki/Category:英特爾 "wikilink") [Category:微處理器](https://zh.wikipedia.org/wiki/Category:微處理器 "wikilink") [Category:计算机硬件调校](https://zh.wikipedia.org/wiki/Category:计算机硬件调校 "wikilink")