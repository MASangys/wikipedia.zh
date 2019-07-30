**PhoneGap**是一款[開放原始碼的行動裝置開發框架](https://zh.wikipedia.org/wiki/開放原始碼 "wikilink")，旨在讓開發者使用[HTML](../Page/HTML.md "wikilink")、[Javascript](https://zh.wikipedia.org/wiki/Javascript "wikilink")、[CSS等Web](https://zh.wikipedia.org/wiki/CSS "wikilink") APIs開發跨平臺的行動裝置應用程式\[1\]。原本由Nitobi公司開發，現在由[Adobe Systems擁有](https://zh.wikipedia.org/wiki/Adobe_Systems "wikilink")\[2\]\[3\]。

## 發展歷程

最早的PhoneGap起步于2009年在舊金山召開的iPhoneDevCamp大會\[4\]，Nitobi的工程师Brock Whitten、Rob Ellis和Andre Charland在[iOS系統內架設起Web介面和](https://zh.wikipedia.org/wiki/iOS "wikilink")[Objective-C](../Page/Objective-C.md "wikilink")之間的橋樑，讓開發人員得以使用HTML5、JavaScript、CSS等web標準技術便捷開發原生程式，實現一次編譯到處執行。其“橋接Web與iPhone SDK之間縫隙”的理念得到歡迎\[5\]。

2011年10月4日，Adobe正式宣布收購Nitobi軟件\[6\]。PhoneGap的代碼貢獻給了Apache軟件基金會，但保留了PhoneGap的商标所有权，並命名为Apache Callback。1.4版发布后，接著Apache Callback的名称变更为**Apache Cordova**。Cordova是街道的名字，在開發團隊附近。\[7\]Adobe Dreamweaver 5.5版本为phonegap提供开发环境。

早期版本的PhoneGap需要使用蘋果電腦來開發iOS應用程序，而Windows Mobile應用程序則是使用Windows平台開發出來的。2012年9月之後，「 PhoneGap Build」服務推出，可以讓程序員將他的源代碼上傳到「雲編譯器」，產生應用程式每一個所支援平台的安裝包\[8\]。

## 設計理念

PhoneGap是一個行動設備的[API接口集](https://zh.wikipedia.org/wiki/API "wikilink")，利用JavaScript存取這些接口可以調用諸如攝影機、羅盤等硬體系統資源。配合上一些基於[HTML5](../Page/HTML5.md "wikilink")、[CSS3技術的](https://zh.wikipedia.org/wiki/CSS3 "wikilink")[UI框架](https://zh.wikipedia.org/wiki/UI "wikilink")，如jQuery Mobile、Dojo Mobile或Sencha Touch，開發者得以快速地開發跨平台App而不需要編寫任何的原生代碼。\[9\]

注意到因為PhoneGap本身仍是一個原生程式，為App打包時依然需要用到這些系統平台的SDK。

PhoneGap Framework可以用多種行動應用程式平台開發，例如：ViziApps、\[10\] Worklight、\[11\]\[12\]Convertigo\[13\]\[14\]、Tiggr和appMobi\[15\] ，也可以选择PhoneGap Build编译工具。

由於使用Web技術，PhoneGap程式的載入和UI介面的反應都比原生的程式慢\[16\]。[Adobe](../Page/Adobe.md "wikilink")警告開發者，由於使用PhoneGap框架開發的程式執行速度可能會太慢或使用體驗不夠“原生”，而被[蘋果應用商店拒絕上架](https://zh.wikipedia.org/wiki/蘋果公司 "wikilink")\[17\]\[18\]。

## 支援平台

PhoneGap目前支援的作業系統包含蘋果的[iOS](https://zh.wikipedia.org/wiki/iOS "wikilink")、Google的[Android](../Page/Android.md "wikilink")\[19\]、[Blackberry](https://zh.wikipedia.org/wiki/Blackberry "wikilink")、LG的[WebOS](https://zh.wikipedia.org/wiki/WebOS "wikilink")、微軟的[Windows Phone](../Page/Windows_Phone.md "wikilink")、Nokia的[Symbian](https://zh.wikipedia.org/wiki/Symbian "wikilink")、三星的[Tizen](../Page/Tizen.md "wikilink")和[bada](https://zh.wikipedia.org/wiki/bada "wikilink")、[Firefox OS](../Page/Firefox_OS.md "wikilink")\[20\]和[Ubuntu Touch](../Page/Ubuntu_Touch.md "wikilink")。\[21\]\[22\]\[23\]

<table>
<thead>
<tr class="header">
<th><p>功能</p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/Apple_iOS" title="wikilink">iPhone /iPhone 3G</a></p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/Apple_iOS" title="wikilink">iPhone 3GS and newer</a></p></th>
<th><p><a href="../Page/Android.md" title="wikilink">Android 1.0 – 4.2</a></p></th>
<th><p><a href="../Page/Windows_Phone.md" title="wikilink">Windows Phone</a></p></th>
<th><p><a href="../Page/BlackBerry_10.md" title="wikilink">BlackBerry 10 and PlayBook OS</a></p></th>
<th><p><a href="../Page/BlackBerry_OS.md" title="wikilink">4.6–4.7</a></p></th>
<th><p><a href="../Page/BlackBerry_OS.md" title="wikilink">5.0-6.0+</a></p></th>
<th><p><a href="../Page/Bada.md" title="wikilink">Bada</a></p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/Symbian" title="wikilink">Symbian</a></p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/webOS" title="wikilink">webOS</a></p></th>
<th><p><a href="../Page/Tizen.md" title="wikilink">Tizen</a></p></th>
<th><p><a href="../Page/Ubuntu_Touch.md" title="wikilink">Ubuntu Touch</a></p></th>
<th><p><a href="../Page/Firefox_OS.md" title="wikilink">Firefox OS</a></p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/加速器" title="wikilink">加速器</a></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><a href="../Page/照相機.md" title="wikilink">照相機</a></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/指南針" title="wikilink">指南針</a></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>通訊簿</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>檔案</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>地理定位</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>多媒體</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>網路</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>通知(警告、聲音、震動)</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>儲存</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

## 參見

  - [多樣化網際網路應用程式開發框架列表](../Page/多樣化網際網路應用程式開發框架列表.md "wikilink")

## 注釋

## 外部链接

  - [Adobe PhoneGap官方網站](http://phonegap.com)

[Category:程序设计工具](https://zh.wikipedia.org/wiki/Category:程序设计工具 "wikilink") [Category:Adobe软件](https://zh.wikipedia.org/wiki/Category:Adobe软件 "wikilink") [Category:Adobe_Systems](https://zh.wikipedia.org/wiki/Category:Adobe_Systems "wikilink")

1.
2.
3.
4.  <http://www.eweek.com/c/a/Application-Development/PhoneGap-Simplifies-iPhone-Android-BlackBerry-Development-788189/>
5.  <http://www.eweek.com/c/a/Application-Development/PhoneGap-Simplifies-iPhone-Android-BlackBerry-Development-788189/>
6.
7.
8.  Klint Finley. ["Adobe Launches Hosted PhoneGap Build Service For Creating Cross-Platform Mobile Apps"](http://techcrunch.com/2012/09/24/adobe-launches-hosted-phonegap-build-service-for-creating-cross-platform-mobile-apps/). 2012.
9.
10.
11.
12.
13.
14.
15.
16.
17.
18.
19.
20.
21. <http://docs.phonegap.com/en/edge/guide_support_index.md.html#Platform%20Support>
22.
23. <http://www.htmlpanda.com/blog/phonegap-app-development-supported-platforms-with-native-features/>