**Jupyter**（）是一个[非营利组织](https://zh.wikipedia.org/wiki/非营利组织 "wikilink")，旨在“为数十种编程语言的[交互式计算开发](https://zh.wikipedia.org/wiki/交互式计算 "wikilink")[开源软件](../Page/开源软件.md "wikilink")，开放标准和服务”。2014年由Fernando Pérez从[IPython](../Page/IPython.md "wikilink")中衍生出来，Jupyter支持几十种语言的执行环境。Jupyter Project的名称是对Jupyter支持的三种核心编程语言的引用，这三种语言是[Julia](../Page/Julia_\(编程语言\).md "wikilink")、[Python](../Page/Python.md "wikilink")和[R](../Page/R语言.md "wikilink")，也是对[伽利略记录发现](https://zh.wikipedia.org/wiki/伽利略 "wikilink")[木星的卫星](../Page/木星的卫星.md "wikilink")的笔记本的致敬。Jupyter项目开发并支持交互式计算产品Jupyter Notebook、JupyterHub和JupyterLab，这是Jupyter Notebook的下一代版本。

## 历史

2014年，Fernando Pérez宣布从IPython中衍生出一个名为Jupyter的项目。\[1\]IPython继续以Python shell和Jupyter内核的形式存在，而IPython Notebook和其他与语言无关的部分移到了Jupyter名下。\[2\]\[3\]Jupyter是语言无关的，它的名称是对Jupyter支持的核心编程语言的引用，这些语言是Julia、Python和R，\[4\] 它支持[几十种语言](https://github.com/jupyter/jupyter/wiki/Jupyter-kernels)的执行环境（也就是内核），这些语言包括Julia、R、[Haskell](../Page/Haskell.md "wikilink")、[Ruby](../Page/Ruby.md "wikilink")，当然还有Python（通过IPython内核）。\[5\]

2015年，[GitHub](../Page/GitHub.md "wikilink")和Jupyter项目宣布Jupyter Notebook文件格式（.ipynb文件）在GitHub平台上可以原生渲染。\[6\]\[7\]

## 哲学

Jupyter项目的经营理念是通过开发开源软件，支持所有编程语言之间的交互式数据科学和科学计算。根据Jupyter项目网站所言，“Jupyter将永远是100%的开源软件，所有人都可以免费使用，并在修改后的BSD许可的自由条款下发布。”\[8\]

## 产品

### Jupyter Notebook

Jupyter Notebook（前身是IPython Notebook）是一个基于Web的交互式计算环境，用于创建Jupyter Notebook文档。Notebook一词可以通俗地引用许多不同的实体，主要是Jupyter Web应用程序、Jupyter Python Web服务器或Jupyter文档格式（取决于上下文）。Jupyter Notebook文档是一个[JSON](../Page/JSON.md "wikilink")文档，遵循版本化模式，包含一个有序的输入/输出单元格列表，这些单元格可以包含代码、文本（使用[Markdown语言](https://zh.wikipedia.org/wiki/Markdown "wikilink")）、数学、图表和富媒体，通常以“.ipynb”结尾扩展。

Jupyter Notebook文档可以通过Web界面中的“Download As”，通过[nbconvert](https://nbconvert.readthedocs.io/en/latest/)库或shell中的“jupyter nbconvert”命令行界面，转换为许多的[开源标准](../Page/开源标准.md "wikilink")输出格式（[HTML](../Page/HTML.md "wikilink")、演示幻灯片、[LaTeX](https://zh.wikipedia.org/wiki/LaTeX "wikilink")、[PDF](https://zh.wikipedia.org/wiki/PDF "wikilink")、[reStructuredText](https://zh.wikipedia.org/wiki/reStructuredText "wikilink")、[Markdown](https://zh.wikipedia.org/wiki/Markdown "wikilink")、[Python](../Page/Python.md "wikilink"))。

为了简化Jupyter Notebook文档在Web上的可视化，nbconvert库是通过[nbviewer](https://nbviewer.org/)提供的一项服务，它可以获取任何公开可用的Notebook文档的URL，将其动态转换为HTML并显示给用户。 [缩略图](https://zh.wikipedia.org/wiki/File:IPython-notebook.png "fig:缩略图") Jupyter Notebook提供了一个基于浏览器的[REPL](https://zh.wikipedia.org/wiki/REPL "wikilink")，它建立在一些流行的开源库之上:

  - [IPython](../Page/IPython.md "wikilink")
  - [ØMQ](../Page/ØMQ.md "wikilink")
  - [Tornado](../Page/Tornado.md "wikilink")（Web服务器）
  - [jQuery](https://zh.wikipedia.org/wiki/jQuery "wikilink")
  - [Bootstrap](../Page/Bootstrap.md "wikilink")（前端框架）
  - MathJax

Jupyter Notebook可以连接到许多内核（默认情况下，IPython内核附带了Jupyter Notebook），从而允许使用多种语言进行编程。在2.3版本\[9\]\[10\]（2014年10月）中，目前有49个与Jupyter兼容的内核，可以用于许多编程语言，包括Python、R、Julia和Haskell。\[11\]

IPython在0.12版本（2011年12月）中添加了Notebook界面，2015年更名为Jupyter Notebook（IPython 4.0 - Jupyter 1.0）。\[12\]Jupyter Notebook类似于[Maple](../Page/Maple.md "wikilink")、[Mathematica和](https://zh.wikipedia.org/wiki/Mathematica "wikilink")[SageMath等程序的笔记本界面](https://zh.wikipedia.org/wiki/SageMath "wikilink")，SageMath是一种计算界面风格，起源于Mathematica在20世纪80年代。\[13\]据《[大西洋](../Page/大西洋_\(雜誌\).md "wikilink")》杂志报道，在2018年初，用户对Jupyter的兴趣超过了Mathematica Notebook界面的流行程度。\[14\]

### Jupyter Kernels

Jupyter Kernel是一个负责处理各种类型的请求（代码执行、代码补全、检查）和提供回复的程序。内核通过网络使用[ØMQ](../Page/ØMQ.md "wikilink")与Jupyter的其他组件通信，因此可以在相同的或远程的机器上。与许多其他类似于Notebook的接口不同，在Jupyter中，内核并不知道它们被附加到特定的文档，并且可以同时从多个客户机连接到它们。通常，内核是实现的，允许执行一种语言，但有几个例外。

默认情况下，Jupyter附带IPython作为默认内核，并通过ipykernel包装器提供引用实现。许多语言都有各种质量和特性的内核。

### JupyterHub

JupyterHub是一个用于Jupyter Notebook的多用户服务器。它通过生成、管理和代理许多单一的Jupyter Notebook服务器来支持许多用户。

### JupyterLab

JupyterLab是Jupyter项目的下一代用户界面。它在一个灵活且强大的用户界面中提供了经典的Jupyter Notebook（笔记本、终端、文本编辑器、文件浏览器、丰富输出等）所有熟悉的构建模块。第一个稳定版本于2018年2月20日发布。\[15\]

## 行业应用

Jupyter Notebook已经成为[云计算的一个流行的用户界面](../Page/雲端運算.md "wikilink")，主要的云提供商已经采用了Jupyter Notebook或其衍生工具作为云用户的前端界面。例如[亚马逊的SageMaker](https://zh.wikipedia.org/wiki/亚马逊 "wikilink") Notebook\[16\]、[谷歌的Colaboratory](https://zh.wikipedia.org/wiki/谷歌 "wikilink")\[17\]以及[微软](../Page/微软.md "wikilink")的Azure Notebooks\[18\]

### Colaboratory

Colaboratory（也称为Colab）是一个免费的Jupyter Notebook环境，它在云中运行，并将笔记本存储在[Google云端硬盘上](../Page/Google雲端硬碟.md "wikilink")。Colaboratory最初是Jupyter项目的一部分，\[19\]但最终被谷歌接管。\[20\]截止到2018年9月，Colaboratory只支持Python 2和Python 3内核，不支持其他Jupyter内核，比如Julia和R。

## 媒体报道

  - 2016年2月11日，[LIGO宣布](https://zh.wikipedia.org/wiki/LIGO "wikilink")[首次观测引力波](../Page/GW150914.md "wikilink")。这次发布了原始的科学数据以及包含Python代码的Jupyter Notebook文件，用于处理数据并从发现论文中复制数据。\[21\]
  - 2018年4月5日，[《大西洋》杂志发表了一篇名为](../Page/大西洋_\(雜誌\).md "wikilink")《科学论文过时了》的文章，讨论了Jupyter Notebook和[Mathematica](https://zh.wikipedia.org/wiki/Mathematica "wikilink") Notebook在未来科学出版中的作用。\[22\]这篇文章引起了包括经济学家[保罗·罗默](../Page/保罗·罗默.md "wikilink")在内的著名科学家和学者的回应。\[23\]

## 资助和奖励

  - 2012年，Fernando Pérez因其在IPython（Jupyter项目的前身）上的工作而获得[自由软件基金会](../Page/自由软件基金会.md "wikilink")的自由软件进步奖。
  - 2013年，IPython团队获得了[艾尔弗·斯隆基金会](../Page/艾爾弗·斯隆基金會.md "wikilink")115万美元的资助，\[24\]\[25\]该基金会资助了导致Jupyter项目诞生的早期工作。\[26\]
  - 2015年，Jupyter项目被资助来自Leona M.和Harry B. Helmsley慈善信托基金，Gordon和Betty Moore基金会以及艾尔弗·斯隆基金会的联合600万美元，资助工作导致的扩展功能核心Jupyter工具，以及JupyterLab的创建。\[27\]
  - 2018年5月2日，Jupyter项目指导委员会荣获2017年[ACM软件系统奖](https://zh.wikipedia.org/wiki/ACM软件系统奖 "wikilink")，这是一个年度奖项，它表彰“对技术概念和商业接受度方面产生了持久影响的软件系统”的个人或组织。\[28\]

## Jupyter

### Online

  - Binder\[29\]
  - Colaboratory\[30\]
  - Azure Notebooks\[31\]

### Windows

  - Jupyter Portable\[32\]
  - [Anaconda (Python distribution)](https://zh.wikipedia.org/wiki/Anaconda_\(Python_distribution\) "wikilink")

### Mac

  - [Anaconda (Python distribution)](https://zh.wikipedia.org/wiki/Anaconda_\(Python_distribution\) "wikilink")

### Linux

  - Jupyter Lab\[33\]
  - [Anaconda (Python distribution)](https://zh.wikipedia.org/wiki/Anaconda_\(Python_distribution\) "wikilink")

## 另请参阅

  - [GNU Octave](../Page/GNU_Octave.md "wikilink")
  - [IPython](../Page/IPython.md "wikilink")
  - [RStudio](../Page/RStudio.md "wikilink")
  - [Sage](../Page/Sage.md "wikilink")Math
  - [Scilab](../Page/Scilab.md "wikilink")
  - [Spyder](../Page/Spyder.md "wikilink")
  - [Wolfram Mathematica](../Page/Wolfram_Mathematica.md "wikilink")

## 参考文献

## 外部链接

  -
[Category:自由軟體組織](https://zh.wikipedia.org/wiki/Category:自由軟體組織 "wikilink") [Category:2015年建立的組織](https://zh.wikipedia.org/wiki/Category:2015年建立的組織 "wikilink") [Category:嵌入hAudio微格式的條目](https://zh.wikipedia.org/wiki/Category:嵌入hAudio微格式的條目 "wikilink")

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
16.
17.
18.
19.
20.
21.
22.
23.
24.
25.
26.
27.  Helmsley Charitable Trust|accessdate=2018-05-03|work=helmsleytrust.org|language=en}}
28.
29.
30.
31.
32.
33.