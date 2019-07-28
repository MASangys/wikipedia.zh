**RC電路**（），或稱**RC濾波器**、**RC網路**，也称作**相移電路**，是一個包含利用[電壓源](https://zh.wikipedia.org/wiki/電壓源 "wikilink")、[電流源驅使](https://zh.wikipedia.org/wiki/電流源 "wikilink")[電阻器](https://zh.wikipedia.org/wiki/電阻器 "wikilink")、[電容器運作的](https://zh.wikipedia.org/wiki/電容器 "wikilink")[電路](https://zh.wikipedia.org/wiki/電路 "wikilink")。一個最簡單的RC電路是由一個電容器和一個電阻器組成的，稱為一階RC電路。

## 介紹

三種基本線性[類比積體電路元件包含](https://zh.wikipedia.org/wiki/類比積體電路 "wikilink")：
[電阻器](https://zh.wikipedia.org/wiki/電阻器 "wikilink") (R)、
[電容器](https://zh.wikipedia.org/wiki/電容器 "wikilink") (C)
和[電感元件](https://zh.wikipedia.org/wiki/電感元件 "wikilink") (L)。
它可能藉由下列四種複合性材料組合而成： RC電路、
[RL電路](https://zh.wikipedia.org/wiki/RL電路 "wikilink")、
[LC電路](https://zh.wikipedia.org/wiki/LC電路 "wikilink") 以及
[RLC電路](https://zh.wikipedia.org/wiki/RLC電路 "wikilink") 。這些電路中，
大量的重要類型為許多[類比積體電路的基礎](https://zh.wikipedia.org/wiki/類比積體電路 "wikilink")。
一致的是， 它們皆可藉由
[無源濾波器運作](https://zh.wikipedia.org/wiki/電子濾波器#無源濾波器 "wikilink")。

## RC串聯電路

[Series-RC.svg](https://zh.wikipedia.org/wiki/File:Series-RC.svg "fig:Series-RC.svg")

若將電路視為一 [分壓器](https://zh.wikipedia.org/wiki/分壓器 "wikilink")，

  -
    <math>

V_{in}(s) = \\frac{V}{s} </math>
其經由[電容器的](https://zh.wikipedia.org/wiki/電容器 "wikilink")
[電壓](../Page/電壓.md "wikilink") 為：

  -
    \(V_C(s) =  \frac{1/Cs}{R + 1/Cs}V_{in}(s) = \frac{1}{1 + RCs}V_{in}(s)\)
    \(V_C(t) = V(1-e^{\frac{-t}{RC}})\)

且經由[電阻器的電壓為](https://zh.wikipedia.org/wiki/電阻器 "wikilink")：

  -
    \(V_R(s) = \frac{R}{R + 1/ Cs}V_{in}(s) = \frac{ RCs}{1 + RCs}V_{in}(s)\)
    \(V_R(t) = Ve^{\frac{-t}{RC}}\)

### 暫態響應

一個最簡單的RC電路是由一個電阻器和一個電容器串聯組成，而當一個電路只由一個充電的電容器和一個電阻器組成時，電容器會釋出電流給電阻器。
根據[克希荷夫電路定律我們可求得電流於電容器所耗時間內產生的變化](https://zh.wikipedia.org/wiki/克希荷夫電路定律 "wikilink")，其結果經由
[線性微分方程](https://zh.wikipedia.org/wiki/線性微分方程 "wikilink")

  -
    \(C\frac{dV}{dt} + \frac{V}{R}=0\)

解求得時，其結果於指數衰變函數

  -
    \(V(t)=V_0 e^{-\frac{t}{RC}}\)

## RC並聯電路

[Parallel-RC.svg](https://zh.wikipedia.org/wiki/File:Parallel-RC.svg "fig:Parallel-RC.svg")

電路電流

  -
    \(I_{in} = \ I_R+I_C\)
    \(I_R = \frac{V_{in}}{R}\)
    \(I_C = j\omega C V_{in} = C\frac{dV_{in}}{dt}\)

阻抗

  -
    \(Z_{in}=\frac{V_{in}}{I_{in}} = \frac{R}{1+sRC}\).

## 複數阻抗

電容器[電性阻抗的增加和存於電容器的電量有關](../Page/阻抗.md "wikilink")。如果一個電容器的電壓來源為交流電，此電容的電壓會轉變成交流電源，當交流電的頻率越快時，因為蓄電的時間減少，使儲存於電容器內的電壓進而減少，同樣也縮減了電容器的等效電阻。
這說明了電壓器的等效電阻和電壓源頻率的反關係。

電容器的[阻抗](../Page/阻抗.md "wikilink")或[電阻](https://zh.wikipedia.org/wiki/電阻 "wikilink")
*Z*<sub>*C*</sub>（[歐姆](../Page/歐姆.md "wikilink")）和
電容*C*（[法拉第](https://zh.wikipedia.org/wiki/法拉第 "wikilink")）為

  -
    \(Z_C = \frac{1}{sC}\)

[角頻率](https://zh.wikipedia.org/wiki/角頻率 "wikilink") *s*
通常稱為一[複數](https://zh.wikipedia.org/wiki/複數 "wikilink")，

  -
    \(s \ = \ \sigma + j \omega\)

當其

  - *j* 作 [虛數單位](../Page/虛數單位.md "wikilink")：

<!-- end list -->

  -
    \(j^2 = \ -1\)

<!-- end list -->

  - \(\sigma \\) 為 [指數衰減](https://zh.wikipedia.org/wiki/指數衰減 "wikilink")
    常數（[弧度每秒](https://zh.wikipedia.org/wiki/弧度每秒 "wikilink")）
  - \(\omega \\)
    為[正弦量角频率](https://zh.wikipedia.org/wiki/正弦曲线 "wikilink")（单位也是弧度每秒）。

### 正弦穩態

弦波穩態是一种特殊情况，这一情况下的输入电压由纯粹的正弦曲线（无指数衰减）组成。这样就得到结果

  -
    \(\sigma \ = \ 0\)

而*s*估算为

  -
    \(s \ = \ j \omega\)

## 参考文献

## 外部連結

  - [RC Filter Calculator](http://www.muzique.com/schem/filter.htm)

## 参见

  - [RL电路](../Page/RL电路.md "wikilink")
  - [LC电路](../Page/LC电路.md "wikilink")
  - [RLC电路](../Page/RLC电路.md "wikilink")

[Category:電路分析](https://zh.wikipedia.org/wiki/Category:電路分析 "wikilink")