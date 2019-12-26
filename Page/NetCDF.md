**网络通用数据格式**（，**NetCDF**）是一种自描述、与机器无关、基于[数组](../Page/数组.md "wikilink")的科学数据格式，同时也是支持创建、访问和共享这一数据格式的[函式库](../Page/函式庫.md "wikilink")。该项目主页位于美国[大气科学研究大学联盟](../Page/大气科学研究大学联盟.md "wikilink")（UCAR）的Unidata规划网站。它也是netCDF软件、标准开发、更新等的主要来源。NetCDF格式是一种开放标准。NetCDF的经典格式和64位偏移量格式是[开放地理空间协会](../Page/开放地理空间协会.md "wikilink")采用的国际标准\[1\]。

该项目开始于1989年，UCAR目前对其积极支持，在新发行版中改进性能、增加功能并修正缺陷，当前版本系列是netCDF-4，在编译时也可以选择只建造netCDF-3库\[2\]。

## 历史

1985年[美国国家航空航天局](../Page/美国国家航空航天局.md "wikilink")（NASA）的国家空间科学数据中心（NSSDC）设计并开发了[通用数据格式](https://zh.wikipedia.org/wiki/通用数据格式 "wikilink")（CDF），CDF最初是用FORTRAN写成并只能在[VAX](../Page/VAX.md "wikilink")/[VMS环境下获得](https://zh.wikipedia.org/wiki/VMS "wikilink")\[3\]。Unidata在1987年8月成立了关于CDF的工作组，提议探索与NASA协作扩展CDF的FORTRAN接口，定义C接口，并允许用一个单一调用访问数据聚集，同时要维持与现存NASA接口兼容的可能性。在1988年早些时候，Unidata的Glenn Davis用C开发了原型netCDF包，它位于[网络](../Page/计算机网络.md "wikilink")[表示层](https://zh.wikipedia.org/wiki/表示层 "wikilink")[XDR格式的上层](../Page/外部数据表示法.md "wikilink")\[4\]。这个原型证明了CDF接口的基于XDR的一个单一文件实现可以在可接受代价下完成，而结果的程序可以在[UNIX](../Page/UNIX.md "wikilink")和[VMS系统二者上实现](https://zh.wikipedia.org/wiki/VMS "wikilink")。但这也说明了提供一个小的、可移植的、兼容于NASA CDF的有想要的通用性的FORTRAN接口是不实际的。NASA的CDF和Unidata的netCDF从此独立发展，但新近的CDF版本与netCDF共享了很多特征。\[5\]

1991年Unidata发布了netCDF版本2.0，1997年发布了版本3.3。2003年7月[美国能源部的](https://zh.wikipedia.org/wiki/美国能源部 "wikilink")[阿贡](../Page/阿贡国家实验室.md "wikilink")[国家实验室和](../Page/美国能源部国家实验室.md "wikilink")[西北大学贡献了叫做并行](../Page/西北大学_\(伊利诺伊州\).md "wikilink")-NetCDF（或称PnetCDF）的一个netCDF[并行计算](../Page/并行计算.md "wikilink")扩展\[6\]。2004年在NASA的资助下，Unidata与美国[国家超级计算应用中心](../Page/国家超级电脑应用中心.md "wikilink")（NCSA）开始合作增进netCDF和[HDF5的互操作性](https://zh.wikipedia.org/wiki/HDF5 "wikilink")。2008年Unidata发布了版本4.0，允许使用[HDF](../Page/HDF.md "wikilink")5数据文件格式。同时发布了版本3.6.3，它与版本4.0是同样的代码但关掉了netcdf-4特征，目前netCDF-3库仍然在世界各地被广泛使用。2010年Unidata发布了版本4.1.1，增加了对C和Fortran客户端通过访问远程数据的特定子集的支持，并使用PnetCDF库支持在netCDF经典格式（CDF-1、CDF-2和2012年推出的CDF-5）上的并行I/O。\[7\]

## 格式描述

netCDF库支持netCDF文件的多种不同的二进制格式\[8\]：

  - 在最初netCDF发行中使用的经典格式CDF-1，它仍是文件建立的缺省格式。
  - 在版本3.6.0中介入的64-bit偏移量格式CDF-2，它支持更大的变量和文件大小。
  - 在版本4.0中介入的netCDF-4/HDF5格式，它是带有一些限制的HDF5数据格式\[9\]。
  - 在版本4.1中开始支持对HDF4 SD格式的只读访问\[10\]。
  - 在版本4.4.0中介入了CDF-5格式，协同于并行-netcdf计划的规定\[11\]。

所有格式都是“[自描述的](../Page/元数据.md "wikilink")”。 这意味其中有一个[头部](https://zh.wikipedia.org/wiki/信头 "wikilink")，它描述文件余下部分的格局，特别是[数组](../Page/数组.md "wikilink")数据，连同以名称/值[属性形式的任意文件元数据](https://zh.wikipedia.org/wiki/属性_\(计算机\) "wikilink")。这个格式是[跨平台的](https://zh.wikipedia.org/wiki/跨平台 "wikilink")，涉及的问题如[字节序](../Page/字节序.md "wikilink")在[软件库中解决](https://zh.wikipedia.org/wiki/软件库 "wikilink")。数据以允许有效的构造子集的方式来存储。

起始于版本4.0，netCDF API允许使用[HDF5数据格式](https://zh.wikipedia.org/wiki/HDF5 "wikilink")\[12\]。NetCDF用户可以建立HDF5文件从而获得netCDF格式不具备的利益，比如更大的文件和多重无限制的维度。

完全后向兼容，可访问旧有netCDF文件并支持以前版本的C和Fortran API。

## 软件

netCDF常用于[气候学](https://zh.wikipedia.org/wiki/气候学 "wikilink")、[气象学](../Page/气象学.md "wikilink")和[海洋学](../Page/海洋学.md "wikilink")应用，如[天气预报](../Page/天气预报.md "wikilink")、[气候变化](https://zh.wikipedia.org/wiki/气候变化 "wikilink")；也用于[地理信息系统](../Page/地理信息系统.md "wikilink")应用，是很多GIS应用的输入/输出格式；并用于通用科学数据交换。从它的站点引述如下\[13\]：netCDF（网络公用数据格式）是用于面向数组数据访问的一组接口，和针对C、Fortran、C++、Java和其他语言的一套自由发行的数据访问库。netCDF库支持用来表示科学数据的一种机器无关格式。接口、库和格式一起支持建立、访问和共享科学数据。

### 访问库

UCAR发布的软件库提供了对netCDF文件的读写访问，编码和解码所需的数组和元数据。核心库是用[C编写的](https://zh.wikipedia.org/wiki/C语言 "wikilink")，并为 C、[C++](../Page/C++.md "wikilink")应用提供[API](../Page/应用程序接口.md "wikilink")，为[Fortran](../Page/Fortran.md "wikilink")应用提供两个API，一个给[Fortran 77](https://zh.wikipedia.org/wiki/Fortran_77 "wikilink")，一个给[Fortran 90](https://zh.wikipedia.org/wiki/Fortran_90 "wikilink")。Unidata还开发维护一个独立实现，使用100% [Java](../Page/Java.md "wikilink")写成，它扩展了核心数据模型并增加了额外的功能。还可获得其他语言的到基于C库的netCDF的接口，包括[R](../Page/R语言.md "wikilink")（ncdf\[14\]、ncvar和RNetCDF\[15\]包）、、[Python](../Page/Python.md "wikilink")、[Ruby](../Page/Ruby.md "wikilink")、[Haskell](../Page/Haskell.md "wikilink")\[16\]、[Mathematica](https://zh.wikipedia.org/wiki/Mathematica "wikilink")、[MATLAB](../Page/MATLAB.md "wikilink")、[IDL和](../Page/互動式數據語言.md "wikilink")[Octave](../Page/GNU_Octave.md "wikilink")。API调用规定在不同语言间非常类似，尽管有着不可避免的不同语法。版本2的API调用与版本3的调用相当不同，但出于后向兼容而被版本3和版本4支持。应用编程者使用受支持语言，在正常情况下不需要关心文件结构自身，即使它是作为开放格式而获得的。

### 应用

现在已经写出了使用netCDF文件的范围广泛的应用程序。它们的范围从[命令行实用程序到图形](https://zh.wikipedia.org/wiki/命令行 "wikilink")[可视化包](../Page/信息图形.md "wikilink")。下面列出其中一小部分，而更长的列表可见于UCAR网站列表\[17\]：

  - [NetCDF算子](https://zh.wikipedia.org/wiki/NetCDF算子 "wikilink")（[NCO](http://nco.sourceforge.net/)）套件是针对netCDF文件的常用[Unix命令行实用工具集](https://zh.wikipedia.org/wiki/Unix "wikilink")，它提供一套命令来操纵和分析netCDF文件，包括基本记录[串接](https://zh.wikipedia.org/wiki/串接 "wikilink")、[数组分片和](https://zh.wikipedia.org/wiki/数组分片 "wikilink")[平均](https://zh.wikipedia.org/wiki/平均 "wikilink")。
  - [ncview](http://meteora.ucsd.edu/~pierce/ncview_home_page.html)是netCDF格式文件的可视浏览器。这个程序是可视化在netCDF文件中的场的简单、快速、基于GUI的工具。
  - [NCAR命令语言](http://www.ncl.ucar.edu)（NCL）可用来分析和可视化netCDF中的数据（还支持其他格式）。
  - [网格分析和显示系统](https://zh.wikipedia.org/wiki/GrADS "wikilink")（[GrADS](http://cola.gmu.edu/grads/)）是交互式桌面工具，用来容易的访问、操纵和可视化地球科学数据。
  - [Python](../Page/Python.md "wikilink")语言访问netCDF文件可以用PyNIO模块（还支持其他格式）\[18\]；还可以用Python模块`netCDF4-python`来读取\[19\]；还可以用`xarray`模块变成类似[pandas的](https://zh.wikipedia.org/wiki/pandas_\(软件\) "wikilink")`DataFrame`\[20\]。
  - [R语言](../Page/R语言.md "wikilink")通过包来支持netCDF，包括ncdf4（也支持HDF5）\[21\]，和RNetCDF（不支持HDF5）\[22\]。
  - [地理数据抽象库](https://zh.wikipedia.org/wiki/GDAL "wikilink")（[GDAL](https://gdal.org/)）提供对netCDF数据的读写访问支持\[23\]。
  - [Panoply](http://www.giss.nasa.gov/tools/panoply/)是netCDF文件查看器，它关注地理网格数据的表示。它是用[Java](../Page/Java.md "wikilink")写成因而跨平台。
  - [ECMWF的](https://zh.wikipedia.org/wiki/欧洲中期天气预报中心 "wikilink")[Metview](https://confluence.ecmwf.int/display/METV)工作站和批处理系统可以处理NetCDF和[GRIB](../Page/GRIB.md "wikilink")及[BUFR](https://zh.wikipedia.org/wiki/BUFR "wikilink")。
  - [Ferret](https://ferret.pmel.noaa.gov/Ferret/)是交互式计算机可视化和分析环境，设计用来满足海洋学者和气象学者分析巨大而且复杂的网格数据。
  - [HDFql](http://www.hdfql.com)使用户能在C、C++、Java、Python、C\#、Fortran和R语言中通过高层语言（类似SQL）来管理netCDF-4/HDF5文件。

## 元数据约定

气候和预报（CF）约定是对[地球科学](../Page/地球科学.md "wikilink")数据的元数据约定，意图用于促进处理和共享通过NetCDF应用编程接口（API）建立的文件。CF约定于2003年建立，普遍化并扩展了早期的协作[海](../Page/海.md "wikilink")洋/[大气研究数据服务](../Page/地球大气层.md "wikilink")（[COARDS](https://ferret.pmel.noaa.gov/Ferret/documentation/coards-netcdf-conventions)）约定和对[气候数据的Gregory](https://zh.wikipedia.org/wiki/气候 "wikilink")/Drach/Tett（GDT）约定\[24\]。CF约定定义了与数据包含在同一个文件中的元数据，从而使得文件“自我描述”，提供对在每个变量中的数据表示的是什么的确切描述，和数据的[空间的和](https://zh.wikipedia.org/wiki/空间 "wikilink")[时间](../Page/时间.md "wikilink")的属性的确切描述，包括关于网格的信息，比如网格单元边界和单元平均方法。这使得能够使用来自不同来源的数据，确定哪些数据是可比较的，并允许建造有着强力的提取、重新插值和显示能力的应用。Unidata 在2007年至2011年开发了[LibCF库](https://www.unidata.ucar.edu/software/libcf/html/)。

## 并行-NetCDF

并行-NetCDF扩展建造在[MPI-IO之上](https://zh.wikipedia.org/wiki/MPI-IO "wikilink")，它是对[MPI的](https://zh.wikipedia.org/wiki/消息传递接口 "wikilink")[I/O扩展](https://zh.wikipedia.org/wiki/I/O "wikilink")。使用高层netCDF数据结构，并行-NetCDF库可以进行优化而在多处理器间高效分配文件读和写应用。并行-NetCDF包只可以读/写经典和64-bit偏移量格式。并行-NetCDF不能读或写在netCDF-4.0中可获得的基于HDF5的格式。并行-NetCDF包使用不同但类似的Fortran和C的API。

在Unidata netCDF库中自从版本4.0已经支持对HDF5数据文件的并行I/O。Unidata NetCDF C库自从版本4.1.1使用并行-NetCDF库支持对经典和64-bit偏移量文件的并行 I/O，但使用NetCDF API。

## 与其他格式库的互操作性

netCDF C库，和基于它的库：Fortran 77和Fortran 90、C++和所有第三方库，自从版本4.1.1开始可以读一些其他数据格式的数据。[HDF5格式的数据可以读取](https://zh.wikipedia.org/wiki/HDF5 "wikilink")，但有一些限制\[25\]。使用HDF4科学数据（SD）API建立的[HDF4格式的数据](https://zh.wikipedia.org/wiki/HDF4 "wikilink")，可以用netCDF C库读取。

## NetCDF-Java通用数据模型

NetCDF-Java库目前已经能够读取很多文件格式和远程访问协议，并且正在开发对一些其他的格式的支持。因为这些都是通过NetCDF API透明的进行访问，NetCDF-Java库被称为实现了科学数据集的“通用数据模型”。

## 参见

  - [通用数据格式](https://zh.wikipedia.org/wiki/通用数据格式 "wikilink") (CDF)
  - [CGNS](../Page/CGNS.md "wikilink") ([CFD](../Page/计算流体力学.md "wikilink") General Notation System)
  - [EAS3](https://zh.wikipedia.org/wiki/EAS3 "wikilink") (Ein-Ausgabe-System)
  - [FITS](../Page/FITS.md "wikilink") (Flexible Image Transport System)
  - [GRIB](../Page/GRIB.md "wikilink") (GRIdded Binary)
  - [层级数据格式](https://zh.wikipedia.org/wiki/层级数据格式 "wikilink")（HDF）

<!-- end list -->

  - [OPeNDAP](https://zh.wikipedia.org/wiki/OPeNDAP "wikilink") 客户-服务器协议
  - [Tecplot](https://zh.wikipedia.org/wiki/Tecplot "wikilink") 二进制文件
  - [XMDF](https://zh.wikipedia.org/wiki/XMDF "wikilink") (eXtensible Model Data Format)

## 引用

## 外部链接

  -
  - [CF Metadata Home Page](https://cf-convention.github.io/)

  - [PnetCDF: A Parallel I/O Library for NetCDF File Access](https://parallel-netcdf.github.io/)

  - [netCDF-Java project](http://www.unidata.ucar.edu/software/netcdf-java/) at UCAR

[Category:文件格式](https://zh.wikipedia.org/wiki/Category:文件格式 "wikilink") [Category:地球科学数据格式](https://zh.wikipedia.org/wiki/Category:地球科学数据格式 "wikilink") [Category:氣象數據和網絡](https://zh.wikipedia.org/wiki/Category:氣象數據和網絡 "wikilink") [Category:地球科學圖形軟體](https://zh.wikipedia.org/wiki/Category:地球科學圖形軟體 "wikilink")

1.
2.  [Building netCDF with Classic Library Only](https://www.unidata.ucar.edu/software/netcdf/docs/getting_and_building_netcdf.html#build_classic).
3.  [What are the differences between CDF and netCDF, and CDF and HDF?](https://cdf.gsfc.nasa.gov/html/FAQ.html)
4.  [File Structure and Performance: The Extended XDR Layer](https://www.unidata.ucar.edu/software/netcdf/docs/file_structure_and_performance.html#xdr_layer).
5.
6.
7.
8.  [The netCDF File Format](https://www.unidata.ucar.edu/software/netcdf/docs/netcdf_introduction.html#netcdf_format).
9.  [File Structure and Performance: Parts of a NetCDF-4 HDF5 File](https://www.unidata.ucar.edu/software/netcdf/docs/file_structure_and_performance.html#parts_of_netcdf4).
10. [Appendix B. File Format Specifications: HDF4 SD Format](https://www.unidata.ucar.edu/software/netcdf/docs/file_format_specifications.html#hdf4_sd_format).
11. [CDF-5 file format specification](http://cucis.ece.northwestern.edu/projects/PnetCDF/CDF-5.html).
12.
13.
14.
15.
16.
17.
18.
19.
20.
21. David Pierce (2014). ncdf4: Interface to Unidata netCDF (version ) format data files. R package version 1.13. <https://cran.r-project.org/package=ncdf4>
22. Pavel Michna and with contributions from Milton Woods (2015). RNetCDF: Interface to NetCDF Datasets. R package version 1.7-3. <https://cran.r-project.org/package=RNetCDF>
23.
24. [NetCDF Conventions](https://www.unidata.ucar.edu/software/netcdf/conventions.html).
25. [File Structure and Performance: Interoperability with HDF5](https://www.unidata.ucar.edu/software/netcdf/docs/file_structure_and_performance.html#interoperability_with_hdf5).