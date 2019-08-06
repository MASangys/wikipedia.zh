**Intel C++編譯器**（），經常被稱為icc 或 icl，一種[C語言與](https://zh.wikipedia.org/wiki/C語言 "wikilink")[C++](../Page/C++.md "wikilink")的[編譯器](../Page/編譯器.md "wikilink")，可以在[macOS](https://zh.wikipedia.org/wiki/macOS "wikilink")，[Linux](../Page/Linux.md "wikilink")與[Microsoft Windows上運行](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")，由[英特爾公司研發](https://zh.wikipedia.org/wiki/英特爾 "wikilink")。

## 概論

對於[IA-32與Intel](https://zh.wikipedia.org/wiki/IA-32 "wikilink") [x86-64架構](https://zh.wikipedia.org/wiki/x86-64 "wikilink")，這個編譯器能產生最佳化的代碼，但是對於非Intel但是相容於Intel架構的處理器，如AMD處理器，這個編譯器就無法產出最佳化的代碼。針對[IA-64](https://zh.wikipedia.org/wiki/IA-64 "wikilink")（[Itanium](https://zh.wikipedia.org/wiki/Itanium "wikilink") 2）處理器，這個編譯器的特定版本（11.1版），適用於發展在Linux平台上的應用程式。

## 套件組

## 批評

Intel Compiler曾經被指控編譯出來的Code會檢查目標電腦的CPU Vendor ID，如果不是Genuine Intel(Intel本身CPU的Vendor ID)，就會刻意「反最佳化」程式碼，造成在非Intel CPU的電腦上運行效能低落。根據測試，這個差異可以高達47%。這不僅僅是「針對Intel最佳化」而已，而是刻意的反最佳化競爭對手的code。這同時也替Intel惹來了反托拉斯法的調查。\[1\]

## 註釋

## 外部連結

  -
  - [Cilk Plus Open Source Site](http://www.cilkplus.org/)

  - [TBB Open Source Site](http://www.threadingbuildingblocks.org)

  - [Free download of Intel compilers for non-commercial use](http://software.intel.com/en-us/articles/non-commercial-software-download/)

[Category:C++編譯器](https://zh.wikipedia.org/wiki/Category:C++編譯器 "wikilink") [Category:C編譯器](https://zh.wikipedia.org/wiki/Category:C編譯器 "wikilink") [Category:英特尔软件](https://zh.wikipedia.org/wiki/Category:英特尔软件 "wikilink")

1.  <https://www.solidot.org/story?sid=15544>