**网景插件应用程序接口**（，[縮寫](../Page/縮寫.md "wikilink")：**NPAPI**）是一個[跨平台的通用](https://zh.wikipedia.org/wiki/跨平台 "wikilink")[瀏覽器](https://zh.wikipedia.org/wiki/瀏覽器 "wikilink")[插件](../Page/插件.md "wikilink")[应用程序接口](../Page/应用程序接口.md "wikilink")（API）。1995年由[網景公司釋出](../Page/網景.md "wikilink")，應用於[网景导航者](../Page/网景导航者.md "wikilink")2.0版本，但其他瀏覽器很快也跟進支援，成為一個共通的插件標準，与[微软的](../Page/微软.md "wikilink")[ActiveX形成競爭關係](../Page/ActiveX.md "wikilink")。

每个[插件声明自己支持某一种或几种](../Page/插件.md "wikilink")[内容类型](https://zh.wikipedia.org/wiki/MIME#内容类型 "wikilink")（例如“audio/mp3”），当浏览器遇到这种类型的内容时，便在插件库寻找一种能够解码的插件，将这部分内容交由其解析，并在网页对应的位置中显示出来。

几乎全部桌面端的图形界面浏览器都支持了此项接口，常見的有：

  - [Camino](../Page/Camino.md "wikilink")
  - [Epiphany](https://zh.wikipedia.org/wiki/Epiphany "wikilink")
  - [Internet Explorer
    2.1至5.5版本](../Page/Internet_Explorer歷史.md "wikilink")\[1\]
  - [Konqueror](../Page/Konqueror.md "wikilink")
  - [Mozilla
    Firefox](https://zh.wikipedia.org/wiki/Mozilla_Firefox "wikilink")
  - [Mozilla Application
    Suite](../Page/Mozilla_Application_Suite.md "wikilink")
  - [网景导航者与](../Page/网景导航者.md "wikilink")[網景通訊家](../Page/網景通訊家.md "wikilink")
  - [Opera](https://zh.wikipedia.org/wiki/Opera "wikilink")
  - [Safari](../Page/Safari.md "wikilink")
  - [SeaMonkey](../Page/SeaMonkey.md "wikilink")

较为常见的，通过NPAPI分发的插件包括：

  - [Adobe Acrobat](../Page/Adobe_Acrobat.md "wikilink")
  - [Adobe Flash Player](../Page/Adobe_Flash_Player.md "wikilink")
  - [Adobe Shockwave](../Page/Adobe_Shockwave.md "wikilink")
  - [JRE](../Page/JRE.md "wikilink")
  - [QuickTime](../Page/QuickTime.md "wikilink")
  - [RealPlayer](../Page/RealPlayer.md "wikilink")
  - [Windows Media
    Player](https://zh.wikipedia.org/wiki/Windows_Media_Player "wikilink")

正是由于其跨浏览器的特性，插件库的内容更新及管理一般不是由浏览器而是由各个插件提供商自行维护的。这个特点引发了一些安全性上的疑虑\[2\]，[Google
Chrome提出了名为](../Page/Google_Chrome.md "wikilink")[PPAPI](https://zh.wikipedia.org/wiki/PPAPI "wikilink")（Pepper
Plugin
API）的解决方案\[3\]，但没有得到其它厂商，特别是[Mozilla基金會的普遍支持](../Page/Mozilla基金會.md "wikilink")\[4\]。

2014年11月，Google宣布[Chrome将于](https://zh.wikipedia.org/wiki/Chrome "wikilink")2015年1月默认屏蔽NPAPI插件，9月份會完全移除支持，以鼓励开发者和用户转用[HTML5](../Page/HTML5.md "wikilink")、Chrome
API或[Google Native
Client等新技术取代NPAPI](https://zh.wikipedia.org/wiki/Google_Native_Client "wikilink")\[5\]\[6\]。

2015年10月，Mozilla也宣布[Firefox將於](../Page/Firefox.md "wikilink")2016年年底移除支持NPAPI插件，但Flash
Player除外\[7\]。

## 参考资料

[Category:Netscape](https://zh.wikipedia.org/wiki/Category:Netscape "wikilink")
[Category:应用程序接口](https://zh.wikipedia.org/wiki/Category:应用程序接口 "wikilink")
[Category:網頁瀏覽器](https://zh.wikipedia.org/wiki/Category:網頁瀏覽器 "wikilink")

1.  <http://support.microsoft.com/kb/306790/zh-cn>
2.  <http://code.google.com/p/ppapi/wiki/Concepts>
3.  <http://code.google.com/p/ppapi/>
4.  <https://wiki.mozilla.org/NPAPI:Pepper>
5.  "[Google shuts off NPAPI in
    Chrome](https://threatpost.com/google-shuts-off-npapi-in-chrome/112295)".
    *Threatpost*. Kaspersky Lab. 16 April 2015.
6.  "[NPAPI deprecation: developer
    guide](https://www.chromium.org/developers/npapi-deprecation)". *The
    Chromium Projects*.
7.