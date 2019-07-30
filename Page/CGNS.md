**CGNS**是**CFD General Notation**的缩写，它是一个面向[CFD数据存储和检索](../Page/计算流体力学.md "wikilink")，通用、轻便并且可扩展的标准。它包含一系列的约定，和实现这些约定的[免费开放的软件](../Page/开源软件.md "wikilink")。它具有自描述性，[跨平台并且和机器无关](https://zh.wikipedia.org/wiki/跨平台 "wikilink")，由国际指导委员会编写文档并且管理。它也是由[AIAA所推荐的一个标准](https://zh.wikipedia.org/wiki/AIAA "wikilink")。1994年在美国[波音](../Page/波音.md "wikilink")公司和[NASA的共同努力下](https://zh.wikipedia.org/wiki/NASA "wikilink")，[CGNS项目](http://www.cgns.org)产生。到如今，世界范围内许多组织都对它的发展有做出了贡献。1999年，CGNS的控制权完全移交至一个公共的社团——[CGNS指导委员会](http://www.cgns.org/steering.html)。这个委员会由世界范围内的来自政府和私人企业的代表组成。

## 介绍

CGNS项目包含两个部分：（1）一个记录数据的标准格式，称为标准接口数据结构（Standard Interface Data Structure），简称SIDS；（2）用来读取、输出和修改这种格式的数据的软件。这种格式是由文档所建立的概念上的实体，软件则是提供给开发者们用来获取和产生用那种格式记录的数据的物理上的产品。

CGNS系统被设计成有助于网站与网站之间、应用与应用之间数据的交换，并且有助于空气动力学数据的归档。数据被存储成一种紧致的二进制的格式，并且通过一整套完整的可扩展的函数库来读取。[应用程序接口](../Page/应用程序接口.md "wikilink")（API）是跨平台的，可以被轻易地应用于[C](https://zh.wikipedia.org/wiki/C語言 "wikilink")、[C++](../Page/C++.md "wikilink")、[Fortran](../Page/Fortran.md "wikilink")和[Fortran 90项目](https://zh.wikipedia.org/wiki/Fortran#Fortran_90 "wikilink")。还存在一个MEX接口[mexCGNS](http://code.google.com/p/mexcgns)，使得可以在[高级编程语言比如](https://zh.wikipedia.org/wiki/高级语言 "wikilink")[matlab和](https://zh.wikipedia.org/wiki/matlab "wikilink")[GNU Octave中调用CGNS的API](../Page/GNU_Octave.md "wikilink")。还存在一个[面向对象的接口](../Page/面向对象程序设计.md "wikilink")[CGNS++](http://cgnspp.sourceforge.net/)以及[Python](../Page/Python.md "wikilink")模块[pyCGNS](https://pycgns.github.io/)，但是它们并没有被维护。

CGNS的主要目标是和[可压缩](https://zh.wikipedia.org/wiki/壓縮性 "wikilink")[粘性流体](https://zh.wikipedia.org/wiki/粘度 "wikilink")（即[NS方程](https://zh.wikipedia.org/wiki/纳维－斯托克斯方程 "wikilink")）有关的数据，但是标准也适用于它的子集，比如[欧拉方程和势流](../Page/欧拉方程_\(流体动力学\).md "wikilink")。CGNS标准包含如下几种形式的数据。

  - 结构、非结构和混合网格；
  - 流场解数据，可以是节点的、单元中心点的、面中心点的或者边中心点的；
  - 多快接口连接面，包括abutting和overset的；
  - 边界条件；
  - 流动方程描述，包括状态方程、粘性以及热传导模型、湍流模型、多组分化学模型和电磁模型；
  - 时间相关流体，包括动网格和变形网格；
  - 量纲的单位以及无量纲的信息；
  - 参考状态；
  - 收敛历史；
  - 和[CAD模型定义的关系](../Page/计算机辅助设计.md "wikilink")；
  - 用户自定义的数据。

标准和软件的大部分可以应用于计算领域的一般物理问题。除流体动力学之外的其它规律需要扩大数据的定义和存储的约定，但是基础的、提供跨平台特性的数据库软件并不只是针对计算动力学的。

CGNS是自描述性的，允许应用程序在没有其它外部信息的时候描述文件的结构和内容。CGNS可以利用两种不同的底层的数据格式

  - 一个内部开发并支持的叫做先进数据格式（Andaved Data Format，简称 ADF）的方法，基于先前在McDonnell Douglas中使用的通用文件格式系统；
  - [HDF5](https://zh.wikipedia.org/wiki/HDF5 "wikilink")，一个广泛使用的分层数据格式。

## 工具和指导

除了CGNS库自身，以下的工具和指导可以从SourceForge上获得:

  - CGNS工具，包括ADFviewer，一种CGNS文件的浏览器和编辑器；
  - 用户指导代码，一些小的用Fortran和C写的CGNS程序例子；
  - F77例子，用Fortran写的，用来演示所有的CGNS功能的计算程序例子。

## 外部連結

  - [CGNS home page](https://cgns.github.io/)
  - [MEX interface of CGNS for MATLAB and Octave](https://github.com/meshkit/cgns4m)
  - [pyCGNS](https://pycgns.github.io/)

[Category:文件格式](https://zh.wikipedia.org/wiki/Category:文件格式 "wikilink") [Category:计算流体力学](https://zh.wikipedia.org/wiki/Category:计算流体力学 "wikilink") [Category:C函式庫](https://zh.wikipedia.org/wiki/Category:C函式庫 "wikilink")