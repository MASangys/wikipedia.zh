**Netburst微處理器架構**，[Intel内部称为](../Page/Intel.md "wikilink")**P68**，為[英特爾的](../Page/英特爾.md "wikilink")[X86微處理器架構](../Page/X86.md "wikilink")，[P6微處理器製程的後繼者](../Page/Intel_P6.md "wikilink")。第一個使用這架構的[CPU是](../Page/CPU.md "wikilink")[Pentium
4的第一代核心](../Page/Pentium_4.md "wikilink")[Willamette](../Page/Willamette.md "wikilink")，於2000年推出。所有后继的[Pentium
4和](../Page/Pentium_4.md "wikilink")[Pentium
D衍生架构也都基于Netburst](../Page/Pentium_D.md "wikilink")。2001年中期推出的〔[Foster核心](../Page/Foster.md "wikilink")〕亦是基于此架構；但此后[Xeon核心切换到其他架构](../Page/Xeon.md "wikilink")。基於Pentium
4的[Celeron也使用了此架構](../Page/Celeron.md "wikilink")。

为了与前代架构区别，有时也將Netburst稱作**Intel P7**或**Intel
80786**，但都不是官方名稱。事實上，P7被[Intel内部用作](../Page/Intel.md "wikilink")[Itanium處理器微架構的代號](../Page/Itanium.md "wikilink")。

## 技術

### 超深管線技術

第一代的NetBurst架構的核心的Willamette擁有比[Pentium
III的](../Page/Pentium_III.md "wikilink")10級管線更多的12級管線。直到最後的Prescott核心，它有令人驚奇的31級管線。深管線可以讓處理器以更高的時脈運作，但這個做法有很多壞處，主要是減低了一個週期中可執行的指令數。另一方面，深管線在[預測執行預測錯誤時的效能損失更大](../Page/預測執行.md "wikilink")。因此NetBurst使用快速執行引擎以解決問題。

### 快速執行引擎

處理器上的[算術邏輯單元在這個技術下會有核心時脈的兩倍時脈速度](../Page/算術邏輯單元.md "wikilink")。即3.5GHz的處理器，其算術邏輯單元則以7GHz速度運行。此舉用以解決IPC過低的問題，同時增強其整數的運算能力。但有部份指令會在此情形下相對及絕對的運行較慢。

### 执行跟踪高速缓存

英特爾稱之為Execution Trace
Cache（执行跟踪高速缓存）的快取包含在L1快取中，其儲存了已解碼的指令。當處理器收到新的指令時，處理器會在L1直接存取指令，取代一般的解碼工作，以減低時間。另外，在L2的指令都有預計的執行路徑，故在讀取後續指令時，處理器已經執行正確次序。

雖然有這些最佳化，但是NetBurst仍未能證明其成功。英特爾認為它可以挑戰10GHz的時脈速度，但當其時脈提昇至3.8GHz的時候，英特爾仍未能解決發熱量的問題。最後英特爾決定放棄NetBurst，並以全新架構取代。

## 版本

### Willamette

  - 第一代使用NetBurst架構的核心
  - 180納米製程
  - 2000年推出
  - 12級管線

### Northwood

  - 第二代使用NetBurst架構的核心
  - 2002年1月推出
  - 130納米製程
  - 20級管線
  - 共有三個不同前置匯流排的版本
      - 400 MHz
      - 533 MHz
          - 3.06GHz的處理器加入[超線程技術](../Page/超線程.md "wikilink")
          - 型號中一律加入B以分別
      - 800 MHz
          - 全部加入超線程
          - 型號中一律加入C以分別

### Prescott

  - 第三代使用NetBurst架構的核心
  - 2004年2月推出
  - 31級管線
  - 90納米製程
  - 分別使用兩種介面
      - [Socket 478](../Page/Socket_478.md "wikilink") -
        型號一律加上E〔800MH外頻〕或A〔533MHz外頻〕
      - [LGA775](../Page/LGA775.md "wikilink") - 一律以新命名法命名〔5XX系列及6XX系列〕
  - L2加大至1MB，隨後2MB
  - 支線預測器有重大的更新
  - 加入[SSE3](../Page/SSE3.md "wikilink")
  - 部份加入[EM64T](../Page/EM64T.md "wikilink")、[xD](../Page/NX位元.md "wikilink")

雖然有大量新的特色，但只有Northwood相近的時脈〔當時由2.8GHz起跳〕，同時熱量不斷上升。

### Smithfield

  - 為兩枚Prescott合併而成的雙核心版本，大部份跟Prescott 5X1系列處理器一樣。
  - Smithfield為Pentium D 8XX系列。

### Cedar Mill/Presler

  - 為65納米（65 nm）製程
  - Cedar Mill為單核心（Pentium 6X1系列），Presler為雙核心（Pentium D 9XX系列）
  - 為最後使用NetBurst的核心

## 後繼者

[英特爾宣佈以](../Page/英特爾.md "wikilink")[Intel
Core微處理器架構取代NetBurst微處理器架構](../Page/Intel_Core微處理器架構.md "wikilink")。
於2006年初推出的**Presler**將會是最後一個使用NetBurst的桌面處理器核心，將會被使用Intel
Core架構的**Conroe**取代。

## 基於NetBurst的處理器

  - [Celeron](../Page/Celeron.md "wikilink")（與Pentium 4同期）
  - [Celeron D](../Page/Celeron#Celeron_D.md "wikilink")
  - [Pentium 4](../Page/Pentium_4.md "wikilink")
  - [Pentium 4 Extreme
    Edition](../Page/Pentium_4#Extreme_Edition.md "wikilink")
  - [Pentium D](../Page/Pentium_D.md "wikilink")
  - [Pentium Extreme
    Edition](../Page/Pentium_Extreme_Edition.md "wikilink")
  - [Xeon](../Page/Xeon.md "wikilink")（與Pentium 4同期）

## 參見

  - [X86](../Page/X86.md "wikilink")

[Category:Intel處理器架構](https://zh.wikipedia.org/wiki/Category:Intel處理器架構 "wikilink")
[Category:X86架構](https://zh.wikipedia.org/wiki/Category:X86架構 "wikilink")