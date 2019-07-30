**T-Coffee** (中文直翻:茶與咖啡) (**T**ree-based **C**onsistency **O**bjective **F**unction **F**or alignment **E**valuation) (以樹形基礎的一致性做多重序列比對) 是利用漸進似演算法來作多重序列比對的軟體 \[1\]。 它利用兩兩序列比對所產生的資訊來進行多重序列比對。 在最新的版本 (3D-Coffee) 中，亦可結合結構的資訊來作多重序列比對。 此外，該軟體可以評估比對結果的品質及找出在比對中所出現特殊的模板 (Mocca)。 預設比對結果輸出的格式為 aln ([Clustal](https://zh.wikipedia.org/wiki/Clustal "wikilink")), 但也可產生其他 PIR, MSF, FASTA ... 等格式。 常用的輸入格式多有支援 ([FASTA](https://zh.wikipedia.org/wiki/FASTA "wikilink"), [PIR](https://zh.wikipedia.org/wiki/Protein_Information_Resource "wikilink"))。

## 與其它方法的比較

T-Coffee 的一個特點是可以結合其他方法或是不同的資訊。 在最新的版本中，T-Coffee 在進行多重序列比對，可以加入結構資訊, RNA 結構資訊。 甚至，可以輸入其他序列比對方法或是結構比對方法的結果。 更詳細的資訊參見: [tclinkdb.txt](http://www.tcoffee.org/Resources/tclinkdb.txt)

在 T-Coffee 中，還有一個相當完備的序列後處理的程式，名為 seq_reformat。 詳細資訊參考 [t_coffee_technical.htm](https://web.archive.org/web/20110720061559/http://www.tcoffee.org/Documentation/t_coffee/t_coffee_technical.htm)，或是參見使用說明 [t_coffee_tutorial.htm](https://web.archive.org/web/20110720061711/http://www.tcoffee.org/Documentation/t_coffee/t_coffee_tutorial.htm)

## 子方法

### M-Coffee

M-Coffee 是 T-Coffee 中一個特別的方法，它可以結合許多常用的多重序列比對的軟體，例如：Muscle, ClustalW, Mafft, ProbCons ... 等。 所產生出來的結果將比個別方法來的好一些，然而更重要的一點是在 M-Coffee 將指出比對結果中各方法所同意的區段出來，各方法所同意的區段通常是可靠的比對結果。

### Expresso 和 3D-Coffee

這兩種方法可以結合序列與結構資訊在比對當中。其中關於結構比對的部份利用常見方法，如: TMalign, Mustang和 sap。

### R-Coffee

該方法為利用二級結構的資訊來比對 RNA 序列。

### TM-Coffee

該方法特別針對[跨膜蛋白](../Page/跨膜蛋白.md "wikilink"),因此在進行多重序列比對之外,亦針對輸入的序列進行膜蛋白二級結構預測 \[2\]。

## 參見

  - [List of sequence alignment software](https://zh.wikipedia.org/wiki/List_of_sequence_alignment_software "wikilink")
  - [Clustal](https://zh.wikipedia.org/wiki/Clustal "wikilink")
  - [LiSA Web](http://www.mi.fu-berlin.de/w/LiSA/) — a library of open source structural analysis algorithms.
  - [MARNA](https://web.archive.org/web/20081018180848/http://biwww2.informatik.uni-freiburg.de/Software/MARNA/index.html) — a server for multiple alignment of [RNAs](https://zh.wikipedia.org/wiki/RNA "wikilink")

## 書目

## 外部連結

  - [T-Coffee Home Page](http://www.tcoffee.org)
  - [T-Coffee Aligner Server](http://tcoffee.crg.cat)
  - [T-Coffee download page](http://www.tcoffee.org/Projects_home_page/t_coffee_home_page.html)
  - [Technical documentation](https://web.archive.org/web/20110720061559/http://www.tcoffee.org/Documentation/t_coffee/t_coffee_technical.htm)
  - [Tutorial](https://web.archive.org/web/20110720061711/http://www.tcoffee.org/Documentation/t_coffee/t_coffee_tutorial.htm)
  - [List of third party aligners supported by T-Coffee](http://www.tcoffee.org/Resources/tclinkdb.txt)

[Category:生物信息學](https://zh.wikipedia.org/wiki/Category:生物信息學 "wikilink")

1.
2.