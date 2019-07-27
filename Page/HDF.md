**层级数据格式**（Hierarchical Data
Format：**HDF**）是设计用来存储和组织大量数据的一组文件格式（**HDF4**，**HDF5**）。它最初开发于美国[国家超级计算应用中心](../Page/国家超级电脑应用中心.md "wikilink")，现在由非营利社团HDF
Group支持，其任务是确保HDF5技术的持续开发和存储在HDF中数据的持续可访问性。

伴随着这个目标，HDF库和相关工具可在自由的类BSD许可证下获得用于一般使用。HDF被很多商业和非商业软件平台所支持，包括[Java](../Page/Java.md "wikilink")、[MATLAB](../Page/MATLAB.md "wikilink")、[Scilab](../Page/Scilab.md "wikilink")、[Octave](../Page/GNU_Octave.md "wikilink")、[Mathematica](https://zh.wikipedia.org/wiki/Mathematica "wikilink")、[IDL](../Page/互動式數據語言.md "wikilink")、[Python](../Page/Python.md "wikilink"),
[R](../Page/R语言.md "wikilink"),
[Fortran](../Page/Fortran.md "wikilink")和[Julia](../Page/Julia_\(编程语言\).md "wikilink")。可免费获得的HDF发行中包括了库，命令行实用程序，测试套件源代码，Java接口，和基于Java的HDF查看器（HDFView）\[1\]。

当前版本是HDF5，在设计和API上与主要的遗留版本HDF4有显著区别。

## 历史

在1987年由美国[国家超级计算应用中心](../Page/国家超级电脑应用中心.md "wikilink")（NCSA）的图形基础任务攻坚组（GFTF）着手建立一种架构无关的软件库和文件格式，致力于满足在NCSA当时使用的多种不同计算平台之间移动科学数据的需要。额外的目标还包括有效的存储和访问大对象的能力，在一个容器内存储不同类型的众多对象的能力，增长格式来容纳新类型的对象和对象元数据的能力，用C和Fortran二者的程序访问存储数据的能力。最初称为AEHOO（全包容层级面向对象格式），新软件和文件格式最终叫做层级数据格式（HDF）。HDF的设计组合了来自很多不同格式的想法，包括[TIFF](../Page/TIFF.md "wikilink")、[CGM](https://zh.wikipedia.org/wiki/CGM "wikilink")、[FITS](../Page/FITS.md "wikilink")和[Macintosh](https://zh.wikipedia.org/wiki/Macintosh "wikilink")
格式。这个计划在1990年和1992年收到了美国[国家科学基金会](https://zh.wikipedia.org/wiki/国家科学基金会 "wikilink")（NSF）的至关重要的拨款。大约1990年代早期[美国国家航空航天局](../Page/美国国家航空航天局.md "wikilink")（NASA）研究了用在地球观测系统（EOS）计划中的15种不同文件格式。在两年评述过程之后，HDF被选择为EOS数据和信息系统的标准格式。\[2\]

1996年[美国能源部的](https://zh.wikipedia.org/wiki/美国能源部 "wikilink")[劳伦斯利弗摩尔](../Page/勞倫斯利佛摩國家實驗室.md "wikilink")、[洛斯阿拉莫斯和](../Page/洛斯阿拉莫斯国家实验室.md "wikilink")[桑迪亚](../Page/桑迪亚国家实验室.md "wikilink")[国家实验室与NCSA抽调人员成立了数据建模和格式](../Page/美国能源部国家实验室.md "wikilink")（DMF）小组，研究满足高级模拟和计算规划（ASC）需要的[并行](https://zh.wikipedia.org/wiki/并行运算 "wikilink")[I/O能力的文件格式](https://zh.wikipedia.org/wiki/I/O "wikilink")。在NASA的额外支持下，三实验室与NCSA联合开发了第一版的HDF5并于1998年发行。在2003年，[R\&D杂志](https://www.rdmag.com)评选HDF5为“2002年一百个技术上最重要的新产品之一”。\[3\]

## HDF4

HDF4是这个格式的较老版本，它支持可增殖的不同数据模型，包括了多维数组、光栅图像和表格。每种都定义了特定的聚集数据类型，并提供一个[API用来读取](../Page/应用程序接口.md "wikilink")、写入、组织数据和元数据。HDF开发者和用户可以增加新数据模型。

HDF是自描述的，允许应用程序解释文件的结构和内容而不需要外部信息。一个HDF文件可以持有混合的有关联的对象，它们可以作为一个群组或作为个别对象来访问。用户可以建立自己的叫做“vgroups”的群组结构。

HDF4格式有很多限制\[4\]\[5\]。它缺乏清晰的对象模型，这导致持难于持续支持和改进。支持多种不同的接口风格（图像、表格、数组）导致了复杂的API。对元数据的支持依赖于使用的是哪个接口；SD（科学数据集）对象支持任意命名属性，而其他类型只支持预定义的元数据。可能最重要的是，使用32-bit位有符号整数寻址限制了HDF4文件大小极大为2GB，这在很多现代科学应用中是不可接受的。它仍被HDF
Group活跃支持着，可见于其[支持页面](https://portal.hdfgroup.org/display/HDF4/HDF4)。

## HDF5

[HDF-Structure-Example.gif](https://zh.wikipedia.org/wiki/File:HDF-Structure-Example.gif "fig:HDF-Structure-Example.gif")
HDF5格式被设计解决HDF4库的某些限制，并致力于满足现代系统和应用的当前和预期要求。

HDF5简化了文件结构，只包含两种主要的对象类型：

  - 数据集，它是同质类型的多维数组；
  - 群组，它是持有数据集和其他群组的容器结构。

这真正产生了层级的、类似文件系统的数据格式。事实上，在HDF5文件中的资源可以使用类似[POSIX语法的](https://zh.wikipedia.org/wiki/POSIX "wikilink")“/路径/至/资源”来访问。元数据以用户定义形式存储，命名属性附加到群组和数据集之上。表示图形和表格的更复杂存储API，可以接着使用数据集、群组和属性来建造起来。

除了这些在文件格式上的进步，HDF5包括了改进的类型系统，和表示在数据集区域上选择的数据空间对象。API是面向对象的，有关于数据集、群组、属性、类型、数据空间和特性列表。

最新版的[NetCDF](../Page/NetCDF.md "wikilink")版本4基于了HDF5。

由于它使用了[B树](../Page/B树.md "wikilink")来索引表格对象，HDF5有效工作于[时间序列数据](https://zh.wikipedia.org/wiki/时间序列 "wikilink")，比如股价序列，网络监控数据，和3D气象数据。大批量的数据直接进入数组（表格对象），它可以比[SQL](../Page/SQL.md "wikilink")数据库的行存储更快访问，而非数组数据可获得B树访问。HDF5数据存储机制比SQL[星模式](https://zh.wikipedia.org/wiki/星模式 "wikilink")（star
schema）更简单和快速。

### 批评

对HDF5的批评来源于它的单体设计和冗长规定。

  - HDF5不强制使用[UTF-8](../Page/UTF-8.md "wikilink")，所以客户应用可以在多数位置上预期ASCII码。
  - 在文件中的数据集数据不能释放，除非使用外部工具（h5repack）生成文件复本\[6\]。

## 接口

### 官方支持的API

  - [C](https://zh.wikipedia.org/wiki/C语言 "wikilink")
  - [C++](../Page/C++.md "wikilink")
  - [CLI](../Page/通用语言架构.md "wikilink") - .Net
  - [Fortran](../Page/Fortran.md "wikilink")，[Fortran
    90](https://zh.wikipedia.org/wiki/Fortran_90 "wikilink")
  - HDF5 Lite (H5LT) – 轻量级C接口
  - HDF5 Image (H5IM) – 图像和光栅的C接口
  - HDF5 Table (H5TB) – 表格的C接口
  - HDF5 Packet Table (H5PT) –
    处理“包”数据的C和[C++](../Page/C++.md "wikilink")接口，高速访问
  - HDF5 Dimension Scale (H5DS) – 允许向HDF5增加维度缩放
  - [Java](../Page/Java.md "wikilink")

### 第三方绑定

  - [CGNS](../Page/CGNS.md "wikilink")使用HDF5作为主存储。
  - [Common
    Lisp库](../Page/Common_Lisp.md "wikilink")[hdf5-cffi](https://github.com/HDFGroup/hdf5-cffi)。
  - [D语言提供](https://zh.wikipedia.org/wiki/D语言 "wikilink")[到C
    API的绑定](https://github.com/Laeeth/d_hdf5)，有着高层h5py风格的包装器正在开发。
  - [Dymola](https://www.3ds.com/products-services/catia/products/dymola)使用叫做科学数据格式（SDF）的实现支持HDF5导出，自从Dymola
    2016 FD01发行。
  - [Erlang](../Page/Erlang.md "wikilink")、[Elixir](../Page/Elixir.md "wikilink")和[LFE语言可以使用](https://zh.wikipedia.org/wiki/LFE_\(编程语言\) "wikilink")[BEAM语言绑定](https://github.com/RomanShestakov/erlhdf5)。
  - [GNU数据语言](https://zh.wikipedia.org/wiki/GNU数据语言 "wikilink")。
  - [Go](../Page/Go.md "wikilink")语言，通过[gonum](https://github.com/gonum)的[hdf5](https://github.com/gonum/hdf5)包。
  - [HDFql](http://www.hdfql.com)使用户能用C、C++、Java、Python、C\#、Fortran和R语言通过高层语言（类似SQL）管理HDF5文件。
  - [Huygens软件](https://svi.nl/HomePage)自从版本3.5使用HDF5作为主存储。
  - [IDL](../Page/互動式數據語言.md "wikilink")。
  - [IGOR
    Pro](https://www.wavemetrics.com/products/igorpro)提供对HDF5文件的完全支持\[7\]。
  - [JHDF5库](https://wiki-bsse.ethz.ch/display/JHDF5)，是一个可替代的[Java](../Page/Java.md "wikilink")绑定，采用了与官方HDF5
    Java绑定不同的方式，一些用户觉得更简单。
  - [jHDF库](http://jhdf.io)，一个纯[Java](../Page/Java.md "wikilink")实现，提供了对HDF5文件的只读访问。
  - [JSON](../Page/JSON.md "wikilink")，通过[hdf5-json](http://hdf5-json.readthedocs.org)。
  - [Julia语言通过](../Page/Julia_\(编程语言\).md "wikilink")[HDF5](https://github.com/julialang/HDF5.jl)包提供HDF5支持。
  - [LabVIEW](../Page/LabVIEW.md "wikilink")可以通过第三方库获得HDF支持，比如[h5labview](http://h5labview.sourceforge.net/)和[lvhdf5](http://www.upvi.net/main/index.php/products/lvhdf5)。
  - [Lua](../Page/Lua.md "wikilink")，通过[lua-hdf5](http://colberg.org/lua-hdf5)库。
  - [MATLAB](../Page/MATLAB.md "wikilink")、[Scilab](../Page/Scilab.md "wikilink")或[Octave](../Page/GNU_Octave.md "wikilink")，在新近发行中使用HDF5作为主存储格式。
  - [Mathematica](https://zh.wikipedia.org/wiki/Mathematica "wikilink")\[8\]提供HDF和HDF5数据的直接分析。
  - [Perl](../Page/Perl.md "wikilink")语言\[9\]。
  - [Python](../Page/Python.md "wikilink")语言通过[h5py](http://www.h5py.org)（对HDF5抽象的高层和低层访问二者）和通过[PyTables](https://pytables.github.io/index.html)（带有高级索引和类似数据库查询能力的高层接口）支持HDF5。通过[Python-HDF4](https://pypi.python.org/pypi/python-hdf4)和/或[PyHDF](http://hdfeos.org/software/pyhdf.php)对于Python
    2和Python
    3二者支持HDF4。流行的数据操纵包[pandas可以通过](https://zh.wikipedia.org/wiki/Pandas_\(软件\) "wikilink")导入和导出HDF5。
  - [R语言](../Page/R语言.md "wikilink")通过[rhdf5](http://bioconductor.org/packages/release/bioc/html/rhdf5.html)和[hdf5r](https://CRAN.R-project.org/package=hdf5r)包提供支持。
  - [Rust](../Page/Rust.md "wikilink")语言通过第三方库获得HDF支持，比如[hdf5](https://crates.io/crates/hdf5)。

## 工具

  - [HDF Product
    Designer](https://wiki.earthdata.nasa.gov/display/HPD/HDF+Product+Designer/)，可互操作的HDF5数据产品建立GUI工具
  - [HDF
    Explorer](http://www.space-research.org/)，可读取HDF、HDF5和netCDF的数据可视化程序
  - [HDFView](http://www.hdfgroup.org/hdf-java-html/hdfview/)，HDF文件的浏览器和编辑器
  - [ViTables](http://www.vitables.org/)，用Python写的HDF5和PyTables文件的浏览器和编辑器

## 参见

  - [通用数据格式](https://zh.wikipedia.org/wiki/通用数据格式 "wikilink") (CDF)
  - [FITS](../Page/FITS.md "wikilink")，用于天文学的数据格式
  - [GRIB](../Page/GRIB.md "wikilink") (GRIdded Binary)，用于气象学的数据格式
  - [HDF Explorer](../Page/HDF_Explorer.md "wikilink")
  - [NetCDF](../Page/NetCDF.md "wikilink")，Netcdf
    Java库使用纯Java读取HDF5、HDF4、HDF-EOS和其他格式
  - [Protocol
    Buffers](../Page/Protocol_Buffers.md "wikilink")，Google的数据交换格式

## 引用

## 外部链接

  -
  - [What is HDF5?](https://www.hdfgroup.org/solutions/hdf5/)

  - [HDF-EOS Tools and Information Center](http://hdfeos.org/)

  - [Open Navigation Surface](http://www.opennavsurf.org/)

  - [HDF5使用简介](http://www.nsmc.cma.gov.cn/FENGYUNCast/docs/HDF5.0_chinese.pdf)

[Category:C函式库](https://zh.wikipedia.org/wiki/Category:C函式库 "wikilink")
[Category:文件格式](https://zh.wikipedia.org/wiki/Category:文件格式 "wikilink")
[Category:地球科学数据格式](https://zh.wikipedia.org/wiki/Category:地球科学数据格式 "wikilink")
[Category:氣象數據和網絡](https://zh.wikipedia.org/wiki/Category:氣象數據和網絡 "wikilink")

1.  [Java-based HDF Viewer
    (HDFView)](http://www.hdfgroup.org/products/java/release/download.html)

2.

3.
4.  [How is HDF5 different from
    HDF4?](http://www.hdfgroup.org/h5h4-diff.html)

5.  [Are there limitations to HDF4
    files?](http://www.hdfgroup.org/HDF-FAQ.html#6b)

6.

7.  [Igor Pro includes extensive support for reading and writing HDF5
    files through an included HDF5
    package](https://www.wavemetrics.com/products/igorpro/dataaccess/hdf5).

8.  [FHDF Import and
    Export](http://reference.wolfram.com/mathematica/ref/format/HDF.html)Mathematica
    documentation

9.  [PDL::IO::HDF5](https://metacpan.org/release/PDL-IO-HDF5)