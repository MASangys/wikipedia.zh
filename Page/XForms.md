**XForms**是用於從 Web表單收集輸入的XML格式，是 [HTML](../Page/HTML.md "wikilink")/XHTML 表單下一代的继承者；XForms 1.0（第三版）於2007年10月29日發布。最初的 XForms規範於 2003年10月14日成為 [W3C官方推薦標準](https://zh.wikipedia.org/wiki/W3C "wikilink")，而引入了若干改進的XForms 1.1在 2009年10月20日達到了相同的狀態。它采用了 [XML](../Page/XML.md "wikilink")的格式。XForms被設計為具有足夠的通用性，可以獨立的方式使用，也可用 XHTML以外的表示語言來描述用戶界面和一組常用的數據操作任務。

## 與一般表單的差異

與一般的[網頁表單](https://zh.wikipedia.org/wiki/網頁表單 "wikilink")（最初以 HTML定義）相反，XForms 的設計使用了模型-視圖-控制器（MVC）方法。該模型包含一或多個描述表單數據的XForms模型，對這些數據的約束和提交。該視圖描述了表單中顯示的控件，如何將它們組合在一起以及它們所綁定的數據。CSS則用於描繪表單的外觀呈現。

XForms文檔可如同網頁表單一樣簡單（只需指定模型部分中的提交元素，並將控件放置在主體中），但 XForms包含許多高級功能。例如，要求最新的數據並在運行時更新表單，這和使用 XMLHttpRequest/AJAX（除非腳本除外）非常相似。表單的作者若根據 XML模型：需驗證用戶數據的類型、需要某些數據，禁用輸入控件或根據情況修改部份表單、強制數據之間的特定關係、輸入可變長度的數據數組、輸出從表單數據導出的計算值、使用 XML文檔預填條目，回應（與提交時相比），並根據所顯示的設備（桌面瀏覽器與移動設備與純文本等）修改每個控件的樣式。通常不需要使用 JavaScript等語言編寫腳本。但是，XForms確實包含一個事件模型，以及用於實現更複雜表單行為的操作。XForms 的操作和事件處理是使用 XML方言，而不以 JavaScript腳本語言來控制。

與網頁表單一樣，XForms可以用各種非 XML提交協議（multipart/form-data，application/x-www-form-urlencoded），但是一個新特性是XForms能將數據以 XML格式發送到服務器。XML文檔也可用於在表單中預填數據。由於 XML是一種標準，因此具備了很多提交時解析和修改數據的工具；傳統形式的類似工具也存在。XForms本身即是一種 XML方言，因此可以使用 XSLT 從其它 XML文檔創建和創建。XML模型綱要(schema)可使用轉換從而自動產生 XForms，並可將 XForms轉換為 XHTML表單。

## 軟體支援

在撰寫本文時，現在流行的網頁瀏覽器均無原生支援 XForms。但是有各種瀏覽器插件存在，客戶端擴展和伺服器/客戶端的解決方案。以下列出了一些實現的軟體技術：

  - 在 Firefox 的 XForms擴展是 Mozilla項目的一部分。XForms 1.0 SE 的支援並不完整，但涵蓋了大部分規範，但 HTML表格中使用基於重複屬性的明顯例外。該擴展可用於 Firefox 2和Firefox 3，但未升級能支援 Firefox 4及更高版本。2011年7月首席開發人員寫道，XForms支援將不再更新；最後在 Firefox 19 放棄了對 XForms 的支援。

<!-- end list -->

  - IBM Lotus Forms支援基於 XForms的純 XML表單的開發和部署。有建立在 Eclipse 可視化設計環境和客戶端查看器上的試用版，這些查看器可在網頁瀏覽器中運行 XForms，也可作為獨立的桌面應用程序運行。

<!-- end list -->

  - OpenOffice.org 版本2.0 和 LibreOffice 支援 XForms。

## 實作技術比較

## XRX 架構

由於 XForms可輕易地編輯複雜的 XML數據，因此將 XForms 與利用 REST介面的 XML資料庫結合使用有很多優勢。三種技術的組合（客戶端上 XForms，伺服務器上 REST介面和 XQuery編程）統稱為 XRX 應用程序開發。XRX 架構以其簡單性而聞名，在客戶端和資料庫中都使用 XML，可省略一般應用程序中的物件，需要與相關聯資料結構的轉換步驟。

## XForms移動設備

### 優勢

### 實作

#### 啟動

#### Xfolite

#### JavaRosa

#### ODKCollect

#### 組完成

## 另見

## 參考文獻

## 外部連結

  - [XForms 1.0](http://www.w3.org/TR/2003/REC-xforms-20031014/)
  - [XForms 1.0 (Second Edition)](http://www.w3.org/TR/2006/REC-xforms-20060314/)
  - [XForms 1.0 (Third Edition)](http://www.w3.org/TR/2007/REC-xforms-20071029/)
  - [XForms 1.1](http://www.w3.org/TR/2009/REC-xforms-20091020/)

[Category:XML](https://zh.wikipedia.org/wiki/Category:XML "wikilink") [Category:W3C标准](https://zh.wikipedia.org/wiki/Category:W3C标准 "wikilink") [Category:置标语言](https://zh.wikipedia.org/wiki/Category:置标语言 "wikilink")