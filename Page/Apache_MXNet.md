**Apache
MXNet**是一个[开源](../Page/开源软件.md "wikilink")[深度学习](https://zh.wikipedia.org/wiki/深度学习 "wikilink")[軟體框架](https://zh.wikipedia.org/wiki/軟體框架 "wikilink")，用于训练及部署[深度神经网络](https://zh.wikipedia.org/wiki/深度学习 "wikilink")。MXNet具有可扩展性，允许快速模型训练，并支持灵活的[编程模型和多种](https://zh.wikipedia.org/wiki/编程模型 "wikilink")[编程语言](../Page/编程语言.md "wikilink")（包括[C++](../Page/C++.md "wikilink")、[Python](../Page/Python.md "wikilink")、[Julia](../Page/Julia_\(编程语言\).md "wikilink")、[Matlab](../Page/MATLAB.md "wikilink")、[JavaScript](../Page/JavaScript.md "wikilink")、[Go](../Page/Go.md "wikilink")、[R](../Page/R语言.md "wikilink")、[Scala](../Page/Scala.md "wikilink")、[Perl和](../Page/Perl.md "wikilink")[Wolfram语言](../Page/Wolfram语言.md "wikilink")）。

MXNet库可以[扩展到多](https://zh.wikipedia.org/wiki/可扩展性 "wikilink")[GPU](../Page/圖形處理器.md "wikilink")\[1\]和多台机器，并可移植。MXNet由[公共云提供商](../Page/雲端運算.md "wikilink")[亚马逊云计算服务](../Page/亚马逊云计算服务.md "wikilink")（AWS）\[2\]和[Microsoft
Azure](../Page/Microsoft_Azure.md "wikilink")\[3\]支持。亚马逊把MXNet选为AWS的首选深度学习框架\[4\]\[5\]。目前，MXNet受到[英特尔](../Page/英特尔.md "wikilink")、Dato、[百度](../Page/百度.md "wikilink")、[微软](../Page/微软.md "wikilink")、[沃尔夫勒姆研究公司以及](../Page/沃尔夫勒姆研究公司.md "wikilink")[卡内基·梅隆大学](../Page/卡内基·梅隆大学.md "wikilink")、[麻省理工学院](../Page/麻省理工学院.md "wikilink")、[华盛顿大学和](https://zh.wikipedia.org/wiki/华盛顿大学 "wikilink")[香港科技大学等研究机构的支持](https://zh.wikipedia.org/wiki/香港科技大学 "wikilink")\[6\]。

## 特色

Apache
MXNet是一个极简、灵活、可扩展的深度学习框架，支持深度学习模型的最新技术，包括[卷积神经网络](../Page/卷积神经网络.md "wikilink")（CNN）和[长短期记忆网络](https://zh.wikipedia.org/wiki/长短期记忆 "wikilink")（LSTM）。

### 可扩展性

MXNet分布于动态云基础架构上，使用[分布式参数服务器](../Page/分布式计算.md "wikilink")（基于[卡内基·梅隆大学](../Page/卡内基·梅隆大学.md "wikilink")、[百度和](../Page/百度.md "wikilink")[Google](../Page/Google.md "wikilink")\[7\]），并且可以使用多GPU或多CPU实现近乎线性的扩展。

### 灵活性

MXNet支持命令式和符号式编程，让使用命令式编程的开发者可以更轻松地上手深度学习，还可以更容易地跟踪、调试、保存断点，修改学习率等超参数或执行早停。

### 多编程语言支持

MXNet支持C++用于优化后端，以获得大部分可用的GPU或CPU，以及支持Python、R语言、Scala、Julia、Perl、[MATLAB和JavaScript](../Page/MATLAB.md "wikilink")，用于为开发人员提供简单的前端。

### 可移植性

MXNet支持将受过训练的模型高效部署到低端设备，例如移动设备（使用Amalgamation\[8\]）、[物联网设备](../Page/物联网.md "wikilink")（使用AWS
Greengrass）、无服务器计算（使用[AWS
Lambda](https://zh.wikipedia.org/wiki/AWS_Lambda "wikilink")）或[容器](https://zh.wikipedia.org/wiki/作業系統層虛擬化 "wikilink")。这些低端环境只有性能较弱的CPU或有限的内存（RAM），并且应能使用在更高端环境（如基于GPU的集群）上训练的模型。

## 参见

  -
## 参考资料

[Category:数据挖掘和机器学习软件](https://zh.wikipedia.org/wiki/Category:数据挖掘和机器学习软件 "wikilink")
[Category:深度学习](https://zh.wikipedia.org/wiki/Category:深度学习 "wikilink")
[Category:自由統計軟件](https://zh.wikipedia.org/wiki/Category:自由統計軟件 "wikilink")
[Category:Apache软件基金会](https://zh.wikipedia.org/wiki/Category:Apache软件基金会 "wikilink")
[Category:自由跨平台軟體](https://zh.wikipedia.org/wiki/Category:自由跨平台軟體 "wikilink")
[Category:使用Apache许可证的软件](https://zh.wikipedia.org/wiki/Category:使用Apache许可证的软件 "wikilink")

1.
2.
3.
4.
5.
6.
7.
8.  \[<https://mxnet.incubator.apache.org/faq/smart_device.html>
    Amalgamation