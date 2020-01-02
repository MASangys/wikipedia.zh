> 本文内容由[Modernizr](https://zh.wikipedia.org/wiki/Modernizr)转换而来。


**Modernizr**是一套[JavaScript](../Page/JavaScript.md "wikilink") [函式庫](../Page/函式庫.md "wikilink")，用來偵測[瀏覽器是否支持](https://zh.wikipedia.org/wiki/瀏覽器 "wikilink")[HTML5](../Page/HTML5.md "wikilink")與[CSS3等規格](https://zh.wikipedia.org/wiki/CSS#CSS3 "wikilink")。如果浏览器不支持，Modernizr会使用其他的解决方法来进行模拟。

## 概要

許多HTML5與CSS 3的功能已經在許多主流的瀏覽器中實作出來。Modernizr能夠告訴開發者，瀏覽器是否已經實作他們想要的功能\[1\]\[2\]\[3\]\[4\]。這讓開發者在瀏覽器上可以充分利用這些新功能，或者嘗試製作解決方案來支援那些老舊的瀏覽器。

## 運作原理

Modernizr不同於傳統透過解析瀏覽器的[用户代理](../Page/用户代理.md "wikilink")（User agent）的識辨方式，認為這種方式亦不可靠，例如使用者可以手動更改它們瀏覽器的User agent、即便是相同的網頁解析引擎，在不同的瀏覽器中也不一定支援相同的功能。因此Modernizr通常會建立一個特定樣式的元件，然後立刻嘗試改寫這些元素的設定，若在支援的瀏覽器上，元件會回傳有意義的值。但在不支援的瀏覽器則會回傳空值或「undefined」。Modernizr利用這些結果來判斷瀏覽器是否支援這些功能。

Modernizr能測試超過100種以上的舊版非主流瀏覽器功能。測試的結果會儲存在一個名為「Modernizr」的物件裡，裡面包含了測試結果的[布林值](https://zh.wikipedia.org/wiki/布林值 "wikilink")。並且根據支援或不支援的功能，新增class名稱給HTML標籤元件。

在說明文件內提供了許多測試的小段程式碼樣本，讓開發者可以在他們的網站開發工作流程中使用這些測試。

## 執行

Modernizr會自動執行。不需要呼叫modernizr_init()之類的函式。執行時會建立一個名為Modernizr的元件，裡面包含了一組測試結果是否支援的布林值。舉例來說，如果瀏覽器支援Canvas API，Modernizr.canvas屬性的值就會是true；如果瀏覽器不支援Canvas API，Modernizr.canvas屬性的值就會是false：

``` JavaScript
  if (Modernizr.canvas) {
    // 開始畫圖吧！
  } else {
    // 瀏覽器不支援原生的畫板。
  }
```

## 範例

Modernizr JavaScript範例：

``` html4strict
<!DOCTYPE html>
 <html class="no-js">
  <head>
    <title>Modernizr - Javascript Example</title>

    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7/jquery.min.js" type="text/javascript"></script>
    <script src="modernizr.js" type="text/javascript"></script>
    <script type="text/javascript">
      $(document).ready(function() {
        if(Modernizr.websockets) {
          $("#result").html('你的瀏覽器支援Web Sockets');
        } else {
          $("#result").html('你的瀏覽器不支援Web Sockets');
        }
      });
    </script>
  </head>
  <body>
  <p id="result"></p>
  </body>
 </html>
```

Modernizr CSS範例：

``` html4strict
 <!DOCTYPE html>
 <html class="no-js">
  <head>
    <title>Modernizr - CSS Example</title>

    <style type="text/css" media="screen">
      div.wsno, div.wsyes { display: none }
      .no-websockets div.wsno { display: block }
      .websockets div.wsyes { display: block }
    </style>

    <script src="modernizr.js" type="text/javascript"></script>
  </head>
  <body>

    <div class="wsno">
      你的瀏覽器不支援WebSockets。
    </div>

    <div class="wsyes">
      你的瀏覽器支援WebSockets。
    </div>
   </body>
 </html>
```

## 相關條目

  - [HTML](../Page/HTML.md "wikilink")
  - [HTML5](../Page/HTML5.md "wikilink")
  - [HTML5 Shiv](../Page/HTML5_Shiv.md "wikilink")
  - [HTML5 File API](https://zh.wikipedia.org/wiki/HTML5_File_API "wikilink")
  - [瀏覽器引擎CSS支援比較](../Page/瀏覽器引擎CSS支援比較.md "wikilink")
  - [JavaScript](../Page/JavaScript.md "wikilink")
  - [Polyfill](https://zh.wikipedia.org/wiki/Polyfill "wikilink")
  - [WebSocket](../Page/WebSocket.md "wikilink")
  - [WebGL](../Page/WebGL.md "wikilink")

## 參考資料

## 外部連結

  -
  -
  - [W3C HTML5](http://dev.w3.org/html5/spec/Overview.html)

  - [W3C geolocation](http://dev.w3.org/geo/api/spec-source.html)

  - [Web workers](http://www.whatwg.org/specs/web-workers/current-work/)

  - [Web worker basics](http://www.html5rocks.com/tutorials/workers/basics/)

  - [1](https://web.archive.org/web/20110613013748/http://blogs.sitepoint.com/regressive-enhancement-with-modernizr-and-yepnope/)

  - [Creating Cross Browser HTML5 Forms Now](http://www.useragentman.com/blog/2010/07/27/cross-browser-html5-forms-using-modernizr-webforms2-and-html5widgets/)

  - [webdesignernote](http://webdesignernotebook.com/css/how-to-use-modernizr/)

  - [HTML Boilerplate in Ajaxian Archives](http://ajaxian.com/archives/dont-build-from-scratch-you-now-have-an-html5-boilerplate-to-work-with)

  -
  -
[Category:網站開發](https://zh.wikipedia.org/wiki/Category:網站開發 "wikilink") [Category:JavaScript](https://zh.wikipedia.org/wiki/Category:JavaScript "wikilink") [Category:JavaScript函式庫](https://zh.wikipedia.org/wiki/Category:JavaScript函式庫 "wikilink") [Category:响应式网页设计](https://zh.wikipedia.org/wiki/Category:响应式网页设计 "wikilink")

1.
2.
3.
4.