**Quartz 2D**是在[Mac OS X中的主要繪圖函式庫](https://zh.wikipedia.org/wiki/Mac_OS_X "wikilink")。它取代早期版本的[Mac OS](https://zh.wikipedia.org/wiki/Mac_OS "wikilink")（現在稱為"Classic"）所使用的[QuickDraw](https://zh.wikipedia.org/wiki/QuickDraw "wikilink")。

Quartz 2D是以Adobe [PDF](https://zh.wikipedia.org/wiki/PDF "wikilink")（一種統一的檔案格式，不管在那個平台上建立，在任何來源的文件中保留所有的字型，格式，顏色，以及繪圖）1.4版本為基礎。他是源自[NeXT](../Page/NeXT.md "wikilink")的[Display PostScript後代](https://zh.wikipedia.org/wiki/Display_PostScript "wikilink")。

Quartz 2D與QuickDraw在數個關鍵領域有所不同。QuickDraw天生地以[raster圖形為基礎](https://zh.wikipedia.org/wiki/raster "wikilink")，基本的繪圖元素是[像素](../Page/像素.md "wikilink")。Quartz 2D替代地使用更數學的方法，座標空間是二維實數所定義的抽象觀念。在這個空間的點可以被連線起來形成路徑，像是直線，[貝茲曲線](../Page/貝茲曲線.md "wikilink")等等。要在顯示器上建立實際上的影像，那些路徑就會被點陣化在顯示器裝置解析度下用來產生像素。這樣允許相同的繪圖指令可以在任何裝置上，使用可以得到的最佳解析度，來產生相同的輸出。就像在[PostScript](../Page/PostScript.md "wikilink")，路徑可以被劃線成為外框，直線以此類推，且封閉的路徑可以被填滿而創造出實體的形狀。文字是簡單地由路徑產生，然後形成文字標記的形狀。

## 參考

  - [Quartz (繪圖層)](https://zh.wikipedia.org/wiki/Quartz_\(繪圖層\) "wikilink")
  - [Quartz Compositor](../Page/Quartz_Compositor.md "wikilink")

## 外部連結

  - [Mac OS X –特色](http://www.apple.com/macosx/features/) –取自Apple
  - [Drawing with Quartz 2D](https://web.archive.org/web/20041108233411/http://developer.apple.com/documentation/GraphicsImaging/Conceptual/drawingwithquartz2d/) – Apple的開發者文件
  - [Quartz 2D參考文件](https://web.archive.org/web/20041031062638/http://developer.apple.com/documentation/GraphicsImaging/Reference/CGAPI-title.html)
  - [為QuickDraw程式設計師簡介Quartz 2D](http://www.macdevcenter.com/pub/a/mac/2004/09/28/quartz.html) – O'Reilly's MacDevCenter的開發者文件

[Category:MacOS](https://zh.wikipedia.org/wiki/Category:MacOS "wikilink")