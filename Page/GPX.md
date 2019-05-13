**GPX**（**GPS eXchange
Format**，GPS交换格式）是一个XML格式，为应用软件设计的通用[GPS数据格式](../Page/GPS.md "wikilink")。

它可以用来描述路点、轨迹、路程。这个格式是免费的，可以在不需要付任何许可费用的前提下使用。它的标签保存位置，海拔和时间，可以用来在不同的GPS设备和软件之间交换数据。如查看轨迹、在照片的[exif数据中嵌入地理数据](../Page/exif.md "wikilink")。

## 数据类型

[Wayroutrackp.png](https://zh.wikipedia.org/wiki/File:Wayroutrackp.png "fig:Wayroutrackp.png")
GPX檔案格式（GPS Exchange
Format）是[XML格式的一種](../Page/XML.md "wikilink")，專門用來儲存地理資訊。
一個GPX檔案當中可能包含一些**路點**（waypoint）及一些**軌跡點**（trackpoint）。
以[全球定位系统](../Page/全球定位系统.md "wikilink")（GPS裝置）所產生的GPX檔為例，
路點可能是各自獨立互不相干的重要標記點， 例如照相的地點或使用者手動標記的休息站或路口等等；至於GPS裝置自動定時記錄的則是軌跡點。
有順序的一串軌跡點構成一個**轨迹**（track）或者**路程**（route）。轨迹是一个人曾经走过的记录，可能包含走錯的路等等；**路程**則經常是建議未來用路人可以走的路徑。所以，一般来讲，轨迹里的点，包含时间信息，路程里的点，則没有时间信息。

GPX文件內的點，至少要包含经纬度座标兩項資訊；其它欄位都是可有可無的。

## 示例

下面这个GPX文件（局部）是由[Garmin](../Page/Garmin.md "wikilink") [Oregon
400t手持GPS设备产生](../Page/Oregon_400t.md "wikilink")，这个文件展示了GPX格式的功能。

``` xml
<?xml version="1.0" encoding="UTF-8" standalone="no" ?>

<gpx ns="http://www.topografix.com/GPX/1/1" xmlns:gpxx="http://www.garmin.com/xmlschemas/GpxExtensions/v3" xmlns:gpxtpx="http://www.garmin.com/xmlschemas/TrackPointExtension/v1" creator="Oregon 400t" version="1.1" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.topografix.com/GPX/1/1 http://www.topografix.com/GPX/1/1/gpx.xsd http://www.garmin.com/xmlschemas/GpxExtensions/v3 http://www.garmin.com/xmlschemas/GpxExtensionsv3.xsd http://www.garmin.com/xmlschemas/TrackPointExtension/v1 http://www.garmin.com/xmlschemas/TrackPointExtensionv1.xsd">
  <metadata>
    <link href="http://www.garmin.com">
      <text>Garmin International</text>
    </link>
    <time>2009-10-17T22:58:43Z</time>
  </metadata>
  <trk>
    <name>Example GPX Document</name>
    <trkseg>
      <trkpt lat="47.644548" lon="-122.326897">
        <ele>4.46</ele>
        <time>2009-10-17T18:37:26Z</time>
      </trkpt>
      <trkpt lat="47.644548" lon="-122.326897">
        <ele>4.94</ele>
        <time>2009-10-17T18:37:31Z</time>
      </trkpt>
      <trkpt lat="47.644548" lon="-122.326897">
        <ele>6.87</ele>
        <time>2009-10-17T18:37:34Z</time>
      </trkpt>
    </trkseg>
  </trk>
</gpx>
```

## 参见

  - Concepts
      - [興趣點](../Page/興趣點.md "wikilink")
      - [OpenStreetMap](../Page/OpenStreetMap.md "wikilink"), a
        collaborative project to create free editable maps using GPX
        traces.
  - 文件格式
      - [可交换图像文件](../Page/EXIF.md "wikilink")
      - [GML](../Page/GML.md "wikilink")
      - [KML](../Page/KML.md "wikilink"), the equivalent format
        compatible with [Google
        Earth](../Page/Google_Earth.md "wikilink").
  - 软件
      - [GPSBabel](../Page/GPSBabel.md "wikilink")，各类GPS数据文件格式的转换工具，支持格式如：KML，GPX，GML...等等
      - [TCX](../Page/Training_Center_XML_\(TCX\).md "wikilink")，Garmin
        Training Center XML

## 参考

[Category:文件格式](https://zh.wikipedia.org/wiki/Category:文件格式 "wikilink")
[Category:基于XML的标准](https://zh.wikipedia.org/wiki/Category:基于XML的标准 "wikilink")
[Category:置标语言](https://zh.wikipedia.org/wiki/Category:置标语言 "wikilink")
[Category:全球定位系统](https://zh.wikipedia.org/wiki/Category:全球定位系统 "wikilink")