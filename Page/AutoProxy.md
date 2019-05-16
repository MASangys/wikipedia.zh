**AutoProxy**是一款适用于[Mozilla
Firefox的](https://zh.wikipedia.org/wiki/Mozilla_Firefox "wikilink")[附加组件](../Page/Firefox扩展列表.md "wikilink")，能够在加载资源时自动判断是否使用[代理服务器](../Page/代理服务器.md "wikilink")。AutoProxy派生于[Adblock
Plus](../Page/Adblock_Plus.md "wikilink")，因此继承了其很多特性，包括十分接近的过滤器语法。本擴充組件目前的開發已陷入停頓。\[1\]

## 功能

  - 类似AdBlock Plus, Firefox 在加载资源时会自动用资源地址匹配列表来判断并控制是否使用代理服务器加载。
  - 自动更新的资源列表，以跟随[防火长城的变化](../Page/防火长城.md "wikilink")。避免了使用FoxyProxy时需要手动添加大量网站的麻烦。
  - 三种工作模式：自动模式（自动匹配列表判断是否使用代理）、全局模式（全部都使用代理）、禁用（不进行匹配）
  - 自动判断是否需要使用代理加载，因此可以节省大量的代理服务器资源和加载时间。

## 历史版本

  - 0.4b2.2015031118（最新測試版）：主要修復了在新版本Firefox（22.0～36.0）上的相容性問題以及小許功能缺陷，更新了圖示。要注意的是該版本並沒有在Mozilla擴展中心發布，因此沒有獲得Mozilla擴展中心的審核認證。\[2\]作者也建議使用其它擴充套件（如FoxyProxy）取代之。從Firefox
    43.0.1開始，由於Mozilla為加強瀏覽器的安全性，未經驗證的擴充套件將不能安裝使用，因此該版本無法在Firefox
    43或更高的版本上使用。
  - 0.4b2.2013051811.1（AMO最新版）：該版本已無法於Firefox 22及更高版本上正常運行，主要是界面無法顯示規則。
  - 0.4b1（AMO版本）：大量更新，重新支持点击计数，UI做出了修改以方便快捷操作，还添加了键盘快捷键
  - 0.3b4（AMO版本）：正式通过Mozilla扩展中心的审核。新增fallbackproxy功能以方便上网原本就需要代理的用户。
  - 0.3b3：禁用了容易导致Firefox崩溃的点击次数统计。
  - 0.3b2：使得其它Firefox扩展也能使用AutoProxy的代理，修正了重定向页面第一次访问无法使用代理且安装后需要重启两次Firefox的问题。
  - 0.3b1：支持全局代理，实现了Adblock Plus中匹配某个域的“||”语法。
      - 目前v0.2.x版已经不再支持当前gfwList中使用的语法，继续使用可能导致很多问题
  - 0.2.1：支持通过[SOCKS代理解析](../Page/SOCKS.md "wikilink")[域名以对抗](../Page/域名.md "wikilink")[DNS劫持](../Page/域名服务器缓存污染.md "wikilink")。
  - 0.2.0：首个版本。\[3\]

## 衍生作品

### gfwList

  - **gfwList**是由AutoProxy官方维护，由众多网民收集整理的一个中国大陆防火长城的屏蔽列表。此列表非中国官方列表，故可能有遗漏、错误部分。\[4\]由於[GoogleCode于](https://zh.wikipedia.org/wiki/GoogleCode "wikilink")2016年1月25日關閉，因此該專案已轉移至Github原始碼代管平台\[5\]。

### AutoProxy2PAC

  - **AutoProxy2PAC**可以通过gfwList自动生成[PAC文件](../Page/代理自动配置.md "wikilink")，可以让非Firefox用户获得简单的AutoProxy功能（自动匹配、无法设置规则、无法快速切换模式），使[Internet
    Explorer](../Page/Internet_Explorer.md "wikilink")、[Google
    Chrome等浏览器用户享受此扩展的便利](../Page/Google_Chrome.md "wikilink")。

<!-- end list -->

  - [Chrome扩展Switchy](../Page/Google_Chrome.md "wikilink")\!也支持AutoProxy的列表格式并可以自动生成PAC并进行一定程度的自定义，但是目前仍有一些Bug。\[6\]

## 参考文献

## 外部链接

  - [AutoProxy官方网站](https://web.archive.org/web/20100527025631/http://autoproxy.org/)
  - [AutoProxy -
    Firefox附加组件](https://addons.mozilla.org/firefox/addon/11009/)
  - [AutoProxy2PAC](https://web.archive.org/web/20100608130250/http://autoproxy2pac.appspot.com/)
  - [Github上AutoProxy的專案](https://github.com/agunchan/autoproxy)
  - [Github上GFWlist的專案](https://github.com/gfwlist/gfwlist)

[Category:Firefox_附加组件](https://zh.wikipedia.org/wiki/Category:Firefox_附加组件 "wikilink")
[Category:破网软件](https://zh.wikipedia.org/wiki/Category:破网软件 "wikilink")

1.
2.

3.

4.

5.  <https://github.com/gfwlist/gfwlist>

6.