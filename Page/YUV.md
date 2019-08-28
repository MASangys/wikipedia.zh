[YUV_UV_plane.png](https://zh.wikipedia.org/wiki/File:YUV_UV_plane.png "fig:YUV_UV_plane.png") **YUV**，是一種[顏色](https://zh.wikipedia.org/wiki/顏色 "wikilink")[編碼方法](https://zh.wikipedia.org/wiki/編碼 "wikilink")。常使用在各個影像處理元件中。 YUV在對照片或影片編碼時，考慮到人類的感知能力，允許降低色度的頻寬。

YUV是編譯true-color顏色空間（color space）的種類，Y'UV, YUV, [YCbCr](../Page/YCbCr.md "wikilink")，[YPbPr等專有名詞都可以稱為YUV](https://zh.wikipedia.org/wiki/YPbPr "wikilink")，彼此有重疊。「Y」表示**[明亮度](../Page/流明.md "wikilink")**（Luminance、Luma），「U」和「V」則是**[色度](https://zh.wikipedia.org/wiki/色度_\(色彩学\) "wikilink")**、**[濃度](https://zh.wikipedia.org/wiki/濃度_\(色彩學\) "wikilink")**（Chrominance、Chroma），

Y′UV, YUV, YCbCr, YPbPr所指涉的範圍，常有混淆或重疊的情況。從歷史的演變來說，其中YUV和Y'UV通常用來編碼電視的類比訊號，而YCbCr則是用來描述數位的影像訊號，適合影片與圖片壓縮以及傳輸，例如MPEG、JPEG。 但在現今，YUV通常已經在電腦系統上廣泛使用。

Y'代表明亮度(luma; brightness)而U與V儲存色度(色訊; chrominance; color)部分; 亮度(luminance)記作Y，而Y'的prime符號記作伽瑪校正。

YUV Formats分成兩個格式：

  - 緊縮格式（packed formats）：將Y、U、V值儲存成Macro Pixels陣列，和[RGB的存放方式類似](https://zh.wikipedia.org/wiki/RGB "wikilink")。
  - 平面格式（planar formats）：將Y、U、V的三個分量分別存放在不同的矩陣中。

緊縮格式（packed format）中的YUV是混合在一起的，對於YUV4:4:4格式而言，用緊縮格式很合適的，因此就有了UYVY、YUYV等。平面格式（planar formats）是指每Y份量，U份量和V份量都是以獨立的平面組織的，也就是說所有的U份量必須在Y分量後面，而V份量在所有的U份量後面，此一格式適用於採樣（subsample）。平面格式（planar format）有I420（4:2:0）、YV12、IYUV等。

## 歷史

[Barn-yuv.png](https://zh.wikipedia.org/wiki/File:Barn-yuv.png "fig:Barn-yuv.png") Y'UV的發明是由於[彩色電視](../Page/彩色電視.md "wikilink")與[黑白電視的過渡時期](https://zh.wikipedia.org/wiki/黑白電視 "wikilink")\[1\]。黑白視訊只有Y（Luma，Luminance）視訊，也就是灰階值。到了彩色電視規格的制定，是以YUV/[YIQ的格式來處理彩色電視圖像](https://zh.wikipedia.org/wiki/YIQ "wikilink")，把UV視作表示彩度的C（Chrominance或Chroma），如果忽略C訊號，那麼剩下的Y（Luma）訊號就跟之前的黑白電視訊號相同，這樣一來便解決彩色電視機與黑白電視機的相容問題。Y'UV最大的優點在於只需佔用極少的頻寬。

因為UV分別代表不同顏色訊號，所以直接使用R與B訊號表示色度的UV。 也就是說UV訊號告訴了電視要偏移某象素的的顏色，而不改變其亮度。 或者UV訊號告訴了顯示器使得某個顏色亮度依某個基準偏移。 UV的值越高，代表該像素會有更飽和的顏色。

彩色圖像記錄的格式，常見的有[RGB](https://zh.wikipedia.org/wiki/RGB "wikilink")、YUV、[CMYK等](https://zh.wikipedia.org/wiki/CMYK "wikilink")。彩色電視最早的構想是使用RGB三原色來同時傳輸。這種設計方式是原來黑白頻寬的3倍，在當時並不是很好的設計。RGB訴求於人眼對色彩的感應，YUV則著重於視覺對於亮度的敏感程度，Y代表的是亮度，UV代表的是彩度（因此黑白電影可省略UV，相近於RGB），分別用Cr和Cb來表示，因此YUV的記錄通常以Y:UV的格式呈現。

## 常用的YUV格式

為節省頻寬起見，大多數YUV格式平均使用的每像素位數都少於24位元。主要的抽样（subsample）格式有YCbCr 4:2:0、YCbCr 4:2:2、YCbCr 4:1:1和YCbCr 4:4:4。YUV的表示法稱為A:B:C表示法：

  - 4:4:4表示完全取樣。
  - 4:2:2表示2:1的水平取樣，垂直完全採樣。
  - 4:2:0表示2:1的水平取樣，垂直2：1採樣。
  - 4:1:1表示4:1的水平取樣，垂直完全採樣。

最常用Y:UV記錄的比重通常1:1或2:1，DVD-Video是以YUV 4:2:0的方式記錄，也就是我們俗稱的**I420**，YUV4:2:0並不是說只有U（即Cb）, V（即Cr）一定為0，而是指U：V互相援引，時見時隱，也就是說對於每一個行，只有一個U或者V份量，如果一行是4:2:0的話，下一行就是4:0:2，再下一行是4:2:0...以此類推。至於其他常見的YUV格式有YUY2、YUYV、YVYU、UYVY、AYUV、Y41P、Y411、Y211、IF09、IYUV、YV12、YVU9、YUV411、YUV420等。

### YUY2及常见表示方法

**YUY2**（和**YUYV**）格式為像素保留Y，而UV在水平空間上相隔二個像素採樣一次（Y0 U0 Y1 V0），（Y2 U2 Y3 V2）…其中，（Y0 U0 Y1 V0）就是一个macro-pixel（宏像素），它表示了2个像素，（Y2 U2 Y3 V2）是另外的2个像素。 以此类推，再如：Y41P（和Y411）格式为每个像素保留Y分量，而UV分量在水平方向上每4个像素采样一次。一个宏像素为12个字节，实际表示8个像素。图像数据中YUV分量排列顺序如下：（U0 Y0 V0 Y1 U4 Y2 V4 Y3 Y4 Y5 Y6 Y7）…

### YVYU UYVY

**YVYU**, **UYVY**格式跟YUY2類似，只是排列順序有所不同。**Y211**格式是Y每2個像素採樣一次，而UV每4個像素採樣一次。**AYUV**格式則有一Alpha通道。

### YV12

**YV12**格式與**IYUV**類似，每個像素都提取Y，在UV提取時，將圖像2 x 2的矩陣，每個矩阵提取一個U和一個V。YV12格式和I420格式的不同處在V平面和U平面的位置不同。在YV12格式中，V平面緊跟在Y平面之後，然後才是U平面（即：YVU）；但I420則是相反（即：YUV）。**NV12**與YV12類似，效果一樣，YV12中U和V是連續排列的，而在NV12中，U和V就交錯排列的。

排列举例： **2\*2图像**YYYYVU； **4＊4图像**YYYYYYYYYYYYYYYYVVVVUUUU

## 轉換

YUV與RGB的轉換公式：

U和V元件可以被表示成原始的R，G，和B（R，G，B为γ预校正后的）:

\(\begin{array}{rll}
Y &= 0.299 * R + 0.587 * G + 0.114 * B \\
U &= -0.169 * R - 0.331 * G + 0.5 * B + 128 \\
V &= 0.5 * R - 0.419 * G - 0.081 * B + 128
\end{array}\)

如一般順序，轉移元件的範圍可得到：

\(\begin{array}{rll}
Y & \in \left[0, 255\right] \\
U & \in \left[0, 255\right] \\
V & \in \left[0, 255\right]
\end{array}\)

在逆轉關係上，從YUV到RGB，可得

\(\begin{array}{rll}
R & = Y + 1.13983 * (V - 128) \\
G & = Y - 0.39465 * (U - 128) - 0.58060 * (V - 128) \\
B & = Y + 2.03211 * (U - 128)
\end{array}\)

取而代之，以矩陣表示法（matrix representation），可得到公式：

\(\begin{bmatrix} Y \\ U \\ V \end{bmatrix}
=
\begin{bmatrix} 0.299 & 0.587 & 0.114 \\ -0.169 & -0.331 & 0.5 \\ 0.5 & -0.419 & -0.081 \end{bmatrix}
\begin{bmatrix} R \\ G \\ B \end{bmatrix} +
\begin{bmatrix} 0 \\ 128 \\ 128 \end{bmatrix}\)

\(\begin{bmatrix} R \\ G \\ B \end{bmatrix}
=
\begin{bmatrix} 1 & -0.00093 & 1.401687 \\ 1 & -0.3437 & -0.71417 \\ 1 & 1.77216 & 0.00099 \end{bmatrix}
\begin{bmatrix} Y \\ U - 128 \\ V - 128 \end{bmatrix}\)

## YUV轉RGB

function RGB\* YUV444toRGB888(Y, U, V)；將YUV format移轉成簡單的RGB format並可以用浮點運算實作：

### Y'UV444

大多數YUV格式平均使用的每像素位數都少於24位元。YUV444是最逼真的格式，一格不刪（24 bits），即每4個Y，配上4個U，還有4個V；YUV422則是在UV格式上減半，即每4個Y，配2個U，2個V；YUV420則是在UV上減至1/4之格式，即每4個Y，配1個U，再配1個V。

這些公式是基於NTSC standard;

\[Y' =  0.299 \times R + 0.587 \times G + 0.114 \times B\]

\[U = -0.147 \times R - 0.289 \times G + 0.436 \times B\]

\[V = 0.615 \times R - 0.515 \times G - 0.100 \times B\]

在早期的非[SIMD](https://zh.wikipedia.org/wiki/SIMD "wikilink")（non-SIMD）構造中，floating point arithmetic會比fixed-point arithmetic稍慢，所以有一替代公式如下：

\[C = Y' - 16\]

\[D = U - 128\]

\[E = V - 128\]

使用前面的係數並且用clip()註明切割的值域是0至255，如下的公式是從Y'UV到RGB (NTSC version):

\[R = clip(( 298 \times C                + 409 \times E + 128) >> 8)\]

\[G = clip(( 298 \times C - 100 \times D - 208 \times E + 128) >> 8)\]

\[B = clip(( 298 \times C + 516 \times D                + 128) >> 8)\]

注意：上述的公式多暗示為YCbCr. 雖然稱為YUV，但應該嚴格區分YUV和YCbCr這兩個專有名詞有時並非完全相同。

ITU-R版本的公式差異：

\[Y = 0.299 \times R + 0.587 \times G + 0.114 \times B + 0\]

\[Cb = -0.169 \times R - 0.331 \times G + 0.499 \times B + 128\]

\[Cr = 0.499 \times R - 0.418 \times G - 0.0813 \times B + 128\]

\[R = clip(Y + 1.402 \times (Cr - 128))\]

\[G = clip(Y - 0.344 \times (Cb - 128) - 0.714 \times (Cr - 128))\]

\[B = clip(Y + 1.772 \times (Cb - 128))\]

ITU-R標準YCbCr（每一通道8位元）至RGB888:

Cr = Cr - 128; Cb = Cb - 128;

\[R = Y + Cr + Cr>>2 + Cr>>3 + Cr>>5\]

\[G = Y - (Cb>>2 + Cb>>4 + Cb>>5) - (Cr>>1 + Cr>>3 + Cr>>4 + Cr>>5)\]

\[B = Y + Cb + Cb>>1 + Cb>>2 + Cb>>6\]

### Y'UV422

  -
    Input：讀取Y'UV的4bytes（u, y1, v, y2）
    Output：寫入RGB的6bytes（R, G, B, R, G, B）

`u = yuv[0];`
`y1 = yuv[1];`
`v = yuv[2];`
`y2 = yuv[3];`

以此一資訊可以剖析出regular Y'UV444格式而成為2 RGB pixels info:

`rgb1 = Y'UV444toRGB888(y1, u, v);`
`rgb2 = Y'UV444toRGB888(y2, u, v);`

Y'UV422可被表達成Y'UY'2 [FourCC格式碼](https://zh.wikipedia.org/wiki/FourCC "wikilink")。意思是2 pixels將被定義成each macropixel (four bytes) treated in the image. [Yuv422_yuy2.svg](https://zh.wikipedia.org/wiki/File:Yuv422_yuy2.svg "fig:Yuv422_yuy2.svg")

### Y'UV411

`// Extract YUV components`
`u = yuv[0];`
`y1 = yuv[1];`
`y2 = yuv[2];`
`v = yuv[3];`
`y3 = yuv[4];`
`y4 = yuv[5];`

`rgb1 = Y'UV444toRGB888(y1, u, v);`
`rgb2 = Y'UV444toRGB888(y2, u, v);`
`rgb3 = Y'UV444toRGB888(y3, u, v);`
`rgb4 = Y'UV444toRGB888(y4, u, v);`

所以結果會得到4 RGB像素的值 (4\*3 bytes) from 6 bytes. This means reducing size of transferred data to half and with quite good loss of quality.

### YV12

The Y'V12的格式相當類似Y'UV420p，但U與V資料反轉：Y'跟隨著V, U殿後。Y'UV420p與Y'V12使用相同演算法。許多重要的編碼器都採用YV12空間存儲視頻：MPEG-4（[x264](https://zh.wikipedia.org/wiki/x264 "wikilink")，[XviD](https://zh.wikipedia.org/wiki/XviD "wikilink")，[DivX](../Page/DivX.md "wikilink")），DVD-Video存儲格式MPEG-2，MPEG-1以及MJPEG。

將Y'UV420p轉換成RGB

`Height = 16;`
`Width = 16;`
`Y'ArraySize = Height × Width;    //（256）`
`Y' = Array[7 × Width + 5];`
`U = Array[(7/2) × (Width/2) + 5/2 + Y'ArraySize];`
`V = Array[(7/2) × (Width/2) + 5/2 + Y'ArraySize + Y'ArraySize/4];`

`RGB = Y'UV444toRGB888(Y', U, V);`

## 註釋

<references/>

## 參見

  - [色度抽樣](https://zh.wikipedia.org/wiki/色度抽樣 "wikilink")

## 外部連結

  - [RGB/YUV Pixel Conversion](http://www.fourcc.org/fccyvrgb.php)
  - [Explanation of many different formats in the YUV family](http://www.fourcc.org/yuv.php)
  - [Charles Poynton - Video engineering](http://www.poynton.com/Poynton-video-eng.html)
  - [YUV422 to RGB using SSE/Assembly](http://www.mikekohn.net/stuff/image_processing.php)

[Category:色彩空間](https://zh.wikipedia.org/wiki/Category:色彩空間 "wikilink")

1.  Maller, Joe. [RGB and YUV Color](http://joemaller.com/fcp/fxscript_yuv_color.shtml) , *FXScript Reference*