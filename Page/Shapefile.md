ESRI
Shapefile（shp），或简称shapefile，是[美国环境系统研究所公司](https://zh.wikipedia.org/wiki/美国环境系统研究所公司 "wikilink")（ESRI）开发的空间数据开放格式。\[1\]目前，该文件格式已经成为了地理信息软件界的开放标准，这表明ESRI公司在全球的地理信息系统市场的重要性。Shapefile也是重要的交换格式，能够在ESRI与其他公司的产品之间进行数据互操作。

Shapefile文件用于描述几何体对象：[点](../Page/点.md "wikilink")、折线与[多边形](../Page/多边形.md "wikilink")。例如，Shapefile文件可以存储[井](https://zh.wikipedia.org/wiki/井 "wikilink")、河流、[湖泊等空间对象的几何位置](../Page/湖泊.md "wikilink")。除了几何位置，shp文件也可以存储这些空间对象的属性，例如河流的名字、城市的温度等等。

## 概览

Shapefile属于一种矢量图形格式，它能够保存几何图形的位置及相关属性。但这种格式没法存储地理数据的拓扑信息。Shapefile在九十年代初的ArcView
GIS的第二个版本被首次应用。目前，许多自由的程序或商业的程序都可以读取Shapefile。

Shapefile是一种比较原始的矢量数据存储方式，它仅仅能够存储几何体的位置数据，而无法在一个文件之中同时存储这些几何体的属性数据。因此，Shapefile还必须附带一个二维表用于存储Shapefile中每个几何体的属性信息。Shapefile中许多几何体能够代表复杂的地理事物，并为他们提供强大而精确的计算能力。

Shapefile文件指的是一种文件存储的方法，实际上该种文件格式是由多个文件组成的。其中，要组成一个Shapefile，有三个文件是必不可少的，它们分别是"`.shp`",
"`.shx`"与
"`.dbf`"文件。表示同一数据的一组文件其文件名前缀应该相同。例如，存储一个关于湖的几何与属性数据，就必须有lake.shp，lake.shx与lake.dbf三个文件。而其中“真正”的Shapefile的后缀为shp，然而仅有这个文件数据是不完整的，必须要把其他两个附带上才能构成一组完整的地理数据。除了这三个必须的文件以外，还有八个可选的文件，使用它们可以增强空间数据的表达能力。所有的文件名都必须遵循MS
DOS的[8.3文件名标准](https://zh.wikipedia.org/wiki/8.3 "wikilink")（文件前缀名8个字符，后缀名3个字符，如`shapefil.shp`），以方便与一些老的应用程序保持兼容性，尽管现在许多新的程序都能够支持长文件名。此外，所有的文件都必须位于同一个目录之中。

必须的文件:

  - `.shp` — 图形格式，用于保存元素的几何实体。
  - `.shx` — 图形索引格式。几何体位置索引，记录每一个几何体在shp文件之中的位置，能够加快向前或向后搜索一个几何体的效率。
  - `.dbf` — 属性数据格式，以dBase III+ 的数据表格式存储每个几何形状的属性数据。

其他可选的文件：

  - `.prj` — 投影格式，用于保存地理坐标系统与投影信息，是一个存储[well-known
    text投影描述符的文本文件](https://zh.wikipedia.org/wiki/well-known_text "wikilink")。
  - `.sbn` and `.sbx` — 几何体的空间索引
  - `.fbn` and `.fbx` — 只读的Shapefiles的几何体的空间索引
  - `.ain` and `.aih` — 列表中活动字段的属性索引。
  - `.ixs` — 可读写Shapefile文件的地理编码索引
  - `.mxs` — 可读写Shapefile文件的地理编码索引(ODB格式)
  - `.atx` — `.dbf`文件的属性索引，其文件名格式为*shapefile*.*columnname*`.atx` (ArcGIS
    8及之后的版本)
  - `.shp.xml` — 以XML格式保存元数据。
  - `.cpg` —
    用于描述`.dbf`文件的[代码页](../Page/代码页.md "wikilink")，指明其使用的[字符编码](../Page/字符编码.md "wikilink")。

在每个`.shp`,
`.shx`与`.dbf`文件之中，图形在每个文件的排序是一致的。也就是说，`.shp`的第一条记录与`.shx`及`.dbf`之中的第一条记录相对应，如此类推。此外，在`.shp`与`.shx`之中，有许多字段的[字节序是不一样的](../Page/字节序.md "wikilink")。因此用户在编写读取这些文件格式的程序时，必须十分小心地处理不同文件的不同字节序。

Shapefile通常以X与Y的方式来处理地理坐标，一般X对应经度，Y对应纬度，用户必须注意X，Y的顺序。

### Shapefile图形格式 (`.shp`)

Shapefile格式的主文件包含了地理参照数据。该文件由一个定长的文件头和一个或若干个变长的记录数据组成。每一条变长数据记录包含一个记录头和一些记录内容。详细的数据存储格式由*Esri
Shapefile技术描述*.\[2\]提供。注意，虽然Shapefile文件的后缀名与[AutoCAD的图形字体源格式它们的文件后缀名相同的](../Page/AutoCAD.md "wikilink")，都是`.shp`
，请不要把它们混淆。

主文件头包含17个字段，共100个字节，其中包含九个4字节（32位有符号整数，int32）整数字段，紧接着是八个8字节（[双精度浮点数](https://zh.wikipedia.org/wiki/双精度浮点数 "wikilink")）有符号浮点数字段。

| 字节    | 类型     | [字节序](../Page/字节序.md "wikilink") | 用途                                                                                                              |
| ----- | ------ | -------------------------------- | --------------------------------------------------------------------------------------------------------------- |
| 0–3   | int32  | 大端序                              | 文件编号 (永远是十六进制数0x0000270a)                                                                                       |
| 4–23  | int32  | 大端序                              | 五个没有被使用的32位整数                                                                                                   |
| 24–27 | int32  | 大端序                              | 文件长度，包括文件头。（用16位整数表示）                                                                                           |
| 28–31 | int32  | 小端序                              | 版本                                                                                                              |
| 32–35 | int32  | 小端序                              | 图形类型（参见下面）                                                                                                      |
| 36–67 | double | 小端序                              | [最小外接矩形](../Page/最小外接矩形.md "wikilink") (MBR)，也就是一个包含shapefile之中所有图形的矩形。以四个浮点数表示，分别是X坐标最小值，Y坐标最小值,X坐标最大值，Y坐标最大值。 |
| 68–83 | double | 小端序                              | Z坐标值的范围。以两个浮点数表示，分别是Z坐标的最小值与Z坐标的最大值。                                                                            |
| 84–99 | double | 小端序                              | M坐标值的范围。以两个浮点数表示，分别是M坐标的最小值与M坐标的最大值。                                                                            |

然后这个文件包含不定数目的变长数据记录，每个数据记录以一个8字节记录头开始：

| 字节  | 类型    | [字节序](../Page/字节序.md "wikilink") | 用途             |
| --- | ----- | -------------------------------- | -------------- |
| 0–3 | int32 | 大端序                              | 记录编号 (从1开始)    |
| 4–7 | int32 | 大端序                              | 记录长度（以16位整数表示） |

在记录头的后面就是实际的记录：

| 字节  | 类型    | [字节序](../Page/字节序.md "wikilink") | 用途         |
| --- | ----- | -------------------------------- | ---------- |
| 0–3 | int32 | 小端序                              | 图形类型（参见下面） |
| 4–  | \-    | \-                               | 图形内容       |

变长记录的内容由图形的类型决定。Shapefile支持以下的图形类型：

<table>
<thead>
<tr class="header">
<th><p>值</p></th>
<th><p>图形类型</p></th>
<th><p>字段</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>0</p></td>
<td><p>空图形</p></td>
<td><p>无</p></td>
</tr>
<tr class="even">
<td><p>1</p></td>
<td><p>Point（点）</p></td>
<td><p>X, Y</p></td>
</tr>
<tr class="odd">
<td><p>3</p></td>
<td><p>Polyline（折线）</p></td>
<td><p>（最小包围矩形）MBR，组成部分数目，点的数目，所有组成部分，所有点</p></td>
</tr>
<tr class="even">
<td><p>5</p></td>
<td><p>Polygon（多边形）</p></td>
<td><p>（最小包围矩形）MBR，组成部分数目，点的数目，所有组成部分，所有点</p></td>
</tr>
<tr class="odd">
<td><p>8</p></td>
<td><p>MultiPoint（多点）</p></td>
<td><p>（最小包围矩形）MBR，点的数目，所有点</p></td>
</tr>
<tr class="even">
<td><p>11</p></td>
<td><p>PointZ（带Z与M坐标的点）</p></td>
<td><p>X, Y, Z, M</p></td>
</tr>
<tr class="odd">
<td><p>13</p></td>
<td><p>PolylineZ（带Z或M坐标的折线）</p></td>
<td><p><em>必须的</em>: （最小包围矩形）MBR，组成部分数目，点的数目，所有组成部分，所有点，Z坐标范围, Z坐标数组<br />
<em>可选的</em>: M坐标范围, M坐标数组</p></td>
</tr>
<tr class="even">
<td><p>15</p></td>
<td><p>PolygonZ（带Z或M坐标的多边形）</p></td>
<td><p><em>必须的</em>: （最小包围矩形）MBR，组成部分数目，点的数目，所有组成部分，所有点，Z坐标范围, Z坐标数组<br />
<em>可选的</em>: M坐标范围, M坐标数组</p></td>
</tr>
<tr class="odd">
<td><p>18</p></td>
<td><p>MultiPointZ（带Z或M坐标的多点）</p></td>
<td><p><em>必须的</em>: （最小包围矩形）MBR，点的数目，所有点， Z坐标范围, Z坐标数组<br />
<em>可选的</em>: M坐标范围, M坐标数组</p></td>
</tr>
<tr class="even">
<td><p>21</p></td>
<td><p>PointM（带M坐标的点）</p></td>
<td><p>X, Y, M</p></td>
</tr>
<tr class="odd">
<td><p>23</p></td>
<td><p>PolylineM（带M坐标的折线）</p></td>
<td><p><em>必须的</em>: （最小包围矩形）MBR，组成部分数目，点的数目，所有组成部分，所有点<br />
<em>可选的</em>: M坐标范围, M坐标数组</p></td>
</tr>
<tr class="even">
<td><p>25</p></td>
<td><p>PolygonM（带M坐标的多边形）</p></td>
<td><p><em>必须的</em>: （最小包围矩形）MBR，组成部分数目，点的数目，所有组成部分，所有点<br />
<em>可选的</em>: M坐标范围, M坐标数组</p></td>
</tr>
<tr class="odd">
<td><p>28</p></td>
<td><p>MultiPointM（带M坐标的多点）</p></td>
<td><p><em>必须的</em>: （最小包围矩形）MBR，点的数目，所有点<br />
<em>可选的</em>: M坐标范围, M坐标数组</p></td>
</tr>
<tr class="even">
<td><p>31</p></td>
<td><p>MultiPatch</p></td>
<td><p><em>必须的</em>: （最小包围矩形）MBR，组成部分数目，点的数目，所有组成部分，所有点，Z坐标范围, Z坐标数组<br />
<em>可选的</em>: M坐标范围, M坐标数组</p></td>
</tr>
</tbody>
</table>

在普通的使用中，Shapefile通常包含点、折线与多边形。带有Z坐标的形状是三维的。带有M坐标的形状是包含一个用户指定的测量值，该测量值定义在每一个点坐标之上。三维的Shapefile十分罕见。此外，实际应用中通常，Shapefile的M测量值这个功能已经被其他功能更加强大和稳健的数据库取代，Shapefile一般只负责几何数据。

### Shapefile图形索引格式(`.shx`)

Shapefile的文件索引包含与`.shp`文件相同的100个字节的文件头，然后跟随着不定数目的8字节定长记录，每个记录都有两个字段：

| 字节  | 类型    | [字节序](../Page/字节序.md "wikilink") | 用途             |
| --- | ----- | -------------------------------- | -------------- |
| 0–3 | int32 | 大端序                              | 记录位移（用16位整数表示） |
| 4–7 | int32 | 大端序                              | 记录长度（用16位整数表示） |

因为这个图形索引每个数据项都是定长的，因此程序只要在这个图形索引中向前或向后遍历，读取索引中所记录的记录位移与记录长度，程序就可以很快地向前或向后遍历整个Shapefile，在`.shp`文件中找到任意一个几何体的正确位置。

### Shapefile属性格式(`.dbf`)

每个图形的属性数据存储在[dBase格式的数据表之中](https://zh.wikipedia.org/wiki/dBase "wikilink")。属性数据也可以存储在另一种开放的数据表格式[xBase格式之中](https://zh.wikipedia.org/wiki/xBase "wikilink")。在[开源Shapefile](https://zh.wikipedia.org/wiki/开源 "wikilink")[函式库Shapefile](https://zh.wikipedia.org/wiki/函式库 "wikilink")
C library\[3\]中就是这样存储。

### Shapefile投影格式(`.prj`)

`.prj`文件中的信息包含了`.shp`文件中几何数据所使用的[经纬度坐标系统](../Page/经纬度.md "wikilink")。尽管这个文件不是必须的，一般使用都会提供它，这样用户就无需猜测所给的坐标的经纬度系统。ArcGIS
Desktop 9及以后的版本使用[well-known
text格式来生成坐标系统描述信息](https://zh.wikipedia.org/wiki/well-known_text "wikilink")。以前的ArcGIS版本和某些第三方软件通常生成如下的这种格式：

老的投影文件格式样例：

<tt> Projection UTM

Zunits NO

Units METERS

Spheroid CLARKE1866

Xshift 0.0000000000

Yshift -4000000.0000000000

Parameters

\-108 0 0.000 /\* longitude

36 0 0.000 /\* latitude

</tt> 新的WKT格式样例：

`GEOGCS["GCS_North_American_1927",DATUM["D_North_American_1927",SPHEROID["Clarke_1866",6378206.4,294.9786982]],PRIMEM["Greenwich",0],UNIT`[`"Degree",0.0174532925199433`](https://zh.wikipedia.org/wiki/"Degree",0.0174532925199433 "wikilink")

`.prj`文件中包含以下信息：

  - [经纬度坐标系统或](../Page/经纬度.md "wikilink")[地图投影的名称](../Page/地图投影.md "wikilink")
  - [测量基准](https://zh.wikipedia.org/wiki/测量基准 "wikilink")
  - [椭球体参数](https://zh.wikipedia.org/wiki/椭球体 "wikilink")
  - [本初子午线](https://zh.wikipedia.org/wiki/本初子午线 "wikilink")
  - 所使用的单位
  - 用于定义[地图投影的参数](../Page/地图投影.md "wikilink")，例如：
      - 纬度原点
      - 缩放比例
      - 中央经线
      - 北伪偏移
      - 东伪偏移
      - 标准纬线

### Shapefile空间索引格式(`.sbn`)

这是一个二进制的[空间索引文件](https://zh.wikipedia.org/wiki/空间索引 "wikilink")，仅仅可以应用在ESRI的软件之中。其文件格式没有公开的文档，其他厂商也没有实现这个文件。`.sbn`并不是必须的，因为`.shp`文件之中已经包含了所有的解析空间数据所需的信息。

## 限制

### Shapefile与拓扑

Shapefile无法存储拓扑信息。在ESRI的文件格式中，ArcInfo
的Coverage、以及Personal/File/Enterprise[地理数据库](https://zh.wikipedia.org/wiki/地理数据库 "wikilink")，能够保存地理要素的拓扑信息。

### 空间表达

在shapefile文件之中，所有的折线与[多边形都是用点来定义](../Page/多边形.md "wikilink")，点与点之间采用线性插值，也就是说点与点之间都是用线段相连。在数据采集时，点与点之间的距离决定了该文件所使用的比例。当图形放大超过一定比例的时候，图形就会呈现出锯齿。要使图形看上去更加平滑，那么就必须使用更多的点，这样就会消耗更大的存储空间。在这种情况下，[样条函数可以很精确地表达不同形状的曲线而且占据相对更少的空间](../Page/样条函数.md "wikilink")，但是目前shapefile并不支持样条曲线。

### 数据存储量

`.shp`文件或`.dbf`文件最大的体积不能够超过2
GB（或2<sup>31</sup>位）。也就是说，一个shapefile最多只能够存储七千万个点坐标。\[4\]文件所能够存储的几何体的数目取决于单个要素所使用的顶点的数目。

属性数据库格式所使用的`.dbf`文件基于一个比较古老的[dBase标准](https://zh.wikipedia.org/wiki/dBase "wikilink")。这种数据库格式天生有许多限制，例如：\[5\]

  - 无法存储[空值](https://zh.wikipedia.org/wiki/空值_\(SQL\) "wikilink")。这对于数量数据来说是一个严重的问题，因为空值通常都用0来代替，这样会歪曲很多统计表达的结果。
  - 对字段名或存储值中的[Unicode支持不理想](https://zh.wikipedia.org/wiki/Unicode "wikilink")。
  - 字段名最多只能够有10个字符。
  - 最多只能够有255个字段。
  - 只支持以下的数据类型：浮点类型（13字节存储空间），整数（4或9字节存储空间），日期（不能够存储时间，8字节存储空间）和文本（最大254字节存储空间）
  - 浮点数有可能包含舍入错误，因为它们以文本的形式保存。

### 混合几何类型

由于在每一条几何记录中都有该记录的几何类型，所以理论上一个shapefile是可以存储混合的几何类型。但实际上规范中指出在同一shapefile之中所有非空的几何体都必须是同一类型。因此shapefile被限制为仅仅可以混合存储空几何体和另一单一几何体，该几何体的类型必须与文件头中定义的类型一致。例如，一个shapefile文件不可能同时包含折线与多边形数据，所以，在实际的地理事物描述中，井（点类型）、河（折线类型）与湖（多边形类型）必须分开存储在三个不同的文件之中。

## 参见

  - [地理信息系统](../Page/地理信息系统.md "wikilink")

## 参考

<references/>

## 外部链接

  - [Shapefile
    文件扩展（英文）](http://help.arcgis.com/en/arcgisdesktop/10.0/help/index.html#/Shapefile_file_extensions/005600000003000000/)
    – Esri ArcGIS 10.0 在线帮助(2010)
  - [Esri Shapefile
    技术描述（英文）](http://www.esri.com/library/whitepapers/pdfs/shapefile.pdf)
    – Esri白皮书, 1998年6月
  - [shapelib.maptools.org](http://shapelib.maptools.org/) -
    开放的shapefile读写C函数库
  - [Python Shapefile 函数库](http://code.google.com/p/pyshp/) -
    开源的（[MIT许可证](https://zh.wikipedia.org/wiki/MIT许可证 "wikilink")）shapefile读写Python函数库

[Category:公开格式](https://zh.wikipedia.org/wiki/Category:公开格式 "wikilink")
[Category:GIS向量文件格式](https://zh.wikipedia.org/wiki/Category:GIS向量文件格式 "wikilink")

1.

2.
3.

4.

5.