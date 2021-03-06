> 本文内容由[NASTRAN](https://zh.wikipedia.org/wiki/NASTRAN)转换而来。


**NASTRAN**是一款[有限元分析](../Page/有限元分析.md "wikilink")（FEA）软件，最初是1960年代末在美国政府对[航空航天](../Page/航空航天.md "wikilink")工业的资助下为[美国国家航空航天局](../Page/美国国家航空航天局.md "wikilink")（NASA）开发的。[诺世创软件](https://zh.wikipedia.org/wiki/诺世创软件 "wikilink")（MSC Software）公司是公共域NASTRAN代码的主要原始开发商之一，这些代码已被众多公司集成到大量的软件中。

## 历史

1964年，美国航空航天局结构动力学研究计划的年度审查发现，研究中心正分别开发针对自身需求的结构分析软件。审查建议应当使用单一的通用软件取而代之。由此成立了一个专责委员会。委员会认定没有一份现成的软件能够满足他们的要求。他们建议成立一个合作项目来开发这个软件并创建了概述该软件功能规范。

因之，[计算机科学公司](https://zh.wikipedia.org/wiki/计算机科学公司 "wikilink")（CSC）获得了开发软件的[合同](https://zh.wikipedia.org/wiki/合同 "wikilink")。1960年代，该程序在开发期间的第一个名字是GPSA，普遍目的结构分析（General Purpose Structural Analysis）的首字母缩写。但NASA最终批准的名字则是NASTRAN（**NA**SA **Str**uctural **An**alysis）。NASTRAN软件于1968年发布给NASA。60年代末，诺世创软件将自己的版本（MSC/NASTRAN，最终演化成MSC.Nastran）市场化并提供支持。Joe Mule（NASA）、Gerald Sandler（NASA）和Stephen J. Burns（[罗彻斯特大学](https://zh.wikipedia.org/wiki/罗彻斯特大学 "wikilink")）设计了原始软件的架构。

编写NASTRAN软件应用程序是为了帮助设计更有效的[空间飞行器](https://zh.wikipedia.org/wiki/空间飞行器 "wikilink")，如[航天飞机](../Page/航天飞机.md "wikilink")。1971年，美国航空航天局技术利用办公室向公众发布NASTRAN。NASTRAN的商业应用帮助了对任何尺寸、形状或目的弹性结构行为的分析。例如，汽车行业用其设计前[悬架系统和](https://zh.wikipedia.org/wiki/悬架系统 "wikilink")[转向拉杆](https://zh.wikipedia.org/wiki/转向拉杆 "wikilink")。该软件也可用于[轨道和机车](https://zh.wikipedia.org/wiki/轨道 "wikilink")、桥梁、发电厂、摩天大楼和[飞机的设计](https://zh.wikipedia.org/wiki/飞机 "wikilink")。据估计，1971年至1984年NASTRAN节省了7.01亿美元的成本。NASTRAN于1988年入选美国航天基金会的空间技术名人堂，这是获此殊荣的第一项技术之一。

The NASTRAN program has evolved over many versions. Each new version contains enhancements in analysis capability and numerical performance. In addition, many errors from previous versions are corrected. In one notorious case, an internal error in NASTRAN was identified as responsible for the 1991 collapse of the Sleipner A offshore platform. Today, NASTRAN is widely used throughout the world in the aerospace, automotive and maritime industries. It has been claimed\[5\] that NASTRAN is the industry standard for basic types of analysis for aerospace structures, e.g. linear elastic static and dynamic analyses.

2002年11月，诺世创软件公司与[联邦贸易委员会](https://zh.wikipedia.org/wiki/联邦贸易委员会 "wikilink")（FTC）达成最终协议，以解决由该公司收购竞争对手Universal Analytics, Inc.（UAI）和Computerized Structural Analysis & Research Corp.（CSAR）引发的[反垄断](../Page/反垄断.md "wikilink")案。FTC指控MSC软件公司的收购代表了反竞争行为。根据和解条款，MSC需提供当前Nastran软件的一份副本。该副本对[优集公司](https://zh.wikipedia.org/wiki/优集 "wikilink")（UGS）是完全免版税的、永久的和非排他许可的。优集公司在2007年被西门子收购。

目前，NASTRAN的商业版本有MSC软件公司的MSC.Nastran、[NEi软件公司的NEi](https://zh.wikipedia.org/wiki/NEi软件 "wikilink") Nastran以及[西门子PLM软件公司的NX](https://zh.wikipedia.org/wiki/西门子PLM软件 "wikilink") Nastran。

## 软件架构

### 求解序列

  - 101 - 线性静态
  - 103 - 模态分析
  - 105 - 屈曲分析
  - 106 - 非线性
  - 107 - 复杂特征值
  - 108 - 直接频率响应
  - 109 - 直接瞬态响应
  - 110 - 模态复杂特征值
  - 111 - 模态频率响应
  - 112 - 模态瞬态响应
  - 129 - 瞬态非线性
  - 600 - 隐性非线性（MSC/NASTRAN）
  - 601 - 隐性非线性（NX/NASTRAN）
  - 700 - 显性非线性（MSC/NASTRAN）
  - 701 - 显性非线性（NX/NASTRAN）

[Category:应用软件](https://zh.wikipedia.org/wiki/Category:应用软件 "wikilink") [Category:有限元软件](https://zh.wikipedia.org/wiki/Category:有限元软件 "wikilink")