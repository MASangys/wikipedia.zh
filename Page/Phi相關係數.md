在[統計學裡](https://zh.wikipedia.org/wiki/統計學 "wikilink")，**「Phi相關係數」**（）（符號表示為：\(\phi\)
或
\(r_\phi\)）是測量**兩個二元變數**（）之間[相關性的工具](https://zh.wikipedia.org/wiki/相關 "wikilink")，由[卡爾·皮爾森所發明](https://zh.wikipedia.org/wiki/卡爾·皮爾遜 "wikilink")
\[1\]。他也發明了與Phi相關係數有密切關聯的[皮爾森卡方檢定](../Page/皮爾森卡方檢定.md "wikilink")（。一般所稱的[卡方檢定](https://zh.wikipedia.org/wiki/卡方檢驗 "wikilink")，若未明指種類，即指此），以及發明了測量兩個連續變數之間相關程度的[皮爾森積差相關係數](https://zh.wikipedia.org/wiki/皮爾森積差相關係數 "wikilink")（。一般所稱的[相關係數](https://zh.wikipedia.org/wiki/相關係數 "wikilink")，若未明指種類，即指此）。

**Phi
相關係數**在[機器學習的領域又稱為](https://zh.wikipedia.org/wiki/機器學習 "wikilink")。

## 定義

首先將兩個變數排成2×2，注意 1 和 0 的位置必須如同下表，若只變動 X 或只變動 Y 的 0/1
位置，計算出來的Phi相關係數會正負號相反。Phi相關係數的基本概念是：兩個二元變數的觀察值若大多落在2×2列聯表的「主對角線」（：左上－右下線）欄位，亦即若觀察值大多為
\((X, Y) = (1, 1), (0, 0)\)
這兩種組合，則這兩個變數呈正相關。反之，若兩個二元變數的觀察值大多落在「非對角線」（：主對角線以外的位置）欄位，對應於2×2列聯表，亦即若觀察值大多為
\((X, Y) = (0, 1), (1, 0)\) 這兩種組合，則這兩個變數呈負相關。例如我們從兩個隨機二元變數（X,
Y）抽樣得出這樣的2×2列聯表：

<center>

|       | y = 1            | y = 0            | 總計               |
| ----- | ---------------- | ---------------- | ---------------- |
| x = 1 | \(n_{11}\)       | \(n_{10}\)       | \(n_{1\bullet}\) |
| x = 0 | \(n_{01}\)       | \(n_{00}\)       | \(n_{0\bullet}\) |
| 總計    | \(n_{\bullet1}\) | \(n_{\bullet0}\) | \(n\)            |

</center>

其中 *n*<sub>11</sub>, *n*<sub>10</sub>, *n*<sub>01</sub>,
*n*<sub>00</sub>都是非負數的欄位計次值，它們加總為 \(n\) ，亦即觀察值的個數。由上面的表格可以得出 X 和 Y 的
Phi相關係數如下：

  -
    \(\phi = \frac{n_{11}n_{00}-n_{10}n_{01}}{\sqrt{n_{1\bullet}n_{0\bullet}n_{\bullet0}n_{\bullet1}}}\)

## 實例

研究者欲觀察性別與慣用手的相關性。**[虛無假設是](https://zh.wikipedia.org/wiki/虛無假設 "wikilink")：性別與慣用手無相關性**。觀察對象是隨機抽樣出來的個人，身上有兩個二元變數（性別
X ，慣用手 Y），X 有兩種結果值（男=1／女=0），Y也有兩種結果值（右撇子=1／左撇子=0）。

**觀察兩個二元變數的相關性可以使用Phi相關係數**。假設[簡單隨機抽樣](https://zh.wikipedia.org/wiki/抽樣#抽樣方法 "wikilink")100人，得出如下的2×2列聯表：

<center>

|     | 男\=1 | 女=0 | 總計  |
| --- | ---- | --- | --- |
| 右=1 | 43   | 44  | 87  |
| 左=0 | 9    | 4   | 13  |
| 總計  | 52   | 48  | 100 |

</center>

本例的Phi相關係數：

\[\phi = {(43 \times 4 - 44 \times 9) \over \sqrt{87 \times 13 \times 48 \times 52} } = -0.133\]

本處暫不介紹Phi相關係數的[顯著性檢定](https://zh.wikipedia.org/wiki/皮尔逊积矩相关系数#統計推論：顯著性檢定與信賴區間 "wikilink")，僅簡介其詮釋：假設−0.133的相關係數檢定為顯著，在本例對變數
1/0
的指定下，代表身為男性與身為右撇子有輕微的負相關，也就是男性右撇子的比例略低於女性右撇子的比例；或者反過來說，男性左撇子的比例略高於女性左撇子的比例。

## 與Pearson相關係數的異同

「Phi相關係數」與「Pearson相關係數」在詮釋上非常類似；事實上，**使用Pearson相關係數來計算兩個二元變數（各輸入成1/0）之間的相關性時，就會得出Phi相關係數**\[2\]
。

儘管Phi相關係數只是把Pearson相關係數簡化為兩個二元變數的情況，但詮釋這兩種相關係數時仍必須注意其差別。**Pearson相關係數**的值從−1
到 +1，±1
是其兩個端點，指出完全正相關與完全負相關，0則是無相關。**Phi相關係數**的極值則受到兩個變數各別的二元結果比例所影響，當兩個變數的二元結果都是50:50時，Phi值才會從−1
到 +1。\[3\]

## 與Pearson卡方統計值的關係

一個2×2的[卡方統計值](../Page/皮爾森卡方檢定.md "wikilink")（\(\chi^2\)），與Phi相關係數呈下述關係\[4\]：

  -
    \(\phi^2 = \frac{\chi^2}{n}\)
    其中 \(n\) 是觀察值的個數。

## 亦參見

  - [Phi相關係數的網頁版計算器](http://www.vassarstats.net/index.html)（還有許多的基礎統計教材和計算器）。

  -
  -
  - ：類別變數間相關性的另一個測量法。

  - ：當兩個連續變項被人為地改成二分變項時，求其相關性。其中一種是「」。

## 註腳

<references/>

[Category:類別資料](https://zh.wikipedia.org/wiki/Category:類別資料 "wikilink")
[Category:統計相關性](https://zh.wikipedia.org/wiki/Category:統計相關性 "wikilink")
[Category:統計值](https://zh.wikipedia.org/wiki/Category:統計值 "wikilink")
[Category:列聯表](https://zh.wikipedia.org/wiki/Category:列聯表 "wikilink")

1.  Cramer, H. 1946. *Mathematical Methods of Statistics*. Princeton:
    Princeton University Press, p282 (second paragraph). ISBN
    0-691-08004-6
2.  Guilford, J. (1936). Psychometric Methods. New York: McGraw–Hill
    Book Company, Inc.
3.  詳見：Davenport, E., & El-Sanhury, N. (1991). Phi/Phimax: Review and
    Synthesis. Educational and Psychological Measurement, 51, 821–828.
4.  Everitt B.S. (2002) *The Cambridge Dictionary of Statistics*, CUP.
    ISBN 0-521-81099-X