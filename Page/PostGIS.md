**PostGIS**
是一个开源程序，它为对象－关系型数据库[PostgreSQL提供了存储空间地理数据的支持](../Page/PostgreSQL.md "wikilink")，使PostgreSQL成为了一个空间数据库，能够进行空间数据管理、数量测量与几何拓扑分析。PostGIS
实现了[Open Geospatial
Consortium所提出的基本要素类](../Page/Open_Geospatial_Consortium.md "wikilink")（点、线、面、多点、多线、多面等）的SQL实现参考。

## 特点

  - 完整实现了标准之中的空间对象模型，如点、折线、多边形、多点、多折线、多多边形与几何集合。
  - 通过调用提供[GEOS之中的几何分析函数](../Page/GEOS_\(software_library\).md "wikilink")，实现了使用3x3[Egenhofer
    matrix分析空间对象之间拓扑关系的运算](../Page/Egenhofer_matrix.md "wikilink")，并遵循[Simple
    Features定义](../Page/Simple_Features.md "wikilink")，实现了一些常见的关系运算，如Intersect、Contain、Overlap等等。
  - 实现了空间数量度量，能够计算几何体之间的距离、几何体的面积、周长等等。
  - 通过调用提供[GEOS之中的几何分析函数](../Page/GEOS.md "wikilink")，实现了常见的GIS空间分析功能，如求交、求并、求差、缓冲区等等。
  - 利用[R-tree与](../Page/R-tree.md "wikilink")[GiST实现了空间索引](../Page/GiST.md "wikilink")，大大加快了正交查询的速度。
  - 支持选择性索引，为空间与非空间的混合查询指定适当的查询策略，提高了搜索的效率。
  - 目前，PostGIS仍不支持在数据库中存储栅格数据。然而目前PostGIS有一个名为[PostGIS
    Raster](http://trac.osgeo.org/postgis/wiki/WKTRaster)的计划，正在实现在PostgreSQL中存储栅格数据，并实现矢量数据与栅格数据之间的无缝操作。该计划已经整合到PostGIS
    2.0的版本中，目前正在开发中。

在Windows平台下，PostGIS提供了一个pgAdminII的插件，该插件能够把ESRI
Shapefile格式的地理数据导入到PostGIS数据库之中。

PostGIS实现了一个基于轻量级的几何体实现，并提供了完善的索引，这大大减少了硬盘与内存的存储量。轻量级的几何体实现使服务器能够把磁盘中更加大量的数据载入到内存之中，这大大加快了查询的性能。

PostGIS已经注册成为了OGC的Simple Features for SQL标准\[1\]
的其中一种实现。然而由于某些原因，OGC并未把PostGIS列为其一种“兼容”的实现。其原因包括PostGIS扩展了WKB与WKT格式来存储带有三维或四维坐标的几何体，该扩展并不符合OGC的最新定义。要了解OGS关于“兼容”的定义，请参见：[What
does "Compliant"
mean?](http://www.opengeospatial.org/ogc/faq/process/#6).

## 用户

PostGIS是一个重要的GIS基础软件，因为目前它是为数不多的开源空间数据库存储方案之一。有许多著名的GIS软件都使用PostGIS作为数据库后端，其中包括：

  - [Cadcorp](../Page/Cadcorp.md "wikilink") SIS
  - Everest GIS
  - [Feature Manipulation
    Engine](../Page/Feature_Manipulation_Engine.md "wikilink")
  - [GeoMedia](../Page/GeoMedia.md "wikilink") (通过第三方连接器)
  - [GeoServer](../Page/GeoServer.md "wikilink")
  - [GRASS GIS](../Page/GRASS_GIS.md "wikilink") (GPL)
  - [gvSIG](../Page/gvSIG.md "wikilink") (GPL)
  - Interoperability Extension from [ESRI](../Page/ESRI.md "wikilink")
  - Ionic Red Spider
  - [Kosmo](../Page/Kosmo.md "wikilink") (GPL)
  - [Manifold System](../Page/Manifold_System.md "wikilink")
  - [MapInfo Professional](../Page/MapInfo_Professional.md "wikilink")
  - [Mapnik](../Page/Mapnik.md "wikilink")
    ([LGPL](../Page/LGPL.md "wikilink"))
  - MapDotNet Server
  - [MapServer](../Page/MapServer.md "wikilink")
    ([BSD](../Page/BSD_Licenses.md "wikilink"))
  - [MapGuide](../Page/MapGuide.md "wikilink")
    ([LGPL](../Page/LGPL.md "wikilink"))
  - MezoGIS
  - [OpenJUMP](../Page/OpenJUMP.md "wikilink") (GPL)
  - [Quantum GIS](../Page/Quantum_GIS.md "wikilink") (GPL)
  - [TerraLib](../Page/TerraLib.md "wikilink") (LGPL)
  - [TerraView](../Page/TerraView.md "wikilink") (GPL)
  - [uDig](../Page/uDig.md "wikilink") (LGPL)
  - [ArcGIS](../Page/ArcGIS.md "wikilink") (通过ZigGIS, ArcSDE以及其他第三方连接器)
  - [CitySurf Globe](../Page/CitySurf_Globe.md "wikilink")
  - [優步](../Page/優步.md "wikilink")（Uber）

## 历史

PostGIS的第一个版本在2001年由Refractions
Research以[GNU通用公共许可证发行](../Page/GNU通用公共许可证.md "wikilink")。在2005年的4月19日，PostGIS在经历了6个[最终测试版本后](../Page/最终测试版本.md "wikilink")，终于放出了第一个稳定版本。在2006年，PostGIS注册成为了OGC的“简单要素SQL实现”标准的一个实现。

PostGIS向PostgreSQL对象关系型数据库添加了地理对象支持。其结果是，PostGIS“空间启用”了PostgreSQL服务器，允许其被用于地理信息系统（GIS）的后台空间数据库，类似于ESRI的SDE或Oracle的空间扩展。

为化简Windows下PostGIS的安装，一些Windows安装器被创建，例如PostGIS Installer for
Windows和PostGIS Windows Installer。

详细的历史请参见 <http://www.refractions.net/products/postgis/history/>

## 参见

  - [Well-known text与well](../Page/Well-known_text.md "wikilink")-known
    binary，前者是一种用文本表示空间对象的注记方法，后者是一种用二进制流表示空间对象的存储方法。PostGIS使用这两种格式在数据库中存储空间对象。

## 参考

<references />

## 参考文档

  - [PostGIS in Action, 2010 from Manning](http://www.postgis.us).
  - [PostGIS HTML
    Documentation](http://www.postgis.org/documentation/manual-svn/).
  - [PostGIS 1.5.2 PDF
    Manual](http://www.postgis.org/download/postgis-1.5.2.pdf).
  - [PostGIS 2.0.0 PDF In Progress
    Manual](http://www.postgis.org/download/postgis-2.0.0SVN.pdf).

## 相關鏈接

  - [PostGIS官方主页](http://www.postgis.org/)
  - [Intro to
    PostGIS](https://web.archive.org/web/20110727150319/http://workshops.opengeo.org/stack-intro/postgis.html#postgis)
  - [PostGIS
    tutorial](https://web.archive.org/web/20101224131849/http://www.enterprisedb.com/learning/tutorial/postgis_ppss.do)
  - [PostgreSQL](http://www.postgresql.org/)
  - [pgRouting](http://www.pgrouting.org/)

[Category:自由軟件](https://zh.wikipedia.org/wiki/Category:自由軟件 "wikilink")
[Category:GIS软件](https://zh.wikipedia.org/wiki/Category:GIS软件 "wikilink")

1.  [OGC Implementing Product
    Details](http://www.opengeospatial.org/resource/products/details/?pid=509)