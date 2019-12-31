> 本文内容由[GRIB](https://zh.wikipedia.org/wiki/GRIB)转换而来。


**GRIB**（GRIdded Binary或通用定期发布的二进制形式信息）是通常用在[气象学](../Page/气象学.md "wikilink")中存储历史的和[预报的天气数据的简明数据格式](../Page/天气预报.md "wikilink")。它由[世界气象组织](../Page/世界气象组织.md "wikilink")的基本系统委员会于1985年标准化，描述于WMO编码手册（出版物No.306），最初编号为FM 92-VIII Ext. GRIB。 第一版GRIB被世界范围内的多数气象中心业务化使用，用于[数值天气预报](https://zh.wikipedia.org/wiki/数值天气预报 "wikilink")（NWP）输出。第二版是2003年发表的GRIB2，最新编号为FM 92–XIV GRIB，气象数据发布逐渐的变更到这个格式。

## 概述

GRIB是国际公用的二进制格式，用来有效的存储[气象](https://zh.wikipedia.org/wiki/气象 "wikilink")/[海](../Page/海.md "wikilink")洋的[物理量](../Page/物理量.md "wikilink")[场和描述它们的](../Page/场_\(物理\).md "wikilink")[元数据](../Page/元数据.md "wikilink")。GRIB数据文件典型的由记录的搜集组成，即多个GRIB记录可以串联在一起形成一个单一数据集。GRIB记录是自描述数据对象，每个记录都不只包含数据，而且包含描述空间网格、有效时间、垂直层次的元数据，故而把它们合并成数据文件的次序是任意的。每个GRIB记录典型的包含特定时间和垂直层次的一个2-D[经纬度](../Page/经纬度.md "wikilink")[坐标的数据网格](https://zh.wikipedia.org/wiki/坐标系 "wikilink")，4-D GRIB数据集一般展开为时间或垂直层次不同的一组2-D记录。GRIB2相比于GRIB，有着更加复杂的头部字段集合用于元数据，还提供了可以更加显著缩小文件大小的[数据压缩](../Page/数据压缩.md "wikilink")；GRIB2记录还可以包含集合（ensemble）信息，适合于传输产品。\[1\]

## 网格数据包装

在WMO的GRIB2指南文档中举实例说明GRIB2报文（message）格式，选用了假想的500 [hPa的](../Page/帕斯卡.md "wikilink")[位势高度](https://zh.wikipedia.org/wiki/位势高度 "wikilink")5 X 5网格，这25个高度值的范围是从极小值5340位势米（gpm）到极大值5460 gpm。演示了采用简单包装方案的编码过程。第一步：数值的单位位势米（gpm）是[SI单位](https://zh.wikipedia.org/wiki/SI单位 "wikilink")，不需要转换。第二步：采用计算“字”位长度的方法，要求精度值D为1，即精确到小数点后1位，把所有值都缩放10<sup>D</sup>并[取整为整数](../Page/取整函数.md "wikilink")，结果范围从53400到54600。第三步：取参照值R为53400，所有网格值都减去这个参照值，余值范围是从0至1200。第四步：确定要表示极大余值1200需要的二进制位数，这里是11位。第五步：所有的余值都包装入11位长的“字”中，25个值总共需要275位长，等价于34字节加上3位，再用0填充5位最终形成35字节。解码过程通过参照值R和精度值D把包装后的值恢复为最初的值。这种从[浮点数](../Page/浮点数.md "wikilink")转换成[定点数](../Page/定点数.md "wikilink")的包装方法可以初步缩减数据大小，也可称为是一种[数据压缩](../Page/数据压缩.md "wikilink")；GRIB2支持在此基础上的[PNG](../Page/PNG.md "wikilink")和[JPEG2000压缩](https://zh.wikipedia.org/wiki/JPEG2000 "wikilink")。

## 文件格式

一个GRIB文件中可以有多个GRIB报文，每个报文开始于文字“GRIB”结束于文字“7777”，二者之间都是二进制的元数据和数据。GRIB报文结构与大多数气象报文比如GRID（FM 47）一样，划分为多个节（section）：

| GRIB1               | GRIB2           |
| ------------------- | --------------- |
| SECTION 0 指示符节      | SECTION 0 指示符节  |
| SECTION 1 产品定义节     | SECTION 1 标识节   |
| SECTION 2 局部使用节（可选） |                 |
| SECTION 2 网格描述节（可选） | SECTION 3 网格定义节 |
|                     | SECTION 4 产品定义节 |
| SECTION 5 数据表示节     |                 |
| SECTION 3 位图节（可选）   | SECTION 6 位图节   |
| SECTION 4 二进制数据节    | SECTION 7 数据节   |
| SECTION 5 结束节       | SECTION 8 结束节   |

GRIB1的第2节，GRIB2的第1、3、4、5、7节，可在多个模板中选用其一，这里模板的含义是：“对一组数据实体的标准化格局的描述”\[2\]。在GRIB2中，第2节到第7节、第3节到第7节或第4节到第7节，可以重复出现，从而允许在一个报文中出现多个网格数据。

## 软件

现有使用GRIB文件的一些应用软件包，其范围从[命令行实用程序到图形](https://zh.wikipedia.org/wiki/命令行 "wikilink")[可视化包](../Page/可视化_\(计算机图形学\).md "wikilink")。

  - [ecCodes](https://software.ecmwf.int/wiki/display/ECC/ecCodes+Home)，是ECMWF开发的开源的C、Fortran90库和Python模块，可调用解码和编码GRIB和GRIB2数据的[API](https://zh.wikipedia.org/wiki/API "wikilink")，软件包还包括一组有用的[命令行工具](https://software.ecmwf.int/wiki/display/GRIB/Grib+tools)。它演化自[GRIB API](https://software.ecmwf.int/wiki/display/GRIB/Home)，向用户提供了以键/值方式访问元数据的一组函数。ECMWF还提供绘图包[Magics](https://software.ecmwf.int/magics)和[Metview](https://confluence.ecmwf.int/display/METV)工作站/批处理系统，可处理和可视化GRIB和GRIB2文件。
  - [NCEP GRIB1 codes](http://www.nco.ncep.noaa.gov/pmb/codes/GRIB1/)，开源的Fortran90库w3lib，用于解码和编码GRIB格式的数据。
  - [NCEP GRIB2 codes](http://www.nco.ncep.noaa.gov/pmb/codes/GRIB2/)，开源的Fortran90库g2lib和C库g2clib，用于解码和编码GRIB2格式的数据。
  - [WGRIB](http://www.cpc.ncep.noaa.gov/products/wesley/wgrib.html)，基于命令行的实用工具，用来操纵、列清单和解码GRIB文件。
  - [wgrib2](http://www.cpc.ncep.noaa.gov/products/wesley/wgrib2/index.html)，基于命令行的实用工具，不只是升级wgrib可读取GRIB2文件，还可将其分片或分块。
  - [网格分析和显示系统](https://zh.wikipedia.org/wiki/GrADS "wikilink")（[GrADS](http://cola.gmu.edu/grads/)），开源的基于命令行的桌面应用，直接处理GRIB和GRIB2文件\[3\]。
  - [NCAR命令语言](http://www.ncl.ucar.edu)，可以读取、分析和可视化GRIB和GRIB2数据，并转换它成为其他网格数据格式。
  - [CDO](http://code.zmaw.de/projects/cdo)（气候数据算子），是地球科学数据分析工具，支持GRIB和GRIB2。
  - [Picogrib](http://picogrib.sourceforge.net/)，自由的C语言（FORTRAN可调用）GRIB解码包，一定程度上兼容于ECMWF GRIBEX例程。
  - [JGrib](http://jgrib.sourceforge.net)，开源库用来在Java中读取GRIB文件。
  - [NetCDF-Java通用数据模型](http://www.unidata.ucar.edu/software/netcdf-java/)，是可以读取GRIB和GRIB2文件的Java库。
  - [PyNIO](http://www.pyngl.ucar.edu/Nio.shtml)，是[Python](../Page/Python.md "wikilink")编程语言模块，允许读写访问各种数据格式，使用了建模在[netCDF上的接口](https://zh.wikipedia.org/wiki/netCDF "wikilink")。
  - [PyGrib](https://github.com/jswhit/pygrib)，python语言扩展模块，允许读写GRIB和GRIB2格式。
  - [Meteosatlib](http://meteosatlib.sourceforge.net/)，自由软件C++库和一组工具，在各种格式间转换卫星图像；它可以读写GRIB数据，并且它的GRIB编码/解码器可以单独使用。
  - [地理数据抽象库](https://zh.wikipedia.org/wiki/GDAL "wikilink")（[GDAL](https://gdal.org/)），流行的开源地理数据读写库。
  - [Xconv/Convsh](http://cms.ncas.ac.uk/documents/xconv/introduction.html)，Xconv是一个图形工具，用来显示和转换各种网格数据，并可在Linux和OS X操作系统上获得。Convsh是它的命令行等价者。
  - [IDV](https://www.unidata.ucar.edu/software/idv/index.html)，面向地球科学的平台无关的应用程序，可用来可视化和分析[NetCDF](../Page/NetCDF.md "wikilink")、GRIB和GRIB2文件。
  - [degrib](https://www.weather.gov/mdl/degrib_home)（曾叫做NDFD GRIB2解码器），可读取GRIB和GRIB2文件。
  - [zyGrib](http://www.zygrib.org)，是在Linux、Mac OS X和Windows上开源的图形软件，用来下载和显示GRIB和GRIB2文件。
  - [XyGrib](https://www.opengribs.org/en/)，是对zyGrib继续开发的开源软件，是GRIB和GRIB2文件阅读器并可视化气象数据提供离线分析能力。

此外，一些天气预报软件和导航软件及手机app支持GRIB或GRIB2，如[ATMOGRAPH ModelVis](http://atmograph.com)、[Expedition](http://www.ExpeditionMarine.com)、[PolarView](https://web.archive.org/web/20090819030538/http://www.polarnavy.com/main/prod1)、[OpenCPN](https://opencpn.org/)、[GribAE](http://www.enviroware.com/portfolio/gribae)、[qtVlm](http://www.meltemus.com)和[Weather4D](https://www.weather4d.com)；[PredictWind Offshore App](https://www.predictwind.com/apps/#offshore-app)、[PocketGrib](http://pocketgrib.com/)、[WeatherTrack](http://www.weathertrack.us/)、[mazu](https://www.mazu-marine.com/)、[SailGrib](http://www.sailgrib.com/)、[iGrib](http://www.mojoso.co.uk/igrib)。

## 参见

  - [通用数据格式](https://zh.wikipedia.org/wiki/通用数据格式 "wikilink") (CDF)
  - [层级数据格式](https://zh.wikipedia.org/wiki/层级数据格式 "wikilink") (HDF)
  - [NetCDF](../Page/NetCDF.md "wikilink")
  - [BUFR](https://zh.wikipedia.org/wiki/BUFR "wikilink")（气象数据表示的二进制普遍形式）
  - [PP-format](https://zh.wikipedia.org/wiki/PP-format "wikilink")
  - [GrADS](https://zh.wikipedia.org/wiki/GrADS "wikilink")

## 引用

## 标准文献

  - [Guide to WMO Binary Code Form GRIB 1](http://www.wmo.int/pages/prog/www/WMOCodes/Guides/GRIB/GRIB1-Contents.html)
  - [Guide to FM92 GRIB edition 2](http://www.wmo.int/pages/prog/www/WMOCodes/Guides/GRIB/GRIB2_062006.pdf)
  - [NCEP Office Note 388 GRIB1](http://www.nco.ncep.noaa.gov/pmb/docs/on388/)
  - [NCEP WMO GRIB2 Documentation](https://www.nco.ncep.noaa.gov/pmb/docs/grib2/grib2_doc/)
  - [ECMWF ecCodes keys](https://apps.ecmwf.int/codes/grib/)
  - [GRIB Parameter database](https://apps.ecmwf.int/codes/grib/param-db)

## 外部链接

  - [WMO manual on Codes No 306](http://www.wmo.int/pages/prog/www/WMOCodes.html)
  - [Tables extracted from the Manual on Codes, Volume I.2](http://www.wmo.int/pages/prog/www/WMOCodes/WMO306_vI2/LatestVERSION/LatestVERSION.html)
  - [ecCodes and Magics available under Windows](https://www.ecmwf.int/en/newsletter/159/news/eccodes-and-magics-available-under-windows)
  - [WMO Essential](https://www.ecmwf.int/en/forecasts/datasets/wmo-essential)
  - [ECMWF Public Datasets](https://apps.ecmwf.int/datasets/)
  - [NCEP Products Inventory](https://www.nco.ncep.noaa.gov/pmb/products/gfs/)

[Category:氣象數據和網絡](https://zh.wikipedia.org/wiki/Category:氣象數據和網絡 "wikilink") [Category:地球科学数据格式](https://zh.wikipedia.org/wiki/Category:地球科学数据格式 "wikilink")

1.  [What is GRIB?](http://cola.gmu.edu/grads/gadoc/grib.html#what).
2.  [Introduction to GRIB Edition1 and GRIB Edition 2](http://www.wmo.int/pages/prog/www/WMOCodes/Guides/GRIB/Introduction_GRIB1-GRIB2.pdf).
3.  <http://cola.gmu.edu/grads/gadoc/grib.html>