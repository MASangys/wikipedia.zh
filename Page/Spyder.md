**Spyder**（前身為**Pydee**）是一個使用[Python](../Page/Python.md "wikilink")語言的[開放原始碼](https://zh.wikipedia.org/wiki/開放原始碼 "wikilink")[跨平台](https://zh.wikipedia.org/wiki/跨平台 "wikilink")[科學運算](https://zh.wikipedia.org/wiki/計算科學 "wikilink")[集成開發環境](https://zh.wikipedia.org/wiki/集成開發環境 "wikilink")(IDE)。Spyder整合了[NumPy](../Page/NumPy.md "wikilink")，[SciPy](../Page/SciPy.md "wikilink")，[Matplotlib與](https://zh.wikipedia.org/wiki/Matplotlib "wikilink")[IPython](https://zh.wikipedia.org/wiki/IPython "wikilink")，以及其他开源软件。\[1\]\[2\]

與其他科學[數值分析專用IDE](https://zh.wikipedia.org/wiki/數值分析 "wikilink")（如[Matlab或](https://zh.wikipedia.org/wiki/Matlab "wikilink")[RStudio](../Page/RStudio.md "wikilink")）相比，Spyder有下列特色：開放原始碼，以Python編寫並且可以相容於非自由軟體授權。Spyder可以使用附加元件擴充，內建互動式工具以處理數據。跨平台的特性使得它可以通过[Anaconda](../Page/Anaconda_\(Python发行版\).md "wikilink")，[Winpython和](https://zh.wikipedia.org/wiki/Winpython "wikilink")[Python（x,y）](https://zh.wikipedia.org/wiki/Python（x,y） "wikilink")（Windows平台）。此外在主流的Linux发行版本例如[Ubuntu](../Page/Ubuntu.md "wikilink")、[Debian](../Page/Debian.md "wikilink")、[Fedora](../Page/Fedora.md "wikilink")、[OpenSUSE](../Page/OpenSUSE.md "wikilink")等等中都有它。

Spyder还可以通过绑定[PyQt](../Page/PyQt.md "wikilink")或[PySide来使用](https://zh.wikipedia.org/wiki/PySide "wikilink")[Qt](../Page/Qt.md "wikilink")。

## 特性\[3\]

  - **编辑器**：支持多语言，具有函数和类查看器，代码分析特性（pyflakes和pylint获得了支持），代码补全，水平与垂直视窗的分离，直接跳入定义等等。
  - **交互端口**：Python或IPython端口都在工作区可以调整和使用。支持对编辑器里的代码直接调试。此外整合了Matplotlib的图表显示。
  - **文档浏览器**：在编辑器或端口中显示任意类或函数调用的文档。
  - **可变的浏览窗口**：在文件的执行过程中可以创建可变的浏览窗口。同时也可以对其进行编辑。
  - **在文件中查找**：支持正则表达式与Mercurial仓库
  - **其他擴展使用**:
    Spyder也可以作为PyQt4/PySide的扩展使用（spyderlib模块）。例如，Spyder当中使用的Python交互端也可以被你用在自己的PyQt4/PySide程序中。
  - **文件浏览器**
  - **历史记录**

## Light Mode

Spyder也可以启动Light mode来运行一个轻量化的IDE。Light
mode是一个非常简单轻巧的环境，仅包含了可变的浏览窗口和解释端口。

Light mode已於Spyder 3.0.0版移除。\[4\]

## 独立性

如果你是通过[Python（x,y）](https://zh.wikipedia.org/wiki/Python（x,y） "wikilink")、[WinPython和](https://zh.wikipedia.org/wiki/WinPython "wikilink")[Anaconda](../Page/Anaconda.md "wikilink")安装的，那你就不需要去单独去安装下列组件。一般来说，这些组件都被上述的Python科学发行包囊括了。

### 独立编译

如果通过源代码编译安装，唯一的要求就是Python的版本应当高于2.6。（注意，Python 3.2并不被支持）

### 独立运行

你需要如下条件：

1.  Python 2.6, 2.7, 3.3 or 3.4
2.  PyQt4 4.6+, PySide 1.2.0+或PyQt5 5.2+（推荐使用PyQt4）

### 推荐模块

  - IPython 3.0+（一个增强型Python解释器）
  - Rope v0.9.4+或Jedi 0.8 +（支持编辑器的代码补全、调用提示以及转到定义）
  - Pyflakes v0.5.0+（进行实时代码分析）
  - Sphinx v0.6+（对象查看器支持富文本模式）
  - Matplotlib v1.0+（2D/3D绘图）
  - Pandas v0.13.1+（支持数据标签与数据系列）
  - Numpy（N维数组运算）
  - Scipy（信号与图像分析）

需要注意的一点是，在Ubuntu中使用IPython需要安装ipython-qtconsole，而在Fedora中需要ipython-gui，在
Gentoo中需要安装qt4 USE flag。

### 可选的模块

  - Pygments v1.6+（支持各种文件类型的代码高亮）
  - Pylint v0.25+（静态代码分析）
  - Pep8 v0.6+（代码风格分析）
  - Psutil v0.3+（CPU和内存使用状态条）

## 参见

  - [整合開發環境列表](../Page/整合開發環境列表.md "wikilink")

## 参考文献

## 外部链接

  - [官方网站](https://github.com/spyder-ide/spyder)

[Category:Python軟體](https://zh.wikipedia.org/wiki/Category:Python軟體 "wikilink")
[Category:集成开发环境](https://zh.wikipedia.org/wiki/Category:集成开发环境 "wikilink")
[Category:自由整合開發環境](https://zh.wikipedia.org/wiki/Category:自由整合開發環境 "wikilink")

1.
2.
3.  [特性介绍](https://github.com/spyder-ide/spyder)
4.