**Gears**，原稱Google
Gears，是一款[Google开发的軟體](../Page/Google.md "wikilink")，讓使用者可以[离线浏览](../Page/离线浏览.md "wikilink")。這套軟體透過以浏览器扩展的方式添加[JavaScript](../Page/JavaScript.md "wikilink")
[API使得浏览器的脚本能够访问本地的](https://zh.wikipedia.org/wiki/API "wikilink")[SQLite缓存数据库](../Page/SQLite.md "wikilink")。所以網頁是透過暫存區取得的，而不是從實際的網路上取得。而且，Web相關的程式可以週期性的透过Gears将本地暫存的資料與网络上的資料做同步。如果網路暫時無法使用，這個同步過程將會延後，直到網路恢復為止。因此，Gears的Web相關应用并不是即時的。

由于[HTML5能做到的同样的事情](../Page/HTML5.md "wikilink")，Google已经放弃為Gears增加新功能\[1\]。並且於2011年底前撤出Google產品線而不再發行\[2\]。

## 组件

Google Gears有几个主要的[API组件](https://zh.wikipedia.org/wiki/API "wikilink")：

  - 一个本地服务器，用来存储和读取离线程序资源（包括HTML, JavaScript, images等）。\[3\]
  - 一个小型数据库（以[SQLite构建](../Page/SQLite.md "wikilink")），用来储存本地数据。\[4\]
  - 一个工作池，用来让开发者将本地数据与服务器端后台同步。\[5\]
  - 一个桌面模型可使网络程序的操作贴近桌面程序，支持建立[快捷方式和](https://zh.wikipedia.org/wiki/快捷方式 "wikilink")[鼠标](../Page/鼠标.md "wikilink")[拖放文件](https://zh.wikipedia.org/wiki/拖放 "wikilink")。\[6\]
  - 一个地理定位模型，能够让网络程序侦测到目前用户的地理位置。\[7\]

## 版本历史

| nowrap|版本 | 发布日期              | 描述                                                                             |
| --------- | ----------------- | ------------------------------------------------------------------------------ |
| 0.1       | 2007年5月31日        | 最初版本。                                                                          |
| 0.2       | 2008年2月22日\[8\]   |                                                                                |
| \-        | 2008年5月28日        | 开源，项目名称改为Gears。                                                                |
| 0.3       | 2008年6月11日\[9\]   | 增加添加桌面图标的功能，支援[Firefox 3](https://zh.wikipedia.org/wiki/Firefox_3 "wikilink")。 |
| 0.4       | 2008年8月22日\[10\]  | 地理定位API / Event handling for upload / download transfer progress, 40种语言的本地化    |
| 0.5       | 2008年11月24日\[11\] | 升级了SQLite数据库，能够从WiFi信号获得地理定位, Improved API to manage data blobs on LocalServer |

## 支援

有相当数量的网络程序使用了Gears，这些程序来自于许多公司，包括[Google](../Page/Google.md "wikilink")（[Google日历](https://zh.wikipedia.org/wiki/Google日历 "wikilink")、[Google文件](../Page/Google文件.md "wikilink")、[GMail](https://zh.wikipedia.org/wiki/GMail "wikilink")、[Picasa网络相册](../Page/Picasa网络相册.md "wikilink")、[Google阅读器](../Page/Google阅读器.md "wikilink")、[YouTube](../Page/YouTube.md "wikilink")）、[MySpace](https://zh.wikipedia.org/wiki/MySpace "wikilink")（邮件搜索）、[Zoho](../Page/Zoho.md "wikilink")（Mail、Writer）、[Remember
The Milk](https://zh.wikipedia.org/wiki/Remember_The_Milk "wikilink")
、以及[Buxfer](https://zh.wikipedia.org/wiki/Buxfer "wikilink")\[12\]
、[QQ空间](../Page/QQ空间.md "wikilink")。\[13\]\[14\]

[WordPress支援Gears](../Page/WordPress.md "wikilink")，以用来加速管理界面操作速度，减轻服务器点击负担。\[15\]

通过使用一个Google
Gears工程师编写的[Greasemonkey脚本](../Page/Greasemonkey.md "wikilink")，可以[离线浏览](../Page/离线浏览.md "wikilink")[英语维基百科](../Page/英语维基百科.md "wikilink")。\[16\]

Gears能够在[Windows
XP或以上的](../Page/Windows_XP.md "wikilink")[IE](../Page/Internet_Explorer.md "wikilink")
6或以上，[Windows
Mobile的](../Page/Windows_Mobile.md "wikilink")[IE](../Page/Internet_Explorer_Mobile.md "wikilink")
4.01或以上，带[觸控式螢幕的](../Page/觸控式螢幕.md "wikilink")[Windows Mobile
6或以上的](https://zh.wikipedia.org/wiki/Windows_Mobile_6 "wikilink")[Opera
Mobile](https://zh.wikipedia.org/wiki/Opera_Mobile "wikilink")
9.51或以上，[Mac OS X
10.4](https://zh.wikipedia.org/wiki/Mac_OS_X_10.4 "wikilink").11以上或[Mac
OS X
10.5](https://zh.wikipedia.org/wiki/Mac_OS_X_10.5 "wikilink").3以上的[Safari](../Page/Safari.md "wikilink")
3.1.1或以上，[Google
Chrome](../Page/Google_Chrome.md "wikilink")，[Android以及任何平台的](../Page/Android.md "wikilink")[Mozilla
Firefox](https://zh.wikipedia.org/wiki/Mozilla_Firefox "wikilink")
1.5或以上版本浏览器使用。\[17\]\[18\].

2008年5月29日，[Opera
ASA宣布新版本的](https://zh.wikipedia.org/wiki/Opera_ASA "wikilink")[Opera和](https://zh.wikipedia.org/wiki/Opera "wikilink")[Opera
Mobile](https://zh.wikipedia.org/wiki/Opera_Mobile "wikilink")
9.5将能支援Gears，这种支援不依赖于Google提供的软件，因而也不与之完全兼容。\[19\]

Gears on
Rails框架支持Gears接口，提供一种[Ruby形式的Google](../Page/Ruby.md "wikilink")
Gears API。\[20\]

## 参见

  - [Microsoft
    Silverlight](https://zh.wikipedia.org/wiki/Microsoft_Silverlight "wikilink")
  - [Mozilla
    Prism](https://zh.wikipedia.org/wiki/Mozilla_Prism "wikilink")
  - [丰富互联网应用程序](../Page/丰富互联网应用程序.md "wikilink")
  - [Adobe AIR](../Page/Adobe_AIR.md "wikilink")
  - [JavaScript
    ORM](https://zh.wikipedia.org/wiki/JavaScript_ORM "wikilink")

## 参考资料

## 外部链接

  - [使用Google
    Gears的网站应用列表](https://web.archive.org/web/20100723144742/http://www.honkin.info/%E5%88%86%E4%BA%AB%EF%BC%9A%E6%94%AF%E6%8C%81google-gear%E7%A6%BB%E7%BA%BF%E7%9A%84%E7%BD%91%E7%AB%99%E5%92%8C%E5%BA%94%E7%94%A8.html)

[Category:已終止開發的Google軟體](https://zh.wikipedia.org/wiki/Category:已終止開發的Google軟體 "wikilink")
[Category:Firefox_附加组件](https://zh.wikipedia.org/wiki/Category:Firefox_附加组件 "wikilink")

1.   Google：你好 HTML5，再见 Gears
2.
3.
4.
5.
6.
7.
8.  <http://gearsblog.blogspot.com/2008/02/gears-02-released.html>
9.  <http://gearsblog.blogspot.com/2008/06/fly-gears-03.html>
10. <http://gearsblog.blogspot.com/2008/08/gears-04-is-here.html>
11. <http://code.google.com/apis/gears/upcoming/history.html>
12.
13. <http://imgcache.qq.com/qzone/test/gears/gearsMng.html> QQ空间加速
14. <http://www.cnbeta.com/articles/89655.htm> QQ空间开始使用Google Gears加速
15.
16. <http://code.google.com/apis/gears/articles/gearsmonkey.html> Don't
    wait for your favorite website to enable offline support -- do it
    yourself.
17.
18.
19.
20.