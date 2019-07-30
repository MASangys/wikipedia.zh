**MATLAB**（矩阵实验室）是**MAT**rix **LAB**oratory的缩写，是一款由美国[The MathWorks公司出品的商业](https://zh.wikipedia.org/wiki/The_MathWorks "wikilink")[数学软件](https://zh.wikipedia.org/wiki/数学软件 "wikilink")。MATLAB是一种用于[算法](../Page/算法.md "wikilink")开发、[数据可视化](../Page/数据可视化.md "wikilink")、[数据分析以及](https://zh.wikipedia.org/wiki/数据分析 "wikilink")[数值计算的高级技术计算语言和交互式环境](https://zh.wikipedia.org/wiki/数值计算 "wikilink")。除了[矩阵运算](https://zh.wikipedia.org/wiki/矩阵运算 "wikilink")、绘制函数/数据图像等常用功能外，MATLAB还可以用来创建[用户界面](../Page/用户界面.md "wikilink")及与调用其它语言（包括[C](https://zh.wikipedia.org/wiki/C语言 "wikilink")、[C++](../Page/C++.md "wikilink")、[Java](../Page/Java.md "wikilink")、[Python](../Page/Python.md "wikilink")和[FORTRAN](https://zh.wikipedia.org/wiki/FORTRAN "wikilink")）编写的程序。

尽管MATLAB主要用于数值运算，但利用为数众多的附加工具箱（Toolbox）它也适合不同领域的应用，例如控制系统设计与分析、图像处理、信号处理与通讯、金融建模和分析等。另外还有一个配套软件包[Simulink](../Page/Simulink.md "wikilink")，提供一个可视化开发环境，常用于系统模拟、动态/[嵌入式系统](../Page/嵌入式系统.md "wikilink")开发等方面。

## 历史

1970年代末到80年代初，时任[美国](../Page/美国.md "wikilink")[新墨西哥大學](../Page/新墨西哥大學.md "wikilink")教授的[克里夫·莫勒尔](../Page/克里夫·莫勒尔.md "wikilink")为了让学生更方便地使用[LINPACK](../Page/LINPACK.md "wikilink")及（需要通过FORTRAN编程来实现，但当时学生们并无相关知识），独立编写了第一个版本的MATLAB。这个版本的MATLAB只能进行简单的矩阵运算，例如矩阵转置、计算行列式和本征值，此版本软件分发出大约两三百份\[1\]\[2\]。

1984年，[杰克·李特](../Page/杰克·李特.md "wikilink")、[克里夫·莫勒尔](../Page/克里夫·莫勒尔.md "wikilink")和合作成立了[MathWorks公司](https://zh.wikipedia.org/wiki/邁斯沃克 "wikilink")，正式把MATLAB推向市场\[3\]\[4\]。MATLAB最初是由莫勒尔用FORTRAN编写的，李特和班格尔特花了约一年半的时间用C重新编写了MATLAB并增加了一些新功能，同时，李特还开发了第一个系统控制工具箱，其中一些代码到现在仍然在使用\[5\]。C语言版的面向[MS-DOS](../Page/MS-DOS.md "wikilink")系统的MATLAB 1.0在[拉斯维加斯](../Page/拉斯维加斯.md "wikilink")举行的IEEE決策与控制会议（IEEE Conference on Decision and Control）正式推出\[6\]\[7\]，它的第一份订单只售出了10份拷贝\[8\]，而到了现在，根据MathWorks自己的数据\[9\]，目前世界上180多个国家的超过三百万工程师和科学家在使用MATLAB和Simulink。

1992年，学生版MATLAB推出；1993年，[Microsoft Windows版MATLAB面世](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")；1995年，推出[Linux](../Page/Linux.md "wikilink")版\[10\]。

## 主要功能

MATLAB的主要提供以下功能\[11\]：

  - 可用于技术计算的高级语言
  - 可对代码、文件和数据进行管理的开发环境
  - 可以按迭代的方式探查、设计及求解问题的交互式工具
  - 可用于线性代数、统计、傅立叶分析、筛选、优化以及数值积分等的数学函数
  - 可用于可视化数据的二维和三维图形函数
  - 可用于构建自定义的图形用户界面的各种工具
  - 可将基于MATLAB的算法与外部应用程序和语言（如C、C++、Fortran、Java、COM以及Microsoft Excel）集成的各种函数

### 工具箱

MATLAB的一个重要特点是可扩展性。作为Simulink和其它所有MathWorks产品的基础，MATLAB可以通过附加的工具箱（Toolbox）进行功能扩展，每一个工具箱就是实现特定功能的函数的集合。MathWorks提供的工具箱分以下几大类\[12\]：

  - 数学和优化
  - 统计和数据分析
  - 控制系统设计和分析
  - 信号处理和通讯
  - 图像处理
  - 测试和测量
  - 金融建模和分析
  - 应用程序部署
  - 数据库连接和报表
  - 分布式计算

这些工具箱大多是用开放式的MATLAB语言写成，用户不但可以查看源代码，还可以可根据自己的需要进行修改以及创建自定义函数。此外，常有用户在[MATLAB Central: File Exchange](http://www.mathworks.com/matlabcentral/fileexchange/)发布自己编写的MATLAB程序或工具箱，供他人自由下载使用。

## MATLAB语言

MATLAB语言是一种交互性的数学脚本语言，其语法与C/C++类似。它支持包括逻辑（boolean）、数值（numeric）、文本（text）、函数柄（function handle）和异质数据容器（heterogeneous container）在内的15种数据类型，每一种类型都定义为矩阵或阵列的形式（0维至任意高维）\[13\]。

执行MATLAB代码的最简单方式是在MATLAB程序的命令窗口（Command Window）的提示符处（`>>`）输入代码，MATLAB会即时返回操作结果（如果有的话）。此时, MATLAB可以看作是一个交互式的数学[终端](https://zh.wikipedia.org/wiki/终端 "wikilink")，简单来说，一个功能强大的“计算器”。MATLAB代码同样可以保存在一个以*.m*为后缀名的文本文件中，然后在命令窗口或其它函数中直接调用。

### 变量与赋值

MATLAB的变量名字跟许多程序语言一样，严格区分大小写，例如，*var*、*VAR*和*Var*是三个不同的变量。另外，MATLAB中变量名字必须以字母为首字母，*3var*、*_var*等是非法的变量名。变量由赋值运算符（`=`）定义. MATLAB是[动态检查的](https://zh.wikipedia.org/wiki/类型系统#动态检查 "wikilink")，这意味着变量可以在未定义其类型的情况下赋值并且变量的类型也可以改变，除非将变量看做是符号对象\[14\]。变量值可以取自[常量](https://zh.wikipedia.org/wiki/常量 "wikilink")，计算中的其他变量的值，或某一函数的输出。例如：

``` matlab
>> x = 17
x =
 17

>> x = 'hat'
x =
hat

>> x = [3*4, pi/2]
x =
 12.0000 1.5708

>> y = 3*sin (x)
y =
   -1.6097 3.0000
```

### 向量和矩阵

MATLAB的意思是"矩阵实验室"，因此它提供了许多创建向量，矩阵和多维数组的便捷的方式。在MATLAB自己的语言中，一个*向量*（vector）指的是一维（1×*N*或*N*×1）矩阵，在其他语言中通常被叫做数组（array）。*矩阵*（matrix）通常指的是2-维数组，例如*m*×*n*数组其中*m*和*n*大于或等于1。多维数组通常指的是维数大于2的数组。

需要注意的是，虽然MATLAB用C语言重写，但是在矩阵存储方式上却和FORTRAN保持一致，两者使用的均为列优先存储，而非行优先存储。在进行较大的矩阵运算时，这一差别对性能的影响是不应忽略的。

MATLAB提供了定义简单数组的简单方式，使用语法：*初值*`:`*增量*`:`*终值*。例如：

``` matlab
>> array = 1:2:9
array =
 1 3 5 7 9
```

定义了一个名为`array`的变量（或向已存在的变量`array`赋予一个新值），其值为包含1, 3, 5, 7, 9的一个向量。即数组由1开始（*初值*），每次以增量2（*增量*）递增，当达到9（*终值*）时停止。

``` matlab
>> array = 1:3:9
array =
 1 4 7
```

在该语法中*增量*可被省略（这样仅剩一个冒号），这时增量采用默认值1。

``` matlab
>> ari = 1:5
ari =
 1 2 3 4 5
```

由于默认增量为1，上面的语句对变量`ari`用1, 2, 3, 4, 5的向量赋值。
在MATLAB内定义矩阵同样很简单，例如：

``` matlab
>> M = [1,2,3;4,5,6;7,8,9]
M =
     1     2     3
     4     5     6
     7     8     9
```


在MATLAB内存取矩阵元素同样非常简单，例如：

``` matlab
>> M = [1,2,3;4,5,6;7,8,9]
M =
     1     2     3
     4     5     6
     7     8     9
>> M（2,2）ans =
     5
>> M（2,:）ans =
     4     5     6
>> M（:,1）ans =
     1
     4
     7
>> M（2,2） = 10
M =
     1     2     3
     4    10     6
     7     8     9
```


若要對矩阵內所有元素做同樣的運算，如次方倍，則需要在運算元前面加上"."，例如：

``` matlab
>> M = [1,2,3;4,5,6;7,8,9]

>> M .^2
ans =
     1     4     9
    16    25    36
    49    64    81
```


若不在運算元前面加上"."則代表矩陣運算：

``` matlab
>> M = [1,2,3;4,5,6;7,8,9]
M ^2 = M * M =
    30    36    42
    66    81    96
   102   126   150
```

### 代数/符号运算

利用MATLAB的符号数学工具箱（Symbolic Math Toolbox）可以进行代数或符号运算，如分解多项式因子和解代数方程：

``` matlab
>> syms x y

>> A=x^3-3*x^2*y+3*x*y^2-y^3;

>> factor (A)
ans =
（x - y）^3
```

把多项式\(A = x^3 - 3x^2y + 3xy^2 - y^3\)简化成了\((x - y)^3\)。

``` matlab
>> solve（'x^2 - 2*x - 4 = 0'）ans =
 1 - 5^（1/2）
 5^（1/2） + 1
```

求得方程\(x^2 - 2x - 4 = 0\)的两个解为\(1 + \sqrt{5}\)和\(1 - \sqrt{5}\)。

## 图形和图形用户界面编程

MATLAB中常用的绘图命令是*plot*，例如描绘一个在\[-4,4\]区间内的正弦函数：

<table>
<tbody>
<tr class="odd">
<td><div class="sourceCode" id="cb1"><pre class="sourceCode matlab"><code class="sourceCode matlab"><span id="cb1-1"><a href="#cb1-1"></a>&gt;&gt; x = -<span class="fl">4</span>:<span class="fl">0.05</span>:<span class="fl">4</span>;</span>
<span id="cb1-2"><a href="#cb1-2"></a>&gt;&gt; y = sin (x);</span>
<span id="cb1-3"><a href="#cb1-3"></a>&gt;&gt; plot（x,y）</span></code></pre></div></td>
<td><p><a href="https://zh.wikipedia.org/wiki/File:sine_function.png" title="fig:sine_function.png">sine_function.png</a></p></td>
</tr>
</tbody>
</table>

利用*plot*命令也可以在同一幅图中描绘多个函数图形：

<table>
<tbody>
<tr class="odd">
<td><div class="sourceCode" id="cb1"><pre class="sourceCode matlab"><code class="sourceCode matlab"><span id="cb1-1"><a href="#cb1-1"></a>&gt;&gt; x = <span class="fl">0</span>:<span class="fl">.01</span>:<span class="fl">2</span>*pi;</span>
<span id="cb1-2"><a href="#cb1-2"></a>&gt;&gt; y1 = sin (x);</span>
<span id="cb1-3"><a href="#cb1-3"></a>&gt;&gt; y2 = sin（<span class="fl">2</span>*x）;</span>
<span id="cb1-4"><a href="#cb1-4"></a>&gt;&gt; y3 = sin（<span class="fl">4</span>*x）;</span>
<span id="cb1-5"><a href="#cb1-5"></a>&gt;&gt; plot（x, [y1; y2; y3]）</span>
<span id="cb1-6"><a href="#cb1-6"></a>&gt;&gt; legend（<span class="st">&#39;y=sin（x）&#39;</span>, <span class="st">&#39;y=sin (2x)&#39;</span>,<span class="st">&#39;y=sin (4x)&#39;</span>)</span></code></pre></div></td>
<td><p><a href="https://zh.wikipedia.org/wiki/File:Multiple_sine_function.png" title="fig:Multiple_sine_function.png">Multiple_sine_function.png</a></p></td>
</tr>
</tbody>
</table>

用MATLAB的画图命令可以生成复杂的三维图形：

<table>
<tbody>
<tr class="odd">
<td><div class="sourceCode" id="cb1"><pre class="sourceCode matlab"><code class="sourceCode matlab"><span id="cb1-1"><a href="#cb1-1"></a>&gt;&gt; t = linspace（<span class="fl">0</span>, <span class="fl">2</span>*pi, <span class="fl">512</span>）;</span>
<span id="cb1-2"><a href="#cb1-2"></a>&gt;&gt; [u,v] = meshgrid (t);</span>
<span id="cb1-3"><a href="#cb1-3"></a>&gt;&gt; a = -<span class="fl">0.4</span>; b = <span class="fl">.5</span>; c = <span class="fl">.1</span>;</span>
<span id="cb1-4"><a href="#cb1-4"></a>&gt;&gt; n = <span class="fl">3</span>;</span>
<span id="cb1-5"><a href="#cb1-5"></a>&gt;&gt; x =（a*(<span class="fl">1</span> - v/(<span class="fl">2</span>*pi）) .*（<span class="fl">1</span>+cos（u）) + c) .* cos（n*v）;</span>
<span id="cb1-6"><a href="#cb1-6"></a>&gt;&gt; y =（a*(<span class="fl">1</span> - v/(<span class="fl">2</span>*pi）) .*（<span class="fl">1</span>+cos（u）) + c) .* sin（n*v）;</span>
<span id="cb1-7"><a href="#cb1-7"></a>&gt;&gt; z = b*v/（<span class="fl">2</span>*pi） + a*（<span class="fl">1</span> - v/(<span class="fl">2</span>*pi）) .* sin (u);</span>
<span id="cb1-8"><a href="#cb1-8"></a>&gt;&gt; surf（x,y,z,y）</span>
<span id="cb1-9"><a href="#cb1-9"></a>&gt;&gt; axis off</span>
<span id="cb1-10"><a href="#cb1-10"></a>&gt;&gt; axis equal</span>
<span id="cb1-11"><a href="#cb1-11"></a>&gt;&gt; colormap（hsv（<span class="fl">1024</span>）)</span>
<span id="cb1-12"><a href="#cb1-12"></a>&gt;&gt; shading interp</span>
<span id="cb1-13"><a href="#cb1-13"></a>&gt;&gt; material shiny</span>
<span id="cb1-14"><a href="#cb1-14"></a>&gt;&gt; lighting phong</span>
<span id="cb1-15"><a href="#cb1-15"></a>&gt;&gt; camlight（<span class="st">&#39;left&#39;</span>, <span class="st">&#39;infinite&#39;</span>）</span>
<span id="cb1-16"><a href="#cb1-16"></a>&gt;&gt; view（[-<span class="fl">160</span> <span class="fl">25</span>]）</span></code></pre></div></td>
<td><p><a href="https://zh.wikipedia.org/wiki/File:Complex_3d_plot.png" title="fig:Complex_3d_plot.png">Complex_3d_plot.png</a></p></td>
</tr>
</tbody>
</table>

## 版本歷史

到7.1版为止，MATLAB的释放编号均以数字来命名，例如R7，R12.1，R14 SP1等；从7.2版开始，释放编号以年份来命名，每年3月份推出的用a表示，9月份推出的则以b表示，例如R2006a代表2006年3月推出的版本，R2009b指2009年下半年推出的版本\[15\]：

| 版本           | 发行编号   | 年份    |
| ------------ | ------ | ----- |
| MATLAB 1.0   | R?     | 1984年 |
| MATLAB 2     | R?     | 1986年 |
| MATLAB 3     | R?     | 1987年 |
| MATLAB 3.5   | R?     | 1990年 |
| MATLAB 4     | R?     | 1992年 |
| MATLAB 4.2c  | R7     | 1994年 |
| MATLAB 5.0   | R8     | 1996年 |
| MATLAB 5.1   | R9     | 1997年 |
| MATLAB 5.1.1 | R9.1   |       |
| MATLAB 5.2   | R10    | 1998年 |
| MATLAB 5.2.1 | R10.1  |       |
| MATLAB 5.3   | R11    | 1999年 |
| MATLAB 5.3.1 | R11.1  |       |
| MATLAB 6.0   | R12    | 2000年 |
| MATLAB 6.1   | R12.1  | 2001年 |
| MATLAB 6.5   | R13    | 2002年 |
| MATLAB 6.5.1 | R13SP1 | 2003年 |
| MATLAB 6.5.2 | R13SP2 |       |
| MATLAB 7     | R14    | 2004年 |
| MATLAB 7.0.1 | R14SP1 |       |
| MATLAB 7.0.4 | R14SP2 | 2005年 |
| MATLAB 7.1   | R14SP3 |       |
| MATLAB 7.2   | R2006a | 2006年 |
| MATLAB 7.3   | R2006b |       |
| MATLAB 7.4   | R2007a | 2007年 |
| MATLAB 7.5   | R2007b |       |
| MATLAB 7.6   | R2008a | 2008年 |
| MATLAB 7.7   | R2008b |       |
| MATLAB 7.8   | R2009a | 2009年 |
| MATLAB 7.9   | R2009b |       |
| MATLAB 7.10  | R2010a | 2010年 |
| MATLAB 7.11  | R2010b |       |
| MATLAB 7.12  | R2011a | 2011年 |
| MATLAB 7.13  | R2011b |       |
| MATLAB 7.14  | R2012a | 2012年 |
| MATLAB 8.0   | R2012b |       |
| MATLAB 8.1   | R2013a | 2013年 |
| MATLAB 8.2   | R2013b |       |
| MATLAB 8.3   | R2014a | 2014年 |
| MATLAB 8.4   | R2014b |       |
| MATLAB 8.5   | R2015a | 2015年 |
| MATLAB 8.6   | R2015b |       |
| MATLAB 9.0   | R2016a | 2016年 |
| MATLAB 9.1   | R2016b |       |
| MATLAB 9.2   | R2017a | 2017年 |
| MATLAB 9.3   | R2017b |       |
| MATLAB 9.4   | R2018a | 2018年 |
| MATLAB 9.5   | R2018b |       |
| MATLAB 9.6   | R2019a | 2019年 |

从2014a版起，Matlab界面支持中文\[16\]。

## 其它科学计算软件

### 商业软件

#### Maple

Maple是Waterloo Maple Inc.（简称Maplesoft）开发的商业计算机代数系统，用于快速计算、开发设计表单、教学基本概念或建立高保真模拟模型等。最新版本是2018年3月发布的Maple 2018.0，分Personal（个人版），Professional（专业版），Academic（学术版），Government（政府版）和Student（学生版）。

#### Mathematica

Mathematica是[斯蒂芬·沃爾夫勒姆开发的科学计算软件](https://zh.wikipedia.org/wiki/斯蒂芬·沃爾夫勒姆 "wikilink")，开发工作现由Wolfram Research公司负责。最新版本是2018年3月8日发布的Mathematica 11.3.0。\[17\]

#### LabVIEW

LabVIEW是[美国国家仪器公司开发的可视化编程平台](../Page/國家儀器.md "wikilink")，主要用于[数据采集](https://zh.wikipedia.org/wiki/数据采集 "wikilink")，[仪器控制和](https://zh.wikipedia.org/wiki/仪器控制 "wikilink")[工业自动化](https://zh.wikipedia.org/wiki/工业自动化 "wikilink")。最新版本是2017年8月发布的LabVIEW 2017。

### 开源软件

#### FreeMat

FreeMat是一个与MATLAB和[互動式數據語言](../Page/互動式數據語言.md "wikilink")（IDL）很类似的数值计算平台及程序语言。最新版本是2009年10月发布的FreeMat 4.0

#### GNU Octave

GNU Octave是一种主要用于数值计算的高级语言。它除了提供用数值方法解决线性和非线性问题的命令行界面，还提供了一种与MATLAB大抵兼容的语言。最新版本是2015年3月29日发布的4.0.0。

#### Scilab

Scilab是一个交互性的数值运算平台，主要用于工程和科学应用方面，例如航空航天、汽车、能源、金融、化学、生物、医学、国防等。最新版本是5.4.0。

#### ScicosLab

是由一些曾在[INRIA和](https://zh.wikipedia.org/wiki/INRIA "wikilink")[ENPC参与](https://zh.wikipedia.org/wiki/ENPC "wikilink")[Scilab](../Page/Scilab.md "wikilink")开发的研究人员，在Scilab BUILD4版本的基础上开发出來的GTK+版本，它集成了建模/模拟工具Scicos及其它数量众多的工具箱，被认为是“惟一一款可以与商业软件MATLAB/Simulink及MATRIXx/SysstemBuild媲美的开源软件”。最新稳定版本是4.4.1。

#### JAMA

()，一种[Java](../Page/Java.md "wikilink")语言编程工具包。目前最新1.0.3版本，是2012年11月9日发布的。

#### NumPy與SciPy

NumPy是[Python](../Page/Python.md "wikilink")語言的一個擴充程式庫。支援高階大量的維度陣列與[矩陣運算](https://zh.wikipedia.org/wiki/矩陣 "wikilink")，此外也針對陣列運算提供大量的數學函式[函式庫](../Page/函式庫.md "wikilink")。

SciPy是一個[開源](https://zh.wikipedia.org/wiki/開源 "wikilink")，基於NumPy的Python演算法庫和數學工具包，包含的模組有[最佳化](https://zh.wikipedia.org/wiki/最佳化 "wikilink")、[線性代數](https://zh.wikipedia.org/wiki/線性代數 "wikilink")、[積分](https://zh.wikipedia.org/wiki/積分 "wikilink")、[插值](../Page/插值.md "wikilink")、特殊函式、[快速傅立葉變換](https://zh.wikipedia.org/wiki/快速傅立葉變換 "wikilink")、[訊號處理和](https://zh.wikipedia.org/wiki/訊號處理 "wikilink")[圖像處理](https://zh.wikipedia.org/wiki/圖像處理 "wikilink")、[常微分方程](../Page/常微分方程.md "wikilink")求解和其他科學與工程中常用的計算。

#### Julia

Julia是一种[高级](https://zh.wikipedia.org/wiki/高级语言 "wikilink")[通用語言](../Page/通用编程语言.md "wikilink")。

## 注释

## 参考文献

### 引用

## 外部链接

  - [MATLAB官方網站](http://www.mathworks.com/products/matlab/)
  - [MATLAB中文论坛](https://web.archive.org/web/20180411123256/http://www.ilovematlab.com/)
  - [Matlab技术论坛](http://www.matlabsky.com)
  - [寻找知名商业软件的开源替代品](https://web.archive.org/web/20090217213807/http://www.osalt.com/cn/)
  - [基于MATLAB实现的全局优化算法](https://web.archive.org/web/20090319230318/http://biomath.ugent.be/~brecht/downloads.html)：SIMPSA（SA和单纯的组合），洗牌复杂的演化（SCA）和粒子群优化（PSO）。
  - [線上執行Matlab語法](http://www.compileonline.com/execute_matlab_online.php)
  - [矩阵实验室（MATLAB）新浪微博](http://www.weibo.com/mathworks)

## 参见

  - [Maple](../Page/Maple.md "wikilink")
  - [Maxima](../Page/Maxima.md "wikilink")
  - [Mathematica](https://zh.wikipedia.org/wiki/Mathematica "wikilink")
  - [GNU Octave](../Page/GNU_Octave.md "wikilink")
  - [Scilab](../Page/Scilab.md "wikilink")
  - [R語言](https://zh.wikipedia.org/wiki/R語言 "wikilink")
  - [Origin](https://zh.wikipedia.org/wiki/Origin_\(數據分析軟體\) "wikilink")
  - [Spyder](../Page/Spyder.md "wikilink")
  - [基於模型的設計](../Page/基於模型的設計.md "wikilink")

{{-}}

[Category:数学软件](https://zh.wikipedia.org/wiki/Category:数学软件 "wikilink") [Category:程序设计语言](https://zh.wikipedia.org/wiki/Category:程序设计语言 "wikilink") [Category:图表软件](https://zh.wikipedia.org/wiki/Category:图表软件 "wikilink")

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