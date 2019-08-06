K-L轉換(Karhunen-Loève Transform)是建立在統計特性基礎上的一種轉換，它是[均方差](https://zh.wikipedia.org/wiki/均方差 "wikilink")(MSE, Mean Square Error)意義下的最佳轉換，因此在[資料壓縮技術中佔有重要的地位](https://zh.wikipedia.org/wiki/資料壓縮 "wikilink")。

K-L轉換名称来自Kari Karhunen和Michel Loève。

K-L轉換是對輸入的向量x，做一個[正交](../Page/正交.md "wikilink")變換，使得輸出的向量得以去除數據的相關性。

然而，K-L轉換雖然具有[均方差](https://zh.wikipedia.org/wiki/均方差 "wikilink")(MSE)意義下的最佳轉換，但必須事先知道輸入的訊號，並且需經過一些繁雜的數學運算，例如[协方差](../Page/协方差.md "wikilink")(covariance)以及[特徵向量](https://zh.wikipedia.org/wiki/特徵向量 "wikilink")(eigenvector)的計算。因此在工程實踐上K-L轉換並沒有被廣泛的應用，不過K-L轉換是理論上最佳的方法，所以在尋找一些不是最佳、但比較好實現的一些轉換方法時，K-L轉換能夠提供這些轉換性能的評價標準。

以處理圖片為範例，在K-L轉換途中，圖片的能量會變得集中，有助於壓縮圖片，但是實際上，KL轉算為input-dependent，即需要對每張輸入圖片存下一個轉換機制，每張圖都不一樣，這在實務應用上是不實際的。

## 原理

KL轉換屬於正交轉換，其處輸入訊號的原理如下：

對輸入向量\(\mathbf{x}\)做KL傳換後，輸出向量\(\mathbf{X}\)之元素間(\(u_1\neq u_2\), \(u_1\)和\(u_2\)為\(\mathbf{X}\)之元素的index)的相關性為零，即：\(E[(X[u_1]-\bar{X}[u_1])(X[u_2]-\bar{X}[u_2])]=0\)

展開上式並做消去：

\(E[X[u_1]X[u_2]]-\bar{X}[u_1]\bar{X}[u_2]=0\)

如果\(\bar{x}[n]=0\)，因為KL轉換式線性轉換的關係，\(\bar{X}[n]=0\)，則可以達成以下式，所以這裡得輸入向量\(\mathbf{x}\)之平均值\(\bar{x}\)需為\(0\)，所以KLT是專門用於隨機程序的分析：

\(E[X[u_1]X[u_2]]=0\)

其中\(u_1\neq u_2\)，即輸出向量不同元素相關性為\(0\)。

回到矩陣表示形式，令\(\mathbf{K}\)為KL轉換矩陣，使：

\(\mathbf{X}=\mathbf{Kx}\)

以\(\mathbf{K}\)和\(\mathbf{x}\)表示\(\mathbf{X}\)之covariance矩陣：

\(E[\mathbf{X}\mathbf{X}^T]=E[\mathbf{K}\mathbf{x}\mathbf{x}^T\mathbf{K}^T]=\mathbf{K}E[\mathbf{x}\mathbf{x}^T]\mathbf{K}^T\)

因為\(\bar{x}[n]=0\)，\(E[\mathbf{x}\mathbf{x}^T]\)直接等於covariance矩陣：

\(E[\mathbf{X}\mathbf{X}^T]=\mathbf{K}\mathbf{C}\mathbf{K}^T\)

其中\(\mathbf{C}\)為\(\mathbf{x}\)之covariance矩陣。

如果要使\(E[X[u_1]X[u_2]]=0\)，則\(E[\mathbf{X}\mathbf{X}^T]\)必須為對角線矩陣，即對角線上之值皆為\(0\)，所以\(\mathbf{K}\)必須將傳換成對角線矩陣，即\(\mathbf{K}\)的每一行皆為\(\mathbf{C}\)之特徵向量。

K-L轉換的目的是將原始數據做轉換，使得轉換後資料的相關性最小。若輸入數據為一維：

\(y[u]=\sum_{n=0}^{N-1}K[u,n]x[n]\)

\(K[u,n]=e_{n}[n]\)

其中e<sub>n</sub>為輸入訊號x[共變異數矩陣](https://zh.wikipedia.org/wiki/共變異數 "wikilink")(covariance matrix)C<sub>x</sub>的[特徵向量](https://zh.wikipedia.org/wiki/特徵向量 "wikilink")(eigenvector)

若輸入訊號x為二維：

\(y[u,v]=\sum_{m=0}^{M-1}\sum_{n=0}^{N-1}K[u,m]K[v,m]x[m,n]\)

## KLT與PCA的區別

KLT和Principle component analysis (PCA)有相似的特性，二者之間有很細微的差異，其中KLT專門處理隨機性的訊號，但PCA則沒有這個限制。對PCA而言，這裡假設輸入訊號為ㄧ向量，輸入向量\(\mathbf{x}\)在乘上轉換矩陣\(\mathbf{W}\)之前，會先將輸入向量扣去平均值，即:

\(\mathbf{X}=\mathbf{W}(\mathbf{x}-\bar{x})\)

PCA會根據\(\mathbf{x}\)之covariance矩陣來選擇特徵向量做為轉換矩陣之內容：

\(E[(\mathbf{x}-\bar{x})(\mathbf{x}-\bar{x})^T]=\mathbf{W\Lambda W}^T\)

其中\(\mathbf{\Lambda}\)為對角線矩陣且對角線值為特徵值。

由上述可見PCA和KLT之差異在於有沒有減去平均值，這是由於輸入資料分布的限制造成的，當輸入向量支平均值為零時，二這者沒有差異。

## 應用

在影像的壓縮上，目的是要將原始的影像檔用較少的資料量來表示，由於大部分的影像並不是隨機的分布，相鄰的[像素](../Page/像素.md "wikilink")(Pixal)間存在一些相關性，如果我們能找到一種可逆轉換(reversible transformation)，它可以去除數據的相關性，如此一來就能更有效地儲存資料，由於K-L轉換是一種線性轉換，並有去除資料相關性的特性，便可以將它應用在影像的壓縮上。此外，由於K-L轉換具有將訊號轉到[特徵空間](https://zh.wikipedia.org/wiki/特徵向量 "wikilink")(eigenspace)的特性，因此也可以應用在人臉辨識上。

##  参考文献

1\. Ding, J. J. (2017). Advanced Digital Signal Processing \[Powerpoint slides\] [<http://djj.ee.ntu.edu.tw/ADSP8.pdf>](http://djj.ee.ntu.edu.tw/ADSP15.pdf)

2\. Gerbrands, J.J., On the relationships between SVD, KLT, and PCA, Pattern Recogn., 14 (1981), pp. 375-381

[Category:估计理论](https://zh.wikipedia.org/wiki/Category:估计理论 "wikilink") [Category:概率论](https://zh.wikipedia.org/wiki/Category:概率论 "wikilink") [Category:信号处理](https://zh.wikipedia.org/wiki/Category:信号处理 "wikilink") [Category:随机过程](https://zh.wikipedia.org/wiki/Category:随机过程 "wikilink")