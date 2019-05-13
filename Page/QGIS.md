**QGIS**（原稱Quantum
GIS）是一个[自由软件的桌面](../Page/自由.md "wikilink")[GIS软件](https://zh.wikipedia.org/wiki/GIS "wikilink")。它提供数据的显示、编辑和分析功能。

## 开发

QGIS由Gary
Sherman于2002年开始开发，并于2004年成为[开源地理空间基金会的一个孵化项目](../Page/开源地理空间基金会.md "wikilink")。版本1.0于2009年1月发布。

QGIS以[C++写成](../Page/C++.md "wikilink")，它的[GUI使用了](https://zh.wikipedia.org/wiki/GUI "wikilink")[Qt库](../Page/Qt.md "wikilink")。QGIS允许集成使用C++
或[Python写成的插件](../Page/Python.md "wikilink")。除了Qt之外，QGIS需要的依赖还包括GEOS和[SQLite](../Page/SQLite.md "wikilink")。同时也推荐安装[GDAL](https://zh.wikipedia.org/wiki/GDAL "wikilink")、[GRASS
GIS](https://zh.wikipedia.org/wiki/GRASS_GIS "wikilink")、[PostGIS和](../Page/PostGIS.md "wikilink")[PostgreSQL](../Page/PostgreSQL.md "wikilink")。

QGIS是一个多平台的应用，可以在多种操作系统上运行，包括[Mac OS
X](https://zh.wikipedia.org/wiki/Mac_OS_X "wikilink")、[Linux](../Page/Linux.md "wikilink")、[UNIX和](../Page/UNIX.md "wikilink")[Microsoft
Windows](https://zh.wikipedia.org/wiki/Windows "wikilink")。对于Mac用户，QGIS相对于[GRASS
GIS的优势在于它不需要](https://zh.wikipedia.org/wiki/GRASS_GIS "wikilink")[X11窗口系统](https://zh.wikipedia.org/wiki/X11 "wikilink")，而且界面更简洁、快速。Quantum
GIS也可以作为GRASS的图形用户界面使用。相较于商业GIS，Quantum
GIS的文件体积更小，需要的[内存和处理能力也更少](https://zh.wikipedia.org/wiki/内存 "wikilink")。因此它可以在旧的硬件上或CPU运算能力被限制的环境下运行。

Quantum GIS被一个活跃的志愿者开发团体持续维护着，他们定期发布更新和错误修正。现在，开发者们已经将Quantum
GIS翻译为31种语言，它被使用在全世界的学术和专业环境中。

### 发布历史

| 版本          | 代码名称                                                              | 发布日期           | 重要改变                                                                                                                                                                                                                                                                              |
| ----------- | ----------------------------------------------------------------- | -------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| 0.0.1-alpha |                                                                   | 2002年7月        | 导入和显示PostGIS数据\[1\]                                                                                                                                                                                                                                                               |
| 0.0.3-alpha |                                                                   | 2002年8月10日     | 添加了对Shapefile和其他矢量格式的支持。\[2\]                                                                                                                                                                                                                                                     |
| 0.0.4-alpha |                                                                   | 2002年8月15日     | 改进了图层操作，对图层着色，在对话框中显示属性。\[3\]                                                                                                                                                                                                                                                     |
| 0.0.5-alpha |                                                                   | 2002年10月5日     | 修正了错误，提高了稳定性，可以设置线宽，改进了放大/缩小功能。\[4\]                                                                                                                                                                                                                                              |
| 0.0.6       |                                                                   | 2002年11月24日    | 改进了PostGIS连接，添加了图层识别功能，可以显示和排序属性表。\[5\]                                                                                                                                                                                                                                           |
| 0.0.7       |                                                                   | 2002年11月30日    | [1](http://svn.osgeo.org/qgis/branches/Dataprovider_overhaul-branch/qgis/ChangeLog)                                                                                                                                                                                               |
| 0.0.8       |                                                                   | 2002年10月11日    | [2](http://svn.osgeo.org/qgis/branches/Dataprovider_overhaul-branch/qgis/ChangeLog)                                                                                                                                                                                               |
| 0.0.9       |                                                                   | 2003年1月25日     | [3](http://svn.osgeo.org/qgis/branches/Dataprovider_overhaul-branch/qgis/ChangeLog)                                                                                                                                                                                               |
| 0.0.10      |                                                                   | 2003年5月13日     | [4](http://svn.osgeo.org/qgis/branches/Dataprovider_overhaul-branch/qgis/ChangeLog)                                                                                                                                                                                               |
| 0.0.11      |                                                                   | 2003年6月10日     | [5](http://svn.osgeo.org/qgis/branches/Dataprovider_overhaul-branch/qgis/ChangeLog)                                                                                                                                                                                               |
| 0.0.12      |                                                                   | 2003年6月10日     | [6](http://svn.osgeo.org/qgis/branches/Dataprovider_overhaul-branch/qgis/ChangeLog)                                                                                                                                                                                               |
| 0.0.13      |                                                                   | 2003年12月8日     | [7](http://svn.osgeo.org/qgis/branches/Dataprovider_overhaul-branch/qgis/ChangeLog)                                                                                                                                                                                               |
| 0.1pre1     |                                                                   | 2004年2月14日     | 添加了对栅格数据的支持；矢量数据的单、连续、分级描影；可以创建缓冲区，作为PostGIS执行\[6\]\[7\]                                                                                                                                                                                                                          |
| 0.1         | Moroz                                                             | 2004年2月25日     | [8](http://svn.osgeo.org/qgis/branches/Dataprovider_overhaul-branch/qgis/ChangeLog)                                                                                                                                                                                               |
| 0.2         | Pumpkin                                                           | 2004年4月26日     | [9](http://freshmeat.net/projects/qgis/?branch_id=31471&release_id=158822) [10](http://archive.wikiwix.com/cache/20090903214632/http://wiki.qgis.org/qgiswiki/Release_Specification_for_0.2) [11](http://svn.osgeo.org/qgis/branches/Dataprovider_overhaul-branch/qgis/ChangeLog) |
| 0.3         | Madison                                                           | 2004年5月28日     | [12](http://freshmeat.net/projects/qgis/?branch_id=31471&release_id=162105) [13](https://web.archive.org/web/20070722010819/http://wiki.qgis.org/qgiswiki/Release_Specification_for_0.3)                                                                                          |
| 0.4         | Baby                                                              | 2004年7月4日      | [14](http://freshmeat.net/projects/qgis/?branch_id=31471&release_id=165885) [15](http://archive.wikiwix.com/cache/20090903214632/http://wiki.qgis.org/qgiswiki/Release_Specification_for_0.4)                                                                                     |
| 0.5         | Bandit                                                            | 2004年10月5日     | [16](http://freshmeat.net/projects/qgis/?branch_id=31471&release_id=174824) [17](http://svn.osgeo.org/qgis/branches/Release-0_5_candidate/qgis/README)                                                                                                                            |
| 0.6         | Simon                                                             | 2004年12月19日    | [18](http://freshmeat.net/projects/qgis/?branch_id=31471&release_id=182391) [19](https://web.archive.org/web/20081121011919/http://qgis.org/content/view/14/99/)                                                                                                                  |
| 0.7         | Seamus                                                            |                | [20](http://svn.osgeo.org/qgis/branches/Release-0_7-candidate/qgis/README)                                                                                                                                                                                                        |
| 0.7.3       |                                                                   | 2005年10月11日    | [21](http://freshmeat.net/projects/qgis/?branch_id=31471&release_id=208941) [22](https://web.archive.org/web/20090107152500/http://technology.slashgeo.org/technology/05/10/19/1323235.shtml)                                                                                     |
| 0.8         |                                                                   | 2007年1月7日      | [23](https://archive.is/20121220144703/http://freshmeat.net/releases/244519/) [24](http://archive.wikiwix.com/cache/20090903214632/http://wiki.qgis.org/qgiswiki/Release_Specification_for_0.8)                                                                                   |
| 0.8.1       | "[Titan](../Page/土卫六.md "wikilink")"                              | 2007年6月15日     | [25](http://freshmeat.net/projects/qgis/?branch_id=31471&release_id=255782) [26](http://archive.wikiwix.com/cache/20090903214632/http://wiki.qgis.org/qgiswiki/ReleaseChecklist0.8.1)                                                                                             |
| 0.9.0       |                                                                   | 2007年10月26日    | [27](http://blog.qgis.org/?q=node/91) [28](http://freshmeat.net/projects/qgis/?branch_id=31471&release_id=264509) [29](https://web.archive.org/web/20081229145023/http://wiki.qgis.org/qgiswiki/ReleaseChecklist0.9)                                                              |
| 0.9.1       | "[Ganymede](../Page/木卫三.md "wikilink")"                           | 2008年1月6日      | [30](http://blog.qgis.org/?q=node/101) [31](http://freshmeat.net/projects/qgis/?branch_id=31471&release_id=274022) [32](https://archive.is/20070509033302/http://wiki.qgis.org/qgiswiki/ReleaseChecklist0.9.1)                                                                    |
| 0.10        | "[Io](../Page/木卫一.md "wikilink")"                                 | 2008 5月3日      | [33](https://web.archive.org/web/20081219163651/http://blog.qgis.org/node/116) [34](https://web.archive.org/web/20081222190512/http://wiki.qgis.org/qgiswiki/ReleaseChecklist0.10.0)                                                                                              |
| 0.11.0      | "[Metis](../Page/木卫十六.md "wikilink")"                             | 2008 7月21日     | [35](https://web.archive.org/web/20081218080101/http://blog.qgis.org/node/119) [36](http://archive.wikiwix.com/cache/20090903214632/http://wiki.qgis.org/qgiswiki/ReleaseChecklist0.11.0)                                                                                         |
| 1.0.0       | "[Kore](https://zh.wikipedia.org/wiki/木卫四十九 "wikilink")"          | 2009年1月5日      | [37](https://web.archive.org/web/20081201095825/http://wiki.qgis.org/qgiswiki/ReleaseChecklist1.0) [38](https://web.archive.org/web/20090127050340/http://blog.qgis.org/node/123)                                                                                                 |
| 1.1.0       | "[Pan](../Page/土卫十八.md "wikilink")"                               | 2009年5月12日     | [39](http://archive.wikiwix.com/cache/20090906112641/http://wiki.qgis.org/qgiswiki/ReleaseChecklist1.1) [40](https://web.archive.org/web/20090917043146/http://blog.qgis.org/node/134)                                                                                            |
| 1.2.0       | "[Daphnis](https://zh.wikipedia.org/wiki/土卫三十五 "wikilink")"       | 2009年9月1日      | [41](http://archive.wikiwix.com/cache/20090903214632/http://wiki.qgis.org/qgiswiki/ReleaseChecklist1.2) [42](https://web.archive.org/web/20090906104926/http://blog.qgis.org/node/137)                                                                                            |
| 1.3.0       | "[Mimas](../Page/土卫一.md "wikilink")"                              | 2009年9月20日     | [43](https://web.archive.org/web/20091026182901/http://www.qgis.org/wiki/Release_Checklist_1.3) [44](https://web.archive.org/web/20090925170525/http://blog.qgis.org/node/138)                                                                                                    |
| 1.4.0       | "[Enceladus](../Page/土卫二.md "wikilink")"                          | 2010年1月10日     | [45](https://web.archive.org/web/20100312095744/http://www.qgis.org/wiki/Release_Checklist_1.4) [46](https://web.archive.org/web/20100112162037/http://blog.qgis.org/node/142)                                                                                                    |
| 1.5.0       | "[Tethys](../Page/土卫三.md "wikilink")"                             | 2010年7月29日     | [47](https://web.archive.org/web/20100613013041/http://qgis.org/wiki/Release_Checklist_1.5)                                                                                                                                                                                       |
| 1.6.0       | "[Copiapó](https://zh.wikipedia.org/wiki/2010年科皮亚波矿难 "wikilink")" | 2010年11月27日    | [48](https://web.archive.org/web/20101128204454/http://qgis.org/wiki/Release_Checklist_1.6) [49](https://web.archive.org/web/20101130113806/http://blog.qgis.org/node/146)                                                                                                        |
| 1.7.0       | "[Wrocław](../Page/弗罗茨瓦夫.md "wikilink")"                          | 2011年6月19日     | [50](https://web.archive.org/web/20111128040146/http://qgis.org/component/content/article/127-qgis-1-7-release.html)                                                                                                                                                              |
| 1.8.0       | "[Lisboa](../Page/里斯本.md "wikilink")"                             | 2012年6月21日     | [51](https://web.archive.org/web/20120703061515/http://lists.osgeo.org/pipermail/qgis-user/2012-June/017706.html)                                                                                                                                                                 |
| 2.0.0-2.0.1 | "Dufour"                                                          | 2013年9月8日      | New vector API, integration of SEXTANTE geoprocessor, symbology and labelling overhaul [52](https://web.archive.org/web/20131123083649/http://changelog.linfiniti.com/version/1/)                                                                                                 |
| 2.2         | [Valmiera](https://zh.wikipedia.org/wiki/Valmiera "wikilink")     | 22.2.2014\[8\] |                                                                                                                                                                                                                                                                                   |
| 2.4         | [Chugiak](https://zh.wikipedia.org/wiki/Chugiak "wikilink")       | 27.6.2014      |                                                                                                                                                                                                                                                                                   |
| 2.14        | [Essen](https://zh.wikipedia.org/wiki/Essen "wikilink")           | 29.2.2016      |                                                                                                                                                                                                                                                                                   |
| 2.18        | [Las Palmas](https://zh.wikipedia.org/wiki/Las_Palmas "wikilink") | 21.10.2016     |                                                                                                                                                                                                                                                                                   |
| 3.0         | [Girona](https://zh.wikipedia.org/wiki/Girona "wikilink")         | 23.2.2018      | Based on Qt5, PyQt5, and Python 3                                                                                                                                                                                                                                                 |

## 许可

QGIS是基于[GPL发布的](https://zh.wikipedia.org/wiki/GPL "wikilink")[自由软件](../Page/自由软件.md "wikilink")，可以被修改以执行其他或更加专业的任务。另外有很多[插件可以用来扩展兼容性和功能](../Page/插件.md "wikilink")。

## 数据格式

QGIS可以使用[Shapefile](../Page/Shapefile.md "wikilink")、[Coverage和Personal](https://zh.wikipedia.org/wiki/Coverage "wikilink")
Geodatabase格式的数据。它也支持[MapInfo](https://zh.wikipedia.org/wiki/MapInfo "wikilink")、[PostGIS和许多其他格式](../Page/PostGIS.md "wikilink")。\[9\]QGIS也支持包括及的Web服务，以此来使用外部来源的数据。\[10\]

## 功能

QGIS提供与其他开源GIS软件包的集成，包括[PostGIS](../Page/PostGIS.md "wikilink")、[GRASS和](../Page/GRASS.md "wikilink")[MapServer](../Page/MapServer.md "wikilink")，以向用户提供广泛的功能。\[11\]

用[Python写成的插件扩展了QGIS的功能](../Page/Python.md "wikilink")。

## 參與中文翻譯

  - [Quantum GIS
    翻譯計劃首頁](https://web.archive.org/web/20140303154812/https://www.transifex.com/projects/p/QGIS/language/zh_TW/)→Quantum
    GIS 官方使用 [Transifex](../Page/Transifex.md "wikilink")
    翻譯平台（[相關說明](http://chakra-zh.blogspot.tw/2012/11/chakra.html)）

## 引用

[Category:GIS软件](https://zh.wikipedia.org/wiki/Category:GIS软件 "wikilink")
[Category:自由软件](https://zh.wikipedia.org/wiki/Category:自由软件 "wikilink")
[Category:使用Qt的软体](https://zh.wikipedia.org/wiki/Category:使用Qt的软体 "wikilink")

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