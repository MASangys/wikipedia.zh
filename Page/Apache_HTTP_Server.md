> 本文内容由[Apache HTTP Server](https://zh.wikipedia.org/wiki/Apache_HTTP_Server)转换而来。


**Apache HTTP Server**（簡稱**Apache**）是[Apache軟體基金會的一個開放源碼的](https://zh.wikipedia.org/wiki/Apache軟體基金會 "wikilink")[網頁伺服器](../Page/網頁伺服器.md "wikilink")軟體，可以在大多數[電腦](https://zh.wikipedia.org/wiki/電腦 "wikilink")[作業系統中運行](https://zh.wikipedia.org/wiki/作業系統 "wikilink")。由於其跨平台和安全性，被廣泛使用，是最流行的Web伺服器軟體之一。它快速、可靠並且可通過簡單的API擴充，將[Perl](../Page/Perl.md "wikilink")／[Python](../Page/Python.md "wikilink")等[直譯器](../Page/直譯器.md "wikilink")編譯到伺服器中。

## 歷史

Apache起初由[伊利諾大學香檳分校的](https://zh.wikipedia.org/wiki/伊利諾大學香檳分校 "wikilink")[國家超級電腦應用中心](https://zh.wikipedia.org/wiki/國家超級電腦應用中心 "wikilink")（NCSA）開發。此後，Apache Httpd被[開放原始碼團體的成員不斷的發展和加強](https://zh.wikipedia.org/wiki/開放原始碼 "wikilink")。Apache Http網站伺服器擁有牢靠可信的美譽，已經在全球超過半數的網站中被使用－特別是幾乎所有最熱門和瀏覽量最大的網站。比方說，[維基百科網站伺服器就是使用Apache的](https://zh.wikipedia.org/wiki/維基百科 "wikilink")。

剛開始發展時，Apache只是[Netscape網頁伺服器](https://zh.wikipedia.org/wiki/Netscape "wikilink")（現在是）之外的[開放原始碼選擇之一](https://zh.wikipedia.org/wiki/開放原始碼 "wikilink")。慢慢地，它開始在功能和速度超越其他基於[Unix的HTTP伺服器](https://zh.wikipedia.org/wiki/Unix "wikilink")。到了Apache 2.x的時代，實際效率又比Apache 1.x更快，2.x比1.x能同時服務更多的網頁連線數。

1996年4月以來，Apache一直是[Internet上最流行的HTTP伺服器](https://zh.wikipedia.org/wiki/Internet "wikilink")：1999年5月它在57%的網頁伺服器上運行，到了2005年7月這個比例上升到了69%。在2005年11月最風光的時候達到接近70%的市佔率，不過在部份擁有大量域名的主機域名商轉換為微軟[IIS平台後](https://zh.wikipedia.org/wiki/Internet_Information_Services "wikilink")，Apache市佔率近年來呈現些微下滑。同時搜尋引擎巨擘[Google](../Page/Google.md "wikilink")自己的網頁伺服器平台[GWS推出後](https://zh.wikipedia.org/wiki/谷歌網頁伺服器 "wikilink")（也可說是一種修改版的Apache\[1\]），再加上[nginx](https://zh.wikipedia.org/wiki/nginx "wikilink")、[Lighttpd](../Page/Lighttpd.md "wikilink")等輕量化網頁伺服器軟體在市場上有一些能見度，這些因素都反應在整體網頁伺服器市佔率的消長，Apache的市佔率就隨之滑落。

根據在2009年12月的最新統計數據，Apache的市佔率已經降為53.67％，IIS降為18.26％，[谷歌網頁伺服器](https://zh.wikipedia.org/wiki/谷歌網頁伺服器 "wikilink")13.53％，nginx 8.75％。儘管如此，Apache及其各种分支版本仍舊是當前網際網路市場上，市佔率最高的網頁伺服器軟體\[2\]\[3\]。

## 命名

作者宣称因为Apache这个名字好记，所以才在最初选择它，但是流传最广的解释是（也是最显而易见的）：这个名字来自於一个事实：当Apache在1995年初开发的时候，它是由当时最流行的HTTP服务器[NCSA HTTPd](https://zh.wikipedia.org/wiki/NCSA_HTTPd "wikilink") 1.3的代码修改而成的，因此是「一个修补的（a patchy）」服务器。然而，在Apache服务器官方网站的FAQ中是这麽解释的：「Apache这个名字是为了纪念名为Apache的美洲原住民印第安人的一支，众所周知他们拥有高超的作战策略和无穷的耐性。」贝伦多夫说：「我选择阿帕奇这个名字是取其积极含义。[阿帕奇族是最后一个屈服于美国政府的民族](https://zh.wikipedia.org/wiki/阿帕奇族 "wikilink")。当时我们担心大公司迟早会参与竞争并‘教化’这块最早的网络之地，所以在我看来，阿帕奇是个很好的名称，也有人说这个词一语双关-因为正如Apache（与"a patchy"谐音）的名字所表明的那样，他们确实是在给服务器打补丁。」\[4\]无论如何，Apache 2.x分支不包含任何NCSA的程序代码。

## 特性

[缩略图](https://zh.wikipedia.org/wiki/File:Apache_on_WSL.png "fig:缩略图") Apache支援許多特性，大部分通過編譯的模塊實現。這些特性從伺服器端的程式語言支援到身份認證方案。一些通用的语言接口支持[Perl](../Page/Perl.md "wikilink")，[Python](../Page/Python.md "wikilink")，[Tcl](../Page/Tcl.md "wikilink")， 和[PHP](../Page/PHP.md "wikilink")。流行的认证模块包括mod_access，mod_auth和mod_digest。其他的例子有[SSL和](https://zh.wikipedia.org/wiki/传输层安全 "wikilink")[TLS支持](https://zh.wikipedia.org/wiki/传输层安全 "wikilink")（mod_ssl），[代理服务器](../Page/代理服务器.md "wikilink")（proxy）模块，很有用的URL重写（由mod_rewrite实现），定制日志文件（mod_log_config），以及过滤支持（mod_include和mod_ext_filter）。Apache日志可以通过网页浏览器使用免费的脚本[AWStats或](https://zh.wikipedia.org/wiki/AWStats "wikilink")[Visitors来进行分析](https://zh.wikipedia.org/wiki/Visitors "wikilink")。

## 2.x版本

Apache的2.x版本核心在Apache 1.x版本之上作出了重要的加強。這包括：[多執行緒](https://zh.wikipedia.org/wiki/多執行緒 "wikilink")，更好的支援非UNIX平台（例如Windows），[MPM](https://zh.wikipedia.org/wiki/MPM "wikilink")，新的Apache [API](https://zh.wikipedia.org/wiki/API "wikilink")，以及[IPv6](../Page/IPv6.md "wikilink")支援。

## 評價

  - 《》2004年8月評出了近30年以來的10款最佳軟體產品。他們其中或者是有過最輝煌的歷史，或者是最具創意。其對Apache的評價是：第三名：Apache（1995年推出），目前已經演變成了「[LAMP](../Page/LAMP.md "wikilink")」，即[Linux](../Page/Linux.md "wikilink")、Apache、[MySQL](../Page/MySQL.md "wikilink")和[PHP](../Page/PHP.md "wikilink")的聯合體。這是一個[開放原始碼軟體項目](https://zh.wikipedia.org/wiki/開放原始碼 "wikilink")，已經對[微軟的](https://zh.wikipedia.org/wiki/微軟 "wikilink")「[.NET](https://zh.wikipedia.org/wiki/.NET "wikilink")」戰略構成嚴重威脅。尤其是Apache網路伺服器，讓用戶充分體驗到開放原始碼軟體的穩定性、可靠性和可定製性。
  - Apple.com評價Apache時說：Apache是伺服器軟體始終不斷進化的大型元件，它免費但又是無價之寶。Apache是在開源運動中出現的絕對珍品，因為不屬於個人專利而是對公共免費。一旦擁有這些原始碼，程序員能夠自由完成所想——能在其它程式員接替工作時被賦予同樣的權限來改變和修改自己的原始碼。

## 註釋

## 参考文献

## 外部連結

  - [Apache伺服器官方網站](http://httpd.apache.org)
  - [Apache軟體基金會官方網站](http://www.apache.org)

{{-}}

[Category:LAMP](https://zh.wikipedia.org/wiki/Category:LAMP "wikilink") [Category:1995年软件](https://zh.wikipedia.org/wiki/Category:1995年软件 "wikilink") [Category:Apache软件基金会](https://zh.wikipedia.org/wiki/Category:Apache软件基金会 "wikilink") [Category:自由跨平台軟體](https://zh.wikipedia.org/wiki/Category:自由跨平台軟體 "wikilink") [Category:用C編程的自由軟體](https://zh.wikipedia.org/wiki/Category:用C編程的自由軟體 "wikilink") [Category:自由网络服务器软件](https://zh.wikipedia.org/wiki/Category:自由网络服务器软件 "wikilink") [Category:反向代理](https://zh.wikipedia.org/wiki/Category:反向代理 "wikilink") [Category:Unix网络相关软件](https://zh.wikipedia.org/wiki/Category:Unix网络相关软件 "wikilink") [Category:Linux网络服务器软件](https://zh.wikipedia.org/wiki/Category:Linux网络服务器软件 "wikilink")

1.
2.  <http://news.netcraft.com/archives/2009/12/24/december_2009_web_server_survey.html>  ，http://news.netcraft.com/archives/category/web-server-survey/
3.  <http://news.netcraft.com/archives/2013/08/09/august-2013-web-server-survey.html>  ，http://news.netcraft.com/archives/category/web-server-survey/
4.  《[世界是平的](../Page/世界是平的.md "wikilink")》，托马斯·弗里德曼著