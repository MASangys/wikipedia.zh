**Jasmin** 是一[自由軟體的](https://zh.wikipedia.org/wiki/自由軟體 "wikilink") JAVA [組合語言](https://zh.wikipedia.org/wiki/組合語言 "wikilink") ，可用於設計 class（類別）檔如同以JAVA 語言設計的相同與運用，但更可以得以深入了解 JAVA 語言與 PC 之間的運作模式與方法。Jasmin 程式的編譯與設計，仍是以易讀性為考量來設計，其適合熟悉 JAVA 語言與略懂 C/C++ 語法的程式設計師，如同 assembler-like 語法以 Java Virtual Machine (JVM) 架構與程序設計書為核心；但是 Jasmin 仍不同於 Java 程式語言的編譯 (Compiler Programing) 方式，而是以類似 C++ compiler 的方式來組譯 (assembler) 與連結（linker）。

Jasmin 的編寫以類似 assembler-like 語法，其語言設計簡潔與易讀，編譯完成後會被轉成為一中間碼 (bytecode) 的 JVM Class 檔，可用於 Java 即時系統 (Java runtime system).

編譯完成後會形成二種接進低階檔案格式即 Java classes (Class) 檔與 Java Archive (JAR) 檔為主，軟體主要網址為 [tinapoc](http://sourceforge.net/projects/tinapoc)

## Jasmin 範例

傳統以 HelloWorld 程式來開場： <code>

`.class public HelloWorld`
`.super java/lang/Object`

`.method public static main([Ljava/lang/String;)V`
`  .limit stack 2`
`  .limit locals 1`
`  `
`  getstatic      java/lang/System/out Ljava/io/PrintStream;`
`  ldc            "Hello World."`
`  invokevirtual  java/io/PrintStream/println(Ljava/lang/String;)V`
`  return`

`.end method`

</code>

## 編譯方式

相關編譯使用方法如下： <code>

`     java -jar jasmin.jar examples\HelloWorld.j         [Windows]`
` 或`
`     java -jar jasmin.jar examples/HelloWorld.j         [Unix/Mac OS X]`

</code>

## 歷史

Jon Meyer 與 Troy Downing 兩位為開發 Jasmin 程式的主要人物，他們並共同出版了名為 "JAVA 虚擬機器"（台灣歐萊禮 ISBN 957-8247-50-8）的書籍 "Java Virtual Machine" (Oreilly ISBN 1-56592-194-1)。註1

由 Jon Meyer 開發的版本僅到 1.1 版 (Oct. 21, 2004)，而隨後由業餘人士接手開發與維護，而在 Daniel Reynaud 維護版本至 2.0 (Dec. 2, 2005) 時產生一延伸計劃 JasminXT [1](http://jasmin.sourceforge.net/xt.html) ，即前述的 Tinapoc 但開發版僅至 0.4 alpha版本而己，整體說明文件仍是連結於 Jasmin 網頁可以參考 JasminXT [2](http://jasmin.sourceforge.net/xt.html)，而在 sourceforge 的 Tinapoc 開發網頁上則是無任何文件留存，僅二行文字說明 "Tinapoc Is Not Another Pun On Coffee" 與 "(and there is no J in it \!)" 而己。目前有另一延伸計劃 SPOOFAX-JASMIN [3](https://github.com/metaborg/spoofax-jasmin)，是一延伸 JasminXT 計劃，而維護轉放到 Github [4](https://github.com)。

Jasmin 目前提供了 164 個指令，內容包涵了相同於程式語言的類別、例外、運算子、資料處理、數學處理與執行緒等。程 式本身的編輯可使用一般 的文字處理軟體來編寫（如：記事本，UltraEdit 或高階的程式編寫用的 IDE 介面軟體亦可）。編寫完成後的檔案必需命名以 ".j" 為結尾才可以作為組譯時使用，以運作於 Java 的虛擬機器內。

Jasmin 目前仍是定訂為 SourceForge 組織內部的 Open Source project. Project 維護最新維護時間 Apr. 29, 2013 但軟體檔案維護仍是 2.4 版 (May 7, 2010)。

註1：目前該書中文繁體版本已絕版，但目前仍有些二手書於市面交易。

## 参考

  - [Java bytecode](https://zh.wikipedia.org/wiki/Java_bytecode "wikilink")
  - [the Java .class file format](https://zh.wikipedia.org/wiki/Class_\(file_format\) "wikilink")
  - [C to Java Virtual Machine compilers](https://zh.wikipedia.org/wiki/C_to_Java_Virtual_Machine_compilers "wikilink")
  - [ARM9E](https://zh.wikipedia.org/wiki/ARM9E "wikilink")，a [CPU](https://zh.wikipedia.org/wiki/Central_processing_unit "wikilink") family with direct Java bytecode execution ability
  - [Common Intermediate Language](https://zh.wikipedia.org/wiki/Common_Intermediate_Language "wikilink") (CIL), a similar bytecode specification that runs on the [CLR](https://zh.wikipedia.org/wiki/Common_Language_Runtime "wikilink") of the [.NET Framework](https://zh.wikipedia.org/wiki/.NET_Framework "wikilink")。
  - [Compiler](https://zh.wikipedia.org/wiki/Compiler "wikilink")
  - [Disassembler](https://zh.wikipedia.org/wiki/Disassembler "wikilink")
  - [List of assemblers](https://zh.wikipedia.org/wiki/List_of_assemblers "wikilink")
  - [Instruction set](https://zh.wikipedia.org/wiki/Instruction_set "wikilink")
  - [Microassembler](https://zh.wikipedia.org/wiki/Microassembler "wikilink")

## 書籍

  - Jon Meyer: *Java Virtual Machine*. O'Reilly Associates, 1st Edition March 1997. ISBN 978-1-56592-194-8

## 外部連結

  - [Jasmin Official page at Sourceforge](http://jasmin.sourceforge.net/)
  - [JaminXT Syntax](http://jasmin.sourceforge.net/xt.html)
  - [Spoofax-Jasmin](https://github.com/metaborg/spoofax-jasmin)
  - [Sun's Java Virtual Machine Specification](http://java.sun.com/docs/books/vmspec/2nd-edition/html/VMSpecTOC.doc.html)
  - [Jasmin instructions](http://jasmin.sourceforge.net/instructions.html)
  - [Publisher of "Java Virtual Machine"](http://www.oreilly.com/catalog/javavm/)
  - [personal website of Jon Meyer](http://www.cybergrain.com/)
  - [Programming Languages for the Java Virtual Machine](http://www.is-research.de/info/vmlanguages/)
  - [Organization for Java Technology Specification](http://www.jcp.org)
  - [Jasmin - Java Assembler Interpreter](https://web.archive.org/web/20081112022328/http://www.lrr.in.tum.de/~jasmin/index.html)

[Category:Java](https://zh.wikipedia.org/wiki/Category:Java "wikilink") [Category:Assemblers](https://zh.wikipedia.org/wiki/Category:Assemblers "wikilink") [Category:Programming_language_implementation](https://zh.wikipedia.org/wiki/Category:Programming_language_implementation "wikilink")