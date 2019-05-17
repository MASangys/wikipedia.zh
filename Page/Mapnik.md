**Mapnik**是一個[开放源代码的](../Page/开放源代码.md "wikilink")[地图学工具集](../Page/地图学.md "wikilink")，提供基於客戶端與伺服器端的地圖[渲染使用](../Page/渲染.md "wikilink")，以[C++撰寫](../Page/C++.md "wikilink")。Mapnik的原始開發者，Artem
Pavlenko將目標明確設定為透過使用子像素反鋸齒功能來建立美麗的地圖。Mapnik現在也有[Cairo渲染後端](https://zh.wikipedia.org/wiki/Cairo_\(繪圖\) "wikilink")。Mapnik使用[Boost
C++
Libraries來處理如記憶體管理](../Page/Boost_C++_Libraries.md "wikilink")、存取[文件系统](../Page/文件系统.md "wikilink")、正規表達式與解析XML等的一般軟體工作。地圖的外觀可以使用[XML檔案來定義](../Page/XML.md "wikilink")，也可以透過C++、Python與[Node.js等程式語言來建構](../Page/Node.js.md "wikilink")。

## 資料格式

Mapnik透過外掛程式框架來支援許多的資料格式。目前已有與的外掛程式來讀取一系列的向量與光柵資料集。Mapnik也有自訂的[Shapefile](../Page/Shapefile.md "wikilink")、[PostGIS與](../Page/PostGIS.md "wikilink")讀取器。未來也會提供更多的資料存取外掛程式。還有一個osm2pgsql工具\[1\]，其可以將[開放街圖的資料轉換為可以被](../Page/開放街圖.md "wikilink")[PostgreSQL載入的格式](../Page/PostgreSQL.md "wikilink")。Mapnik可以用於將開放街圖的資料渲染成使用者想要的外觀。

## 平臺

Mapnik是一套可以在Windows、Mac與如Linux或Solaris等[类Unix系统上執行的工具集](../Page/类Unix系统.md "wikilink")。

## 使用

其中最多使用者的是[開放街圖專案](../Page/開放街圖.md "wikilink")，其與[Apache
HTTP伺服器的模組](https://zh.wikipedia.org/wiki/Apache_HTTP伺服器 "wikilink")（mod_tile）結合使用，並用openstreetmap-carto樣式來渲染開放街圖的預設圖層\[2\]。Mapnik也被CloudMade\[3\]、\[4\]與[Mapbox](../Page/Mapbox.md "wikilink")\[5\]所使用。

## 授權條款

Mapnik是以[GNU宽通用公共许可证](../Page/GNU宽通用公共许可证.md "wikilink")（LGPL）釋出的自由軟體。

## 參考資料

## 外部連結

  -
[Category:地图学](https://zh.wikipedia.org/wiki/Category:地图学 "wikilink")
[Category:分散式計算計劃](https://zh.wikipedia.org/wiki/Category:分散式計算計劃 "wikilink")
[Category:用C++編程的自由軟體](https://zh.wikipedia.org/wiki/Category:用C++編程的自由軟體 "wikilink")
[Category:地理信息系统](https://zh.wikipedia.org/wiki/Category:地理信息系统 "wikilink")
[Category:開放街圖](https://zh.wikipedia.org/wiki/Category:開放街圖 "wikilink")
[Category:电子地图](https://zh.wikipedia.org/wiki/Category:电子地图 "wikilink")

1.
2.
3.
4.
5.