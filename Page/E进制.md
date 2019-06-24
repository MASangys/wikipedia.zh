**e进制**是以[自然對數的](../Page/自然對數.md "wikilink")[底數](https://zh.wikipedia.org/wiki/底數 "wikilink")——[e作為](https://zh.wikipedia.org/wiki/e_\(常數\) "wikilink")[進位制](https://zh.wikipedia.org/wiki/進位制 "wikilink")[底數的](https://zh.wikipedia.org/wiki/底數 "wikilink")[进制](https://zh.wikipedia.org/wiki/进制 "wikilink")。類似於[三进制](https://zh.wikipedia.org/wiki/三进制 "wikilink")，通常使用0、1、2三个数字來表達，但由於除了0、1和2之外大部分的整數在e进制中皆需要用[無窮小數來表示](https://zh.wikipedia.org/wiki/無窮小數 "wikilink")，因此不是一個實用的進位制，但在[底數經濟度模型中](../Page/底數經濟度.md "wikilink")，e进制被認為是最高效率的進位制\[1\]\[2\]。

## 性質

在e进制中，[自然對數的行為與十進制中的](../Page/自然對數.md "wikilink")[常用對數類似](../Page/常用對數.md "wikilink")\[3\]，例如：

\[\ln 1_{\left(e\right)} = 0\]

\[\ln 10_{\left(e\right)} = 1\]

\[\ln 100_{\left(e\right)} = 2\]

\[\ln 1000_{\left(e\right)} = 3\]

## e进制效率

在[底數經濟度模型中](../Page/底數經濟度.md "wikilink")，e进制被認為是最高效率的進位制。

當一個數用\(x\)進位（\(x>0, x \in \mathbb{R}\)）表達時，每個位數需要\(x\)種符號表達，若要表達一個n位數字要儲存的元素\(N(x)\)
は：

\[N(x) = nx\] 而\(x\)進制系統中表示的n位數的資訊量\(I\)（\(I>x\)）則有：

\[I = x^n \Leftrightarrow n = \log_{x}I = \frac{\ln I}{\ln x}\]
因此，在\(x\)進制系統中以n位數能表示I的信息量所需的存儲元素數\(N(x)\)為：

\[N(x) = nx = \ln I \cdot \frac{x}{\ln x}\] 在

\[\begin{cases}
N^{\prime}(x) <0 & 0<x<1 \\
N^{\prime}(x) >0 &x>1
\end{cases}\] 之下，求出哪個\(x\)能使\(N(x)\)最小即可， 即找到能使\(N(x)\)微分為0的\(x\)。

\[\begin{align}
N^\prime(x) & = \ln I \cdot \left( \frac{x}{\ln x} \right)^\prime \\
 & = \ln I \cdot \frac{\ln x - 1}{\left( \ln x \right)^2} \\
\end{align}\]

  -
    在\(\ln x = 1\)時\(N^\prime(x)\)有[根](https://zh.wikipedia.org/wiki/根_\(数学\) "wikilink")\(N^\prime(x) = 0\)，
    解得\(x = e\)

因此解得以\(e\)為底的進位制理論上能有最高的表達效率。

## 與其他進制比較

e進制中，除了0、1和2之外，其他[整數皆需要以無窮不循環小數來表達](https://zh.wikipedia.org/wiki/整數 "wikilink")，其中整數部分可透過貪婪演算法找出\[4\]。

| 十進制 | 二進制  | e進制                                     | 三進制 |
| --- | ---- | --------------------------------------- | --- |
| 1   | 1    | 1                                       | 1   |
| 2   | 10   | 2                                       | 2   |
| 3   | 11   | 10\.<small>0200 1120 0001 0101</small>  | 10  |
| 4   | 100  | 11\.<small>0200 1120 0001 0101</small>  | 11  |
| 5   | 101  | 12\.<small>0200 1120 0001 0101</small>  | 12  |
| 6   | 110  | 20\.<small>1110 1110 2102 0120</small>  | 20  |
| 7   | 111  | 21\.<small>1110 1110 2102 0120</small>  | 21  |
| 8   | 1000 | 100\.<small>1120 1011 1100 0100</small> | 22  |
| 9   | 1001 | 101\.<small>1120 1011 1100 0100</small> | 100 |
| 10  | 1010 | 102\.<small>1120 1011 1100 0100</small> | 101 |
| 11  | 1011 | 110\.<small>2101 0102 0201 2102</small> | 102 |
| 12  | 1100 | 111\.<small>2101 0102 0201 2102</small> | 110 |

## 无理数的*e*进制表示

常见无理数的*e*进制表示如下：

  - [π](https://zh.wikipedia.org/wiki/Pi "wikilink") ≈ 10.1010 0202 0002
    1111 2002 0101 1200 0101 ...<sub>(*e*)</sub>
  - *[e](https://zh.wikipedia.org/wiki/e_\(数学常数\) "wikilink")* =
    10<sub>(*e*)</sub> （在此計數系統為整數）
  - [√2](https://zh.wikipedia.org/wiki/根号2 "wikilink") ≈ 1.1002 1101
    1011 1211 2000 1121 0000 0001 ...<sub>(*e*)</sub>
  - [φ](https://zh.wikipedia.org/wiki/黄金分割 "wikilink") = (1+√5)/2 ≈
    1.1120 2012 1110 0100 2000 0201 2001 1100 ...<sub>(*e*)</sub>

## 參見

  - [e (數學常數)](https://zh.wikipedia.org/wiki/e_\(數學常數\) "wikilink")

  -
  - [三進制](https://zh.wikipedia.org/wiki/三進制 "wikilink")

## 參考文獻

1.  [伊東規之](https://zh.wikipedia.org/wiki/伊東規之 "wikilink")『マイクロコンピュータの基礎』日本理工出版会
2.  [桜井進](https://zh.wikipedia.org/wiki/桜井進 "wikilink")『超・超面白くて眠れなくなる数学』PHP研究所

[Category:进位制](https://zh.wikipedia.org/wiki/Category:进位制 "wikilink")

1.
2.
3.
4.  Bryan Jacobs,