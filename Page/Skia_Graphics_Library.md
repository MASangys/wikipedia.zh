**Skia Graphics
Library**（SGL）是一個由[C++編寫的](../Page/C++.md "wikilink")[開放原始碼](https://zh.wikipedia.org/wiki/開放原始碼 "wikilink")[圖形庫](https://zh.wikipedia.org/wiki/圖形庫 "wikilink")，最初由Skia公司開發，被[Google收購後以](../Page/Google.md "wikilink")[New
BSD License許可下開源](https://zh.wikipedia.org/wiki/BSD授權條款 "wikilink")。

Skia公司所開發的第一個產品就是Skia Graphics
Library，能在低端裝置如手機上呈現高品質的2D圖形。，它已被應用於[Android](../Page/Android.md "wikilink")、[Google
Chrome](../Page/Google_Chrome.md "wikilink")、[Chrome
OS](../Page/Chrome_OS.md "wikilink")、[Chromium
OS](../Page/Chromium_OS.md "wikilink")、[Mozilla
Firefox](https://zh.wikipedia.org/wiki/Mozilla_Firefox "wikilink")、[Firefox
OS以及](../Page/Firefox_OS.md "wikilink")[Sublime
Text](../Page/Sublime_Text.md "wikilink")。

2012年时Skia有大概80,000行程式碼，以C++開發而成\[1\]。

## 範例

Skia主要的類別是SkCanvas，所有的繪圖功能都是實作於此類別。以下是SGL簡單的程式碼：

`SkCanvas* can = GraphicsJNI::getNativeCanvas(...);      `
`SkPaint paint;    `
`paint.setARGB(255, 0, 0, 255);`
`can->drawText("Hello, world", 12, 10, 10, paint);`

## “绿化”缺陷

为了提高运行的效率，Google在Android的Skia实现中，对JPG压缩处理算法改写来代替调用libjpeg-turbo，实现了一个低精度的[YUV转换为](../Page/YUV.md "wikilink")[RGB的算法](https://zh.wikipedia.org/wiki/RGB "wikilink")，但该改写算法中除法取整的方式不合理，不仅每次压缩后画质劣化更严重，随着误差逐步累积，还会导致图片会越来越偏向绿色。最终该缺陷在2016年4月得到修复，修改回直接使用libjpeg-turbo的调用。\[2\]而作为Android基础库的一部分，该修复也被认为预计于[Android
7中修复](https://zh.wikipedia.org/wiki/Android_7 "wikilink")。\[3\]

## 参见

  - [cairo](https://zh.wikipedia.org/wiki/Cairo_\(繪圖\) "wikilink")

  - [Direct2D](../Page/Direct2D.md "wikilink")

  - [OpenVG](../Page/OpenVG.md "wikilink")

  -
  -
## 参考资料

## 外部链接

  -
  -
  - <http://www.slideshare.net/snailee/skia-freetype-android-2d-graphics-essentials>

[Category:繪圖函式庫](https://zh.wikipedia.org/wiki/Category:繪圖函式庫 "wikilink")
[Category:使用BSD许可证的软件](https://zh.wikipedia.org/wiki/Category:使用BSD许可证的软件 "wikilink")
[Category:Google](https://zh.wikipedia.org/wiki/Category:Google "wikilink")

1.  [android 的图形引擎 skia](http://www.linuxgraphics.cn/android/skia.html)
2.
3.