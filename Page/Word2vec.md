**Word2vec**，為一群用來產生[詞向量的相關模型](https://zh.wikipedia.org/wiki/詞嵌入 "wikilink")。這些模型為淺层雙層的[神經網路](https://zh.wikipedia.org/wiki/神經網路 "wikilink")，用來訓練以重新建構語言學之詞文本。網路以詞表現，並且需猜測相鄰位置的輸入詞，在word2vec中[词袋模型](../Page/词袋模型.md "wikilink")假設下，詞的順序是不重要的。

訓練完成之後，word2vec模型可用來映射每個詞到一個向量，可用來表示詞對詞之間的關係。該向量為神經網路之隱藏層\[1\]。

Word2vec依賴skip-grams或[連續詞袋](https://zh.wikipedia.org/wiki/詞袋模型 "wikilink")（CBOW）來建立神經詞嵌入。Word2vec為托馬斯·米科洛夫（Tomas Mikolov）在[Google](../Page/Google.md "wikilink")帶領的研究團隊創造。該演算法漸漸被其他人所分析和解釋\[2\]\[3\]。

## Skip-grams和CBOW

CBOW把一個詞從詞窗剔除。在CBOW下給定詞圍繞著詞，word2vec預測一個句子中其中一個缺漏的詞，即以機率\(p(c|w)\)來表示。相反地，Skip-gram給定詞窗中的文本，預測當前的詞\(p(w|c)\)。

## 延伸

Word2vec用來建構整份文件（而分獨立的詞）的延伸應用已被提出\[4\]， 該延伸稱為paragraph2vec或doc2vec，並且用C、Python\[5\]\[6\]和 Java/Scala\[7\]實做成工具（參考下方）。Java和Python也支援推斷文件嵌入於未觀測的文件。

## 分析

對word2vec框架為何做[词嵌入](../Page/词嵌入.md "wikilink")如此成功知之甚少，約阿夫·哥德堡（Yoav Goldberg）和歐莫·列維（Omer Levy）指出word2vec的功能導致相似文本擁有相似的嵌入（用[余弦相似性](../Page/余弦相似性.md "wikilink")計算）並且和[約翰·魯伯特·弗斯的](https://zh.wikipedia.org/wiki/約翰·魯伯特·弗斯 "wikilink")有關。

## 實作

  - [C](https://code.google.com/p/word2vec/)
  - [Java/Scala](https://web.archive.org/web/20160305131924/http://deeplearning4j.org/word2vec.html)
  - [Python](https://github.com/tensorflow/tensorflow/blob/r1.1/tensorflow/examples/tutorials/word2vec/word2vec_basic.py)
  - [Python](http://radimrehurek.com/gensim/models/word2vec.html)

## 參見

  - [向量空間模型](../Page/向量空間模型.md "wikilink")

## 参考文献

[Category:自由软件](https://zh.wikipedia.org/wiki/Category:自由软件 "wikilink") [Category:自然语言处理](https://zh.wikipedia.org/wiki/Category:自然语言处理 "wikilink") [Category:人工神经网络](https://zh.wikipedia.org/wiki/Category:人工神经网络 "wikilink") [Category:机器学习](https://zh.wikipedia.org/wiki/Category:机器学习 "wikilink")

1.
2.
3.
4.
5.
6.
7.