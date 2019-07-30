**WebAssembly**或稱**wasm**是一個實驗性的低階[程式語言](https://zh.wikipedia.org/wiki/程式語言 "wikilink")，應用於[瀏覽器內的](https://zh.wikipedia.org/wiki/瀏覽器 "wikilink")[客戶端](https://zh.wikipedia.org/wiki/客戶端 "wikilink")。WebAssembly是可攜式的[抽象語法樹](https://zh.wikipedia.org/wiki/抽象語法樹 "wikilink")\[1\]，被設計來提供比[JavaScript](../Page/JavaScript.md "wikilink")更快速的[編譯及執行](https://zh.wikipedia.org/wiki/編譯 "wikilink")\[2\]。WebAssembly將讓開發者能運用自己熟悉的程式語言（最初以[C](https://zh.wikipedia.org/wiki/C語言 "wikilink")/[C++](../Page/C++.md "wikilink")作為實作目標）編譯，再藉虛擬機器引擎在瀏覽器內執行\[3\]。WebAssembly的開發團隊分別來自[Mozilla](../Page/Mozilla基金會.md "wikilink")、[Google](../Page/Google.md "wikilink")、[Microsoft](https://zh.wikipedia.org/wiki/微軟 "wikilink")、[Apple](https://zh.wikipedia.org/wiki/蘋果公司 "wikilink")，代表著四大網路瀏覽器[Firefox](../Page/Firefox.md "wikilink")、[Chrome](../Page/Google_Chrome.md "wikilink")、[Microsoft Edge](../Page/Microsoft_Edge.md "wikilink")、[Safari](../Page/Safari.md "wikilink")\[4\]。2017年11月，以上四個瀏覽器都開始實驗性的支援WebAssembly\[5\]\[6\]。

## 設計

### Ending定律

Ending's law\[7\]: "Any application that can be compiled to WebAssembly, will be compiled to WebAssembly eventually."

Ending定律也称为终结者定律，它是Ending在2016年Emscripten技术交流会上给出的断言：所有可以用WebAssembly实现的终将会用WebAssembly实现。

### 最高指導目標

在官方的一個github頁面\[8\]與說明文件\[9\]中，闡述了WebAssembly的設計與實作原則，包含：

1.  定義一個可移植，具有大小與載入高效率的二進位格式，作為編譯標的。這個編譯標的必須可以被編譯至常見的平台，包含[移動端與](../Page/移动电话.md "wikilink")[物聯網](../Page/物联网.md "wikilink")，並且可以善用[硬體資源](../Page/硬件.md "wikilink")、有原生執行碼的執行速度。
2.  規格與實作：
      - 最初的MVP(Minimum Viable Product)與[Asm.js](../Page/Asm.js.md "wikilink")有大略相等的功能，並以C/C++語言為優先；
      - 其他額外的特性最初集中在[執行緒](../Page/线程.md "wikilink")，零消耗的[-{zh-tw:例外;zh-cn:异常}-](../Page/异常处理.md "wikilink")，和[SIMD](https://zh.wikipedia.org/wiki/SIMD "wikilink")。這些額外的特性先以回饋和實驗為主，包含C/C++以外其他語言的支持。
3.  設計可以執行在現有的網路平台之內以及與之整合：
      - 保持無版本問題、特色測試、向後相容的網路平台
      - 在與[Javascript相同的環境中執行](../Page/JavaScript.md "wikilink")
      - 允許從[Javascript中同步呼叫](../Page/JavaScript.md "wikilink")
      - 強化同源(Same-origin)和安全性權限政策
      - 允許[瀏覽器存取相同功能的Javascript](https://zh.wikipedia.org/wiki/瀏覽器 "wikilink") [API](../Page/应用程序接口.md "wikilink")
      - 定義一個可人工讀取，能和二進位格式互換的純文字格式，以支援查看原始碼
4.  設計也可以用於非瀏覽器的[嵌入式系統](../Page/嵌入式系统.md "wikilink")
5.  製作大平台
      - 為WebAssembly建置新的[LLVM](../Page/LLVM.md "wikilink")後端與伴隨的[Clang](../Page/Clang.md "wikilink")接口
      - 推動其他WebAssembly的[編譯器](../Page/編譯器.md "wikilink")與工具
      - 啟用更多有用的工具

### 下一階段要實作的特色

在2017年推出第一個版本後，同時也列出了下一階段將實作的特色\[10\]\[11\]

  - 制定規格
  - [執行緒](../Page/线程.md "wikilink")
  - 固定長度的[SIMD](https://zh.wikipedia.org/wiki/单指令流多数据流 "wikilink")
  - [例外處理](../Page/异常处理.md "wikilink")
  - [垃圾回收](../Page/垃圾回收_\(計算機科學\).md "wikilink")
  - 記憶體區塊操作
  - 網頁內容安全性政策
  - [ECMAScript](../Page/ECMAScript.md "wikilink") 模組整合
  - [尾端呼叫](../Page/尾调用.md "wikilink")
  - Non-trapping浮點數-整數轉換
  - 多值函數
  - Host bindings

## 參見

  - [JavaScript](../Page/JavaScript.md "wikilink") / [ECMAScript](../Page/ECMAScript.md "wikilink") / [Ajax](../Page/AJAX.md "wikilink")
  - [asm.js](https://zh.wikipedia.org/wiki/asm.js "wikilink")
  - [Dart](../Page/Dart.md "wikilink")
  - [V8](../Page/V8_\(JavaScript引擎\).md "wikilink")
  - [SpiderMonkey](../Page/SpiderMonkey.md "wikilink")
  - [Qt for WebAssembly](../Page/Qt.md "wikilink")

其他逐漸被捨棄的網頁[用戶端技術與](https://zh.wikipedia.org/wiki/客户端 "wikilink")[RIA](https://zh.wikipedia.org/wiki/多樣化網際網路應用程式 "wikilink")

  - [ActiveX](../Page/ActiveX.md "wikilink")
  - [VBScript](../Page/VBScript.md "wikilink")
  - [Flash](https://zh.wikipedia.org/wiki/Flash "wikilink") / [ActionScript](../Page/ActionScript.md "wikilink")
  - [Microsoft Silverlight](https://zh.wikipedia.org/wiki/Microsoft_Silverlight "wikilink")
  - [Java Applet](https://zh.wikipedia.org/wiki/Java_Applet "wikilink") / [JavaFX](../Page/JavaFX.md "wikilink")
  - [Native Client](../Page/Native_Client.md "wikilink")

其他[位元組碼](https://zh.wikipedia.org/wiki/字节码 "wikilink")

  - [Java bytecode](https://zh.wikipedia.org/wiki/Java_bytecode "wikilink")
  - [通用中間語言 (CIL)](../Page/通用中间语言.md "wikilink")

## 參考資料

## 外部連結

  -
  - [WebAssembly Community Group](https://www.w3.org/community/webassembly/)

  - [WebAssembly Design](https://github.com/WebAssembly/design)

  - [WebAssembly资源精选 - 中文版](https://github.com/chai2010/awesome-wasm-zh)

  - [WebAssembly标准入门 - 人民邮电](https://github.com/chai2010/awesome-wasm-zh/blob/master/webassembly-primer.md)

  - [C/C++面向WebAssembly编程 - 开源图书](https://github.com/3dgen/cppwasm-book)

[Category:2015年面世](https://zh.wikipedia.org/wiki/Category:2015年面世 "wikilink") [Category:汇编语言](https://zh.wikipedia.org/wiki/Category:汇编语言 "wikilink") [Category:网页标准](https://zh.wikipedia.org/wiki/Category:网页标准 "wikilink") [Category:位元組碼](https://zh.wikipedia.org/wiki/Category:位元組碼 "wikilink")

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
11.