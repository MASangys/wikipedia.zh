**Polyspace**是[靜態程序分析](../Page/靜態程序分析.md "wikilink")的工具，利用[抽象释义](../Page/抽象释义.md "wikilink")的方式進行大規模的分析，可以偵測C語言、C++或是Ada程式的[原始碼中](https://zh.wikipedia.org/wiki/原始碼 "wikilink")，是否有特定類型的執行期錯誤，或是證明沒有這類的錯誤。此工具也可以檢查原始碼是否符合特定的代碼標準\[1\]。

## 常見用法

Polyspace可以檢查原始碼，確認是否有潛在的執行期錯誤，像是[算術溢出](../Page/算術溢出.md "wikilink")、[缓冲区溢出](../Page/缓冲区溢出.md "wikilink")、[除以零](../Page/除以零.md "wikilink")以及其他可能發生的錯誤。軟體開發者以及品質保證主管可以用這些資訊來識別程式中某一部份可能有錯，或者證實是可靠的。程式碼的其他部份會標示為尚未證明的部份，可以再個別進行[代碼評審](https://zh.wikipedia.org/wiki/代碼評審 "wikilink")\[2\]\[3\]。

像[MISRA C之類的程式碼標準及指南會試著提昇程式的品質](../Page/MISRA_C.md "wikilink")、可攜性及可靠度。Polyspace會確認C及C++的原始碼是否符合這些程式碼標準中的特定一部份規則\[4\]。

## 其他功能

Polyspace產品系列也包括了Polyspace Code Prover及Polyspace Bug Finder。Code Prover module會將原始碼用顏色編碼方案標示，表示原始碼中不同元素的狀態\[5\]。Code Prover會使用[形式化方法](../Page/形式化方法.md "wikilink")為基礎的靜態代碼分析來驗證程式語言層級的程式執行情形\[6\]。Code Prover會考慮程式中各變數的可能的值，在每一行程式提供正常及不正常使用情形下的診斷結果\[7\]。

Bug Finder程式利用原始碼的靜態程序分析找出程式中的軟體錯誤，可以找到數值計算、程式、記憶體等不同方面的錯誤Bug Finder也會產生[軟體度量](../Page/軟體度量.md "wikilink")，例如原始碼中的註解密度、[循環複雜度](../Page/循環複雜度.md "wikilink")、代碼行數、參數、函式的呼叫層級、程式中已找到的執行期錯誤等\[8\]。

## 相關條目

  -
## 參考資料

## 外部連結

  - [Mathworks - Polyspace Static Analysis](http://www.mathworks.com/static-analysis?s_cid=wiki_polyspace_3)
  - [In memory of Alain Deutsch](http://christele.faure.pagesperso-orange.fr/AlainDeutsch.html) （PolySpace 技术的共同创造者）
  - [Software testing FAQ](https://web.archive.org/web/20030810125828/http://www.testingfaqs.org/t-static.html#polyspace)

[Category:静态代码分析工具](https://zh.wikipedia.org/wiki/Category:静态代码分析工具 "wikilink") [Category:软件测试工具](https://zh.wikipedia.org/wiki/Category:软件测试工具 "wikilink")

1.

2.

3.

4.  MathWorks: [static code analysis](http://www.mathworks.com/discovery/static-code-analysis.html).

5.

6.
7.

8.