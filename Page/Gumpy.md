**Gumpy** 是一个开源[Python 3](https://zh.wikipedia.org/wiki/Python_\(编程语言\) "wikilink")[库](../Page/函式庫.md "wikilink")，可用于[脑机接口](../Page/脑机接口.md "wikilink")（BCI）的研究或应用的搭建。 这个脑机接口的库可用于[脑电图和肌电图分析](../Page/腦電圖.md "wikilink")、[可视化和波形解码](https://zh.wikipedia.org/wiki/可视化 "wikilink")，适用于在线混合脑机接口研究及实验。除此之外，Gumpy还应用了[深度学习](../Page/深度学习.md "wikilink")技术，例如[卷积神经网络](../Page/卷积神经网络.md "wikilink")来增强[脑电图或肌电图的](../Page/腦電圖.md "wikilink")[解码](https://zh.wikipedia.org/wiki/解码器 "wikilink")。<ref>

<div>

<http://gumpy.org/>

</div>

</ref>

Gumpy库依赖于一些[数学](../Page/数学.md "wikilink")和[科学计算的Python库](https://zh.wikipedia.org/wiki/科学计算 "wikilink")，例如[NumPy](../Page/NumPy.md "wikilink")、[SciPy](../Page/SciPy.md "wikilink")和scikit-learn。

## 开发目的

[脑机接口](../Page/脑机接口.md "wikilink")的研究人员高度依赖[脑电图或肌电图的](../Page/腦電圖.md "wikilink")[解码](https://zh.wikipedia.org/wiki/解码器 "wikilink")、[信号处理](https://zh.wikipedia.org/wiki/信号处理 "wikilink")、[特征提取等等一系列工具](https://zh.wikipedia.org/wiki/特征提取 "wikilink")。 Gumpy恰好将脑机接口研究人员或开发人员在开发方面需要的工具整合在一起，以便减轻他们痛苦的、重复的代码检索工作。

Gumpy主要是将已存在的、便于[复用的函数工具加以整合](../Page/代码复用.md "wikilink")，便于研究人员或开发人员基于Gumpy提供的工具灵活地进行数据分析或搭建新的更复杂的脑机接口工具。 正如原作者所言，Gumpy的设计就是为了“让其易于扩展”。\[1\]

## 组成

Gumpy主要由六个部分构成：数据库（gumpy.data）、[信号处理](https://zh.wikipedia.org/wiki/信号处理 "wikilink")（gumpy.signal）、绘图（gumpy.plot）、[特征提取](https://zh.wikipedia.org/wiki/特征提取 "wikilink")（gumpy.features）、文件提取（gumpy.split）、分类器（gumpy.classify）。

Gumpy还为深度学习模型提供了独立的**gumpy-deeplearning**库（同样基于[MIT许可](../Page/MIT許可證.md "wikilink")）。 \[2\]

## 亮点

  - **新颖**：Gumpy在2018年发布。
  - **多样化**：Gumpy为脑机接口的科研、开发提供了丰富的、种类多样的工具。
  - **免费**：Gumpy基于[MIT许可](../Page/MIT許可證.md "wikilink")。
  - **方便**：对于初学者来说，gumpy提供了很多样例<ref>
    <div>
    <http://gumpy.org/#orgbe35e57>
    </div>
    </ref> 和数据集<ref>
    <div>
    <http://gumpy.org/#org75f77e3>
    </div>
    </ref>，和一组样例视频\[3\] 。

## 参考文献

<references group="">

</references>

## 外部链接

  -
[Category:使用MIT许可证的软件](https://zh.wikipedia.org/wiki/Category:使用MIT许可证的软件 "wikilink") [Category:用Python編程的自由軟體](https://zh.wikipedia.org/wiki/Category:用Python編程的自由軟體 "wikilink") [Category:有未审阅翻译的页面](https://zh.wikipedia.org/wiki/Category:有未审阅翻译的页面 "wikilink")

1.
2.
3.