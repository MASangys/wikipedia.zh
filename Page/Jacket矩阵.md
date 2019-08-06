夾克轉換(Jacket Transform)，由Prof. Moon Ho Lee (1989, 2000, 2001, IEEE Trans. CAS)提出。

其本身是沃爾什-阿達瑪轉換(Walsh Hadamard Transform)的延伸，同時包含了正交以及非正交兩種情況。

而透過簡單的矩陣分解，可以發展Jacket Transform的快速演算法,整個Jacket Transform最主要的特色在於可以非常簡單地去計算出其反矩陣的元素，

而且此矩陣有著非常特殊的結構，適合拿來應用在信號處理上、編碼理論、建構空時編碼(Space Time Code)或者是快速演算法等等。

[ADSP1.JPG](https://zh.wikipedia.org/wiki/File:ADSP1.JPG "fig:ADSP1.JPG")

## 夾克矩陣(Jacket Matrix)

在數學上，一個夾克矩陣為一個n階的方陣 \(A= (a_{ij})\)，內部元素為非0，實數或者是負數的有限值，同時滿足下列式子 [ADSP.JPG](https://zh.wikipedia.org/wiki/File:ADSP.JPG "fig:ADSP.JPG")

\[\  AB=BA=I_n\] 其中*I*<sub>*n*</sub> 代表的是單位矩陣，而 \(\ B ={1 \over n}(a_{ij}^{-1})^T\) 其中T代表的是轉置矩陣的意思。

換句話說，夾克矩陣的反矩陣就是根據其元素或者是其分割的矩陣來決定，基本上反矩陣從其元素倒數再將其做轉置可得。

根據以上的定義，整個式子可以表達成如右圖所示。

而整個夾克矩陣其實就是阿達馬矩陣(Hadamard matrix)的一般式，同時也是對角線block-wise反矩陣。

然而為什麼我們會稱其為夾克矩陣呢？就如同可正反面穿的夾克一樣，在夾克矩陣中，至少有兩個地方的元素可被其倒數給取代， 而透過轉製這些元素將會被改變其位置。 以下提供一個例子作為參考：

\(\boldsymbol{A} = \begin{bmatrix} a & \sqrt{ac} \\ \sqrt{ac} & -c \end{bmatrix}\)

此時我們可以將其元素做倒數再轉置即可得其反矩陣為:

\(\boldsymbol{A}^{-1} = \begin{bmatrix} {1 \over a} &  {1\over \sqrt{ac}} \\ {1\over \sqrt{ac}} & {1 \over -c} \end{bmatrix}\)

可以發現此矩陣滿足一開始的定義，此為一個夾克矩陣，然而若我們把a=c=1給代入，將會發現此即為一阿達馬的2X2矩陣。

夾克矩陣本身就是阿達馬矩陣的一般式，阿達馬矩陣為夾克矩陣的特例。

## 中心加權阿達馬矩陣(Center Weighted Hadamard Transform WHT)

由於整個Jacket matrix基本上就是阿達馬矩陣以及中心加權阿達馬矩陣的一般式，在這我們先介紹什麼是中心加權阿達馬矩陣，

基本上跟阿達馬矩陣相同，其只需要實數的運算，跟阿達馬矩陣比起來，其更注重信號的中頻空間頻率，

基本上透過中心加權阿達馬矩陣的分解我們可以發展出一個WHT的快速演算法。

而矩陣的分解主要是透過克羅內客基(Kronecker product)相乘基本的中心加權阿達馬矩陣以及其前一個階級的中心加權阿達馬矩陣。

而最低階的中心加權阿達馬矩陣為一個4\*4的方形矩陣，其定義如下:

\[[WH]_4 = \left[   \begin{array}{rrrr}   1 & 1 & 1 & 1 \\   1 & -w & w & -1 \\   1 & w & -w & -1 \\   1 & -1 & -1 & 1 \\  \end{array} \right]\] 而其反矩陣則如下所式：

\[[WH]_4^{-1}=\left[
  \begin{array}{rrrr}   1 & 1 & 1 & 1 \\[6pt]   1 & {-1 \over w} & {1 \over w} & -1 \\[6pt]
   1 & {1 \over w} & {-1 \over w}  & -1 \\[6pt]     1 & -1 & -1 & 1\\[6pt]  \end{array}
 \right]\]

當w=1 的時候，此時則為一個阿達馬矩陣，而如果當w=2代入的時候，其為一個中心加權阿達馬矩陣。

而如果我們想去計算更高階的中心加權阿達馬矩陣的話，透過阿達馬矩陣的幫助，我們可以用一個遞迴的方式來得到答案，如下式所表示:

\[[WH]_N=[WH]_{N \over 2}    X    [H]_2\] 而這裡的相乘 X 代表的是克羅內克基(Kronecker product)，而\[H\]<sub>2</sub>代表的則是最低階的阿達馬矩陣

\(\boldsymbol{H_2} = \begin{bmatrix} 1 & 1 \\ 1 & -1 \end{bmatrix}\)

例如當我們想去計算\[WH\]<sub>8</sub>則可以如下去計算而得:

\[[WH]_8 =[WH]_4   X   [H]_2\]

\[= \left[   \begin{array}{rrrr}   1 & 1 & 1 & 1 \\   1 & -2 & 2 & -1 \\   1 & 2 & -2 & -1 \\   1 & -1 & -1 & 1 \\  \end{array} \right]
 X \boldsymbol \begin{bmatrix} 1 & 1 \\ 1 & -1 \end{bmatrix}\]

\[= \left[   \begin{array}{rrrrrrrr}   1 & 1 & 1 & 1 & 1 & 1 & 1 & 1 \\   1 & -1 & 1 & -1 & 1 & -1 & 1 & -1 \\   1 & 1 & -2 & -2 & 2 & 2 & -1 & -1 \\   1 & -1 & -2 & 2 & 2 & -2 & -1 & 1 \\ 1 & 1 & 2 & 2 & -2 & -2 & -1 & -1 \\   1 & -1 & 2 & -2 & -2 & 2 & -1 & -1 \\   1 & 1 & -1 & -1 & -1 & -1 & 1 & 1 \\   1 & -1 & -1 & 1 & -1 & 1 & 1 & -1 \\ \end{array} \right]\]

而根據以上我們可以發現，中心加權阿達馬矩陣及其反矩陣恰好滿足夾克矩陣的定義，於是任何的中心加權阿達馬矩陣都是夾克矩陣的一種。

## 中心加權阿達馬矩陣的另一個快速演算法

為了要去使用這個快速演算法，首先我們先定義一個加權係數矩陣\[RC\]<sub>N</sub>為下式:

\[[RC]_N=[H]_N [WH]_N\] 而整個\[RC\]<sub>N</sub>本身為一個稀疏矩陣，根據下式我們可以發現\[RC\]<sub>N</sub>可以低階的\[RC\]<sub>(N/2)</sub>來表示:

\[[RC]_N=([H]_{N \over 2} X[H]_2 )([WH]_{N \over 2} X[H]_2)\]

`        `\(=([H]_{N \over 2}[WH]_{N \over 2}) X ([H]_2[H]_2)\)
`            `
`        `\(=[RC]_{N \over 2} X 2[I]_2\)

這邊的X同理代表的為克羅內克基(Kronecker product)，而\[I\]<sub>2</sub>代表的為2X2的單位矩陣。 根據阿達馬矩陣的特性

\[[H]_N^{-1}={1 \over N}[H]_N\] 我們可以將中心加權阿達馬矩陣表示如下：

\[[WH]_N={1 \over N}[H]_N [RC]_N\]

\[[WH]_N^{-1}=N [H]_N^{-1} [RC]_N^{-1}\]

故同樣以N=8為例子，在計算\[WH\]<sub>8</sub>時則可如下表示:

\[[WH]_8={1 \over 8}[H]_8 [RC]_8\]

`        `\(=({1 \over 8}[H]_4 X [H]_2)([RC]_4 X 2[I]_2)\)

`        `\(={1 \over 8}([H]_4 [RC]_4) X 2[H]_2)\)

於是我們可以藉由低級數的阿達馬矩陣和中心加權阿達馬矩陣來快速地計算高階的阿達馬矩陣。

## 夾克矩陣的特性

1\. 任意一個夾克矩陣其必定為對稱矩陣，即轉置後的結果與轉置前相等。

2.對任意一個整數n來說，必定存在一個級數為n的夾克矩陣。

3.如果A矩陣為一個複數的阿達馬矩陣，其必定為一個夾克矩陣。

4.若一個矩陣A為一夾克矩陣，同時其內部元素A<sub>ij</sub>的絕對值皆為1，則此矩陣也是一個複數的阿達馬矩陣。

若裡面的內部元素A<sub>ij</sub>為實數，且任一元素平方的值皆為1，則此矩陣也是一個阿達馬矩陣。

5.若A為一個夾克矩陣，則其共厄矩陣 A<sup>\*</sup> 其轉置矩陣A<sup>T</sup> 其反矩陣A<sup>-1</sup>也都會是夾克矩陣。

6.若A為一個夾克矩陣，而D跟E為對角方陣，則DAE也會是一個夾克矩陣。

## 低階夾克矩陣的一般式

對任意一個級數為2的夾克矩陣，其型式必定為下面所示之矩陣:

\(\boldsymbol{J_2} = \begin{bmatrix} 1 & 1 \\ 1 & -1 \end{bmatrix}\)

對任意一個級數為3的夾克矩陣，其型式為下面所示之矩陣:

\[[J]_3 = \left[   \begin{array}{rrr}   1 & 1 & 1 \\   1 & w  &   w^2  \\   1  &   w^2 & w   \\    \end{array} \right]\]

對任意一個級數為4夾克矩陣，其型式必定為下面所示之矩陣:

\[[J]_4 = \left[   \begin{array}{rrrr}   1 & 1 & 1 & 1 \\   1 & -w & w & -1 \\   1 & w & -w & -1 \\   1 & -1 & -1 & 1 \\  \end{array} \right]\]

## 參考資料

Moon Ho Lee,The Center Weighted Hadamard Transform, IEEE Transactions on Circuits Syst. Vol. 36, No. 9, PP. 1247–1249, Sept.1989.

K.J. Horadam, Hadamard Matrices and Their Applications, Princeton University Press, UK, Chapter 4.5.1: The jacket matrix construction, PP. 85–91, 2007.

Moon Ho Lee, Jacket Matrices: Constructions and Its Applications for Fast Cooperative Wireless Signal Processing,LAP LAMBERT Publishing, Germany,Nov. 2012

Moon Ho Lee, On Jacket Matrices Based on Weighted Hadamard Matrices. JKEES 2007-1-04

## 外部資料

  - [Technical report: Linear-fractional Function, Elliptic Curves, and Parameterized Jacket Matrices](https://web.archive.org/web/20110722132439/http://mdmc.chonbuk.ac.kr/english/download/report%201.pdf)
  - [Jacket Matrix and Its Fast Algorithms for Cooperative Wireless Signal Processing](https://web.archive.org/web/20110722132459/http://mdmc.chonbuk.ac.kr/english/images/Jacket%20matrix%20and%20its%20fast%20algorithm%20for%20wireless%20signal%20processing.pdf)
  - \[<https://www.morebooks.de/store/gb/book/jacket-matrices/isbn/978-3-659-29145-6>: Jacket Matrices: Constructions and Its Applications for Fast Cooperative Wireless Signal Processing\]
  - [On Jacket Matrices Based on Weighted Hadamard Matrices](http://www.jees.kr/Upload/files/JEES/JEES_7_1_04.pdf)

[Category:矩陣](https://zh.wikipedia.org/wiki/Category:矩陣 "wikilink")