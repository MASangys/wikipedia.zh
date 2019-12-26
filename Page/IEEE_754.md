**[IEEE二進位浮點數算術標準](https://zh.wikipedia.org/wiki/電氣電子工程師協會 "wikilink")**（**IEEE 754**）是20世纪80年代以来最廣泛使用的[浮點數運算標準](https://zh.wikipedia.org/wiki/浮點數 "wikilink")，為許多[CPU與](https://zh.wikipedia.org/wiki/中央處理單元 "wikilink")[浮點運算器所採用](https://zh.wikipedia.org/wiki/浮點運算器 "wikilink")。這個標準定義了表示浮點數的格式（包括負零[-0](../Page/-0.md "wikilink")）與反常值（denormal number），一些特殊數值（（[無窮](https://zh.wikipedia.org/wiki/無窮 "wikilink")（Inf）與[非數值](../Page/NaN.md "wikilink")（NaN）），以及這些數值的「浮點數運算子」；它也指明了四種[數值修約規則和五種例外狀況](https://zh.wikipedia.org/wiki/數值修約規則 "wikilink")（包括例外發生的時機與處理方式）。

IEEE 754規定了四種表示浮點數值的方式：單精確度（32位元）、雙精確度（64位元）、延伸單精確度（43位元以上，很少使用）與延伸雙精確度（79位元以上，通常以80位元實做）。只有32位元模式有強制要求，其他都是選擇性的。大部分[程式語言都提供了IEEE浮点数格式與算術](https://zh.wikipedia.org/wiki/程式語言 "wikilink")，但有些將其列為非必需的。例如，IEEE 754問世之前就有的[C語言](https://zh.wikipedia.org/wiki/C語言 "wikilink")，現在包括了IEEE算術，但不算作強制要求（C語言的`float`通常是指IEEE單精確度，而`double`是指雙精確度）。

該標準的全稱為**IEEE二進位浮點數算術標準（ANSI/IEEE Std 754-1985）**，又稱**IEC 60559:1989，微處理器系統的二進位浮點數算術**（本來的編號是IEC 559:1989）\[1\]。後來還有「與基數無關的浮點數」的「IEEE 854-1987標準」，有規定基數為2跟10的狀況。现在最新標準是「ISO/IEC/IEEE FDIS 60559:2010」。

在六、七十年代，各家计算机公司的各个型号的计算机，有着千差万别的浮点数表示，却没有一个业界通用的标准。这给数据交换、计算机协同工作造成了极大不便。IEEE的浮点数专业小组于七十年代末期开始酝酿浮点数的标准。在1980年，[英特尔公司就推出了单片的](https://zh.wikipedia.org/wiki/英特尔公司 "wikilink")8087浮点数协处理器，其浮点数表示法及定义的运算具有足够的合理性、先进性，被IEEE采用作为浮点数的标准，于1985年发布。而在此前，这一标准的内容已在八十年代初期被各计算机公司广泛采用，成了[事实上的业界工业标准](https://zh.wikipedia.org/wiki/事實標準 "wikilink")。[加州大学伯克利分校的数值计算与计算机科学教授](https://zh.wikipedia.org/wiki/加州大学伯克利分校 "wikilink")[威廉·卡韩被誉为](https://zh.wikipedia.org/wiki/威廉·卡韩 "wikilink")“浮点数之父”。

## 浮點數剖析

一個浮點數 (Value) 的表示其實可以這樣表示：

\(Value = sign \times exponent \times fraction\)

也就是浮點數的**實際值**，等於[符號位](https://zh.wikipedia.org/wiki/符號位 "wikilink")（sign bit）乘以**指數偏移值**(exponent bias)再乘以**分數值**(fraction)。

以下內文是IEEE 754對浮點數格式的描述。

### 本文表示位元的約定

把W个[位元](../Page/位元.md "wikilink")（bit）的数据，从内存地址低端到高端，以0到W−1編碼。通常將内存地址低端的位元写在最右邊，称作[最低有效位](https://zh.wikipedia.org/wiki/最低有效位 "wikilink")（Least Significant Bit, LSB），代表最小的位元，改變時對整体數值影響最小的位元。聲明這一點的必要性在于X86体系架构是[小端序的数据存储](https://zh.wikipedia.org/wiki/小端序 "wikilink")。

对于十进制整数N，必要时表示为N<sub>10</sub>以与二进制的数的表示N<sub>2</sub>相区分。

对于一个数，其二进制[科学计数法表示下的指数的值](https://zh.wikipedia.org/wiki/科学计数法 "wikilink")，下文称之为**指数的实际值**；而根据IEEE 754标准对指数部分的编码的值，称之为浮点数表示法**指數域的编码值**。

### 整體呈現

[General_floating_point_frac.svg](https://zh.wikipedia.org/wiki/File:General_floating_point_frac.svg "fig:General_floating_point_frac.svg") 二進位浮點數是以[符號數值表示法的格式儲存](https://zh.wikipedia.org/wiki/有符號數處理#符號數值表示法 "wikilink")——[最高有效位被指定為](https://zh.wikipedia.org/wiki/最高有效位 "wikilink")[符號位](https://zh.wikipedia.org/wiki/符號位 "wikilink")（sign bit）；「指數部份」，即次高有效的e个位元，存储指數部分；最后剩下的f个低有效位的位元，存储「有效数」（significand）的小數部份（在非規約形式下整數部份默認為0，其他情況下一律默認為1）。

#### 指數偏移值

指數偏移值（exponent bias），即浮点数表示法中指數域的编码值，等于指數的实际值加上某個固定的值，IEEE 754标准规定该固定值为\(2^{e-1} - 1\)\[2\]，其中的\(e\)为存储指数的位元的长度。

以单精度浮点数为例，它的指数域是8个位元，固定偏移值是\(2^{8-1} - 1 = 128 - 1 = 127\)。此為有號數的表示方式，单精度浮点数的指数部分实际取值是从-126到127（-127和128被用作特殊值处理，见下方「[非规约形式的浮点数](https://zh.wikipedia.org/wiki/#非规约形式的浮点数 "wikilink")」和「[特殊值](https://zh.wikipedia.org/wiki/#特殊值 "wikilink")」）。例如指数实际值为\(17_{10}\)，在单精度浮点数中的指数域编码值为\(144_{10}\)，即\(144_{10} = 17_{10} + 127_{10}\)。

采用指数的实际值加上固定的偏移值的办法表示浮点数的指数，好处是可以用长度为\(e\)个位元的无符号整数来表示所有的指数取值，这使得两个浮点数的指数大小的比较更为容易，实际上可以按照字典序比较两个浮点表示的大小。

这种**移码**表示的指数部分，中文称作**阶码**。

#### 规约形式的浮点数

如果浮点数中指数部分的编码值在\(0 < exponent \leqslant 2^e-2\)之間，且在**科學表示法**的表示方式下，分數 (fraction) 部分**最高有效位**（即整數位）是\(1\)，那么這個浮点數將被稱為**规约形式的浮点数**。“规约”是指用唯一确定的浮点形式去表示一个值。

由于这种表示下的尾数有一位隐含的二进制有效数字，为了与二进制[科学计数法的尾数](https://zh.wikipedia.org/wiki/科学计数法 "wikilink")（mantissa）相区别，IEEE754称之为**有效数**（significant）。

舉例來說，雙精度 (64-bit) 的規約形式浮點數在指數偏移值的值域為\(000 0000 0001\) (11-bit) 到\(111 1111 1110\)，在分數部分則是\(000.....000\)到\(111.....111\) (52-bit)

#### 非规约形式的浮点数

如果浮点数的指數部分的编码值是0，分數部分非零，那么这个浮点数將被稱為**非规约形式的浮点数**。一般是某個數字**相當**接近零時才會使用非規約型式來表示。 IEEE 754标准规定：**非规约形式的浮点数的指数偏移值比规约形式的浮点数的指数偏移值小1**。例如，最小的规约形式的单精度浮点数的指数部分编码值为1，指数的实际值为-126；而非规约的单精度浮点数的指数域编码值为0，对应的指数实际值也是-126而不是-127。实际上非规约形式的浮点数仍然是有效可以使用的，只是它们的绝对值已经小于所有的规约浮点数的绝对值；即所有的非规约浮点数比规约浮点数更接近0。规约浮点数的尾数大于等于1且小于2，而非规约浮点数的尾数小于1且大于0。

除了规约浮点数，IEEE754-1985标准采用非规约浮点数，用来解决填补绝对值意义下最小规格数与零的距离。（举例说，正数下，最大的非规格数等于最小的规格数。而一个浮点数编码中，如果exponent=0，且尾数部分不为零，那么就按照非规约浮点数来解析）非规约浮点数源于70年代末IEEE浮点数标准化专业技术委员会酝酿浮点数二进制标准时，[Intel公司对](../Page/英特尔.md "wikilink")**渐进式下溢出**（gradual underflow）的力荐。当时十分流行的[DEC](https://zh.wikipedia.org/wiki/DEC "wikilink") [VAX](../Page/VAX.md "wikilink")机的浮点数表示采用了**突然式下溢出**（abrupt underflow）。如果没有渐进式下溢出，那么0与绝对值最小的浮点数之间的距离（gap）将大于相邻的小浮点数之间的距离。例如单精度浮点数的绝对值最小的规约浮点数是\(1.0\times 2^{-126}\),它与绝对值次小的规约浮点数之间的距离为\(2^{-126}\times 2^{-23}=2^{-149}\)。如果不采用渐进式下溢出，那么绝对值最小的规约浮点数与0的距离是相邻的小浮点数之间距离的\(2^{23}\)倍！可以说是非常突然的下溢出到0。这种情况的一种糟糕后果是：两个不等的小浮点数X与Y相减，结果将是0.训练有素的数值分析人员可能会适应这种限制情况，但对于普通的程序员就很容易陷入错误了。采用了渐进式下溢出后将不会出现这种情况。例如对于单精度浮点数，指数部分实际最小值是（-126），对应的尾数部分从\(1.1111\ldots 11\), \(1.1111\ldots 10\)一直到\(0.0000\ldots 10\), \(0.0000\ldots 01\)，\(0.0000\ldots 00\)相邻两小浮点数之间的距离（gap）都是\(2^{-126}\times 2^{-23}=2^{-149}\)；而与0最近的浮点数（即最小的非规约数）也是\(2^{-126}\times 2^{-23}=2^{-149}\)。

#### 特殊值

這里有三個特殊值需要指出：

1.  如果**指數**是0并且尾數的**小數部分**是0，這個數±0（和符號位相關）
2.  如果**指數** = \(2^{e} - 1\)并且尾數的**小數部分**是0，這個數是±[∞](https://zh.wikipedia.org/wiki/無窮大 "wikilink")（同樣和符號位相關）
3.  如果**指數** = \(2^{e} - 1\)并且尾數的**小數部分**非0，這個數表示為[不是一個數（NaN）](../Page/NaN.md "wikilink")。

以上規則，總結如下：

| 形式    | 指數              | 小數部分     |
| ----- | --------------- | -------- |
| 零     | 0               | 0        |
| 非正規形式 | 0               | 大于0小于1   |
| 正規形式  | \(1\)到\(2^e-2\) | 大于等于1小于2 |
| 無窮    | \(2^e-1\)       | 0        |
| NaN   | \(2^e-1\)       | 非0       |
|       |                 |          |

#### 32位單精度

單精度二進制小數，使用32個位元存儲。

<table border=1 cellspacing=0 cellpadding=0>

<tr align=center>

<td width=15>

1

</td>

<td width=120>

8

</td>

<td width=345>

23位長

</td>

</tr>

<tr align=center>

<td>

S

</td>

<td>

Exp

</td>

<td>

Fraction

</td>

</tr>

<tr align=center>

<td>

31

</td>

<td>

30至23
偏正值（實際的指數大小+127）

</td>

<td>

22至0位編號（從右邊開始為0）

</td>

</tr>

</table>

S為符號位，Exp為指數位，Fraction為有效數位。 指數部分即使用所謂的**偏正值**形式表示，偏正值為實際的指數大小與一個固定值（32位的情況是127）的和。采用這種方式表示的目的是簡化比較。因為，指數的值可能為正也可能為負，如果采用[二補數](../Page/二補數.md "wikilink")表示的話，全體符號位S和Exp自身的符號位將導致不能簡單的進行大小比較。正因為如此，指數部分通常采用一個無符號的正數值存儲。單精度的指數部分是−126～+127加上偏移值127，指數值的大小從1～254（0和255是特殊值）。浮點小數計算時，指數值減去偏正值將是實際的指數大小。

单精度浮点数各种极值情况：

| 类别                               | 正负号 | 实际指数  | 有偏移指数 | 指数域       | 尾数域                          | 数值                                                             |
| -------------------------------- | --- | ----- | ----- | --------- | ---------------------------- | -------------------------------------------------------------- |
| 零                                | 0   | \-127 | 0     | 0000 0000 | 000 0000 0000 0000 0000 0000 | 0.0                                                            |
| 负零                               | 1   | \-127 | 0     | 0000 0000 | 000 0000 0000 0000 0000 0000 | −0.0                                                           |
| 1                                | 0   | 0     | 127   | 0111 1111 | 000 0000 0000 0000 0000 0000 | 1.0                                                            |
| \-1                              | 1   | 0     | 127   | 0111 1111 | 000 0000 0000 0000 0000 0000 | −1.0                                                           |
| 最小的非规约数                          | \*  | \-126 | 0     | 0000 0000 | 000 0000 0000 0000 0000 0001 | ±2<sup>−23</sup> × 2<sup>−126</sup> = ±2<sup>−149</sup> ≈ ±1.4 |
| 中间大小的非规约数                        | \*  | \-126 | 0     | 0000 0000 | 100 0000 0000 0000 0000 0000 | ±2<sup>−1</sup> × 2<sup>−126</sup> = ±2<sup>−127</sup> ≈ ±5.88 |
| 最大的非规约数                          | \*  | \-126 | 0     | 0000 0000 | 111 1111 1111 1111 1111 1111 | ±(1−2<sup>−23</sup>) × 2<sup>−126</sup> ≈ ±1.18                |
| 最小的规约数                           | \*  | \-126 | 1     | 0000 0001 | 000 0000 0000 0000 0000 0000 | ±2<sup>−126</sup> ≈ ±1.18                                      |
| 最大的规约数                           | \*  | 127   | 254   | 1111 1110 | 111 1111 1111 1111 1111 1111 | ±(2−2<sup>−23</sup>) × 2<sup>127</sup> ≈ ±3.4                  |
| 正无穷                              | 0   | 128   | 255   | 1111 1111 | 000 0000 0000 0000 0000 0000 | \+∞                                                            |
| 负无穷                              | 1   | 128   | 255   | 1111 1111 | 000 0000 0000 0000 0000 0000 | −∞                                                             |
| [NaN](../Page/NaN.md "wikilink") | \*  | 128   | 255   | 1111 1111 | non zero                     | NaN                                                            |
| \* 符号位可以为0或1 .                   |     |       |       |           |                              |                                                                |

#### 64位雙精度

[雙精度二進制小數](https://zh.wikipedia.org/wiki/雙精度 "wikilink")，使用64個位元存儲。

<table border=1 cellspacing=0 cellpadding=0>

<tr align=center>

<td width=15>

1

</td>

<td width=120>

11

</td>

<td width=345>

52位長

</td>

</tr>

<tr align=center>

<td>

S

</td>

<td>

Exp

</td>

<td>

Fraction

</td>

</tr>

<tr align=center>

<td>

63

</td>

<td>

62至52
偏正值（實際的指數大小+1023）

</td>

<td>

51至0位編號（從右邊開始為0）

</td>

</tr>

</table>

S為符號位，Exp為指數位，Fraction為有效數位。指數部分即使用所謂的偏正值形式表示，偏正值為實際的指數大小與一個固定值（64位的情況是1023）的和。采用這種方式表示的目的是簡化比較。因為，指數的值可能為正也可能為負，如果采用二補數表示的話，全體符號位S和Exp自身的符號位將導致不能簡單的進行大小比較。正因為如此，指數部分通常采用一個無符號的正數值存儲。雙精度的指數部分是−1022～+1023加上1023，指數值的大小從1～2046（0（2進位全為0）和2047（2進位全為1）是特殊值）。浮點小數計算時，指數值減去偏正值將是實際的指數大小。

### 浮點數的比較

浮点数基本上可以按照符号位、指数域、尾数域的顺序作字典比较。显然，所有正数大于负数；正负号相同时，指数的二进制表示法更大的其浮点数值更大。

### 浮點數的捨入

任何有效數上的運算結果，通常都存放在較長的暫存器中，當結果被放回浮點格式時，必須將多出來的位元丟棄。 有多種方法可以用來執行捨入作業，實際上IEEE標準列出4種不同的方法：

  - **捨入到最接近**：舍入到最接近，在一样接近的情况下偶数优先（Ties To Even，这是默认的舍入方式）：会将结果舍入为最接近且可以表示的值，但是当存在两个数一样接近的时候，则取其中的偶数（在二进制中是以0结尾的）。
  - **朝+∞方向捨入**：會將結果朝正無限大的方向捨入。
  - **朝-∞方向捨入**：會將結果朝負無限大的方向捨入。
  - **朝0方向捨入**：會將結果朝0的方向捨入。

### 浮点数的运算与函数

#### 标准运算

下述函数必须提供:

  - 加减乘除（Add、subtract、multiply、divide）。在加减运算中負零與零相等：\(-0.0 = 0.0\)
  - 平方根（Square root）：\(\sqrt{x} \ge 0 (x \ge 0)\)，另規定\(\sqrt{-0.0} = -0.0\)
  - 浮点余数。返回值\(x - (round(x / y) * y)\)。
  - 近似到最近的整数\(round(x)\)。如果恰好在两个相邻整数之间，则近似到偶数。
  - 比较运算. -Inf \<負的規約浮點數數\<負的非規約浮點數\< -0.0 = 0.0 \<正的非規約浮點數\<正的規約浮點數\< Inf；
  - 特殊比較： -Inf = -Inf, Inf = Inf, NaN與任何浮點數（包括自身）的比較結果都為假，即 (NaN ≠ x) = false.

### 建议的函数与谓词

  - `copysign(x, y)`: `copysign(x, y)`返回的值由x的不带符号的部份和y的符号组成。因此`abs(x)`等于`copysign(x, 1.0)`。`copysign`可以对NaN正确操作，这是少有的几个可以对NaN像普通算术一样操作有效的函数之一。C99新增了`copysign`函数。
  - −x:從涵義上指將x的符號反轉。當x是±0或者NaN時，其涵義可能不同於0-x.
  - `scalb(y, N)`:計算*y*×2<sup>N</sup>（N是整数），无需再计算2<sup>N</sup>。C99中对应的函式名是`scalbn`.
  - `logb(x)`:計算*x* = 1.*a*×2<sup>n</sup>（x ≠ 0, a ∈\[0, 1)）中的n. C99新增了`logb`和`ilogb`函式。
  - `nextafter(x,y)`:沿y方向找最鄰近x的可表達浮點數。比如`nextafter(0, 1)`得到的是最小可表達的正數。C99新增了`nextafter`函式。
  - `finite(x)`:判斷x是否有限，即−Inf \< x \< Inf. C99新增了`isfinite`函式。
  - `isnan(x)`:判斷x是否是一個NaN，這等價于"x ≠ x". C99新增了`isnan`函式。
  - `x <> y`:僅當x \< y或者x \> y時才為True，其涵義是NOT（x = y）。注意這不同于"x ≠ y"。
  - `unordered(x, y)`:當x與y無法比較大小時為True，比如說x或者y是一個NaN. C99中對應的函式名是`isunordered`.
  - `class(x)`:區分x的浮點數類屬：信號NaN、靜默NaN、-Inf、負的規約浮點數，負的非規約浮點數，-0.0,0.0，正的非規約浮點數，正的規約浮點數，Inf。

## 精度

在[二進制](https://zh.wikipedia.org/wiki/二進制 "wikilink")，第一個有效數字必定是「1」，因此這個「1」並不會儲存。

### 讨论一

單精和雙精浮點數的有效數字分別是有儲存的23和52個位，加上最左手邊沒有儲存的第1個位，即是24和53個位。

\[\log 2^{24} = 7.22\]

\[\log 2^{53} = 15.95\]

由以上的計算，單精和雙精浮點數可以保證7位和15位十進制有效數字。

### 讨论二

C++语言标准定义的浮点数的**十进制精度**(decimal precision)：十进制数字的位数，可被(浮点数)表示而值不发生变化\[3\]。C语言标准定义的浮点数的十进制精度为：十进制数字的位数q，使得任何具有q位十进制数字的浮点数可近似表示为b进制的p位数字并且能近似回十进制表示而不改变这q位十进制数字\[4\]

但由于相对近似误差不均匀，有的7位十进制浮点数不能保证近似转化为32比特浮点再近似转化回7位十进制浮点后保持值不变：例如8.589973e9将变成8.589974e9。这种近似误差不会超过1比特的表示能力，因此(24-1)\*std::log10(2)等于6.92，下取整为6，成为std::numeric_limits<float>::digits10以及FLT_DIG的值。std::numeric_limits<float>::max_digits10的值为9，含义是必须9位十进制数字才能区分float的所有值；也即float的最大表示区分度。

类似的，std::numeric_limits<double>::digits10或DBL_DIG是15， std::numeric_limits<double>::max_digits10是17

### 例子

以下的[C++](../Page/C++.md "wikilink")程式，概略地展示了單精和雙精浮點數的精度。

``` cpp
#include <iostream>

int main () {
    std::cout.precision(20);
    float a=123.45678901234567890;
    double b=123.45678901234567890;
    std::cout << a << std::endl;
    std::cout << b << std::endl;
    return 0;
}

// Xcode 5.1
// Output:
// 123.456787109375
// 123.45678901234568059
// Program ended with exit code: 0
```

## 相關條目

  - [浮點數](https://zh.wikipedia.org/wiki/浮點數 "wikilink")
  - [單精度浮點數](https://zh.wikipedia.org/wiki/單精度浮點數 "wikilink")
  - [雙精度浮點數](../Page/雙精度浮點數.md "wikilink")

## 外部連結

  - [IEEE 754 references](https://web.archive.org/web/20070505021348/http://babbage.cs.qc.edu/courses/cs341/IEEE-754references.html)
  - [Let's Get To The (Floating) Point by Chris Hecker](https://web.archive.org/web/20070203082451/http://www.d6.com/users/checker/pdfs/gdmfp.pdf)
  - [What Every Computer Scientist Should Know About Floating-Point Arithmetic by David Goldberg](http://docs.sun.com/source/806-3568/ncg_goldberg.html) - a good introduction and explanation.
  - [IEEE 854-1987](http://www2.hursley.ibm.com/decimal/854mins.html) History and minutes
  - [Converter](https://web.archive.org/web/20070424205950/http://www.h-schmidt.net/FloatApplet/IEEE754.html)
  - [Another Converter](https://web.archive.org/web/20060901165225/http://babbage.cs.qc.edu/courses/cs341/IEEE-754.html)
  - [Converter as MS-Windows program](https://web.archive.org/web/20070626154943/http://www.61131.com/download.htm)
  - [Comparing doubles in C++](https://web.archive.org/web/20070928213715/http://metasharp.net/index.php?title=How_to_compare_double_or_float_in_Cpp)
  - [An Interview with the Old Man of Floating-Point](http://www.cs.berkeley.edu/~wkahan/ieee754status/754story.html)
  - [Coprocessor.info : x87 FPU pictures, development and manufacturer information](https://web.archive.org/web/20070314154031/http://www.coprocessor.info/)

## 參考文獻

[Category:計算機算術](https://zh.wikipedia.org/wiki/Category:計算機算術 "wikilink") [Category:IEEE標準](https://zh.wikipedia.org/wiki/Category:IEEE標準 "wikilink")

1.
2.  參見[有符號數處理](../Page/有符號數處理.md "wikilink")的Excess-N
3.  原文：Number of base 10 digits that can be represented without change
4.  原文：number of decimal digits, q, such that any floating-point number with q decimal digits can be rounded into a floating-point number with p radix b digits and back again without change to the q decimal digits.