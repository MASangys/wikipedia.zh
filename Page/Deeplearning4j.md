**Deeplearning4j**是为[Java](../Page/Java.md "wikilink")和[Java虚拟机](../Page/Java虚拟机.md "wikilink")\[1\]\[2\]编写的[开源](https://zh.wikipedia.org/wiki/开源 "wikilink")[深度学习](../Page/深度学习.md "wikilink")库，是广泛支持各种深度学习算法的[运算框架](https://zh.wikipedia.org/wiki/运算 "wikilink")\[3\]。Deeplearning4j可以实施的技术包括[受限玻尔兹曼机](../Page/受限玻尔兹曼机.md "wikilink")、[深度置信网络](https://zh.wikipedia.org/wiki/深度置信网络 "wikilink")、深度自动编码器、堆叠式降噪自动编码器、[循环神经张量网络](https://zh.wikipedia.org/wiki/循环神经张量网络 "wikilink")，以及[word2vec](https://zh.wikipedia.org/wiki/word2vec "wikilink")、doc2vec和GloVe。这些算法全部包括[分布式](https://zh.wikipedia.org/wiki/分布式 "wikilink")[并行版本](https://zh.wikipedia.org/wiki/并行 "wikilink")，与[Hadoop和](https://zh.wikipedia.org/wiki/Hadoop "wikilink")[Spark集成](../Page/Apache_Spark.md "wikilink")。\[4\][Skymind是Deeplearning](https://zh.wikipedia.org/wiki/Skymind "wikilink")4j的商业支持机构。

## 简介

Deeplearning4j基于广泛使用的编程语言Java——但同时也兼容[Clojure](../Page/Clojure.md "wikilink")，并且包括[Scala](../Page/Scala.md "wikilink")的API。它由自有的开源数值计算库[ND4J驱动](https://zh.wikipedia.org/wiki/ND4J "wikilink")，可使用CPU或GPU运行。\[5\]\[6\] Deeplearning4j是[开源项目](https://zh.wikipedia.org/wiki/开源 "wikilink")\[7\]，主要由位于旧金山的一支[机器学习](../Page/机器学习.md "wikilink")团队开发，团队由Adam Gibson领导。\[8\]\[9\]Deeplearning4j是谷歌Word2vec页面上列出的唯一一个在Java环境下实施Word2vec的开源项目。\[10\]

Deeplearning4j已经用于多项商业和科研应用。其代码由[GitHub](../Page/GitHub.md "wikilink")\[11\]托管，并在[谷歌小组](https://zh.wikipedia.org/wiki/Google_groups "wikilink")\[12\]上设有支持论坛。 

这一框架是可组合的，即受限玻尔兹曼机、卷积网络、自动编码器、递归网络等浅层神经网络可以相互叠加，组合成不同类型的深度网络。

## 分布式

Deeplearning4j的定型以集群进行。神经网络通过迭代化简平行定型，可以在Hadoop/YARN以及Spark上运行。\[13\]\[14\]Deeplearning4j还与Cuda内核集成，进行纯GPU操作，可使用分布式GPU运行。

## Java虚拟机中的科学计算

Deeplearning4j包括使用ND4J的N维数组类，可在Java和Scala中进行科学计算，类似于[Numpy为](https://zh.wikipedia.org/wiki/Numpy "wikilink")[Python](../Page/Python.md "wikilink")提供的功能。其基础是线性代数库，可有效支持生产环境中的矩阵操作。

## 用于机器学习的Canova向量化库

Canova可将各类文件格式和数据类型向量化，所用的输入/输出格式系统近似于Hadoop的MapReduce。Canova目前仍在开发中，设计目标是实现CSV、图像、声音、文本和视频的向量化。Canova可以从命令行使用。 版本0.4.0之后，Canova库已合并到 DataVec当中。

## 文本与NLP

Deeplearning4j包括一个向量空间模型和主题模型工具包，在Java中实施，与并行GPU集成以提高表现。这是专门为处理大量文本而设计的。

Deeplearning4j可实施tf–idf、深度学习以及Mikolov的word2vec算法、doc2vec和GloVe－在Java中再实施并优化。它依靠t-SNE生成视觉化的文字云。

## 实际应用情景与集成

Deeplearning4j的实际应用情景包括金融行业\[15\]的欺诈侦测、制造业等行业中的异常检测、电子商务与广告业的推荐系统、图像识别等。Deeplearning4j已与RapidMiner和Prediction.io等其他机器学习平台集成。

## 相关库

  - [OpenNN](https://zh.wikipedia.org/wiki/OpenNN "wikilink")，一个用C++语言编写的深度学习开源神经网络库。
  - [Torch](https://zh.wikipedia.org/wiki/Torch_\(机器学习框架\) "wikilink")，一个用Lua语言编写的 开源框架，广泛支持各类机器学习算法。
  - [Theano](https://zh.wikipedia.org/wiki/Theano "wikilink")，一个为Python开发的开源深度学习库。
  - [Neuroph](https://zh.wikipedia.org/wiki/Neuroph "wikilink")

## 参见

  - [深度学习框架比较](https://zh.wikipedia.org/wiki/深度学习框架比较 "wikilink")
  - [人工智能](../Page/人工智能.md "wikilink")
  - [机器学习](../Page/机器学习.md "wikilink")
  - [深度学习](../Page/深度学习.md "wikilink")
  - [卷积神经网络](../Page/卷积神经网络.md "wikilink")

## 参考文献

## 外部链接

  -
  -
  - <cite class="citation web" contenteditable="false">[Torch vs. Caffe vs.](https://web.archive.org/web/20160530104456/http://deeplearning4j.org/compare-dl4j-torch7-pylearn.html)</cite><cite class="citation web" contenteditable="false">[Theano"](https://web.archive.org/web/20160530104456/http://deeplearning4j.org/compare-dl4j-torch7-pylearn.html).</cite><span class="Z3988" title="ctx_ver=Z39.88-2004&rfr_id=info%3Asid%2Fen.wikipedia.org%3ADeeplearning4j&rft.btitle=Deeplearning4j+vs.+Torch+vs.+Caffe+vs.+Theano&rft.genre=unknown&rft_id=http%3A%2F%2Fdeeplearning4j.org%2Fcompare-dl4j-torch7-pylearn.html&rft_val_fmt=info%3Aofi%2Ffmt%3Akev%3Amtx%3Abook" contenteditable="false"> </span>

  -
  -
  -
  -
  -
[Category:陣列編程語言](https://zh.wikipedia.org/wiki/Category:陣列編程語言 "wikilink") [Category:人工神经网络](https://zh.wikipedia.org/wiki/Category:人工神经网络 "wikilink") [Category:叢集計算](https://zh.wikipedia.org/wiki/Category:叢集計算 "wikilink") [Category:Scala平台軟體](https://zh.wikipedia.org/wiki/Category:Scala平台軟體 "wikilink") [Category:用Java編程的自由軟體](https://zh.wikipedia.org/wiki/Category:用Java編程的自由軟體 "wikilink") [Category:Hadoop](https://zh.wikipedia.org/wiki/Category:Hadoop "wikilink") [Category:图像处理](https://zh.wikipedia.org/wiki/Category:图像处理 "wikilink") [Category:美國資訊科技公司](https://zh.wikipedia.org/wiki/Category:美國資訊科技公司 "wikilink") [Category:JVM程式語言](https://zh.wikipedia.org/wiki/Category:JVM程式語言 "wikilink") [Category:Java函式庫](https://zh.wikipedia.org/wiki/Category:Java函式庫 "wikilink") [Category:Java平台](https://zh.wikipedia.org/wiki/Category:Java平台 "wikilink") [Category:机器学习](https://zh.wikipedia.org/wiki/Category:机器学习 "wikilink") [Category:自然語言處理](https://zh.wikipedia.org/wiki/Category:自然語言處理 "wikilink") [Category:使用Apache许可证的软件](https://zh.wikipedia.org/wiki/Category:使用Apache许可证的软件 "wikilink")

1.

2.

3.

4.

5.

6.

7.

8.

9.

10.

11.

12.

13.
14.

15.