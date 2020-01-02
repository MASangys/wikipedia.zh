> 本文内容由[MISRA C](https://zh.wikipedia.org/wiki/MISRA_C)转换而来。


**MISRA C**是由（MISRA）提出的[C語言開發標準](https://zh.wikipedia.org/wiki/C語言 "wikilink")。其目的是在增進[嵌入式系統的安全性及](https://zh.wikipedia.org/wiki/嵌入式系統 "wikilink")[可移植性](https://zh.wikipedia.org/wiki/軟體可移植性 "wikilink")。針對[C++](../Page/C++.md "wikilink")語言也有對應的標準[MISRA C++](https://zh.wikipedia.org/wiki/MISRA_C++ "wikilink")。

MISRA C一開始主要是針對汽車產業\[1\] ，不過其他產業也逐漸開始使用MISRA C：包括航太、電信、國防、醫療設備、鐵路等領域中都已有廠商使用MISRA C。\[2\]\[3\]

MISRA C的第一版《Guidelines for the use of the C language in vehicle based software》是在1998年發行，一般稱為MISRA-C:1998.\[4\]。MISRA-C:1998有127項規則，規則從1號編號到127號，其中有93項是強制要求，其餘的34項是推薦使用的規則。

在2004年時發行了第二版的MISRA C的第一版《Guidelines for the use of the C language in critical systems》（或稱作MISRA-C:2004），其中有許多重要建議事項的變更，其規則也重新編號。MISRA-C:2004有141項規則，其中121項是強制要求，其餘的20項是推薦使用的規則。規則分為21類，從「開發環境」到「運行期錯誤」\[5\]。

## 規則舉例

MISRA C的一些規則是針對運算符的限制，例如MISRA-C:2004的規則12.10為「不要使用逗号运算符」，也可以用其他方式達到一樣的效果。

動態分配記憶體功能是C語言的一大特色，可以在運行期依實際需求用malloc分配記憶體，在不使用此記憶體時再用free歸還，但許多問題也和未正確處理動態分配記憶體功能有關，例如MISRA-C:2004的規則20.4為「不能使用动态堆的内存分配」，限制malloc、free等程序的使用。

## 工具

有許多工具聲稱可以檢查代碼和MISRA規則相容性，不過MISRA沒有相關認證的程序\[6\]。相關工具可以幫助使用者評估和比較檢查的結果，也會提供一些可符合MISRA-C規定的指南。

大部份的規定可以用支援[靜態代碼分析的工具檢查](https://zh.wikipedia.org/wiki/靜態代碼分析 "wikilink")，有些規定需要用支援[動態代碼分析的工具檢查](https://zh.wikipedia.org/wiki/動態代碼分析 "wikilink")。

  - 以下是一些可以配合MISRA C規則進行檢查的工具：

<!-- end list -->

  - \[7\]

  -
  - \[8\]

  - \[9\]

  - \[10\]

  - \[11\]

  - [Polyspace](../Page/Polyspace.md "wikilink")\[12\]

  - \[13\]

  -
<!-- end list -->

  - 以下是一些可以配合MISRA C規則進行檢查的編譯器：

<!-- end list -->

  - \[14\]

  - \[15\]

## 相關條目

  - [代码风格](https://zh.wikipedia.org/wiki/代码风格 "wikilink")

## 參考資料

## 外部連結

  - [MISRA 網站](http://www.misra.org.uk)

[Category:计算机标准](https://zh.wikipedia.org/wiki/Category:计算机标准 "wikilink") [Category:C語言](https://zh.wikipedia.org/wiki/Category:C語言 "wikilink") [Category:C語言家族](https://zh.wikipedia.org/wiki/Category:C語言家族 "wikilink")

1.
2.  <http://www.cosmicsoftware.com/misra.php>
3.  <http://www.ldra.com/misrac.asp>
4.  [A brief history of MISRA C](http://www.misra-c.com/Activities/MISRAC/tabid/160/Default.aspx)
5.  \[<http://eetimes.com/discussion/beginner-s-corner/4023981/Introduction-to-MISRA-C> Introduction-to-MISRA-C
6.  [faqs](http://www.misra-c.com/MISRACFAQ/tabid/168/Default.aspx)
7.  [The 5 Steps](http://www.coverity.com/coverity5/5-steps.html)
8.  [MISRA Coding Standards](http://www.klocwork.com/solutions/misra-coding-standards/index.php)
9.  [LDRA工具套件的MISRA-C: 2004验证](http://www.ldra.com/zh/solutions/by-standard-adherence/misra-c2004)
10. [MISRA Compliance](http://www.parasoft.com/jsp/standards/compliance_misra.jsp)
11. [PC-Lint](http://www.keil.com/pclint/)
12. [PolySpace announces MISRA compliance checker](http://www.sourcewire.com/releases/rel_display.php?relid=19765)
13. [QA·C](http://www.programmingresearch.com/products/qac/)
14. [MISRA C Support](http://www.ghs.com/products/misrac.html)
15.