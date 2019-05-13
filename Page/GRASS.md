GRASS GIS (Geographic Resources Analysis Support System，地理资源分析支持系统)
是一个免费、[开放源代码的](../Page/开放源代码.md "wikilink")[地理信息系统](../Page/地理信息系统.md "wikilink")（GIS），可用于处理[栅格](https://zh.wikipedia.org/wiki/栅格 "wikilink")、[拓扑](https://zh.wikipedia.org/wiki/拓扑 "wikilink")[矢量](https://zh.wikipedia.org/wiki/矢量 "wikilink")、影像和图表数据。

GRASS
在[GPL下发布](https://zh.wikipedia.org/wiki/GPL "wikilink")，可以在多个平台上运行，包括[Mac
OS
X](https://zh.wikipedia.org/wiki/Mac_OS_X "wikilink")、[Windows和](https://zh.wikipedia.org/wiki/Windows "wikilink")[Linux](../Page/Linux.md "wikilink")。用户可以通过[图形用户界面](../Page/图形用户界面.md "wikilink")（内置的基于
[X Window系统的](https://zh.wikipedia.org/wiki/X_Window系统 "wikilink")
[GUI](https://zh.wikipedia.org/wiki/GUI "wikilink") 或通过 [Quantum
GIS](https://zh.wikipedia.org/wiki/Quantum_GIS "wikilink")）使用该软件的功能；也可以通过改进的
[shell](https://zh.wikipedia.org/wiki/shell "wikilink") 直接使用它的模块。

GRASS 6 版本采用新的拓扑 2D/3D 矢量引擎并支持矢量网络分析。属性数据通过
[.dbf](https://zh.wikipedia.org/wiki/dBase "wikilink") 文件或基于 SQL
的[数据库管理系统](../Page/数据库管理系统.md "wikilink")（如
[MySQL](../Page/MySQL.md "wikilink")、[PostgreSQL](../Page/PostgreSQL.md "wikilink")/[PostGIS](../Page/PostGIS.md "wikilink")
和
[SQLite](../Page/SQLite.md "wikilink")）来管理。该系统可以胜任3D矢量图形数据和[立体像素的可视化](https://zh.wikipedia.org/wiki/体素 "wikilink")。通过与
[GDAL/OGR库的绑定](https://zh.wikipedia.org/wiki/GDAL "wikilink")，GRASS
支持多种栅格和矢量格式。其中包括 OGC-conformal简单要素，以实现与其他 GIS
软件的互操作。它也支持[线性参考系统](https://zh.wikipedia.org/wiki/线性参考系统 "wikilink")。

GRASS 开发团队是一个由来自很多地区的开发者组成的跨国群体。GRASS
是[开源地理空间基金会最初的八个软件项目之一](../Page/开源地理空间基金会.md "wikilink")。

目前，GRASS
在中国的相关信息维护由[OSGeo中国中心负责](https://zh.wikipedia.org/wiki/OSGeo中国中心 "wikilink")，具体包括新闻发布，镜像网站的维护，中文教程的修订。

## 架构

GRASS
支持二维和三维的栅格和矢量数据。矢量数据模型是[拓扑的](https://zh.wikipedia.org/wiki/拓扑 "wikilink")，意味着面是由边界和形心定义的；在单一图层中边界不能互相重叠。

GRASS 被设计成一个运行环境，执行特定 GIS 计算的工具在其中被执行。不同于典型的应用软件，一开始执行 GRASS，用户就会面对一个
UNIX [shell](https://zh.wikipedia.org/wiki/shell "wikilink")，其中包括一个为执行
GRASS 命令（被称为模块）提供支持的改良的环境。这个环境有一个状态，其中包括一些参数如覆盖的地理区域和使用的地图投影。所有的 GRASS
模块被执行时会读取这个状态，并被额外地赋予一些特定的参数（如输入和输出的地图，或者计算中使用的值）。多数 GRASS 模块和功能可以通过
GUI 操作，作为通过 shell 操作地理数据的另外一个选择。GRASS 发行版中包含超过 300 个核心模块，此外 GRASS
网站上提供了超过 100
个用户创建的附加模块。GRASS库和核心模块用[C写成](https://zh.wikipedia.org/wiki/C语言 "wikilink")，其他的模块用C、C++、Python、UNIX
shell、Tcl 或其他脚本语言写成。GRASS 模块在
[Unix哲学下设计](../Page/Unix哲学.md "wikilink")，因此可以被没有C语言编程知识的用户用
shell 脚本联合起来以创建更加复杂或专业的模块。

## 历史

GRASS 的开发可以追溯到 1982
年\[1\]。[美国陆军工程兵团的一个分支](https://zh.wikipedia.org/wiki/美国陆军工程兵团 "wikilink")——美国陆军建筑工程研究实验室（USA-CERL，1982-1995）开始开发
GRASS 以满足美国军方土地管理和环境规划软件的需要。在 1982 年到 1995 年间，USA-CERL
领导了许多美国联邦政府机构、大学和私人公司进行了 GRASS 的开发，
在其基础上开发了 GRASS 的核心组件。USA-CERL 在 1992 年完成了 GRASS 4.1，并在 1995
年之前发布了这个版本的五个更新和补丁。USA-CERL 也开发了 GRASS 5.0
浮点版本的核心组件。

USA-CERL 在 GRASS 4.1 版（1995）之后正式终止参与
GRASS。[贝勒大学的一个团队接管了软件的开发](https://zh.wikipedia.org/wiki/贝勒大学 "wikilink")，发布了
GRASS 4.2 版本。1999 年十月，从版本 5 开始，GRASS
软件原先的[公有领域授权被更换为](../Page/公有领域.md "wikilink")
[GPL](https://zh.wikipedia.org/wiki/GPL "wikilink")\[2\]。

如今 GRASS 被用于全世界许多学术和商业领域，还有许多政府部门，包括
[NASA](https://zh.wikipedia.org/wiki/NASA "wikilink")、[NOAA](https://zh.wikipedia.org/wiki/NOAA "wikilink")、[USDA](https://zh.wikipedia.org/wiki/USDA "wikilink")、[DLR](https://zh.wikipedia.org/wiki/DLR "wikilink")、[CSIRO](https://zh.wikipedia.org/wiki/CSIRO "wikilink")、[美国国家公园管理局等](../Page/美国国家公园管理局.md "wikilink")。

## 相关链接

  - GRASS GIS网站中国镜像网站：
    [*<http://grass.osgeo.cn>*](http://grass.osgeo.cn)
  - GRASS 中文教程：
    [*<https://web.archive.org/web/20140504085024/http://lab.osgeo.cn/docs/grass/>*](https://web.archive.org/web/20140504085024/http://lab.osgeo.cn/docs/grass/)

## 资料

<references/>

[Category:GIS软件](https://zh.wikipedia.org/wiki/Category:GIS软件 "wikilink")
[Category:自由软件](https://zh.wikipedia.org/wiki/Category:自由软件 "wikilink")

1.  [*GRASS
    起源*](http://gisws.media.osaka-cu.ac.jp/grass04/viewpaper.php?id=53),
    Jim Westervelt
2.  GRASS Development Team. *[GRASS
    History](http://grass.osgeo.org/devel/grasshist.html)*. Retrieved on
    2008-03-29.