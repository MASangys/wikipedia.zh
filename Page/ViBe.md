**ViBe**是一种在IEEE
[ICASSP](https://zh.wikipedia.org/wiki/ICASSP "wikilink")
2009大会中提出并在此后发布版本中改进了的[背景剪除](https://zh.wikipedia.org/wiki/背景剪除 "wikilink")[算法](../Page/算法.md "wikilink")。\[1\]\[2\]\[3\]\[4\]
更确切地说，它是从运动图像中提取背景信息的软件模块。它由比利时[列日大学的Montefiore研究所的Oliver](../Page/列日大学.md "wikilink")
Barnich和Marc Van Droogenbroeck开发。\[5\]

ViBe已获得专利：\[6\] 专利涵盖各个方面，如随机置换、空间扩散和非时序处理。

ViBe使用[C语言写成的](https://zh.wikipedia.org/wiki/C语言 "wikilink")，并已在[CPU](https://zh.wikipedia.org/wiki/CPU "wikilink")、[GPU和](https://zh.wikipedia.org/wiki/GPU "wikilink")[FPGA上实现](https://zh.wikipedia.org/wiki/FPGA "wikilink")。\[7\]

## 技术说明\[8\]

### 像素模型和分类过程

有很多先进的技术可以用来提供像素 x
对时间的[概率密度函数的估计值](https://zh.wikipedia.org/wiki/概率密度函数 "wikilink")。ViBe与那些方法不同，它规定多色空间中一个值的影响限制在局部邻域内。在实践中，ViBe不去估计概率密度函数，而是采用一组先前观测到的样本值作为像素模型。它通过与样本集内相邻的值进行比较来对
pt(x) 的值分类。

### 模型的更新：样本值的生命周期策略

ViBe保证了构成像素模型的样本值的生命周期呈平滑指数衰减。这使得ViBe用每个像素都大小合理的一个模型来能够成功地处理伴随事件。这是通过在更新像素模型时，随机选取决定用替代的样本来实现的。一旦选定了要丢弃的样本，就会用新值替代丢弃的样本。有趣的是要注意到，因为将要丢弃的值是随机选取的，所以一个给定像素样本的像素模型更新产生的像素模型无法预测。

### 模型的更新：空间一致性

为了确保整个图像模型的空间一致性，并处理诸如相机抖动及背景物体的缓慢变化的实际情况，ViBe采用了类似于更新过程的技术，随机选取然后再当前像素的邻域内更新像素模型。分别用
NG(x) 和 p(x) 来表示像素 x 的空间邻域和它的值，并假设已决定通过加入 p(x) 更新 x 的样本集，则ViBe同样适用 p(x)
这个值来更新邻域 NG(x) 中一个随机选取的像素的样本集。其结果是，ViBe能够不适用任何后期处理方法直接产生空间一致的结果。

### 模型的初始化

虽然该模型可以容易地从任何类型的初始化中恢复，例如选择一组随机值，可以很方便地尽快得到一个准确的背景估计。理想情况下，一个分割算法可以从第二帧开始分割视频序列，第一帧用来初始化模型。由于第二帧之前没有可用的临时信息，ViBe在像素模型中填入每个像素空间邻域中的值；更确切地说，它用第一帧中随机从每个像素邻域中抽取的值初始化了背景模型。这样背景估计从视频序列的第二帧就有效了。

## 參考文献

<references/>

[Category:计算机视觉](https://zh.wikipedia.org/wiki/Category:计算机视觉 "wikilink")

1.

2.

3.

4.

5.  <http://www2.ulg.ac.be/telecom/research/vibe/>

6.  World Intellectual Property Organization. [ViBe
    patents](http://patentscope.wipo.int/search/en/detail.jsf?docId=WO2009007198&tab=PCT+Biblio)

7.  Kryjak, Tomasz; Gorgon, Marek. ["Real-time Implementation of the
    ViBe Foreground Object Segmentation
    Algorithm"](http://ieeexplore.ieee.org/xpl/login.jsp?tp=&arnumber=6644061).
    In Proceedings of the 2013 Federated Conference on Computer Science
    and Information Systems (FedCSIS) pp. 591–596

8.