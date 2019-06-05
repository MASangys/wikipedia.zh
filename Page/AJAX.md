**AJAX**即“****”（非同步的[JavaScript與](../Page/JavaScript.md "wikilink")[XML技術](../Page/XML.md "wikilink")），指的是一套综合了多項技術的[瀏覽器端](https://zh.wikipedia.org/wiki/瀏覽器 "wikilink")[網頁開發技術](../Page/網頁.md "wikilink")。Ajax的概念由[傑西·詹姆士·賈瑞特所提出](../Page/傑西·詹姆士·賈瑞特.md "wikilink")\[1\]。

传统的Web应用允许用户端填写表单（form），当送出表单时就向[網頁伺服器发送一个请求](../Page/網頁伺服器.md "wikilink")。伺服器接收并处理传来的表单，然后送回一个新的网页，但这个做法浪费了许多带宽，因为在前后两个页面中的大部分[HTML码往往是相同的](../Page/HTML.md "wikilink")。由于每次应用的沟通都需要向伺服器发送请求，应用的回應时间依赖于伺服器的回應时间。这导致了用户界面的回應比本機应用慢得多。

与此不同，AJAX应用可以仅向伺服器发送并取回必須的数据，并在客户端采用JavaScript处理来自伺服器的回應。因为在伺服器和浏览器之间交换的数据大量减少，伺服器回應更快了。同时，很多的处理工作可以在发出请求的[客户端机器上完成](https://zh.wikipedia.org/wiki/客户端 "wikilink")，因此Web伺服器的负荷也减少了。

类似于[DHTML或](https://zh.wikipedia.org/wiki/DHTML "wikilink")[LAMP](../Page/LAMP.md "wikilink")，AJAX不是指一种单一的技术，而是有机地利用了一系列相关的技术。虽然其名称包含XML，但实际上数据格式可以由[JSON代替](../Page/JSON.md "wikilink")，进一步减少数据量，形成所谓的AJAJ。而客户端与服务器也并不需要异步。一些基于AJAX的“派生／合成”式（derivative/composite）的技术也正在出现，如[AFLAX](https://zh.wikipedia.org/wiki/AFLAX "wikilink")

## 应用

  - 運用[XHTML](../Page/XHTML.md "wikilink")+[CSS來表達資訊](https://zh.wikipedia.org/wiki/CSS "wikilink")；
  - 運用[JavaScript操作](../Page/JavaScript.md "wikilink")[DOM](https://zh.wikipedia.org/wiki/文件物件模型 "wikilink")（Document
    Object Model）来執行動態效果；
  - 運用[XML和](../Page/XML.md "wikilink")[XSLT操作資料](../Page/XSLT.md "wikilink")
  - 運用[XMLHttpRequest或新的Fetch](../Page/XMLHttpRequest.md "wikilink")
    API與[網頁伺服器進行非同步資料交換](../Page/網頁伺服器.md "wikilink")；
  - 注意：AJAX與[Flash](../Page/Adobe_Flash_Player.md "wikilink")、[Silverlight和](https://zh.wikipedia.org/wiki/Silverlight "wikilink")[Java
    Applet等](https://zh.wikipedia.org/wiki/Java_Applet "wikilink")[RIA技術是有區分的](../Page/丰富互联网应用程序.md "wikilink")。

## 发展史

20世纪90年代，几乎所有的网站都由HTML页面实现，服务器处理每一个用户请求都需要重新加载网页。这样的处理方式效率不高。用户的体验是所有页面都会消失，再重新载入，即使只是一部分页面元素改变也要重新载入整个页面，不仅要刷新改变的部分，连没有变化的部分也要刷新。这会加重服务器的负担。

这可以用[异步加载来解决](https://zh.wikipedia.org/wiki/异步 "wikilink")。1995年，JAVA语言的第一版发布，随之发布的的Java
applets（JAVA小程序）首次实现了异步加载。浏览器通过运行嵌入网页中的Java
applets与服务器交换数据，不必刷新网页。1996年，Internet
Explorer将iframe元素加入到HTML，支持局部刷新网页。

1998年前后，Outlook Web
Access小组写成了允许[客户端脚本发送HTTP请求](https://zh.wikipedia.org/wiki/客户端脚本 "wikilink")（[XMLHTTP](https://zh.wikipedia.org/wiki/XMLHTTP "wikilink")）的第一个组件。该组件原属于微软Exchange
Server，并且迅速地成为了Internet Explorer 4.0\[2\]的一部分。部分观察家认为，Outlook Web
Access是第一个应用了Ajax技术的成功的商业应用程序，并成为包括Oddpost的网络邮件产品在内的许多产品的领头羊。但是，2005年初，许多事件使得Ajax被大众所接受。[Google在它著名的交互应用程序中使用了异步通讯](../Page/Google.md "wikilink")，如[Google讨论组](https://zh.wikipedia.org/wiki/Google讨论组 "wikilink")、[Google地图](../Page/Google地图.md "wikilink")、[Google搜索建议](https://zh.wikipedia.org/wiki/Google搜索建议 "wikilink")、[Gmail等](../Page/Gmail.md "wikilink")。Ajax这个词由《*[Ajax:
A New Approach to Web
Applications](https://web.archive.org/web/20061107032631/http://www.adaptivepath.com/publications/essays/archives/000385.php)*》一文所创，该文的迅速流传提高了人们使用该项技术的意识。另外，对Mozilla/Gecko的支持使得该技术走向成熟，变得更为简单易用。

## 优缺点

使用Ajax的最大优点，就是能在不更新整个页面的前提下维护数据。这使得Web应用程序更为迅捷地回应用户动作，并避免了在网络上发送那些没有改变的信息。

Ajax不需要任何浏览器插件，但需要用户**允许[JavaScript在浏览器上执行](../Page/JavaScript.md "wikilink")**。就像[DHTML应用程序那样](https://zh.wikipedia.org/wiki/DHTML "wikilink")，Ajax应用程序必须在众多不同的浏览器和平台上经过严格的测试。随着Ajax的成熟，一些简化Ajax使用方法的程序库也相继问世。同样，也出现了另一种辅助程序设计的技术，为那些不支持[JavaScript的用户提供替代功能](../Page/JavaScript.md "wikilink")。

对应用Ajax最主要的批评就是，它可能破坏浏览器的后退與加入收藏書籤功能\[3\]。在动态更新页面的情况下，用户无法回到前一个页面状态，这是因为浏览器仅能记下历史记录中的[静态页面](https://zh.wikipedia.org/wiki/静态页面 "wikilink")。一个被完整读入的页面与一个已经被动态修改过的页面之间的可能差别非常微妙；用户通常都希望单击后退按钮，就能够取消他们的前一次操作，但是在Ajax应用程序中，却无法这样做。不过开发者已想出了种种办法来解决这个问题，[HTML5](../Page/HTML5.md "wikilink")
之前的方法大多是在用户单击后退按钮访问历史记录时，通过建立或使用一个隐藏的IFRAME来重现页面上的变更。（例如，当用户在Google
Maps中单击后退时，它在一个隐藏的[IFRAME中进行搜索](https://zh.wikipedia.org/wiki/IFRAME "wikilink")，然后将搜索结果反映到Ajax元素上，以便将应用程序状态恢复到当时的状态）。

关于無法將狀態加入收藏或書籤的問題，[HTML5之前的一種方式是使用](../Page/HTML5.md "wikilink")[URL片断标识符](https://zh.wikipedia.org/wiki/URL "wikilink")（通常被称为[锚点](https://zh.wikipedia.org/wiki/锚点 "wikilink")，即URL中\#后面的部分）来保持追蹤，允许用户回到指定的某个应用程序状态。（许多浏览器允许JavaScript动态更新锚点，这使得Ajax应用程序能够在更新显示内容的同时更新锚点。）[HTML5](../Page/HTML5.md "wikilink")
以後可以直接操作瀏覽歷史，並以字串形式儲存網頁狀態，將網頁加入網頁收藏夾或書籤時狀態會被隱形地保留。上述兩個方法也可以同時解決無法後退的問題。

进行Ajax开发时，网络延迟——即用户发出请求到服务器发出响应之间的间隔——需要慎重考虑。如果不给予用户明确的回应\[4\]，没有恰当的预读数据\[5\]，或者对XMLHttpRequest的不恰当处理\[6\]，都会使用户感到厌烦\[7\]。通常的解决方案是，使用一个可视化的组件来告诉用户系统正在进行后台操作并且正在读取数据和内容。

## 兼容性

[JavaScript编程的最大问题来自不同的浏览器对各种技术和标准的支持](../Page/JavaScript.md "wikilink")。

XmlHttpRequest对象在不同浏览器中不同的创建方法，以下是跨瀏覽器的通用方法：

``` javascript
// Provide the XMLHttpRequest class for IE 5.x-6.x:
// Other browsers (including IE 7.x-8.x) ignore this
//   when XMLHttpRequest is predefined
var xmlHttp;
if (typeof XMLHttpRequest != "undefined") {
    xmlHttp = new XMLHttpRequest();
} else if (window.ActiveXObject) {
    var aVersions = ["Msxml2.XMLHttp.5.0", "Msxml2.XMLHttp.4.0", "Msxml2.XMLHttp.3.0", "Msxml2.XMLHttp", "Microsoft.XMLHttp"];
    for (var i = 0; i < aVersions.length; i++) {
        try {
            xmlHttp = new ActiveXObject(aVersions[i]);
            break;
        } catch (e) {}
    }
}
```

AJAX支持的[浏览器有](https://zh.wikipedia.org/wiki/浏览器 "wikilink")：[Internet
Explorer](../Page/Internet_Explorer.md "wikilink")、[Chrome](../Page/Google_Chrome.md "wikilink")、[Firefox](../Page/Firefox.md "wikilink")、[Opera](https://zh.wikipedia.org/wiki/Opera電腦瀏覽器 "wikilink")、[Konqueror及Mac](../Page/Konqueror.md "wikilink")
OS的[Safari](../Page/Safari.md "wikilink")。但是Opera不支持[XSL格式对象](../Page/XSL-FO.md "wikilink")，也不支持[XSLT](../Page/XSLT.md "wikilink")\[8\]。

## 开发挑战及解决方案

对程序员而言，开发Ajax应用最头痛的问题莫过于以下几点：

  - Ajax在本质上是一个浏览器端的技术，首先面临无可避免的第一个问题即是浏览器的兼容性问题。各家浏览器对于[JavaScript](../Page/JavaScript.md "wikilink")／[DOM](https://zh.wikipedia.org/wiki/DOM "wikilink")／[CSS的支持总有部分不太相同或是有Bug](https://zh.wikipedia.org/wiki/CSS "wikilink")，甚至同一浏览器的各个版本间对于[JavaScript](../Page/JavaScript.md "wikilink")／[DOM](https://zh.wikipedia.org/wiki/DOM "wikilink")／[CSS的支持也有可能部分不一样](https://zh.wikipedia.org/wiki/CSS "wikilink")。这导致程序员在写Ajax应用时花大部分的时间在[调试浏览器的兼容性而非在应用程序本身](https://zh.wikipedia.org/wiki/调试 "wikilink")。因此，目前大部分的Ajax链接库或开发框架大多以js链接库的形式存在，以定义更高阶的JavaScript
    API、JavaScript对象（模板）、或者JavaScript Widgets来解决此问题。如prototype.js。
  - Ajax技术之主要目的在于局部交换客户端及服务器之间的数据。如同传统之主从架构，无可避免的会有部分的业务逻辑会实现在客户端，或部分在客户端部分在服务器。由于业务逻辑可能分散在客户端及服务器，且以不同之程序语言实现，这导致Ajax应用程序极难维护。如有使用者接口或业务逻辑之更动需求，再加上前一个JavaScript/DOM/CSS之兼容性问题，Ajax应用往往变成程序员的梦魇。针对业务逻辑分散的问题，Ajax开发框架大致可分为两类：

<!-- end list -->

  - 将业务逻辑及表现层放在浏览器，数据层放在服务器：因为所有的程序以JavaScript执行在客户端，只有需要数据时才向服务器要求服务，此法又称为胖客户端（fat
    client）架构。服务器在此架构下通常仅用于提供及储存数据。此法的好处在于程序员可以充分利用JavaScript搭配业务逻辑来做出特殊的使用者接口，以符合终端使用者的要求。但是问题也不少，主因在第一，JavaScript语言本身之能力可能不足以处理复杂的业务逻辑。第二，JavaScript的执行效能一向不好。第三，JavaScript存取服务器数据，仍需适当的服务器端程序之配合。第四，浏览器兼容性的问题又出现。有些Ajax开发框架如DWR企图以自动生成JavaScript之方式来避免兼容的问题，并开立通道使得JavaScript可以直接叫用服务器端的Java程序来简化数据的存取。但是前述第一及第二两个问题仍然存在，程序员必须费相当的力气才能达到应用程序之规格要求，或可能根本无法达到要求。

<!-- end list -->

  - 将表现层、业务逻辑、及数据层放在服务器，浏览器仅有使用者接口引擎（User Interface
    engine）；此法又称为瘦客户端（thin
    client）架构，或中心服务器（server-centric）架构。浏览器的使用者接口引擎仅用于反映服务器的表现层以及传达使用者的输入回到服务器的表现层。由浏览器所触发之事件亦送回服务器处理，根据业务逻辑来更新表现层，然后反映回浏览器。因为所有应用程序完全在服务器执行，数据及表现层皆可直接存取，程序员只需使用服务器端相对较成熟之程序语言（如Java语言）即可，不需再学习JavaScript/DOM/CSS，在开发应用程序时相对容易。缺点在于使用者接口引擎以及表现层通常以标准组件的形式存在，如需要特殊组件（使用者接口）时，往往须待原框架之开发者提供，缓不济急。如开源码Ajax开发框架[ZK目前支持XUL及XHTML组件](../Page/ZK.md "wikilink")，尚无XAML之支持。

Ajax是以异步的方式向服务器提交需求。对服务器而言，其与传统的提交窗体需求并无不同，而且由于是以异步之方式提交，如果同时有多个Ajax需求及窗体提交需求，将无法保证哪一个需求先获得服务器的响应。这会造成应用程序典型的多进程（process）或多线程（thread）的竞争（racing）问题。程序员因此必须自行处理或在JavaScript里面动手脚以避免这类竞争问题的发生（如Ajax需求未响应之前，先disable送出按钮），这又不必要的增加了程序员的负担。

## 参考文献

  - [Ajax: A new approach to web
    applications](http://www.robertspahr.com/courses/web1/ajax_web_applications.pdf)
    --JJ Garrett - 2005年

## 外部链接

### 工具

  - [ASP.NET AJAX
    Extension（開發階段時代號Atlas）](http://ajax.asp.net/)，[微軟AJAX工具箱](https://zh.wikipedia.org/wiki/微軟 "wikilink")。
  - [jQuery](http://www.jquery.com/)，開源JS框架，寫得更少，做得更多。
  - [Dojo工具箱](http://dojotoolkit.org/)，AJAX/DHTML工具箱。
  - [Prototype](https://web.archive.org/web/20051123215647/http://prototype.conio.net/)，開放源代碼框架。
  - [Buffalo](https://zh.wikipedia.org/wiki/Buffalo "wikilink") Web
    Remoting（based on prototype）
  - [openrico](https://zh.wikipedia.org/wiki/openrico "wikilink") JS UI
    component（based on prototype）
  - [PHPRPC](http://www.phprpc.org/)，開放源代碼多語言支持的跨平台的安全的Web遠程過程調用框架，讓Ajax編程更容易。
  - [Sajax](http://www.modernmethod.com/sajax/)，簡單AJAX工具箱
  - [Rialto](https://web.archive.org/web/20080905145630/http://rialto.application-servers.com/)，Rich
    Internet AppLication TOolkit.
  - [MochiKit](http://mochikit.com/)一個自稱AJAX的輕量級js庫，支持[Json](https://zh.wikipedia.org/wiki/Json "wikilink")。
  - [OpenLaszlo](http://www.openlaszlo.org/)原本專注在[Flash作為表現層的](../Page/Adobe_Flash_Player.md "wikilink")[Laszlo將方向轉至AJAX](https://zh.wikipedia.org/wiki/Laszlo "wikilink")。
  - [script.aculo.us](http://script.aculo.us/)為[Ruby on
    Rails量身打造的AJAX函式庫](../Page/Ruby_on_Rails.md "wikilink")，跨平台支援。
  - [Rico](http://openrico.sourceforge.net/)知名的開源碼的AJAX函式庫，跨平台支援。
  - [DWR](http://getahead.org/) Web Remoting
  - [qooxdoo](http://qooxdoo.org/) JS UI component（C/S Style）
  - [jsLINB](http://www.linb.net)完全OOP，帶有線程模擬的ajax RIA框架。
  - [GWT](http://code.google.com/webtoolkit/) Google開源框架。
  - [Quicknet](https://web.archive.org/web/20091212094700/http://www.myquicknet.com/)一個能提供安全資料傳輸的AJAX系統架構。

### 图书

  - 《Ajax基础教程》，*Foundations Of Ajax*中文版，人民邮电出版社图灵公司出版。ISBN 7-115-14481-8
  - 《Ajax实战》，*Ajax in Action*中文版，人民邮电出版社图灵公司出版。ISBN 7-115-14717-5
  - 《Ajax高级程序设计》（第二版），*Professional Ajax*，人民邮电出版社图灵公司出版。
  - 《Head First Ajax》O'Reilly出版社
  - 《Ajax實戰手冊》碁峰ISBN 986-181-036-6
  - 《Ajax技術手冊》碁峰ISBN 986-181-019-6

## 參見

  - [Google Web
    Toolkit是一個前端使用JavaScript](https://zh.wikipedia.org/wiki/Google_Web_Toolkit "wikilink")，後端使用[Java的AJAX](../Page/Java.md "wikilink")
    framework，提供[WYSIWYG設計介面](https://zh.wikipedia.org/wiki/WYSIWYG "wikilink")。
  - [jQuery用于简化AJAX开发的Javascript函式庫](https://zh.wikipedia.org/wiki/jQuery "wikilink")。
  - [Prototype](https://zh.wikipedia.org/wiki/Prototype_javascript "wikilink")
    AJAX函式庫。
  - [Yahoo\! UI
    Library](https://zh.wikipedia.org/wiki/Yahoo!_UI_Library "wikilink")
    is a set of utilities and controls, written in JavaScript, for
    building richly interactive web applications using techniques such
    as DOM scripting, DHTML and AJAX.
  - [Xajax知名的開源碼開發AJAX用PHP函式庫](../Page/Xajax.md "wikilink")。
  - [ZK](../Page/ZK.md "wikilink")，开放源代码AJAX/XUL框架，[JAVA專用](https://zh.wikipedia.org/wiki/JAVA "wikilink")。
  - [ASP.NET
    AJAX](../Page/ASP.NET_AJAX.md "wikilink")，由微軟專為ASP.NET應用程式所開發的AJAX基礎架構。
  - [Web 2.0](../Page/Web_2.0.md "wikilink")，一种新的互联网概念
  - [推送技术](../Page/推送技术.md "wikilink")，一种服务端主动通知用户的技术

{{-}}

[Category:AJAX](https://zh.wikipedia.org/wiki/Category:AJAX "wikilink")
[Category:Java](https://zh.wikipedia.org/wiki/Category:Java "wikilink")
[Category:XML](https://zh.wikipedia.org/wiki/Category:XML "wikilink")
[Category:Web_2.0新詞](https://zh.wikipedia.org/wiki/Category:Web_2.0新詞 "wikilink")
[Category:进程间通信](https://zh.wikipedia.org/wiki/Category:进程间通信 "wikilink")

1.  [Ajax:網頁應用程式的新方法](http://www.adaptivepath.com/ideas/ajax-new-approach-web-applications/)
    —Jesse James Garrett，最近存取日2007年11月7日
2.  [微軟XML
    Parser（MSXML）版本列表](http://support.microsoft.com/default.aspx?scid=kb;en-us;269238#XSLTH3131121122120121120120)，最近存取日2007年11月7日
3.  [Web设计10大错误（1999年）](http://www.useit.com/alertbox/990530.html)—Jakob
    Nielsen著
4.  [Remote Scripting with AJAX,
    Part 2](http://www.xml.com/pub/a/2005/08/22/ajax.html)
5.  [延遲必死：預讀資料以降低延遲](http://www.jonathanboutelle.com/mt/archives/2004/08/latency_must_di.html)—JonathanBoutelle.com
6.  [不可靠網路下的非同步要求](http://ajaxblog.com/archives/2005/06/01/async-requests-over-an-unreliable-network)—Harry
    Fuecks著，2005年2月
7.  [小朋友們聽著, AJAX不怎麼酷](http://www.lastcraft.com/blog/index.php?p=19)
    —Marcus Baker著，2005年6月3日
8.  [Opera 9支援的網頁規格](http://www.opera.com/docs/specs/)—XSLT, XPath, and
    XSL-FO部分論及不支持XSL-FO與XSLT，最近存取日2007年11月7日