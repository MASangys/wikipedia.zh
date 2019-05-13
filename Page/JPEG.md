**聯合圖像專家小組**（，缩写：**JPEG**）是一種針對相片影像而廣泛使用的[失真壓縮標準方法](../Page/有损数据压缩.md "wikilink")。這個名稱代表。此團隊創立於1986年，1992年發布了JPEG的標準而在1994年獲得了[ISO](../Page/ISO.md "wikilink")
10918-1的認定。JPEG與視訊音訊壓縮標準的[MPEG](../Page/MPEG.md "wikilink")（Moving
Picture Experts Group）很容易混淆，但兩者是不同的組織及標準。

JPEG本身只有描述如何將一個影像轉換為[字节的數據串流](../Page/字节.md "wikilink")（streaming），但並沒有說明這些位元組如何在任何特定的儲存媒體上被封存起來。JPEG的壓縮方式通常是[有损压缩](../Page/有损压缩.md "wikilink")（lossy
compression），即在壓縮過程中圖像的品質會遭受到可見的破壞，有一種以JPEG為基礎的標準[Lossless
JPEG是採用無失真的壓縮方式](../Page/Lossless_JPEG.md "wikilink")，但Lossless
JPEG並沒有受到廣泛的支援。

一個由C-Cube Microsystems等公司所建立的額外標準，稱為**JFIF**（**J**PEG **F**ile
**I**nterchange
**F**ormat，JPEG檔案交換格式）詳細說明如何從一個JPEG串流，產出一個適合於電腦儲存和傳輸（像是在[網際網路上](../Page/網際網路.md "wikilink")）的檔案。在普遍的用法，當有人稱呼一個"JPEG檔案"，一般而言他是意指一個JFIF檔案，或有時候是一個[Exif](../Page/Exif.md "wikilink")
JPEG檔案。然而，也有其他以JPEG為基礎的檔案格式，像是[JNG](../Page/JNG.md "wikilink")。

使用JPEG格式壓縮的圖片檔案一般也被稱為JPEG
Files，最普遍被使用的[副檔名格式為](../Page/副檔名.md "wikilink").jpg，其他常用的[副檔名還包括](../Page/副檔名.md "wikilink").jpeg、.jpe、.jfif以及.jif。JPEG格式的資料也能被嵌進其他類型的檔案格式中，像是[TIFF類型的檔案格式](../Page/TIFF.md "wikilink")。

JPEG/JFIF是[全球資訊網](../Page/全球資訊網.md "wikilink")（World Wide
Web）上最普遍的被用來儲存和傳輸照片的格式。它並**不**適合於[線條繪圖](../Page/線條繪圖.md "wikilink")（drawing）和其他文字或[圖示](../Page/圖示.md "wikilink")（iconic）的圖形，因為它的壓縮方法用在這些类型的圖形上，得到的結果并不好（[PNG和](../Page/PNG.md "wikilink")[GIF通常是用來存储这类的圖形](../Page/GIF.md "wikilink")；GIF每个[像素只有](../Page/像素.md "wikilink")8[位元](../Page/位元.md "wikilink")，並不很適合於存储彩色照片，PNG可以無失真地儲存照片，但是檔案太大的缺点讓它不太适合在網路上传输）。

對於JFIF的[MIME媒體类型是](../Page/MIME.md "wikilink")*image/jpeg*（定義于RFC 1341）。

## 編碼

在JPEG標準中這個選項大多都是很少使用。當應用到一個擁有每個像素24位元（24 bits per
pixel，紅、藍、綠各有八位元）的輸入時，這邊只有針對更多普遍編碼方法之一的簡潔描述。這個特定的選擇是一種[失真資料壓縮方法](../Page/失真資料壓縮.md "wikilink")。

### 色彩空間轉換

首先，影像由[RGB](../Page/三原色光模式.md "wikilink")（紅綠藍）轉換為一種稱為[YUV的不同](../Page/YUV.md "wikilink")[色彩空間](../Page/色彩空間.md "wikilink")。这与模拟[PAL制式彩色电视传输所使用的色彩空间相似](../Page/PAL制式.md "wikilink")，但是更类似于MAC电视传输系统运作的方式。但不是模拟[NTSC](../Page/NTSC.md "wikilink")，模拟NTSC使用的是YIQ色彩空间。

  - Y成份表示一個像素的亮度
  - U和V成份一起表示[色調與](../Page/色調.md "wikilink")[飽和度](../Page/飽和度.md "wikilink")。

YUV分量可以由PAL制系统中归一化（经过[伽马校正](../Page/伽马校正.md "wikilink")）的R',G',B'经过下面的计算得到：

  - Y=0.299R'+0.587G'+0.114B'
  - U=-0.147R'-0.289G'+0.436B'
  - V=0.615R'-0.515G'-0.100B'

這種編碼系統非常有用，因為[人類的](../Page/人類.md "wikilink")[眼睛對於亮度差異的敏感度高於色彩變化](../Page/眼睛.md "wikilink")。使用這種知識，編碼器（encoder）可以被設計得更有效率地壓縮影像。

### 縮減取樣（Downsampling）

上面所作的轉換使下一步驟變為可能，也就是減少U和V的成份（稱為"縮減取樣"或"[色度抽样](../Page/色度抽样.md "wikilink")"（chroma
subsampling）。在JPEG上這種縮減取樣的比例可以是[4:4:4](../Page/YUV_4:4:4.md "wikilink")（無縮減取樣），[4:2:2](../Page/YUV_4:2:2.md "wikilink")（在水平方向2的倍數中取一個），以及最普遍的[4:2:0](../Page/YUV_4:2:0.md "wikilink")（在水平和垂直方向2的倍數中取一個）。對於壓縮過程的剩餘部份，Y、U、和V都是以非常類似的方式來個別地處理。

### 離散餘弦變換（Discrete cosine transform）

[JPEG_example_image.jpg](https://zh.wikipedia.org/wiki/File:JPEG_example_image.jpg "fig:JPEG_example_image.jpg")
下一步，將影像中的每個成份（Y, U,
V）生成三個區域，每一個區域再劃分成如瓷磚般排列的一個個的8×8子區域，每一子區域使用二維的[離散餘弦變換](../Page/离散余弦变换.md "wikilink")（DCT）轉換到頻率空間。

如果有一個如這樣的的8×8的8-位元（0\~255）子區域：

\[\begin{bmatrix}
 52 & 55 & 61 &  66 &  70 &  61 & 64 & 73 \\
 63 & 59 & 55 &  90 & 109 &  85 & 69 & 72 \\
 62 & 59 & 68 & 113 & 144 & 104 & 66 & 73 \\
 63 & 58 & 71 & 122 & 154 & 106 & 70 & 69 \\
 67 & 61 & 68 & 104 & 126 &  88 & 68 & 70 \\
 79 & 65 & 60 &  70 &  77 &  68 & 58 & 75 \\
 85 & 71 & 64 &  59 &  55 &  61 & 65 & 83 \\
 87 & 79 & 69 &  68 &  65 &  76 & 78 & 94
\end{bmatrix}\]

接著推移128，使其範圍變為 -128\~127，得到結果為

\[\begin{bmatrix}
 -76 & -73 & -67 & -62 & -58 & -67 & -64 & -55 \\
 -65 & -69 & -73 & -38 & -19 & -43 & -59 & -56 \\
 -66 & -69 & -60 & -15 &  16 & -24 & -62 & -55 \\
 -65 & -70 & -57 &  -6 &  26 & -22 & -58 & -59 \\
 -61 & -67 & -60 & -24 &  -2 & -40 & -60 & -58 \\
 -49 & -63 & -68 & -58 & -51 & -60 & -70 & -53 \\
 -43 & -57 & -64 & -69 & -73 & -67 & -63 & -45 \\
 -41 & -49 & -59 & -60 & -63 & -52 & -50 & -34
\end{bmatrix}\]

且接著使用[離散餘弦變換](../Page/離散餘弦變換.md "wikilink")，和捨位取最接近的整數，得到結果為

\[\begin{bmatrix}
 -415 & -30 & -61 &  27 &  56 & -20 & -2 &  0 \\
    4 & -22 & -61 &  10 &  13 &  -7 & -9 &  5 \\
  -47 &   7 &  77 & -25 & -29 &  10 &  5 & -6 \\
  -49 &  12 &  34 & -15 & -10 &   6 &  2 &  2 \\
   12 &  -7 & -13 &  -4 &  -2 &   2 & -3 &  3 \\
   -8 &   3 &   2 &  -6 &  -2 &   1 &  4 &  2 \\
   -1 &   0 &   0 &  -2 &  -1 &  -3 &  4 & -1 \\
    0 &   0 &  -1 &  -4 &  -1 &   0 &  1 &  2
\end{bmatrix}\]

左上角之相當大的數值称为[DC係數](../Page/DC係數.md "wikilink")（直流系数）；其他63个值称为AC系数（交流系数）。下面将对所有8×8表格中的DC系数使用[差分编码](../Page/差分编码.md "wikilink")，对AC系数使用[行程编码](../Page/行程编码.md "wikilink")。\[1\]

### 量化（Quantization）

人类眼睛在一個相對大範圍區域，辨別[亮度上細微差異是相當的好](../Page/亮度.md "wikilink")，但是在一個高頻率亮度變動之確切強度的分辨上，卻不是如此地好。這個事實讓我們能在高頻率成份上極佳地降低資訊的數量。簡單地把頻率領域上每個成份，除以一個對於該成份的常數就可完成，且接著捨位取最接近的整數。這是整個過程中的主要失真運算。以這個結果而言，經常會把很多更高頻率的成份捨位成為接近0，且剩下很多會變成小的正或負數。

一個普遍的量化矩陣是：

\[\begin{bmatrix}
 16 & 11 & 10 & 16 & 24 & 40 & 51 & 61 \\
 12 & 12 & 14 & 19 & 26 & 58 & 60 & 55 \\
 14 & 13 & 16 & 24 & 40 & 57 & 69 & 56 \\
 14 & 17 & 22 & 29 & 51 & 87 & 80 & 62 \\
 18 & 22 & 37 & 56 & 68 & 109 & 103 & 77 \\
 24 & 35 & 55 & 64 & 81 & 104 & 113 & 92 \\
 49 & 64 & 78 & 87 & 103 & 121 & 120 & 101 \\
 72 & 92 & 95 & 98 & 112 & 100 & 103 & 99
\end{bmatrix}\]

使用這個量化矩陣與前面所得到的DCT係數矩陣逐項相除，得到結果為：

\[\begin{bmatrix}
 -26 & -3 & -6 &  2 &  2 & -1 & 0 & 0 \\
   0 & -2 & -4 &  1 &  1 &  0 & 0 & 0 \\
  -3 &  1 &  5 & -1 & -1 &  0 & 0 & 0 \\
  -3 &  1 &  2 & -1 &  0 &  0 & 0 & 0 \\
   1 &  0 &  0 &  0 &  0 &  0 & 0 & 0 \\
   0 &  0 &  0 &  0 &  0 &  0 & 0 & 0 \\
   0 &  0 &  0 &  0 &  0 &  0 & 0 & 0 \\
   0 &  0 &  0 &  0 &  0 &  0 & 0 & 0
\end{bmatrix}\]

舉個例子，使用−415（DC係數）且捨位得到最接近的整數

\[\mathrm{round}
\left(
 \frac{-415}{16}
\right)
=
\mathrm{round}
\left(
 -25.9375
\right)
=
-26\]

### 熵編碼技術（entropy coding）

[JPEG_ZigZag.svg](https://zh.wikipedia.org/wiki/File:JPEG_ZigZag.svg "fig:JPEG_ZigZag.svg")
熵編碼是[無失真資料壓縮的一個特別形式](../Page/無失真資料壓縮.md "wikilink")。它牽涉到將影像成份以Z字型（zigzag）排列，把相似頻率群組在一起（矩陣中往左上方向是越低頻率之係數，往右下較方向是較高頻率之係數），插入長度編碼的零，且接著對剩下的使用[霍夫曼編碼](../Page/哈夫曼树.md "wikilink")。
JPEG標準也允許（但是並不要求）在數學上優於霍夫曼編碼的[算术编码之使用](../Page/算术编码.md "wikilink")。然而，這個特色幾乎很少被使用，因為它被[專利所涵蓋](../Page/專利.md "wikilink")，且它相較於霍夫曼編碼在編碼和解碼上會更慢。使用算術編碼一般會讓檔案更小約5%。

對於前者量化的係數所作的Z字型序列會是：

−26,
−3, 0,
−3, −2, −6,
2, −4, 1, −3,
1, 1, 5, 1, 2,
−1, 1, −1, 2, 0, 0,
0, 0, 0, −1, −1, 0, 0,
0, 0, 0, 0, 0, 0, 0, 0,
0, 0, 0, 0, 0, 0, 0,
0, 0, 0, 0, 0, 0,
0, 0, 0, 0, 0,
0, 0, 0, 0,
0, 0, 0,
0, 0,
0

當剩下的所有係數都是零，對於過早結束的序列，JPEG有一個特別的霍夫曼編碼用詞。使用這個特殊的編碼用詞，EOB，該序列變為

−26,
−3, 0,
−3, −2, −6,
2, −4, 1 −3,
1, 1, 5, 1, 2,
−1, 1, −1, 2, 0, 0,
0, 0, 0, −1, −1, EOB

### 壓縮比率與不自然痕跡（artifact）

[JPEG_example_artifact.png](https://zh.wikipedia.org/wiki/File:JPEG_example_artifact.png "fig:JPEG_example_artifact.png")
按：artifact在這個領域又被解釋為膺像、非自然信號、人為現象。

在量化階段時，依照除數的不同，會使結果的壓縮比率可能有很多變化。10:1通常可得到無法使用肉眼分辨與原圖差異的影像。100:1壓縮通常是可行的，但與原圖相較，會看出明顯的[不自然痕跡](../Page/壓縮人為現象.md "wikilink")。壓縮的適當等級是依據要壓縮那一種影像而定。

使用[全球資訊網的人](../Page/全球資訊網.md "wikilink")，可能熟悉這種出現在JPEG數位影像，已知[壓縮人為現象的不規則現象](../Page/壓縮人為現象.md "wikilink")。這是由於JPEG演算法的量化步驟所造成的結果。這種現象在臉部照片中的眼睛四周特別明顯。他們可以藉由選擇[壓縮的較低水平](../Page/影像壓縮.md "wikilink")（使用較低的壓縮率）來減少這種現象；他們可能藉由使用[無失真檔案格式來儲存一個影像來消除這種現象](../Page/無失真資料壓縮.md "wikilink")，然而針對照片影像，這樣通常會使檔案大小增加。

### 解碼

解碼來顯示影像，包含反向作以上所有的過程

取DCT係數矩陣（在把DC係數差異加回去之後）

\[\begin{bmatrix}
 -26 & -3 & -6 &  2 &  2 & -1 & 0 & 0 \\
   0 & -2 & -4 &  1 &  1 &  0 & 0 & 0 \\
  -3 &  1 &  5 & -1 & -1 &  0 & 0 & 0 \\
  -3 &  1 &  2 & -1 &  0 &  0 & 0 & 0 \\
   1 &  0 &  0 &  0 &  0 &  0 & 0 & 0 \\
   0 &  0 &  0 &  0 &  0 &  0 & 0 & 0 \\
   0 &  0 &  0 &  0 &  0 &  0 & 0 & 0 \\
   0 &  0 &  0 &  0 &  0 &  0 & 0 & 0
\end{bmatrix}\]

且以前面的量化矩陣乘以它，得到

\[\begin{bmatrix}
 -416 & -33 & -60 &  32 &  48 & -40 & 0 & 0 \\
    0 & -24 & -56 &  19 &  26 &   0 & 0 & 0 \\
  -42 &  13 &  80 & -24 & -40 &   0 & 0 & 0 \\
  -42 &  17 &  44 & -29 &   0 &   0 & 0 & 0 \\
   18 &   0 &   0 &   0 &   0 &   0 & 0 & 0 \\
    0 &   0 &   0 &   0 &   0 &   0 & 0 & 0 \\
    0 &   0 &   0 &   0 &   0 &   0 & 0 & 0 \\
    0 &   0 &   0 &   0 &   0 &   0 & 0 & 0
\end{bmatrix}\]

左上角的部份與原本DCT係數矩陣非常接近地相似。使用反向DCT得到一個有數值的影像（仍然被移位128）

<table>
<tbody>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/File:JPEG_example_image.jpg" title="fig:JPEG_example_image.jpg">JPEG_example_image.jpg</a><br />
<br />
<a href="https://zh.wikipedia.org/wiki/File:JPEG_example_image_decompressed.jpg" title="fig:File:JPEG example image decompressed.jpg"><a href="File:JPEG">File:JPEG</a> example image decompressed.jpg</a></p></td>
</tr>
<tr class="even">
<td><p>注意原來（上）與解壓縮影像（下）的些微差異，在左下角可以輕易地看出來</p></td>
</tr>
</tbody>
</table>

\[\left[
\begin{array}{rrrrrrrr}
-66 & -63 & -71 & -68 & -56 & -65 & -68 & -46 \\
-71 & -73 & -72 & -46 & -20 & -41 & -66 & -57 \\
-70 & -78 & -68 & -17 & 20 & -14 & -61 & -63 \\
-63 & -73 & -62 & -8 & 27 & -14 & -60 & -58 \\
-58 & -65 & -61 & -27 & -6 & -40 & -68 & -50 \\
-57 & -57 & -64 & -58 & -48 & -66 & -72 & -47 \\
-53 & -46 & -61 & -74 & -65 & -63 & -62 & -45 \\
-47 & -34 & -53 & -74 & -60 & -47 & -47 & -41
\end{array}
\right]\]

且對每一個項目加上128

\[\left[
\begin{array}{rrrrrrrr}
62 & 65 & 57 & 60 & 72 & 63 & 60 & 82 \\
57 & 55 & 56 & 82 & 108 & 87 & 62 & 71 \\
58 & 50 & 60 & 111 & 148 & 114 & 67 & 65 \\
65 & 55 & 66 & 120 & 155 & 114 & 68 & 70 \\
70 & 63 & 67 & 101 & 122 & 88 & 60 & 78 \\
71 & 71 & 64 & 70 & 80 & 62 & 56 & 81 \\
75 & 82 & 67 & 54 & 63 & 65 & 66 & 83 \\
81 & 94 & 75 & 54 & 68 & 81 & 81 & 87
\end{array}
\right].\]

這是解壓縮的子影像，且可以被用來與原本子影像相比（也可以看右方的影像），藉由取兩者之間的差異（原本—解壓縮）得到誤差值。

\[\left[
\begin{array}{rrrrrrrr}
-10 & -10 & 4 & 6 & -2 & -2 & 4 & -9 \\
6 & 4 & -1 & 8 & 1 & -2 & 7 & 1 \\
4 & 9 & 8 & 2 & -4 & -10 & -1 & 8 \\
-2 & 3 & 5 & 2 & -1 & -8 & 2 & -1 \\
-3 & -2 & 1 & 3 & 4 & 0 & 8 & -8 \\
8 & -6 & -4 & -0 & -3 & 6 & 2 & -6 \\
10 & -11 & -3 & 5 & -8 & -4 & -1 & -0 \\
6 & -15 & -6 & 14 & -3 & -5 & -3 & 7
\end{array}
\right]\]

每個像素大約是5的平均絕對誤差，也就是說，\(\frac{1}{64} \sum_{x=1}^8 \sum_{y=1}^8 |e(x,y)| = 4.8750\)。誤差在左下角顯而易見，左下方的像素變得比它鄰近右方的像素還更暗。

## 用法

JPEG在色調及顏色平滑變化的相片或是寫實繪畫（painting）上可以達到它最佳的效果。在這種情況下，它通常比完全無失真方法作得更好，仍然可以產生非常好看的影像（事實上它會比其他一般的方法像是GIF產生更高品質的影像，因為GIF對於線條繪畫（drawing）和圖示的圖形是無失真，但針對全彩影像則需要極困難的量化）。

### 照片

JPEG壓縮的不自然現象可以很好地調和到細微非均勻材質的相片中，因此允許得到更高的壓縮率。

|                                                                                                                                    |                                                                                                                                    |                                                                                                                                    |
| ---------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------- |
| [JPEG_example_donkey_010.jpg](https://zh.wikipedia.org/wiki/File:JPEG_example_donkey_010.jpg "fig:JPEG_example_donkey_010.jpg") | [JPEG_example_donkey_050.jpg](https://zh.wikipedia.org/wiki/File:JPEG_example_donkey_050.jpg "fig:JPEG_example_donkey_050.jpg") | [JPEG_example_donkey_100.jpg](https://zh.wikipedia.org/wiki/File:JPEG_example_donkey_100.jpg "fig:JPEG_example_donkey_100.jpg") |

附註：以上的影像並不是IEEE/CCIR/EBU測試影像，且壓縮編碼器的設定並沒有指明或是可以得到。

中等品質的相片只有六分之一的儲存空間，但是幾乎沒有明顯的細節損失或是看得到的人為效果。然而，一旦超過一個某整的壓縮限度，壓縮的影像逐漸地顯現出可以看得到的瑕疵。參考[比率失真理論](../Page/比率失真理論.md "wikilink")（[rate
distortion theory](../Page/率失真理论.md "wikilink")）的文章有針對這種限度效果的數學上之解釋。

### 醫學影像：少見的JPEG 12位元支援模式

有很多醫學的影像系統可以建立和處理12位元JPEG影像。12位元JPEG格式已經是JPEG規格的一部份，但是非常少商业软件程序（或網頁瀏覽器）支援這種不常使用的JPEG格式。

## 其他失真壓縮的編碼格式

更新的失真方法，尤其是[小波壓縮](../Page/小波壓縮.md "wikilink")（wavelet
compression），在這些情況下甚至能作得更好。然而，JPEG是一種建立得相當好的標準，擁有很多可使用的軟體，包含自由軟體，因此到2005年它持續被大量使用。很多小波演算法受到專利保護，要在很多軟體專案中自由地使用他們是困難或是不可能的。

JPEG委員會現在也已經建立其自有的小波基礎標準－[JPEG
2000](../Page/JPEG_2000.md "wikilink")，希望最終能取代原來的JPEG標準。

## 潛在的專利爭議

在2002年[Forgent
Networks主張他擁有且將會履行在JPEG技術上的](../Page/Forgent_Networks.md "wikilink")[專利權](../Page/專利.md "wikilink")，起因於一個在1986年已經被歸檔的專利。（）。這個公告已經引起一陣大騷動，令人想起[Unisys試圖主張對於](../Page/Unisys.md "wikilink")[GIF影像壓縮標準的權利](../Page/GIF.md "wikilink")。

JPEG委員會審慎調查這個在2002年所主張的專利，且發現他們因為前案而無效作廢\[2\]。其他的也已推斷Forgent並無擁有涵蓋JPEG的專利\[3\]。儘管如此，在2002年和2004年之間，Forgent藉由把他們的專利授權給某些30家公司，而獲得大約9千萬美元。在2004年4月，Forgent控告31家其他公司來強求更多的授權支付。同年的七月，21家較大的電腦公司組成的協會提出反控告，包含使該專利無效的目標。然而，到2005年7月的時候，這場官司仍然持續中。

JPEG委員會在他的明確目標中有一項，是他們的標準在不支付授權金之下是可以被實作的，且他們已從超過20個大型組織中，得到適當的授權權利給他們即將到來的[JPEG
2000標準](../Page/JPEG_2000.md "wikilink")。

\=== 专利案结束 === 经过数年的纠缠，于2006年11月，JPEG专利持有者Forgent
Networks终于与30家PC厂商结束了侵权官司，代价是PC厂商向Forgent赔款800万美元，而不是Forgent期望的1亿美元。

在与PC厂商大打官司之前，Forgent已经与60多家公司和解，获得的专利费用总额高达1.1亿美元。包括雅虎在内的45家PC厂商拒绝就4698672号专利问题和解，而是选择了对簿公堂，不过其中15家在此之前已经与Forgent和解。

虽然还是赔了款，但PC厂商们并没有输掉官司；虽然没能得到自己想要的大笔美金，Forgent也没有彻底失败。在非盈利性组织美国公共专利基金会（PPF）的协助下，他们设法获得了美国专利和商标局（USPTO）的认可，对Forgent专利的有效性在2月和6月两次重新进行了鉴定，最终法庭限制了Forgent专利的应用范围。而从另一方面看，Forgent的专利也得到了一定的维护，这要比被彻底推翻好得多，Forgent也表示对结果感到很满意。

Forgent CEO Richard
Snyder称：“在'672专利的有效期内，我们已经获得了1.1亿多美元。很快，Forgent还会再次有所行动。我们的精力现在已经转移到'746专利上，并等待2007年5月的陪审团裁决，同时我们还会继续促进（分公司）NetSimplicity的软件业务。”\[4\]

## 無損耗旋轉（lossless JPEG rotation）

雖然任何對JPEG圖像的處理都有可能導致因為解壓後再壓縮而引起的損耗，然而，對於簡單的旋轉動作，數學上是可以有辦法使圖像得以旋轉而無損圖像本身的資料。也就是說，有一種方法可以在無需把圖像解壓後才可以旋轉。這是因為JPEG的檔案格式本身是以一個個模塊為單位來壓縮，所以，只需要把模塊重排，再對每個模塊旋轉，就可以達至無損耗的旋轉。

使用者在操作上加以-{注}-意。例如：在[Adobe
Photoshop裡](../Page/Adobe_Photoshop.md "wikilink")，用戶若要作無損耗旋轉前，必須在載入圖像之後立刻用“Save
As...”功能儲存一個備份。然後當圖像旋轉過後，由於Photoshop已掌握了圖像的基本資料，所以在儲存時得以使用原來的設定。若沒有作事先儲存，Photoshop就會把旋轉後的圖像重新計算各項參數，並重新對圖像進行壓縮處理。這樣就會造成資料的損耗。

## 压缩标准

JPEG是由[国际标准组织（ISO）和](../Page/国际标准组织.md "wikilink")[国际电话电报咨询委员会（CCITT）为静态图像所建立的第一个国际数字图像压缩标准](../Page/CCITT.md "wikilink")，也是至今一直在使用的、应用最广的图像压缩标准。JPEG由于可以提供有损压缩，因此压缩比可以达到其他传统压缩算法无法比拟的程度。

JPEG的压缩模式有以下几种：

  - 　顺序式编码（Sequential Encoding）

<!-- end list -->

  -
    　一次将图像由左到右、由上到下顺序处理。

<!-- end list -->

  - 　递增式编码（Progressive Encoding）

<!-- end list -->

  -
    　当图像传输的时间较长时，可将图像分数次处理，以从模糊到清晰的方式来传送图像（效果类似GIF在网络上的传输）。

<!-- end list -->

  - 　无失真编码（Lossless Encoding）
  - 　阶梯式编码（Hierarchical Encoding）

<!-- end list -->

  -
    　图像以数种分辨率来压缩，其目的是为了让具有高分辨率的图像也可以在较低分辨率的设备上显示。

在Independent JPEG
Group所提供的源碼上，有jpegtran程式，就提供了優化Huffman，轉成漸進式，鏡射，旋轉這些無損耗轉換。

參看：[無損耗JPEG旋轉程式列表](http://sylvana.net/jpegcrop/losslessapps.html)（英語）

## 參見

  - [數位相機](../Page/數位相機.md "wikilink")-[數位相框](../Page/數位相框.md "wikilink")
  - [影像壓縮](../Page/影像壓縮.md "wikilink")
  - [JPEG-LS非失真壓縮標準](../Page/JPEG-LS.md "wikilink")
  - [JPEG 2000](../Page/JPEG_2000.md "wikilink")
  - [JPEG XR](../Page/JPEG_XR.md "wikilink")
  - [Motion JPEG](../Page/Motion_JPEG.md "wikilink")
  - [影像編輯程式](../Page/影像編輯程式.md "wikilink")
  - 独立JPEG小组（Independent JPEG
    Group）的[Libjpeg](../Page/Libjpeg.md "wikilink")

## 參考來源

## 外部連結

  - [Official JPEG官方網站](http://www.jpeg.org/)
  - [JPEG常見問題與回答（FAQ）](http://www.faqs.org/faqs/jpeg-faq/)
  - [Wotsit.org在JPEG格式的進入點](https://web.archive.org/web/20050207114926/http://www.wotsit.org/search.asp?page=5&s=graphics)
  - [ITU T.81
    JPEG壓縮](http://www.w3.org/Graphics/JPEG/itu-t81.pdf)（[PDF](../Page/PDF.md "wikilink")）
  - [JFIF檔案格式](http://www.w3.org/Graphics/JPEG/jfif3.pdf)（[PDF](../Page/PDF.md "wikilink")）
  - [JPEG静态图像压缩标准，Gregory K.
    Wallace简编](ftp://ftp.uu.net/graphics/jpeg/wallace.ps.gz)
  - [JPEG壓縮（Gernot
    Hoffmann）](https://web.archive.org/web/20050910170018/http://www.fho-emden.de/~hoffmann/jpeg131200.pdf)
  - [JPEG資源的開放列表](http://www.compression-links.info/JPEG)
  - [Jpeg Decoder Open Source Code , Copyright (C) 1995-1997, Thomas G.
    Lane.](http://opensource.apple.com/source/WebCore/WebCore-1C25/platform/image-decoders/jpeg/)

[Category:有损压缩算法](https://zh.wikipedia.org/wiki/Category:有损压缩算法 "wikilink")
[Category:图形文件格式](https://zh.wikipedia.org/wiki/Category:图形文件格式 "wikilink")
[Category:图像压缩](https://zh.wikipedia.org/wiki/Category:图像压缩 "wikilink")

1.
2.
3.  [1](https://web.archive.org/web/20040817154508/http://www.algovision-luratech.com/company/news/patentquarrel.jsp?OnlineShopId=164241031081525276)
4.