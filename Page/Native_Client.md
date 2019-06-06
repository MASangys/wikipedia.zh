**Google Native
Client**（縮寫為****），是一个由[谷歌所發起的](https://zh.wikipedia.org/wiki/谷歌 "wikilink")[開放原始碼計劃](https://zh.wikipedia.org/wiki/開放原始碼 "wikilink")，採用[BSD许可证](../Page/BSD许可证.md "wikilink")。它採用[沙盒技術](https://zh.wikipedia.org/wiki/沙盒_\(計算機安全\) "wikilink")，讓[Intel
x86](https://zh.wikipedia.org/wiki/Intel_x86 "wikilink")、[ARM或](https://zh.wikipedia.org/wiki/ARM "wikilink")[MIPS子集的](https://zh.wikipedia.org/wiki/MIPS "wikilink")[機器碼直接在沙盒上運行](https://zh.wikipedia.org/wiki/機器碼 "wikilink")。它能夠從[瀏覽器直接運行程式機器碼](https://zh.wikipedia.org/wiki/瀏覽器 "wikilink")，獨立於使用者的作業系統之外，使[Web應用程式可以用接近於機器碼運作的速度來執行](https://zh.wikipedia.org/wiki/Web應用程式 "wikilink")，同時兼顧安全性。其功能類似於[微軟的](https://zh.wikipedia.org/wiki/微軟 "wikilink")
[ActiveX](../Page/ActiveX.md "wikilink")，但是ActiveX只支援視窗系統。

Google將這項功能合併在[Chrome
OS之下開發](../Page/Chrome_OS.md "wikilink")。它也可以被用來開發安全的[瀏覽器](https://zh.wikipedia.org/wiki/瀏覽器 "wikilink")[外掛程式](https://zh.wikipedia.org/wiki/外掛 "wikilink")。

2017年5月31日，Google宣布放棄PNaCl轉向[WebAssembly](../Page/WebAssembly.md "wikilink")\[1\]。

## 技術內容

NaCl使用[Newlib作為它的](https://zh.wikipedia.org/wiki/Newlib "wikilink")[C標準函式庫](../Page/C標準函式庫.md "wikilink")，但它也支援[GNU
C 函式庫](https://zh.wikipedia.org/wiki/GNU_C_函式庫 "wikilink")。

它最初只支援[x86平台](https://zh.wikipedia.org/wiki/x86 "wikilink")，但目前也支援[ARM平台與](https://zh.wikipedia.org/wiki/ARM "wikilink")[x86-64](https://zh.wikipedia.org/wiki/x86-64 "wikilink")。

### 沙盒技術

NaCl運用沙盒技术以防止外來（第三方）機器碼影響系統安全；特別是在[x86平台上運用](https://zh.wikipedia.org/wiki/x86 "wikilink")[記憶體區段](https://zh.wikipedia.org/wiki/記憶體區段 "wikilink")，限制[外掛程式所能讀寫的記憶體范围](https://zh.wikipedia.org/wiki/外掛程式 "wikilink")。\[2\]

由於ARM與x86-64[長模式不支援記憶體區段](https://zh.wikipedia.org/wiki/長模式 "wikilink")，因此在這些平台上NaCl的記憶體寫入地址是由沙盒過濾。\[3\]

### 機器碼驗證器

NaCl運用機器碼驗證器（Code
Validator）来保證只有安全機器碼能在系統執行。由於x86/x86-64是[複雜指令集](https://zh.wikipedia.org/wiki/複雜指令集 "wikilink")，[指令長度不一](https://zh.wikipedia.org/wiki/指令 "wikilink")，透過[控制流程可能隱藏非安全機器碼](../Page/控制流程.md "wikilink")，從而使驗證十分耗時。NaCl運用固定長度的16或32[位元組的指令束](https://zh.wikipedia.org/wiki/位元組 "wikilink")(Instruction
Bundle)，使機器碼驗證器設計簡單（只有約600行[C語言](https://zh.wikipedia.org/wiki/C語言 "wikilink")）和高效率；\[4\]
\[5\] 而運用指令束只是失去5%的執行效率。

## 應用軟件的移植

NaCl支援[單指令流多數據流指令](https://zh.wikipedia.org/wiki/單指令流多數據流 "wikilink")（如[SSE](../Page/SSE.md "wikilink")、[3DNow\!](../Page/3DNow!.md "wikilink")）及[多執行緒介面](https://zh.wikipedia.org/wiki/多執行緒 "wikilink")，應用軟件一般只需簡單的修改便可以移植到NaCl平台；在2009年一個發布會上，NaCl開發人員示範一個為NaCl平台的移植而修改了20行原始碼的[H264解碼器軟件](https://zh.wikipedia.org/wiki/H264 "wikilink")。\[6\]

## 參考資料

## 外部連結

  - [NaCl計劃官網](http://code.google.com/p/nativeclient/)

  -  - [Google I/O](https://zh.wikipedia.org/wiki/Google_I/O "wikilink")
    2009技術專題討論

  -  - Google I/O 2012技術專題討論

[Category:Google軟體](https://zh.wikipedia.org/wiki/Category:Google軟體 "wikilink")
[Category:自由软件](https://zh.wikipedia.org/wiki/Category:自由软件 "wikilink")
[Category:安全软件](https://zh.wikipedia.org/wiki/Category:安全软件 "wikilink")

1.

2.  [Native Client: A Sandbox for Portable, Untrusted x86 Native
    Code](http://research.google.com/pubs/archive/34913.pdf)

3.  [Adapting Software Fault Isolation to Contemporary CPU
    Architectures](http://nativeclient.googlecode.com/svn/data/site/NaCl_SFI.pdf)


4.
5.  [Index of
    /trunk/src/native_client/src/trusted/validator/x86](http://src.chromium.org/viewvc/native_client/trunk/src/native_client/src/trusted/validator/x86/)


6.  [Native CPU Performance in the Browser with Google Native
    Client](http://assets.en.oreilly.com/1/event/29/Native%20CPU%20Performance%20in%20the%20Browser%20with%20Google%20Native%20Client%20Presentation.pdf)