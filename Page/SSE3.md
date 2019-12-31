> 本文内容由[SSE3](https://zh.wikipedia.org/wiki/SSE3)转换而来。


[PD-20060908-SSE3-01.svg](https://zh.wikipedia.org/wiki/File:PD-20060908-SSE3-01.svg "fig:PD-20060908-SSE3-01.svg")架構所用的多媒體指令集，在指令數目上的比較圖\]\]

**SSE3**（Streaming SIMD Extensions 3），又稱**PNI**（Prescott New Instructions）\[1\]，它指的是：在原有架構的[處理器中](https://zh.wikipedia.org/wiki/處理器 "wikilink")，所第三次額外新增、添加的[多媒體](https://zh.wikipedia.org/wiki/多媒體 "wikilink")[指令集](https://zh.wikipedia.org/wiki/指令集 "wikilink")，之前的兩次分別是[SSE](../Page/SSE.md "wikilink")、[SSE2](../Page/SSE2.md "wikilink")。

SSE3是[Intel公司所其原有](https://zh.wikipedia.org/wiki/Intel "wikilink")[IA-32架構的處理器所研創](https://zh.wikipedia.org/wiki/IA-32 "wikilink")，並在2004年初的新款[Pentium 4](https://zh.wikipedia.org/wiki/Pentium_4 "wikilink")（P4E,Prescott核心）處理器\[2\]中使用，之後2005年4月[AMD公司也發表具備部分SSE](https://zh.wikipedia.org/wiki/AMD "wikilink")3功效的處理器：[Athlon 64](https://zh.wikipedia.org/wiki/Athlon_64 "wikilink")（E3步進核心）\[3\]，此後的x86處理器也幾乎都具備SSE3的新指令集功能。

此外，在SSE3提出之前，x86架構的處理器先後已有多種多媒體指令集被提創與使用，先後順序大致是Intel [MMX](../Page/MMX.md "wikilink")、AMD [3DNow\!](../Page/3DNow!.md "wikilink")\[4\]、Intel [SSE](../Page/SSE.md "wikilink")、Intel [SSE2](../Page/SSE2.md "wikilink")等。

附帶一提的是，SSE3比在它之前的[SSE2](../Page/SSE2.md "wikilink")增加13條新指令。

## 新指令所帶來的改變

SSE3最值得一提的新功效特點，是水平式的暫存器整數運算，而在此之前的[SSE](../Page/SSE.md "wikilink")、[SSE2](../Page/SSE2.md "wikilink")則僅能垂直運算。更進一步的特點是，指令執行時對多筆數值的同時加法運算、減法運算等，之後將結果進行儲存等，都可以在單一個暫存器完成，因此SSE3可以用更簡單的方式來實現同時間的多筆、大量[DSP](../Page/数字信号处理.md "wikilink")、[3D性質的運算](../Page/三维计算机图形.md "wikilink")。

此外，有個新指令可將浮點數數值轉換成整數數值，且進行此種轉換不需要將運算切換到rounding模式，過去此類轉換必須先切換至rounding模式，完成轉換後再退出rounding模式，此新指令可省去此模式切換程式，使整體運算更為加速，也因此可避免鄰近[執行管線](https://zh.wikipedia.org/wiki/執行管線 "wikilink")（Instruction pipeline）因此而停緩、等待（模式切換會使後續執行暫停，進而減損運算效能）。

另外，新增設的LDDQU指令能夠在交替載入長度不一的整數向量值時獲得更佳的效能，此指令可以讓Intel [NetBurst架構的執行核心跨越](https://zh.wikipedia.org/wiki/NetBurst "wikilink")[快取線的界線而進行數值載入](https://zh.wikipedia.org/wiki/快取 "wikilink")。

## 具備SSE3硬體支援功效的處理器

以下表列依據業者英文名稱的字母順序：

  - [AMD公司](https://zh.wikipedia.org/wiki/AMD "wikilink")：
      - [Athlon 64](https://zh.wikipedia.org/wiki/Athlon_64 "wikilink") - 從Stepping E3的Venice（[威尼斯](../Page/威尼斯.md "wikilink")，研發代號）以及Stepping E4的San Diego（[聖地牙哥](../Page/聖地牙哥.md "wikilink")，研發代號）開始具備。
      - [Athlon 64 X2](https://zh.wikipedia.org/wiki/Athlon_64_X2 "wikilink")
      - [Athlon 64 FX](https://zh.wikipedia.org/wiki/Athlon_64 "wikilink") - 從Stepping E4的San Diego（聖地牙哥，研發代號）開始具備。
      - [Opteron](../Page/Opteron.md "wikilink") - 從Stepping E4的San Diego（聖地牙哥，研發代號）開始具備。
      - [Sempron](https://zh.wikipedia.org/wiki/Sempron "wikilink") - 從Stepping E3的Palermo（研發代號）開始具備。
      - [Turion 64](../Page/Turion_64.md "wikilink")
      - [Turion 64 X2](../Page/Turion_64_X2.md "wikilink")
      - [Phenom](https://zh.wikipedia.org/wiki/Phenom "wikilink")
      - [Phenom II](https://zh.wikipedia.org/wiki/Phenom_II "wikilink")
  - [Intel公司](https://zh.wikipedia.org/wiki/Intel "wikilink")：
      - [Celeron D](https://zh.wikipedia.org/wiki/Celeron_D "wikilink")
      - [Pentium 4](https://zh.wikipedia.org/wiki/Pentium_4 "wikilink") - 從Prescott（研發代號）開始具備。
      - [Pentium D](https://zh.wikipedia.org/wiki/Pentium_D "wikilink")
      - [Intel Core](https://zh.wikipedia.org/wiki/Intel_Core "wikilink")
      - [Intel Core 2](https://zh.wikipedia.org/wiki/Intel_Core_2 "wikilink")
      - [Intel Core i7](https://zh.wikipedia.org/wiki/Intel_Core_i7 "wikilink")
      - [Xeon](https://zh.wikipedia.org/wiki/Xeon "wikilink") - 從Nocona（研發代號）開始具備。
  - [全美達](../Page/全美達.md "wikilink")公司（Transmeta）：
      - Efficeon TM88xx（不包含型款編號為TM86xx系列的[處理器](https://zh.wikipedia.org/wiki/處理器 "wikilink")）
  - [威盛電子](../Page/威盛電子.md "wikilink")（VIA）\[5\]:
      - [VIA Isaiah](https://zh.wikipedia.org/wiki/VIA_Isaiah "wikilink")
      - [C7-M](https://zh.wikipedia.org/wiki/C7-M "wikilink")
      - [C7-D](https://zh.wikipedia.org/wiki/C7-D "wikilink")

## 新增的指令

### 共通性的指令

**算術指令（Arithmetic）**

  - ADDSUBPD - *（Add-Subtract-Packed-Double）*
      - 輸入： - { A0, A1 }, { B0, B1 }
      - 輸出： - { A0 - B0, A1 + B1 }

<!-- end list -->

  - ADDSUBPS - *（Add-Subtract-Packed-Single）*
      - 輸入： { A0, A1, A2, A3 }, { B0, B1, B2, B3 }
      - 輸出： { A0 - B0, A1 + B1, A2 - B2, A3 + B3 }

**陣列結構指令（Array Of Structures；AOS）**

  - HADDPD - *（Horizontal-Add-Packed-Double）*
      - 輸入： { A0, A1 }, { B0, B1 }
      - 輸出： { B0 + B1, A0 + A1 }

<!-- end list -->

  - HADDPS *（Horizontal-Add-Packed-Single）*
      - 輸入： { A0, A1, A2, A3 }, { B0, B1, B2, B3 }
      - 輸出： { B0 + B1, B2 + B3, A0 + A1, A2 + A3 }

<!-- end list -->

  - HSUBPD - *（Horizontal-Subtract-Packed-Double）*
      - 輸入： { A0, A1 }, { B0, B1 }
      - 輸出： { A0 - A1, B0 - B1 }

<!-- end list -->

  - HSUBPS - *（Horizontal-Subtract-Packed-Single）*
      - 輸入： { A0, A1, A2, A3 }, { B0, B1, B2, B3 }
      - 輸出： { A0 - A1, A2 - A3, B0 - B1, B2 - B3 }

<!-- end list -->

  - LDDQU - 如上所述，這是有交替需求時所用的指令，可以載入（load）不整齊排列的整數向量值，此指令對視訊壓縮的運算工作有幫助。

<!-- end list -->

  - MOVDDUP、MOVSHDUP、MOVSLDUP - 此三個指令是針對複雜數目需求時所用，對波形信號的運算有幫助，例如音訊的聲波波形處理。

<!-- end list -->

  - FISTTP - 類似過去x87浮點運算中的FISTP指令，不過此指令的運算執行或忽略掉浮點控制暫存器的rounding（溢繞）模式的設定，並且用“chop”（truncate，截切）模式<ref>所謂rounding模式是暫存器的內存值溢位時，溢位會使內存值歸零再進行持續遞增，舉例而言，一個8-bit的[暫存器](https://zh.wikipedia.org/wiki/暫存器 "wikilink")，當其值為255時，若再加2即會變成1，就二進制來看即是11111111 + 00000010 = 00000001。而所謂chop模式是即便溢位也不歸零，而持續維持在最高數值，此也稱為飽和運算，即是不讓其溢位歸零情事發生，同樣的例子，在chop模式下依舊會維持255，即是11111111 + 00000010 = 11111111。

當然，截切、飽和忽略了更多的累加值，這在多媒體運算時有其需要，當音調254階再增個2階、3階，若因為溢位歸零而成為0階、1階，就會與255階相去甚遠，相對的254階若因飽和運算的效果最多會維持在255階，255階與254階仍是相近，多媒體運算力求快速即時而不力求精確，因此些許的運算數字結果偏差仍可接受。 </ref>取代。允許控制暫存器忽略繁重的載入及再載入，例如[C語言中將浮點數轉換成整數就需要使用此種截切效果](https://zh.wikipedia.org/wiki/C語言 "wikilink")，且此種截切程序已成為C語言中的標準作法。

### Intel針對SSE3所額外設計的自用指令

  - MONITOR、MWAIT - 此二個指令能針對多執行緒的應用程式進行執行最佳化，使處理器原有的[超執行緒](../Page/超執行緒.md "wikilink")功效獲得更佳的發揮。

## 附註說明

<references/>

## 參考引據

  - [X-bit Labs網站：SSE3指令集](https://web.archive.org/web/20060531094837/http://www.xbitlabs.com/articles/cpu/display/prescott_10.html)（2004年2月1日）

## 關連條目

  - [SIMD](https://zh.wikipedia.org/wiki/SIMD "wikilink") - SSE3指令集的特性原理基礎。
  - [SSE](../Page/SSE.md "wikilink")
  - [计算机编码](../Page/计算机编码.md "wikilink")
  - [SSSE3](../Page/SSSE3.md "wikilink") - SSE3指令集的擴充

## 外部連結

  - [Intel官方網站對SSE3的總覽說明](http://www.intel.com/cd/ids/developer/asmo-na/eng/66717.htm)

[Category:并发计算](https://zh.wikipedia.org/wiki/Category:并发计算 "wikilink") [Category:X86架構](https://zh.wikipedia.org/wiki/Category:X86架構 "wikilink")

1.  Prescott是Intel公司為其演進版的Pentium處理器所取的專案代稱，也稱為研發代號。
2.  研發代號：Prescott。Prescott是地名也是人名，[美國](https://zh.wikipedia.org/wiki/美國 "wikilink")、[英國](https://zh.wikipedia.org/wiki/英國 "wikilink")、[加拿大](../Page/加拿大.md "wikilink")皆有地方取名為Prescott，另有許多人的姓氏也為Prescott，如William Prescott（[美國革命](../Page/美國革命.md "wikilink")指揮官）、Richard Prescott（美國革命時期的英國將軍，曾兩度被擒）
3.  研發代號：[威尼斯](../Page/威尼斯.md "wikilink")（Venice）與[聖地牙哥](../Page/聖地牙哥.md "wikilink")（San Diego）
4.  此外也有[Cyrix](../Page/Cyrix.md "wikilink")公司提出的[EMMI多媒體指令](https://zh.wikipedia.org/wiki/EMMI "wikilink")，不過僅短暫提出，之後並未普及使用。
5.  研發團隊收併自[美國](https://zh.wikipedia.org/wiki/美國 "wikilink")[IDT公司所](https://zh.wikipedia.org/wiki/IDT "wikilink")100%轉投資的[Centaur公司](https://zh.wikipedia.org/wiki/Centaur公司 "wikilink")