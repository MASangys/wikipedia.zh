**BCH码**（BCH codes、Bose–Chaudhuri–Hocquenghem codes）為取自Bose、Ray-Chaudhuri与Hocquenghem的缩写，是[编码理论](../Page/编码理论.md "wikilink")尤其是[纠错码中研究得比较多的一种编码方法](https://zh.wikipedia.org/wiki/纠错码 "wikilink")。用术语来说，BCH码是用于校正多个随机错误模式的多级、循环、错误校正、变长数字编码。BCH码也可以用于[质数级或者](https://zh.wikipedia.org/wiki/质数 "wikilink")[质数的幂级的多级](https://zh.wikipedia.org/wiki/质数 "wikilink")[相移键控](https://zh.wikipedia.org/wiki/相移键控 "wikilink")。11级的BCH码已经用于表示10进制数外加一个符号位。

## 构建

BCH 码使用有限域上的[域論与多项式](https://zh.wikipedia.org/wiki/域論 "wikilink")。为了检测错误可以构建一个检测多项式，这样接收端就可以检测是否有错误发生。

要构建一个能够检测、校正两个错误的 BCH 码，我们要使用[有限域](../Page/有限域.md "wikilink") GF(16) 或者 **Z**<sub>2</sub>\[*x*\]／\<*x*<sup>4</sup> + *x* + 1\>。如果 α 是 *m*<sub>1</sub>(*x*) = *x*<sup>4</sup> + *x* + 1 的一个根，那么 *m*<sub>1</sub> 就是 α 的[极小多项式](https://zh.wikipedia.org/wiki/极小多项式 "wikilink")，这是因为

  -
    *m*<sub>1</sub>(*x*) = (*x* - α)(*x* - α<sup>2</sup>)(*x* - α<sup>4</sup>)(*x* - α<sup>8</sup>)=*x*<sup>4</sup> + *x* + 1。

如果要构建一个能够纠正一个错误的 BCH 码，那么就使用 *m*<sub>1</sub>(*x*)，这个代码就是所有满足

  -
    *C*(*x*) ≡ 0（mod *m*<sub>1</sub>(*x*)）且根为 α, α<sup>2</sup>, α<sup>4</sup>, α<sup>8</sup> 的多项式 *C*(*x*)。

## 编码

构建码字为

  -
    (*c*<sub>14</sub>, *c*<sub>13</sub>, ..., *c*<sub>8</sub>)

这样多项式为

  -
    *c*<sub>14</sub>+*c*<sub>13</sub>+...+*c*<sub>8</sub>

我们将它称为 *C*<sub>I</sub>。

然后就要找出 *C*<sub>R</sub> 满足 *C*<sub>R</sub>=*C*<sub>I</sub> (mod *m*<sub>1,3</sub>(*x*))=*c*<sub>7</sub>+*c*<sub>6</sub>+...+*c*<sub>0</sub>

这样就得到待发的码字 *C*(*x*) = *C*<sub>I</sub>+*C*<sub>R</sub> (mod *m*<sub>1,3</sub>(*x*)) = 0

例如，如果我们要对 (1,1,0,0,1,1,0) 进行编码

  -
    *C*<sub>I</sub>=*x*<sup>14</sup>+*x*<sup>13</sup>+*x*<sup>10</sup>+*x*<sup>9</sup>

然后用 *m*<sub>1,3</sub>(*x*) 除以（这里的除法是[多项式除法](../Page/多项式除法.md "wikilink")）*C*<sub>I</sub> ，得到结果为 *C*<sub>R</sub>(*x*)，在**Z**<sub>2</sub>域中，我们可以算出 *C*<sub>R</sub>为

  -
    *x*<sup>3</sup>+1

这样，待发的码字为

  -
    (1,1,0,0,1,1,0, 0,0,0,0,1,0,0,1)

## 解码

BCH 的解码过程可以分为以下四步

1.  计算接收到的向量 R 的 2t 伴随矩阵
2.  计算错误定位多项式
3.  解多项式，得到错误位置
4.  如果不是二进制 BCH 码，就计算错误位置的误差值

假设我们收到一个码字向量 **r**，即多项式 *R*(*x*)）。

如果没有错误，那么 R(α)=R(α<sup>3</sup>)=0

如果有一个错误，例如 **r**=**c**+**e**<sub>i</sub>，其中 **e**<sub>*i*</sub> 表示 **R**<sup>14</sup> 的第 *i*个基向量 于是

  -
    *S*<sub>1</sub>=*R*(α)=*C*(α)+α<sup>*i*</sup>=α<sup>i</sup>
    *S*<sub>3</sub>=*R*(α<sup>3</sup>)=C(α<sup>3</sup>)+(α<sup>3</sup>)<sup>i</sup>
      -
        \=(α<sup>i</sup>)<sup>3</sup>=*S*<sub>1</sub><sup>3</sup>

这样就可以纠正错误。α 的指数显示的数据位变化可以帮助我们校正错误。

如果有两个错误

  -
    **r**=**c**+**e**<sub>*i*</sub>+**e**<sub>*j*</sub>

那么

  -
    *S*<sub>1</sub>=*R*(α)=*C*(α)+α<sup>*i*</sup>+α<sup>*j*</sup>
    *S*<sub>3</sub>=*R*(α<sup>3</sup>)=C(α<sup>3</sup>)+(α<sup>3</sup>)<sup>*i*</sup>+(α<sup>3</sup>)<sup>*j*</sup>
      -
        \= (α<sup>3</sup>)<sup>*i*</sup>+(α<sup>3</sup>)<sup>*j*</sup>

这与 *S*<sub>1</sub><sup>3</sup> 不同，所以我们认为有两个错误。更进一步的代数方法可以帮助校正着两个错误。

*开头两段内容出自 [Federal Standard 1037C](https://zh.wikipedia.org/wiki/Federal_Standard_1037C "wikilink")*

上面的文字摘自：http://bch-code.foosquare.com/

## BCH 解码算法

流行的解码算法有，

1.  Peterson Gorenstein Zierler算法
2.  Berlekamp-Massey算法

## Peterson Gorenstein Zierler 算法

### 假设

Peterson 算法是普通 BCH 解码过程的第二步，在这里使用 Peterson 算法计算多项式 \(\Lambda(x) = 1 + \lambda_1 X + \lambda_2 X^2 + ... + \lambda_{2t}X^{2t}\) 的错误定位多项式系数 \(\lambda_1 , \lambda_2  ... \lambda_{2t}\)

这样给定 BCH 码 \((n,k,d_{min})\)，可以校正 \([t=\frac{d_{min}-1}{2}]\) 个错误的 Peterson Gorenstein Zierler 算法就是

### 算法

  - 首先生成 \(2t\) 伴随矩阵
  - 然后生成元素为

\(S_{t \times t}=\begin{bmatrix}s_1&s_2&s_3&...&s_t\\
s_2&s_3&s_4...&...&s_{t+1}\\
s_3&s_4&s_5&...&s_{t+2}\\
...&...&...&...&...\\
s_{t}&s_{t+1}&s_{t+2}&...&s_{2t-1}\end{bmatrix}\) 的矩阵 \(S_{txt}\)

  - 生成元素为

\(C_{t \times 1}=\begin{bmatrix}s_{t+1}\\
s_{t+2}\\
...\\
...\\
s_{2t}\end{bmatrix}\) 的矩阵 \(c_{tx1}\)

  - 让 \(\Lambda\) 表示未知的多项式系数，用

\(\Lambda_{t \times 1} = \begin{bmatrix}\lambda_{t}\\
\lambda_{t-1}\\
...\\
\lambda_{3}\\
\lambda_{2}\\
\lambda_{1}\end{bmatrix}\) 表示

  - 这样就得到矩阵方程

\(S_{t \times t} \Lambda_{t \times 1}  = C_{t \times 1}\)

  - 如果矩阵 \(S_{t \times t}\) 存在行列式，那么我们就可以找到这个矩阵的逆，然后就可以得到 \(\Lambda\) 的值

<!-- end list -->

  - 如果 \(det(S_{t \times t}) = 0\)，那么按照

`       if `\(t = 0\)
`       then`
`             declare an empty error locator polynomial`
`             stop Peterson procedure.`
`       end`
`       set `\(t \leftarrow t -1\)
`       continue from the beginning of Peterson's decoding`

  - 在 \(\Lambda\) 的值确定之后，自然就得到错误定位多项式
  - 结束 Peterson procedure。

## 错误定位多项式的因式分解

在得到 \(\Lambda(x)\) 多项式之后，用 *Chiens search* 算法就可以得到它的解 \(\Lambda(x)=(\alpha^i X + 1) (\alpha ^j X  + 1) ... (\alpha^k X + 1)\)。根据素元 \(\alpha\) 的指数幂就能得到接收到的码字中错误的位置，这也就是误差定位多项式名称的由来。

## 错误校正

对于二进制的BCH码，可以直接根据错误定位多项式因数素元指数的位置校正接收到的向量。最后，对这些位置接收到的数值取反，就可以得到正确的BCH解码码字。

另外也可以使用[Berlekamp-Massey 算法确定错误定位多项式](https://zh.wikipedia.org/wiki/Berlekamp-Massey_算法 "wikilink")，从而解决BCH解码的问题。

## 參考文獻

### 主要參考

  -
  -
### 次要參考

  - Course notes are apparently being redone for 2012: <http://www.stanford.edu/class/ee387/>

  -
  -
  -
## 延伸閱讀

  -
  -
  -
  -
  -
## 外部連接参考文献

  - S. Lin and D. Costello. Error Control Coding: Fundamentals and Applications. Prentice-Hall, Englewood Cliffs, NJ, 2004.
  - [Step by step decoding instructions](https://web.archive.org/web/20070107163035/http://ietfec.oxfordjournals.org/cgi/reprint/E88-A/8/2236.pdf) (pdf file).
  - **Federal Standard 1037c:** <http://federal-standard-1037c.foosquare.com/>
  - Galois Field Calculator: <https://web.archive.org/web/20060212215733/http://www.geocities.com/myopic_stargazer/gf_calc.zip>
  - Decoding Algorithms for BCH codes: <http://students.uta.edu/mx/mxa6471/research/ecc-report.pdf>
  - Source code for BCH channel simulation: <http://students.uta.edu/mx/mxa6471/research/ecc-code.tgz>

[Category:错误检测与校正](https://zh.wikipedia.org/wiki/Category:错误检测与校正 "wikilink") [Category:有限域](https://zh.wikipedia.org/wiki/Category:有限域 "wikilink")