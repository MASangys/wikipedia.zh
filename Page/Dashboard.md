**Dashboard**（為**儀表板**之意）是一個[蘋果公司](https://zh.wikipedia.org/wiki/蘋果公司 "wikilink")[Mac OS X v10.4 Tiger作業系統中的應用程式](https://zh.wikipedia.org/wiki/Mac_OS_X_v10.4 "wikilink")，用作稱為「[widget](https://zh.wikipedia.org/wiki/widget "wikilink")」的小型應用程式之執行基礎。其界面主要為一半透明的圖層，在啟動以外的時間是隱藏起來的，使用者可透過按下熱鍵來啟動，而熱鍵可在偏好設定中變更指定。

當Dashboard啟動時，使用者的桌面會變暗，而widgets則會漸入出現於前景中。如同一般的應用程式視窗，widgets可以被四處移動、重新配置、關閉，以及重複開啟（因此能夠同時開啟多個相同的widget，並且針對每一個做出不同的設定）。可使用選單列開啟新的widget，只需點選或拖曳widget的圖示至畫面上即可。等待widget載入後就能立即使用。

[macOS Catalina後不再提供](https://zh.wikipedia.org/wiki/macOS_Catalina "wikilink")**Dashboard。**

## 製作Widgets

開發者可以利用[超文件標示語言](https://zh.wikipedia.org/wiki/超文件標示語言 "wikilink")（HTML）、[層疊樣式表](https://zh.wikipedia.org/wiki/層疊樣式表 "wikilink")（CSS）和[JavaScript](../Page/JavaScript.md "wikilink")製作Dashboard widgets。由於和製作[網站](../Page/網站.md "wikilink")使用的程式語言相同，許多網路開發者都有製作widgets的能力。Widgets本質上是顯示於Dashboard圖層中的簡單HTML檔案；widgets使用了[WebKit](../Page/WebKit.md "wikilink")應用程式架構（application framework），該架構也使用於蘋果的[Safari](../Page/Safari.md "wikilink")網路瀏覽器，這代表即使是沒有Dashboard的舊版Mac OS X也能製作widgets。

Dashboard widgets通常包含以下六個檔案：

  - HTML檔案，這是會顯示於Dashboard圖層的主要檔案
  - CSS檔案，指定widget的格式（僅提供HTML檔案呼出使用）
  - JavaScript檔案，開發者也可將JavaScript內建於HTML檔案中
  - [屬性清單](https://zh.wikipedia.org/wiki/Plist "wikilink")（Property List，稱為「Info.plist」），讓Dashboard能夠載入的widget基本資訊（例如名稱、版本、HTML檔案位置等）
  - Widget的背景圖片，[PNG](../Page/PNG.md "wikilink")格式
  - 顯示於選單列中的widget圖示

當以上所有的檔案都放在一個檔案夾中，並命名與加上「.wdgt」副檔名之後，這個檔案夾就會變成一個可在Dashboard中執行開啟的widget。更複雜的widget可能會包含[Cocoa](../Page/Cocoa.md "wikilink") widget附加元件（plugin，用作指定平台的功能）、一個或多個JavaScript檔案（進行文字捲動、偏好設定等）或多個圖片（提供可自定的選單或按鈕）。

蘋果推出的作業系統[Mac OS X 10.5](https://zh.wikipedia.org/wiki/Mac_OS_X_10.5 "wikilink") Leopard內建一套名為[Dashcode的開發程式](https://zh.wikipedia.org/wiki/Dashcode "wikilink")，讓開發者能更輕鬆容易的製作widgets。

## 外部連結

  - [Dashboard on Leopard](http://www.apple.com/macosx/leopard/features/dashboard.html)（apple.com）

  - [Dashboard widget開發者支援網頁](http://developer.apple.com/macosx/dashboard.html)（apple.com）

  - [Dashboard widgets下載網頁](http://www.apple.com/downloads/dashboard/)（apple.com）

[Category:Mac_OS介面](https://zh.wikipedia.org/wiki/Category:Mac_OS介面 "wikilink") [Category:Webkit衍生軟體](https://zh.wikipedia.org/wiki/Category:Webkit衍生軟體 "wikilink")