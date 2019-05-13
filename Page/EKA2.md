**EKA2**（Epoc Kernel Architecture）是[Symbian
OS的第二代核心](../Page/Symbian_OS.md "wikilink")。

如同它的第一代核心[EKA1一般](../Page/EKA1.md "wikilink")，具有先佔式多工與記憶體保護功能。兩者主要的差異在於：

  - 即時處理（real-time）的保證（API的呼叫是快速、更重要、時間限制內）
  - 多執行緒的支持
  - 隨插式記憶體模型，支持更多的ARM處理器指令
  - 更友善的使用者介面支持，讓使用者可以在Symbian OS 8.0以及8.1中選取核心的設定。

EKA2最主要的優勢還在於支持電話具信號堆疊（singalling stacks）。一般而言，Symbian
OS的手機通常是執行於分散的處理器，或是同一個處理器，但是必須使用到複雜而且靠不住的“hacks”。這樣的“具信號堆疊”實在過於複雜，想將程式碼改寫，使其能在Symbian
OS自然的運作，顯然不容易做到。因此，EKA2提供了客制化層級（personality layers），實現一般作業系統的基礎基元（basic
primitives），允許具信號堆疊在Symbian OS上可擁有更多的不變性。

[Category:操作系统内核](https://zh.wikipedia.org/wiki/Category:操作系统内核 "wikilink")
[Category:微內核](https://zh.wikipedia.org/wiki/Category:微內核 "wikilink")