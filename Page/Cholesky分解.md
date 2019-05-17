[線性代數中](https://zh.wikipedia.org/wiki/線性代數 "wikilink")，**Cholesky分解**（，另有譯作**楚列斯基分解**）是指將一個[正定的](https://zh.wikipedia.org/wiki/正定矩陣 "wikilink")[埃爾米特矩陣分解成一個](https://zh.wikipedia.org/wiki/埃爾米特矩陣 "wikilink")[下三角矩陣與其](../Page/三角矩阵.md "wikilink")[共軛轉置之](https://zh.wikipedia.org/wiki/共軛轉置 "wikilink")[乘積](https://zh.wikipedia.org/wiki/乘積 "wikilink")。這種分解方式在提高代數運算效率、[蒙特卡羅方法等場合中十分有用](https://zh.wikipedia.org/wiki/蒙特卡羅方法 "wikilink")。[實數](https://zh.wikipedia.org/wiki/實數 "wikilink")[矩陣的Cholesky分解由](https://zh.wikipedia.org/wiki/矩陣 "wikilink")最先發明。實際應用中，Cholesky分解在求解[線性方程組中的效率約兩倍於](https://zh.wikipedia.org/wiki/線性方程組 "wikilink")[LU分解](../Page/LU分解.md "wikilink")。\[1\]

## 描述

對正定[埃爾米特矩陣](https://zh.wikipedia.org/wiki/埃爾米特矩陣 "wikilink")\(\mathbf{A}\)進行Cholesky分解，即求矩陣\(\mathbf{L}\)使下式成立

\[\mathbf{A}=\mathbf{LL}^*\]
其中，\(\mathbf{L}\)是一個下三角矩陣且所有對角元素均為[正實數](https://zh.wikipedia.org/wiki/正數 "wikilink")，\(\mathbf{L}^*\)表示\(\mathbf{L}\)的共軛轉置。每一個正定埃爾米特矩陣都有一個唯一的Cholesky分解。\[2\]

當矩陣\(\mathbf{A}\)是一個半正定的埃爾米特矩陣，若允許\(\mathbf{L}\)的對角線元素為零，則\(\mathbf{A}\)也存在上述形式的分解。\[3\]

當\(\mathbf{A}\)為實數矩陣，則\(\mathbf{L}\)也為實數矩陣且Cholesky分解可改寫成\(\mathbf{A}=\mathbf{LL}^\mathbf{T}\)。\[4\]

當\(\mathbf{A}\)是[正定矩陣時](https://zh.wikipedia.org/wiki/正定矩陣 "wikilink")，Cholesky分解是唯一的，即只存在一個對角元素均嚴格大於零的下三角矩陣，使\(\mathbf{A}=\mathbf{LL}^*\)成立。然而，當\(\mathbf{A}\)是半正定時，分解則不一定是唯一的。

定理的[逆命題自然成立](https://zh.wikipedia.org/wiki/逆命題 "wikilink")：對於某些[可逆矩陣](https://zh.wikipedia.org/wiki/可逆矩陣 "wikilink")\(\mathbf{L}\)（下三角矩陣或其他矩陣），如果\(\mathbf{A}\)可被寫成\(\mathbf{LL}^*\)，則\(\mathbf{A}\)是一個正定的埃爾米特矩陣。

## LDL分解

經典Cholesky分解的一個變形是LDL分解，即

  -

      -
        \(\mathbf{A}=\mathbf{LDL}^*\)

其中，\(\mathbf{L}\)是一个[單位下三角矩陣](https://zh.wikipedia.org/wiki/三角矩陣#单位三角矩阵 "wikilink")，\(\mathbf{D}\)是一個[對角矩陣](../Page/對角矩陣.md "wikilink")。

該分解與經典Cholesky分解猶有關聯，如下：

\[\mathbf{A}=\mathbf{LDL}^*=\mathbf{LD}^{\frac{1}{2}}(\mathbf{D}^{\frac{1}{2}})^*\mathbf{L}^*=\mathbf{LD}^\frac{1}{2} (\mathbf{LD}^\frac{1}{2})^*\]
或者，由於\(\mathbf{L}\)的對角元素必須為\(1\)，且\(\mathbf{L}^{Cholesky}\)與\(\mathbf{L}\)都是下三角矩陣，故如果已知經典Cholesky分解\(\mathbf{L}^{Cholesky}\)，則\(\mathbf{LDL} ^{T}\)形式可依下式求出，設**S**是包含\(\mathbf {L} ^{Cholesky}\)的對角元素的對角矩陣，

  -
    \(\mathbf D  = \mathbf S^2\)
    \(\mathbf L  = \mathbf L^{Cholesky} \mathbf S^{-1}\)

**LDL變形**如果得以有效執行，構造及使用時所需求的空間及計算的複雜性與經典Cholesky分解是相同的，但是可避免提取[平方根](../Page/平方根.md "wikilink")。\[5\]某些不存在Cholesky分解的[不定矩陣](https://zh.wikipedia.org/wiki/正定矩陣#不定矩陣 "wikilink")，也可以執行LDL分解，此時矩陣\(\mathbf{D}\)中會出現[負數元素](https://zh.wikipedia.org/wiki/負數 "wikilink")。因此人們更傾向於使用LDL分解。對於實數矩陣，該種分解的形式可被改寫成

\[\mathbf{A}=\mathbf{LDL}^\mathbf{T}\]
此形式通常稱為**LDLT分解**（或**LDL<sup>T</sup>分解**）。它與**實對稱矩陣的特徵分解**密切相關，因為對於[實對稱矩陣](https://zh.wikipedia.org/wiki/實對稱矩陣 "wikilink")，存在[特徵分解](https://zh.wikipedia.org/wiki/特徵分解 "wikilink")\(\mathbf{A}=\mathbf{Q\Lambda Q}^\mathbf{T}\)。

## 實例

以下乃一個[實對稱矩陣的Cholesky分解](https://zh.wikipedia.org/wiki/實對稱矩陣 "wikilink")︰

  -
    <math>\\begin{align}

\\left(

` \begin{array}{*{3}{r}}`
`     4 &  12 & -16 \\`
`    12 &  37 & -43 \\`
`   -16 & -43 &  98 \\`
` \end{array}`

\\right) = \\left(

` \begin{array}{*{3}{r}}`
`    2 &  0 &  0 \\`
`    6 &  1 &  0 \\`
`   -8 &  5 &  3 \\`
` \end{array}`

\\right) \\left(

` \begin{array}{*{3}{r}}`
`    2 &  6 & -8 \\`
`    0 &  1 &  5 \\`
`    0 &  0 &  3 \\`
` \end{array}`

\\right) \\end{align}</math> 以下乃其LDL<sup>T</sup>分解︰

  -
    <math>\\begin{align}

\\left(

` \begin{array}{*{3}{r}}`
`     4 &  12 & -16 \\`
`    12 &  37 & -43 \\`
`   -16 & -43 &  98 \\`
` \end{array}`

\\right) & = \\left(

` \begin{array}{*{3}{r}}`
`    1 &  0 &  0 \\`
`    3 &  1 &  0 \\`
`   -4 &  5 &  1 \\`
` \end{array}`

\\right) \\left(

` \begin{array}{*{3}{r}}`
`    4 &  0 &  0 \\`
`    0 &  1 &  0 \\`
`    0 &  0 &  9 \\`
` \end{array}`

\\right) \\left(

` \begin{array}{*{3}{r}}`
`    1 &  3 & -4 \\`
`    0 &  1 &  5 \\`
`    0 &  0 &  1 \\`
` \end{array}`

\\right) \\end{align}</math>

## 應用

Cholesky分解主要被用於[線性方程組](https://zh.wikipedia.org/wiki/線性方程組 "wikilink")\(\mathbf{Ax} = \mathbf{b}\)的求解。如果**A**是[對稱正定的](https://zh.wikipedia.org/wiki/正定矩陣 "wikilink")，我們可以先求出\(\mathbf{A}=\mathbf{LL}^\mathbf{T}\)，隨後借[向後替換法對](https://zh.wikipedia.org/wiki/三角矩陣#向後替換法 "wikilink")**y**求解\(\mathbf{Ly}=\mathbf{b}\)，再以[向前替換法對](https://zh.wikipedia.org/wiki/三角矩陣#向後替換法 "wikilink")**x**求解\(\mathbf{L}^\mathbf{T}\mathbf{x} =\mathbf{y}\)即得最終解。

另一種可避免在計算\(\mathbf{LL}^\mathbf{T}\)時需要解平方根的方法就是計算\(\mathbf{A} = \mathbf{LDL}^\mathrm{T}\)，然後對**y**求解\(\mathbf{Ly} = \mathbf{b}\)，最後求解\(\mathbf{DL}^\mathrm{T}\mathbf{x} = \mathbf{y}\)

對於可以被改寫成對稱矩陣的線性方程組，Cholesky分解及其LDL變形是一個較高效率及較高數值穩定性的求解方法。相比之下，其效率幾近為[LU分解的兩倍](../Page/LU分解.md "wikilink")。

### 矩陣求逆

若欲對[埃爾米特矩陣直接求逆](https://zh.wikipedia.org/wiki/埃爾米特矩陣 "wikilink")，可以通過Cholesky分解，類似求解線性方程組一般求出逆矩陣，這需要\(n^3\)次運算（\(\frac{1}{2}n^3\)次乘法運算）。 *該方法即便要求逐步計算也非常有效率。*

非埃爾米特矩陣\(\mathbf{B}\)也可以通過下例性質求逆，因為其中\(\mathbf{BB}^*\)總是埃爾米特矩陣︰

\[\mathbf{B}^{-1}=\mathbf{B}^*(\mathbf{BB}^*)^{-1}\]

## 計算

有各種各樣的方法用於計算Cholesky分解。
常用的演算法的計算複雜度在一般情況下為[\(O(n^3)\)](https://zh.wikipedia.org/wiki/大O符號 "wikilink")。

下面的算法何者較快取決於執行時的具體條件。總體而言，第一個算法會稍慢，因為其以一種不太尋常的方式讀取數據。

### Cholesky算法

用於計算矩陣\(\mathbf{L}\)的**Cholesky算法**，是以[高斯消元法為基礎而調整得來的](https://zh.wikipedia.org/wiki/高斯消元法 "wikilink")。

遞歸算法由\(i:=1\)開始，令

\[\mathbf{A}^{(1)}:=\mathbf{A}\] 在步骤\(i\)，矩陣\(A^{(i)}\)的形式如下：

  -
    <math>\\mathbf{A}^{(i)}=

\\begin{pmatrix} \\mathbf{I}_{i-1} & 0 & 0 \\\\ 0 & a_{i,i} &
\\mathbf{b}_{i}^{\*} \\\\ 0 & \\mathbf{b}_{i} & \\mathbf{B}^{(i)}
\\end{pmatrix}, </math>
其中，\(\mathbf{I}_{i-1}\)代表\(i-1\)維的[單位矩陣](../Page/單位矩陣.md "wikilink")。

此時定義矩陣\(\mathbf{L}_i\)為

  -
    <math>\\mathbf{L}_{i}:=

\\begin{pmatrix} \\mathbf{I}_{i-1} & 0 & 0 \\\\ 0 & \\sqrt{a_{i,i}} &
0 \\\\ 0 & \\frac{1}{\\sqrt{a_{i,i}}} \\mathbf{b}_{i} &
\\mathbf{I}_{n-i} \\end{pmatrix}, </math> 隨即\(\mathbf{A}^{(i)}\)可以被改寫成

\[\mathbf{A}^{(i)} = \mathbf{L}_{i} \mathbf{A}^{(i+1)} \mathbf{L}_{i}^{*}\]
其中

  -
    <math>\\mathbf{A}^{(i+1)}=

\\begin{pmatrix} \\mathbf{I}_{i-1} & 0 & 0 \\\\ 0 & 1 & 0 \\\\ 0 & 0 &
\\mathbf{B}^{(i)} - \\frac{1}{a_{i,i}} \\mathbf{b}_{i}
\\mathbf{b}_{i}^{\*} \\end{pmatrix}.</math>
**注意︰**在此\(\mathbf{b}_i\mathbf{b}^*_i\)是一個[外積](https://zh.wikipedia.org/wiki/外積 "wikilink")。

重複此步驟直到\(i\)從\(1\)到\(n\)。\(n\)步之後，我們得到\(A^{(n+1)} = \mathbf{I}\)。因此，所求的下三角矩陣\(L\)為

\[\mathbf{L} := \mathbf{L}_{1} \mathbf{L}_{2} \dots \mathbf{L}_{n}.\]

### Cholesky–Banachiewicz及Cholesky–Crout演算法

[缩略图](https://zh.wikipedia.org/wiki/File:Chol.gif "fig:缩略图")
寫出等式\(\mathbf{A}=\mathbf{LL}^*\)，

  -
    <math>\\begin{align}

{\\mathbf{A=LL^T}} & = \\begin{pmatrix} \\mathbf{L}_{11} & 0 & 0 \\\\

`  \mathbf{L}_{21} & \mathbf{L}_{22} & 0 \\`
`  \mathbf{L}_{31} & \mathbf{L}_{32} & \mathbf{L}_{33}\\`

\\end{pmatrix} \\begin{pmatrix} \\mathbf{L}_{11} & \\mathbf{L}_{21} &
\\mathbf{L}_{31} \\\\

`  0 & \mathbf{L}_{22} & \mathbf{L}_{32} \\`
`  0 & 0 & \mathbf{L}_{33}`

\\end{pmatrix} \\\\ & = \\begin{pmatrix} \\mathbf{L}_{11}^2 &
&(\\text{symmetric}) \\\\

`  \mathbf{L}_{21}\mathbf{L}_{11} & \mathbf{L}_{21}^2 + \mathbf{L}_{22}^2& \\`
`  \mathbf{L}_{31}\mathbf{L}_{11} & \mathbf{L}_{31}\mathbf{L}_{21}+\mathbf{L}_{32}\mathbf{L}_{22} & \mathbf{L}_{31}^2 + \mathbf{L}_{32}^2+\mathbf{L}_{33}^2`

\\end{pmatrix} \\end{align}</math> 則得到矩陣\(\mathbf{L}\)的元素的計算公式如下︰

\[\mathbf{L}_{j,j} = \sqrt{ A_{j,j} - \sum_{k=1}^{j-1}\mathbf{L}_{j,k}^2 }\]

\[\mathbf{L}_{i,j} = \frac{1}{\mathbf{L}_{j,j}} \left( A_{i,j} - \sum_{k=1}^{j-1} \mathbf{L}_{i,k}\mathbf{L}_{j,k} \right), \qquad\text{for } i>j\]
只要\(\mathbf{A}\)是實數正定矩陣，則[平方根下的表逹式恆為正](../Page/平方根.md "wikilink")。

對於複埃爾米特矩陣，則適用如下公式：

\[\mathbf{L}_{j,j} = \sqrt{ A_{j,j} - \sum_{k=1}^{j-1}\mathbf{L}_{j,k}\mathbf{L}_{j,k}^* }.\]

\[\mathbf{L}_{i,j} = \frac{1}{\mathbf{L}_{j,j}} \left(\mathbf{A}_{i,j} - \sum_{k=1}^{j-1}\mathbf{L}_{i,k}\mathbf{L}_{j,k}^* \right), \qquad\text{for } i>j.\]
因此，要計算\(\mathbf{L}_{i,j}(i\neq j)\)只需利用其的左、上方元素的值。計算通常是以以下其中一種順序進行的。

  - **Cholesky–Banachiewicz算法**從矩陣L的左上角開始，依行進行計算。
  - **Cholesky–Crout算法**從矩陣L的左上角開始，依列進行計算。

若有需要，*整個矩陣可以逐個元素計算得出*，無論使用何種順序讀取。

### 計算的穩定性

假設我們要求解一個[良置的線性方程組](https://zh.wikipedia.org/wiki/良置 "wikilink")。採用了[LU分解的算法](../Page/LU分解.md "wikilink")，除非進行某種繞軸旋轉，否則是不穩定的；如果算法進行了繞軸旋轉，則其誤差取決於矩陣的*增長因子*，這個數通常（但非總是）很小。

現在，假設算法適用Cholesky分解。如上所述，算法的效率將會是原來的兩倍。此外，無必要進行繞軸旋轉且誤差總是很小。具體而言，若要求解\(\mathbf{Ax}= \mathbf{b}\)，\(\mathbf{y}\)表示已計算出的解，然後能解出*干擾方程組*\((\mathbf{A}+\mathbf{E})\mathbf{y}=\mathbf{b}\)，其中

\[\|\mathbf{E}\|_2 \le c_n \varepsilon \|\mathbf{A}\|_2.\]
在這裡，\(\|\quad\|_2\)是指[矩陣2-範數](../Page/矩陣範數.md "wikilink")，而\(c_n\)是一個取決於\(n\)的小常數，\(\varepsilon\)表示。

值得一提的是，Cholesky分解與平方根的使用有關。如果被分解的矩陣是正定的，那麽只要*運算精確*，矩陣中帶有平方根的元素的平方根下的數字永遠是正數。不幸的是，由於存在[捨入誤差](../Page/捨入誤差.md "wikilink")，這些數字可能為[負數](https://zh.wikipedia.org/wiki/負數 "wikilink")，並使算法擱淺。然而，此種情況僅當矩陣為[病態時才會出現](https://zh.wikipedia.org/wiki/條件數 "wikilink")。一種可解決此問題的方法，是增添一個對角修正矩陣至待分解矩陣，以增加矩陣的正定性。\[6\] 此法雖或將減少分解的準確性，但有在某些情況卻頗有作為；譬如，執行[應用於最優化的牛頓法時](../Page/應用於最優化的牛頓法.md "wikilink")，若初期值距最優值較遠，則此時引入對角矩陣可以提高演算法的穩定性。

### LDL分解

Cholesky分解的另一種形式——LDL分解的計算方式如下所示，

  -
    <math>

\\begin{align} {\\mathbf{A=LDL}^\\mathrm{T}} & = \\begin{pmatrix} 1 & 0
& 0 \\\\

`  L_{21} & 1 & 0 \\`
`  L_{31} & L_{32} & 1\\`

\\end{pmatrix} \\begin{pmatrix} D_1 & 0 & 0 \\\\

`  0 & D_2 & 0 \\`
`  0 & 0 & D_3\\`

\\end{pmatrix} \\begin{pmatrix} 1 & L_{21} & L_{31} \\\\

`  0 & 1 & L_{32} \\`
`  0 & 0 & 1\\`

\\end{pmatrix} \\\\ & = \\begin{pmatrix} D_1 & &(\\mathrm{symmetric})
\\\\

`  L_{21}D_1 & L_{21}^2D_1 + D_2 & \\`
`  L_{31}D_1 & L_{31}L_{21}D_{1}+L_{32}D_2 & L_{31}^2D_1 + L_{32}^2D_2+D_3.`

\\end{pmatrix} \\end{align} </math> 如果  是實數矩陣，下述之遞歸計算式適用於矩陣  及  中的所有元素︰

\[D_j = A_{jj} - \sum_{k=1}^{j-1} L_{jk}^2 D_k\]

\[L_{ij} = \frac{1}{D_j} \left( A_{ij} - \sum_{k=1}^{j-1} L_{ik} L_{jk} D_k \right), \qquad\text{for } i>j.\]
如果  是[複埃爾米特矩陣](../Page/埃尔米特矩阵.md "wikilink")，則矩陣  及  的計算適用以下公式：

\[D_{j} = A_{jj} - \sum_{k=1}^{j-1} L_{jk}L_{jk}^* D_k\]

\[L_{ij} = \frac{1}{D_j} \left( A_{ij} - \sum_{k=1}^{j-1} L_{ik} L_{jk}^* D_k \right), \qquad\text{for } i>j.\]
同樣地，若有需求，*該讀取順序可以逐一計算矩陣中的每一個元素。*

### 分塊矩陣變形

當\(\mathbf{A}\)是一個不定矩陣時，**LDL分解**在未經過謹慎的繞軸旋轉的情況下是不穩定的；\[7\] 特別是，分解出的矩陣的元素可能是任意的。一个可取的改進手段是執行矩陣分塊後再執行分解，通常將原矩陣分為包含\(2\times2\)的小矩陣的分塊矩陣：\[8\]

  -
    <math>\\begin{align}

{\\mathbf{A=LDL}^\\mathrm{T}} & = \\begin{pmatrix}

`\mathbf I & 0 & 0 \\`
`\mathbf L_{21} & \mathbf I & 0 \\`
`\mathbf L_{31} & \mathbf L_{32} & \mathbf I\\`

\\end{pmatrix} \\begin{pmatrix}

`\mathbf D_1 & 0 & 0 \\`
`0 & \mathbf D_2 & 0 \\`
`0 & 0 & \mathbf D_3\\`

\\end{pmatrix} \\begin{pmatrix}

`\mathbf I & \mathbf L_{21}^\mathrm T & \mathbf L_{31}^\mathrm T \\`
`0 & \mathbf I & \mathbf L_{32}^\mathrm T \\`
`0 & 0 & \mathbf I\\`

\\end{pmatrix} \\\\ & = \\begin{pmatrix}

`\mathbf D_1 &   &(\mathrm{symmetric})   \\`
`\mathbf L_{21} \mathbf D_1 & \mathbf L_{21} \mathbf D_1 \mathbf L_{21}^\mathrm T + \mathbf D_2& \\`
`\mathbf L_{31} \mathbf D_1 & \mathbf  L_{31} \mathbf D_{1} \mathbf L_{21}^\mathrm T + \mathbf  L_{32} \mathbf D_2 & \mathbf L_{31} \mathbf D_1 \mathbf L_{31}^\mathrm T + \mathbf L_{32} \mathbf D_2 \mathbf L_{32}^\mathrm T + \mathbf D_3`

\\end{pmatrix} \\end{align} </math> 在此，矩陣中每一個元素都是一個子矩陣。故此，可依照上述遞歸公式類比計算：

\[\mathbf D_j = \mathbf A_{jj} - \sum_{k=1}^{j-1} \mathbf L_{jk} \mathbf D_k \mathbf L_{jk}^\mathrm T\]

\[\mathbf L_{ij} = \left(\mathbf A_{ij} - \sum_{k=1}^{j-1} \mathbf L_{ik} \mathbf D_k \mathbf L_{jk}^\mathrm T\right) \mathbf D_j^{-1}\]
上述計算涉及矩陣相乘同精確的求逆，故而實踐中不能使用過大的分塊矩陣。

### *修正*分解

在實踐中經常有*修正*Cholesky分解的需求。即，經已計算一些矩陣\(\mathbf{A}\)的Cholesky分解\(\mathbf{A}=\mathbf{LL}^*\)，然後在\(\mathbf{A}\)上稍作修改而產生的矩陣\(\tilde{\mathbf{A}}\)，欲對其進行一個修正的Cholesky分解\(\tilde{\mathbf{A}} = \tilde{\mathbf{L}} \tilde{\mathbf{L}}^*\)。問題是，能否用已知的\(\mathbf{A}\)的分解去修正\(\tilde{\mathbf{A}}\)的分解。

#### 秩為1的修正（相加）

如果*修正*矩陣\({\tilde{\mathbf{A}}}=\mathbf{A}+\mathbf{xx}^*\)，則其修正的分解被稱為秩為1的修正（相加）。。

以下是一個 [MATLAB](../Page/MATLAB.md "wikilink") 語言寫的實現秩為1的修正的小程式：

``` matlab
function [L] = cholupdate(L,x)
    n = length(x);
    for k=1:n
        r = sqrt(L(k,k)^2 + x(k)^2);
        c = r / L(k, k);
        s = x(k) / L(k, k);
        L(k, k) = r;
        L(k+1:n,k) = (L(k+1:n,k) + s*x(k+1:n)) / c;
        x(k+1:n) = c*x(k+1:n) - s*L(k+1:n,k);
    end
end
```

#### 秩為1的修正（相減）

如果\(\tilde{\mathbf{A}} = \mathbf{A} - \mathbf{x} \mathbf{x}^*\)，那麽只有當\(\tilde{\mathbf{A}}\)仍然是正定的時候該方法才適用。
此條件下，上面的代碼也可用於相減的情況，只需要將`r`和`L(k+1:n,k)`的賦值式的加號替換成减號。

## 證明半正定矩陣的Cholesky分解唯一

上面的演算法表明，每一個正定矩陣\(A\)都有一個Cholesky分解。此結論可以*加入一些限制條件*後，推廣到半正定的情況。但該*條件*並未被完全建立，例如，它未給出明確的數值演算法以計算Cholesky因子。

如果\(A\)是一個\(n\times n\)的半正定矩陣，則序列\(\{\mathbf{A}\}=\{\mathbf{A}+(1/k)\mathbf{I}_n\}\)是一個由正定矩陣構成的序列。而且，在[算子範數中](https://zh.wikipedia.org/wiki/算子範數 "wikilink")

\[\mathbf{A}_k\rightarrow\mathbf{A}\]
在正定的情形下，每一個\(\mathbf{A}_k\)都有其Cholesky分解\(\mathbf{A}_k = \mathbf{L}_k\mathbf{L}^*_k\)。根據算子範數的性質，

\[\| \mathbf{L}_k \|^2 \le \|  \mathbf{L}_k \mathbf{L}_k ^* \| = \| \mathbf{A}_k \|\]
因而\(\{\mathbf{L}_k\}\)是算子[巴拿赫空间上的一個有界](../Page/巴拿赫空间.md "wikilink")[集](../Page/集合_\(数学\).md "wikilink")，因此是（因為基礎向量空間是有限維的）。因此，它有一個帶有限制\(\mathbf{L}\)收斂子序列，也記作\(\{\mathbf{L}_k\}\)。容易驗證，矩陣\(\mathbf{L}\)具有所需的特性，例如，滿足\(\mathbf{A}= \mathbf{LL}^*\)以及\(\mathbf{L}\)是下三角矩陣且其對角元素非負。對於所有的\(x\)和\(y\)都有，

\[\langle \mathbf{A} x, y \rangle = \langle \lim \mathbf{A}_k x, y \rangle = \langle \lim \mathbf{L}_k \mathbf{L}_k^* x, y \rangle = \langle \mathbf{L} \mathbf{L}^*x, y \rangle\]
因此，\(\mathbf{A}=\mathbf{LL}^*\)。因为基礎向量空間是有限維的，所以算子空間的所有拓撲結構都是等價的。故此，範數上\(\mathbf{L}_k\)收斂於\(\mathbf{L}\)，意味着，\(\mathbf{L}_k\)的每個元素都獨立地收斂於\(\mathbf{L}\)。此同時暗示，由於每個\(\mathbf{L}_k\)都是對角元素非負的下三角矩陣，\(\mathbf{L}\)亦如此。

## 推廣

Cholesky分解可以推廣到**元素中包含[算子的矩陣](../Page/算子.md "wikilink")**（稱為算子矩陣）。令\(\{\mathcal{H}_n\}\)是[希爾伯特空間上的一個序列](https://zh.wikipedia.org/wiki/希爾伯特空間 "wikilink")。考慮如下算子矩陣

  -
    <math>

\\mathbf{A} = \\begin{bmatrix} \\mathbf{A}_{11} & \\mathbf{A}_{12} &
\\mathbf{A}_{13} & \\; \\\\ \\mathbf{A}_{12}^\* & \\mathbf{A}_{22} &
\\mathbf{A}_{23} & \\; \\\\ \\mathbf{A} _{13}^\* &
\\mathbf{A}_{23}^\* & \\mathbf{A}_{33} & \\; \\\\ \\; & \\; & \\; &
\\ddots \\end{bmatrix} </math> 滿足直和

\[\mathcal{H} = \oplus _n  \mathcal{H}_n,\] 其中每一個

\[\mathbf{A}_{ij} : \mathcal{H}_j \rightarrow \mathcal{H} _i\]
都是一個有界算子。如果\(\mathbf{A}\)是正定或半正定的，即對於有限的\(k\)及任意的

\[h \in \oplus _{n = 1 }^k \mathcal{H}_k ,\]
都有\(\langle h,\mathbf{A}h\rangle\ge0\)，則存在一個下三角的算子矩陣\(\mathbf{L}\)使得\(\mathbf{A} = \mathbf{LL}^*\)。此外也可以把\(\mathbf{L}\)的對角元素化為正數。

## 用程式語言實現

  - [C語言](https://zh.wikipedia.org/wiki/C語言 "wikilink")︰[GNU科學庫提供了幾個Cholesky分解的實現](https://zh.wikipedia.org/wiki/GNU科學庫 "wikilink")。
  - [Maxima電腦代數系統](../Page/Maxima.md "wikilink")︰函數*Cholesky*可用於計算Cholesky分解。
  - [GNU
    Octave数值計算系統提供了一些函數以計算](../Page/GNU_Octave.md "wikilink")，*修正*和应用Cholesky分解。
  - [LAPACK庫提供了一个高性能的Cholesky分解的實現](../Page/LAPACK.md "wikilink")，可以以[Fortran](../Page/Fortran.md "wikilink")，[C語言及其他大多數語言讀取](https://zh.wikipedia.org/wiki/C語言 "wikilink")。
  - 在[Python中](../Page/Python.md "wikilink")，numpy.linalg模塊中的命令*Cholesky*可執行Cholesky分解。
  - 在[Matlab中](../Page/MATLAB.md "wikilink")，*chol*命令可以簡單地對一個矩陣進行Cholesky分解。
  - 在[R語言中](https://zh.wikipedia.org/wiki/R語言 "wikilink")，*chol*函數可進行Cholesky分解。
  - 在[Wolfram
    Mathematica中](https://zh.wikipedia.org/wiki/Mathematica "wikilink")，函數*CholeskyDecomposition*可以對一個矩陣執行Cholesky分解。
  - 在[C++中](../Page/C++.md "wikilink")，中的命令*chol*可執行Cholesky分解。特徵庫提供了稀疏矩陣和稠密矩陣的Cholesky分解。
  - 在中，函數*Decompose*提供Cholesky分解。
  - [Apache
    Commons數學庫中有Cholesky分解的實現](../Page/Apache_Commons.md "wikilink")，可應用於[Java](../Page/Java.md "wikilink")、[Scala及任何其他](../Page/Scala.md "wikilink")[JVM語言](https://zh.wikipedia.org/wiki/JVM "wikilink")。

## 參見

  -
  -
  - [矩陣分解](https://zh.wikipedia.org/wiki/矩阵分解 "wikilink")

  - [西爾維斯特慣性定理](https://zh.wikipedia.org/wiki/西尔维斯特惯性定理 "wikilink")

  -
  - [矩陣的平方根](../Page/矩阵的平方根.md "wikilink")

## 腳註

## 參考文獻

  - .

  -
  - .

  - S. J. Julier and J. K. Uhlmann. "A General Method for Approximating
    Nonlinear Transformations of ProbabilityDistributions".

  - S. J. Julier and J.K. Uhlmann, "A new extension of the Kalman filter
    to nonlinear systems," in Proc. AeroSense: 11th Int. Symp.
    Aerospace/Defence Sensing, Simulation and Controls, 1997,
    pp. 182–193.

  - .

## 外部連結

### 科学史

  - *Sur la résolution numérique des systèmes d'équations linéaires*,
    Cholesky's 1910 manuscript, online and analyzed on
    [BibNum](http://bibnum.education.fr/mathematiques/algebre/sur-la-resolution-numerique-des-systemes-d-equations-lineaires)
    （法文） （英文） <small>\[for English, click 'A télécharger'\]</small>

### 資訊

  -
  -
  - [Cholesky
    Decomposition](https://web.archive.org/web/20060518112024/http://rkb.home.cern.ch/rkb/AN16pp/node33.html#SECTION000330000000000000000),
    The Data Analysis BriefBook

  - [Cholesky
    Decomposition](http://www.math-linux.com/spip.php?article43) on
    www.math-linux.com

  - [Cholesky Decomposition Made
    Simple](http://sciencemeanderthal.wordpress.com/2012/06/28/cholesky-decomposition-of-variance-covariance-matrices-in-the-classic-twin-study/)
    on Science Meanderthal

### 電腦代碼

  - [LAPACK](http://netlib.org/lapack/)，一個求解稠密線性代數問題的[FORTRAN子程式的集合](https://zh.wikipedia.org/wiki/FORTRAN "wikilink")
  - [ALGLIB](http://www.alglib.net/)，包含部分從[LAPACK到](../Page/LAPACK.md "wikilink")[C++](../Page/C++.md "wikilink")、[C\#](../Page/C♯.md "wikilink")、[Delphi](../Page/Delphi.md "wikilink")、[Visual
    Basic等的埠](../Page/Visual_Basic.md "wikilink")
  - [libflame](http://www.cs.utexas.edu/users/flame/)，帶有[LAPACK功能的C函數庫](../Page/LAPACK.md "wikilink")
  - [德克薩斯大學奧斯汀分校](https://zh.wikipedia.org/wiki/德克薩斯大學奧斯汀分校 "wikilink")，有關Cholesky分解高性能實現的筆記及影片
  - [Google](../Page/Google.md "wikilink")，[Library "Ceres
    Solver"](http://ceres-solver.org/).
  - [MATLAB程式](../Page/MATLAB.md "wikilink")，[LDL分解](http://infohost.nmt.edu/~borchers/ldlt.html)
  - [Armadillo](http://arma.sourceforge.net/download.html)，一個C++線性函數包
    (package)

### 模擬中矩陣的利用

  - [生成相关的随机变量](https://web.archive.org/web/20120105084424/http://www.columbia.edu/~mh2078/MCS04/MCS_framework_FEegs.pdf)，Martin
    Haugh，[哥倫比亞大學](https://zh.wikipedia.org/wiki/哥倫比亞大學 "wikilink")

### 線上計算機

  - [線上矩陣運算](http://www.bluebit.gr/matrix-calculator/)，可執行Cholesky分解。

[Category:矩阵分解](https://zh.wikipedia.org/wiki/Category:矩阵分解 "wikilink")
[Category:数值线性代数](https://zh.wikipedia.org/wiki/Category:数值线性代数 "wikilink")
[Category:算子理论](https://zh.wikipedia.org/wiki/Category:算子理论 "wikilink")

1.
2.  , ,
3.
4.
5.
6.
7.
8.