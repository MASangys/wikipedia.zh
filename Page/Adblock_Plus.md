> 本文内容由[Adblock Plus](https://zh.wikipedia.org/wiki/Adblock_Plus)转换而来。


**Adblock Plus**（**ABP**）是一個由Eyeo GmbH公司（Wladimir Palant）開發的開放原始碼\[1\]\[2\]附加元件。現已支援[Mozilla Firefox](https://zh.wikipedia.org/wiki/Mozilla_Firefox "wikilink")（含[Firefox行動版](https://zh.wikipedia.org/wiki/Firefox_for_mobile "wikilink")）、[Google Chrome](../Page/Google_Chrome.md "wikilink")、[Internet Explorer](../Page/Internet_Explorer.md "wikilink")、[Opera](https://zh.wikipedia.org/wiki/Opera "wikilink")、[Safari](../Page/Safari.md "wikilink")、[Microsoft Edge](../Page/Microsoft_Edge.md "wikilink")、[Android](../Page/Android.md "wikilink")、[Yandex Browser和](../Page/Yandex_Browser.md "wikilink")[傲遊瀏覽器](https://zh.wikipedia.org/wiki/傲遊瀏覽器 "wikilink")。

## 历史

最初的Adblock 0.1是由丹麥的大學生Henrik Aasted Sorensen於2002年時為[Firefox](../Page/Firefox.md "wikilink")所開發\[3\]\[4\]，它能根據定義規則來隱藏廣告（僅限於圖片），實際上並未真正阻擋廣告載入\[5\]。Henrik Aasted Sorensen開發的最後一個版本是0.3，也是Adblock最後一個穩定版本\[6\]\[7\]。

2003年初，開發人員*rue*接手並開發了**Adblock 0.4**。該版本使用了[XBL](../Page/XBL.md "wikilink")來阻擋廣告的顯示，並且Flash及Java等物件都能被過濾。雖然無法阻擋廣告載入，但是廣告不會在網頁載入過程中顯示出來。而這僅是一個開發版本，並不是穩定的版本，因此Adblock 0.3成為最後一個穩定版本\[8\]。

2004年，**Adblock 0.5**，*rue*採納了Wladimir Palant建議，使用Firefox的功能Content Policies來達到真正的阻擋廣告載入，而不只是簡單地將廣告隱藏，除此之外連背景圖片、腳本及樣式表都能阻擋，從這個版本開始棄用了XBL\[9\]。

後來Adblock的開發停滯了一段時間。2004年到2005年初都沒有任何實際進展。這時另一位開發者Michael McDonald開發了一個名為**Adblock Plus 0.5**的Adblock加強版本，提供了大量的改進及許多新特性。Firefox 1.5於2005年11月正式推出，由於Adblock官方遲遲沒有支援Firefox 1.5，Michael McDonald開發了相容的Adblock Plus版本\[10\]。

Wladimir Palant希望繼續重寫Adblock 0.5，但與Adblock開發者發生了分歧不歡而散。由於Michael McDonald沒有繼續開發Adblock Plus的意願，於是Wladimir Palant從Michael McDonald接手了Adblock Plus並重寫了代碼庫，**Adblock Plus 0.6**於2006年1月正式發布，這是一個獨立發展的套件，而不是單純的更新版本。

原始的Adblock 0.5已停止開發，該專案於2006年底被廢棄\[11\]\[12\]。

## 歷史和統計

Michael McDonald开发的Adblock Plus 0.5，并通过以下功能对原始版本的Adblock进行改进：

  - [白名单](https://zh.wikipedia.org/wiki/黑名單#電腦應用 "wikilink")
  - 支持过滤背景图像
  - 固定网址的过滤器订阅并自动更新
  - 隐藏[HTML](../Page/HTML.md "wikilink")元素的功能可以过滤更多的文字、图像及其它内容
  - 对特定网站的广告进行过滤，而不是全局过滤
  - 修复[内存泄漏](../Page/内存泄漏.md "wikilink")问题
  - 改進使用者介面

McDonald后来停止了开发工作并将其移交给Wladimir Palant。Wladimir Palant于2006年1月对代码库进行重写并发布了Adblock Plus 0.6\[13\]。《PC World》将Adblock Plus列为2007最好的100个产品之一\[14\]。

Adblock Plus的Google Chrome版本自2010年12月推出以來，擁有超過1000萬使用者\[15\]。同時也成為Firefox最受歡迎的擴充套件，截至2017年12月，擁有約1400萬使用者\[16\]。

## 操作

和Mozilla内置的图像过滤器一样，Adblock Plus根据内容的源地址拦截[HTTP及](https://zh.wikipedia.org/wiki/HTTP "wikilink")[HTTPS请求](https://zh.wikipedia.org/wiki/HTTPS "wikilink")，并可过滤[iframe](../Page/HTML元素.md "wikilink")、[script及](../Page/JavaScript.md "wikilink")[Flash](../Page/Adobe_Flash.md "wikilink")。它也可以用自动生成的用户样式表来隐藏包括文字广告在内的页面元素。这个功能称为元素隐藏，它将拦截内容换成了隐藏内容\[17\]。

### 过滤规则

基本的过滤规则可以使用星号（\*）作为通配符。列入白名单的网站及对象可以使用两个[at符号](../Page/@.md "wikilink")（@@）开始，使其免受过滤。[正则表达式](../Page/正则表达式.md "wikilink")可以在前后加上斜框（/）后使用。Adblock Plus也支持更复杂的语法来对过滤器进行更精确的控制\[18\]。

### 过滤规则列表订阅

用户可以增加额外的过滤列表。Adblock Plus可以使用一个或多个外部过滤规则订阅，并自动进行更新。[Filterset.G为这一软件并不兼容](https://zh.wikipedia.org/wiki/Filterset.G "wikilink")（Adblock Plus也特别建议不要使用Filterset.G，并给出了相应的理由\[19\]），但其它的过滤集可以通过输入网址来添加。Adblock Plus的[官方网站提供了已知的Adblock](https://zh.wikipedia.org/wiki/#外部链接 "wikilink") Plus订阅列表。

## 批评

大量网站的拥有者，特别是网站上有各类[网络广告](../Page/网络广告.md "wikilink")的，认为包括Adblock在内的广告过滤软件的应用会减少他们的收入\[20\]\[21\]。在上述人群看来，就某种意义上而言，这种行为是一种盗窃行为。这个观点主要就是指网站的拥有者需要支付费用来维护伺服器和带宽费用，以便继续提供免费内容。一些网站会使用计数器来禁止广告过滤软件的使用，如尝试检测是否存在广告过滤器并提示用户关闭软件，或直接阻止用户访问网页直至他们关闭广告过滤软件。这些做法得到了很多人的-{zh-hans:支持; zh-hant:支持}-\[22\]和反对\[23\]。

比较著名的例子有，网站持有者Danny Carlton禁止所有Firefox访问他的个人网站，不管他们是否安装Adblock Plus。他声称Adblock Plus用户实际上窃取了他的内容并相信Mozilla要对认证和发布这一插件负责\[24\]。Adblock Plus的开发者Wladimir Palant在他的部落格上作出了回应\[25\]。一些其他的部落格作者也对这件事表达了自己的观点\[26\]。

在2011年12月，AdBlock Plus推出2.0版本。由於AdBlock Plus預設自動更新，大部份用者均被自動升級至2.0版本。2.0版本因為加入[Google AdSense廣告白名單而遭到嚴厲批評](../Page/Google_AdSense.md "wikilink")，指作者向錢低頭，放棄AdBlock一貫的原則。作者稱此舉可以幫助依靠廣告收入的小型網站生存，但其實在1.0版本時使用者已可自行設定白名單，透過容許個別網站顯示廣告去支持其營運。

## 相關條目

  - [AdBlock](../Page/AdBlock.md "wikilink")
  - [uBlock Origin](https://zh.wikipedia.org/wiki/uBlock_Origin "wikilink")

## 参考文献

<references/>

## 外部链接

  -
  -
  -
  -
[Category:网络广告](https://zh.wikipedia.org/wiki/Category:网络广告 "wikilink") [Category:2006年軟體](https://zh.wikipedia.org/wiki/Category:2006年軟體 "wikilink") [Category:广告拦截软件](https://zh.wikipedia.org/wiki/Category:广告拦截软件 "wikilink") [Category:Firefox_附加组件](https://zh.wikipedia.org/wiki/Category:Firefox_附加组件 "wikilink") [Category:Google_Chrome扩展](https://zh.wikipedia.org/wiki/Category:Google_Chrome扩展 "wikilink") [Category:Internet_Explorer加载项](https://zh.wikipedia.org/wiki/Category:Internet_Explorer加载项 "wikilink") [Category:Microsoft_Edge扩展](https://zh.wikipedia.org/wiki/Category:Microsoft_Edge扩展 "wikilink")

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
12.
13.
14.
15.
16.
17. [How does element hiding work?](http://adblockplus.org/en/faq_internal#elemhide)
18. [Adblock Plus Documentation - Specifying Filter Options](http://adblockplus.org/zh_CN/filters#options)
19.
20.
21.
22. [Ad Blocking is Immoral](http://www.thegooglecache.com/white-hat-seo/ad-blocking-is-immoral/)
23. [So, Blocking ads is stealing?](http://bloggles.blogireland.ie/post/1/906)
24. [Firefox ad-blocker extension causes angst](http://www.infoworld.com/article/07/08/23/Firefox-ad-blocker-extension-causes-angst_1.html)
25. [Adblock Plus and (a little) more](http://adblockplus.org/blog/ads-dont-generate-money)
26. [Google Search](http://www.google.co.uk/search?q=%22why+firefox+is+blocked%22)