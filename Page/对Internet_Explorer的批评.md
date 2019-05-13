**[Internet
Explorer](../Page/Internet_Explorer.md "wikilink")**是一款招致了许多批评的[网页浏览器](../Page/网页浏览器.md "wikilink")。大部分批评都集中在其[安全架构以及对](../Page/电脑安全.md "wikilink")[开放标准的支持程度上](../Page/开放标准.md "wikilink")。

## 对其安全性的批评

Internet Explorer
的安全性已被来自[電腦安全研究社群全面审查](../Page/電腦安全.md "wikilink")，部分原因是因为市场被其独占。Internet
Explorer
的[安全漏洞已经使得其成为](../Page/安全漏洞.md "wikilink")[主流浏览器中較不安全的一个](../Page/网页浏览器列表.md "wikilink")。

2005年6月20日，安全咨询网站[Secunia列出了](../Page/Secunia.md "wikilink") Internet
Explorer 6
的20个无补丁的安全漏洞，在每一个安全级别中，绝大部分漏洞存在的时间都比[其他浏览器的时间长](../Page/网页浏览器比较#一般資料.md "wikilink")，但其中的一些漏洞只會影响特定版本的
Windows 上的某些 Internet Explorer 或是在与某些其他应用程序结合时才会暴露。

另一安全咨询网站SecurityFocus列出了存在于 Windows XP Service Pack 2 的 Internet
Explorer 6 中 27个无补丁安全漏洞\[1\]。在 Windows XP SP2 上的早期 Windows 中存在更多。

2004年6月23日，一个目的在于大公司 [IIS](../Page/IIS.md "wikilink") 服务器的攻击即是通过使用
Internet Explorer
中两个先前未发现的漏洞，借以在不知情的大量最终用户的浏览器中插入[垃圾邮件发送软件而成](../Page/垃圾邮件.md "wikilink")。该[恶意软件被定名为](../Page/恶意软件.md "wikilink")[Download.ject](../Page/Download.ject.md "wikilink")，它会在用户浏览网页时偷偷电脑中安装[后门以及一个](../Page/后门.md "wikilink")[键盘击键记录软件](../Page/鍵盤監聽.md "wikilink")。被感染的电脑包括许多金融網站。

Art Manion
是[美国电脑紧急相应小组](../Page/美国电脑紧急相应小组.md "wikilink")（US-CERT）的一名代表，他指出
Internet Explorer 6 SP1 的许多设计使得 Internet Explorer 6 天生就不可能安全，他说道：

Manion随后声名他的讲话大部分是相对于2004年发布 SP2 前的，并且其他浏览器也开始在上述CERT文件中面临类似的问题。

值得注意的是XP SP2所提供的一些功能对于先前版本的Windows并不可用，它们包括 Windows 9x，NT 和 2000。

另外，一些与Internet Explorer相关的安全漏洞也令需要的Windows用户突破安全权限。一个例子是，在Windows
XP中，缺省时系统是不允许普通用户组（User用户组）的用户以管理员组（Administrator用户组）权限进行特权操作的。但实际上，这种情况下骇客可以运行一个专用代码实现对电脑操作系统的完全控制。这种破解行为也将导致任何浏览器以不受限的特权状态运行。对于其他系统普通用户的日常操作来说，使用[超级用户](../Page/超级用户.md "wikilink")（Power
User用户组）进行日常操作是不明智的，但攻击者可以依赖于Windows系统中这个处于不适当级别的浏览器进程。然而，也有许多Windows中的程式离开管理员特权无法运行或效果变差，所以其他系统中的正常操作可能对于Windows用户来说是不切实际。

许多的安全分析者指出IE经常爆出严重漏洞是因为它独占市场份额，所以骇客把其优先作为攻击目标。然而，也有许多批评指出这种说法是不全面的；[Apache网络服务器的市场份额比微软IIS要高](../Page/Apache.md "wikilink")，但Apache几乎没有安全漏洞，就算有也相较IIS说是很轻微。微软的Craig
Mundie曾经承认微软公司的产品「对常态而言是不安全的」而这是因为微软「设计时更注重功能而非安全」。

结果这样导致许多问题，一些安全专家，包括[Bruce
Schneier](../Page/Bruce_Schneier.md "wikilink")
以及[开源倡导者](../Page/开源.md "wikilink")[David A.
Wheeler](../Page/David_A._Wheeler.md "wikilink") ，推荐广大用户停止使用Internet
Explorer作为日常浏览器，而转换其他浏览器作为替代。一些技术专栏作家也建议过类似的话
。2004年6月6日，US-CERT发布的漏洞报告建议立即停止使用IE而该用其他，尤其是访问非信任站点时更应如此。2004年12月，宾夕法尼亚大学发布的一篇文章告诫学生和员工马上丢弃使用IE并改用其他浏览器。

### 组件对象模块

许多的IE安全问题皆与[组件对象模块](../Page/组件对象模块.md "wikilink")（COM）相关。IE通过[ActiveX或](../Page/ActiveX.md "wikilink")[浏览器帮助对象](../Page/浏览器帮助对象.md "wikilink")（Browser
Helper
Object）将COM深植其中。这种功能的结合为[电脑病毒](../Page/电脑病毒.md "wikilink")、[特洛依木马程序以及](../Page/特洛伊木马_\(电脑\).md "wikilink")[间谍软件的进入大开方便之门](../Page/间谍软件.md "wikilink")。

这些[恶意软件的攻击与传遍通常皆要利用ActiveX](../Page/恶意软件.md "wikilink")。微软早已经认识到这一问题，1996年Charles
Fitzgerald－微软的Java团队程序负责人曾说，「如果你想在『-{zh-hans:网上;
zh-tw:網路上;}-』安全，请关掉你的电脑。我们从来没有准备让ActiveX安全。」

ActiveX控件，一旦运行，即可获得用户特权而非像其竞争技术（如Java与JavaScript）那样被限制的运行。ActiveX控件一如既往的是一个非标准的不可在非Windows平台上移植的技术。一份[普林斯頓大學教授](../Page/普林斯頓大學.md "wikilink")[Edward
Felten的文章](../Page/Edward_Felten.md "wikilink")[指出](http://www.cs.princeton.edu/sip/java-vs-activex.html):

ActiveX的安全依赖于安全区域的设置和数字签名，而没有类似[沙盒以及元政策的指导](../Page/沙盒_\(计算机安全\).md "wikilink")。在O'Reilly的书中有这样的解释恶意移动代码：

ActiveX的安全问题首次被发现是在1997年，[混沌電腦俱樂部](../Page/混沌電腦俱樂部.md "wikilink")（Chaos
Computer
Club）这家机构展示了一个可以与用户手持设备中[Intuit的](../Page/Intuit.md "wikilink")[Quicken金融软件自动进行连接的ActiveX控件](../Page/Quicken.md "wikilink")，这个程序会自动将用户帐号上的钱转移至CCC的银行帐号。

[美国国防部](../Page/美国国防部.md "wikilink")(DoD)已经将ActiveX定义为1类（最危险）的移动代码技术，并严格限制ActiveX在DoD系统内的使用。

也有专家认为ActiveX的风险被过分夸张了，而其实ActiveX是有安全机制的。eWeek的Larry Seltzer指出：

已发布的[Windows
Defender可以监视Windows](../Page/Windows_Defender.md "wikilink")
2000，XP and Server 2003下IE中的BHO，并对欲新安装BHO对用户作出警告。

### 补丁

很多人批评IE常常在发现问题很长时间後才发布对应的补丁，而且发布的补丁常常不能完全修复漏洞。如微软在2003年2月发布初始报告後200天才发布出补丁（而不是30-60天），Marc
Maifrett，[eEye Digital
Security的Hacking部门主管说过](../Page/eEye_Digital_Security.md "wikilink")：“如果它们真的需要花费如此长的时间来修复(以及测试)，那么他们还有别的问题。这不是一个软件公司的运作常态。”[The
Register则批评Maifrett公布的安全漏洞导致了](../Page/The_Register.md "wikilink")[CodeRed在那年的流行](../Page/CodeRed.md "wikilink")，也有人认为：「如果他们没有发现引起公众慌乱、ida漏洞或是他们的SecureIIS产品有能力防卫，红色代码蠕虫就不会感染数千台系统。

微软将他们的延期归咎于区域测试。公司对Internet
Explorer进行测试的软件是复杂而完全的。IE浏览器以26种不同语种发布在不同的Windows平台上。因此，对每个补丁的测试估计需要进行[最少237次安装](http://blogs.msdn.com/ie/archive/2004/08/17/216080.aspx)。

虽然安全补丁持续在不同平台上发布，但现今大部分补丁只针对Windows XP发布。

### 间谍软件·广告软件与Windows XP SP2

[间谍软件与](../Page/间谍软件.md "wikilink")[广告软件](../Page/广告软件.md "wikilink")，如同其他的[恶意软件一样](../Page/恶意软件.md "wikilink")，通常把目标对准Windows/Internet
Explorer为基础的作业系统。较旧的间谍软件对系统的危害已经因为Windows XP
SP2的安全增强而有所缓解，但对IE新型的攻击会在SP2上安装间谍软件。微软不建议在已经感染间谍软件的系统上安装SP2，因为这可能导致不能自举：

視已安裝的間碟軟件而定，在SP2更新準備工作中，我們可透過反間諜工具移除間碟軟件或在一些嚴重情形中，需要手動修改[登錄檔](../Page/登錄檔.md "wikilink")（Windows
Registry）。 然而，保安專家普遍建議安裝Service Pack 2。

## 對其不支援開放標準的批評

[Box-model-bug.png](https://zh.wikipedia.org/wiki/File:Box-model-bug.png "fig:Box-model-bug.png")
in quirks mode\]\]

在1990年代的[瀏覽器戰爭時代](../Page/瀏覽器戰爭.md "wikilink")，Internet
Explorer與[Netscape
Navigator都不得不致力於在瀏覽器中添加非標準功能](../Page/Netscape_Navigator.md "wikilink")。這與近來以[web標準設計的瀏覽器形成鮮明對比](../Page/web標準.md "wikilink")。在版本號5後，IE的[Trident](../Page/Trident_\(排版引擎\).md "wikilink")[渲染引擎幾乎沒有進行過重大修改](../Page/渲染引擎.md "wikilink")。結果在2005年，IE在支持標準上已經大大落後。

雖然每一個版本的IE都會改善基本支援，包括在版本6中引採用的「符合標準模式」，其中用來建立網頁（[HTML和](../Page/HTML.md "wikilink")[CSS](../Page/串接樣式表.md "wikilink")）的核心標準卻仍然是以不完全且不正確的方式來實作的。舉例來說，它不支援`<abbr>`
元素，但這是HTML 4.01 標準的一部份，而且它對CSS1標準中的float-margin部分的實作有缺陷。[Internet
Explorer盒模型错误是Internet](../Page/Internet_Explorer盒模型错误.md "wikilink")
Explorer對CSS標準的實作中，最為人熟知的缺陷之一。

由於它在市場上的主導地位，使得某些網頁開發人員只用Internet Explorer來測試他們的網站。某些開發人員也使用Internet
Explorer所提供的非標準擴充套件。這導致網頁無法被其他瀏覽器正確地解讀。最糟糕的情況下，它可能會阻擋其他瀏覽器的使用者存取這些開發人員所建立的網站。

雖然[Netscape已經停止開發](../Page/Netscape.md "wikilink")[Netscape
Navigator](../Page/Netscape_Navigator.md "wikilink")，微軟的Internet
Explorer因而取得了非常大的市場佔有率，而後開發[Netscape
Navigator的程式員與一些不滿Internet](../Page/Netscape_Navigator.md "wikilink")
Explorer的技術人員創立了[Mozilla組織並以](../Page/Mozilla基金會.md "wikilink")[Netscape
Navigator作基礎開發了](../Page/Netscape_Navigator.md "wikilink")[Mozilla
Application
Suite與](../Page/Mozilla_Application_Suite.md "wikilink")[Mozilla
Firefox](../Page/Mozilla_Firefox.md "wikilink")。

### 圖像標準

由於IE不支援[PNG圖像的](../Page/PNG.md "wikilink")[Alpha
通道](../Page/阿爾法通道.md "wikilink")，導致PNG[圖像格式在网上使用率的減少](../Page/圖像格式.md "wikilink")。雖然只是一個可選的特性，[Alpha
通道卻是把PNG與其他像](../Page/阿爾法通道.md "wikilink")[GIF或者](../Page/GIF.md "wikilink")[JPEG這樣的格式相區別的一個特色](../Page/JPEG.md "wikilink")。
在Internet瀏覽器中，透明的部分的形象將被顯示作為灰色，白或者其他顏色。

隔行或漸進顯示對於過去大量使用的[撥號上網而](../Page/撥號上網.md "wikilink")[頻寬非常有限的用戶非常有用](../Page/頻寬.md "wikilink")。不過，Internet
Explorer的圖像不支持於未完成下載時開啟。但由於[宽带因特网连接的引進](../Page/宽带因特网连接.md "wikilink")，現在這問題已沒那麼重要。

### XHTML

### HTTP與MIME

不像其他瀏覽器，Internet
Explorer不允許MIME在Content-Type[信頭段中定義MIME類型](../Page/信頭.md "wikilink")。比如一個純文本格式的檔內包含了HTML樣式的標記就會被識別為HTML文檔，而不是純文本文檔。但在這種情況下，可以通過手動修改註冊表的方式強行改變執行行為。

### JavaScript與DOM

微軟擴展了原先網景的JavaScript並專稱其為JScript，JScript是Internet
Explorer的缺省腳本語言。與Netscape's
JavaScript有相似的implementation, JScript supports the full
specification of [ECMAScript](../Page/ECMAScript.md "wikilink"), the
only standardised scripting language on the Web.

最大的不同在於與[JScript綁定的](../Page/JScript.md "wikilink")[文档对象模型](../Page/文档对象模型.md "wikilink")(DOM)。

### Unicode

Internet
Explorer對多語言文本支援[Unicode標準](../Page/Unicode.md "wikilink")，因此其理論上有能力顯示任何已經安裝[字體的](../Page/字體.md "wikilink")[字元](../Page/圖像.md "wikilink")。但實際上，Internet
Explorer不會對混和Unicode文本自動選擇字體。這種情況下字元可能會以一個空格結束或顯示為問號。

網頁設計者必須猜測在用戶電腦上顯示哪種字體最為合適，如果需要改變就需要對每個Unicode塊進行手動改變。而對其他瀏覽器卻可以自動完成這個操作。

以Unicode之中的英文的音標為例，當網頁中，欲顯示的音標字串的前後有使用\<font name="Lucida Sans
Uinicode"\>與\</font\>所包起來時。IE6以前的版本，無法正常顯示出英文的音標。但IE7則已修正了此Bug。

## 其他批评

随着版本的更新，Internet Explorer的下载大小也显著增大。对于[Internet Explorer 6 Service
Pack 1](http://www.microsoft.com/windows/ie/downloads/critical/ie6sp1/)（包括[Outlook
Express](../Page/Outlook_Express.md "wikilink")）来说，其典型安装时的下载大小已经接近25[MBs](../Page/megabyte.md "wikilink")。它的大小从11[MBs](../Page/megabyte.md "wikilink")（最简安装）到75[MBs](../Page/megabyte.md "wikilink")（完全安装）不等。这大大超过了一另一些网络浏览套装（Internet
suites）的大小，例如（基于Windows installer）Opera 8.0 (3.6MB)、Mozilla Suite 1.7.8
(11MB)、Mozilla Firefox 1.5.0.6(4.9MB)和SeaMonkey 1.0.4(12MB)。

一个较小但似乎很有意思的批评是软件名称中[Internet这个单词的使用](../Page/Internet.md "wikilink")。严格地说，Internet
Explorer是为万维网（[World Wide
Web](../Page/World_Wide_Web.md "wikilink")）而不是为整个包含了[電郵](../Page/電郵.md "wikilink"),
[Usenet](../Page/Usenet.md "wikilink"),
[telnet和](../Page/telnet.md "wikilink")[IRC等的因特网](../Page/Internet_Relay_Chat.md "wikilink")（[Internet](../Page/Internet.md "wikilink")）而设计的。由于这种以因特网（Internet）来代替万维网（World
Wide Web）的误导性使用，许多对因特网没有足够了解的用户可能会认为使用Internet Explorer是进入因特网的唯一途径。

## 註解

<div class="references-small">

</div>

## 參考資料

<div class="references-small">

</div>

## 参见

  - [Internet Explorer](../Page/Internet_Explorer.md "wikilink")
  - [Common criticisms of
    Microsoft](../Page/Common_criticisms_of_Microsoft.md "wikilink")

## 外部链接

  - [Secunia - Vulnerability Report - Microsoft Internet
    Explorer 6.x](http://secunia.com/product/11/)
  - [Explorer
    Exposed\!](http://www.positioniseverything.net/explorer.html)
  - [Internet Explorer vs. the
    Standards](http://www.positioniseverything.net/ie-primer.html)
  - [The Door Is
    Ajar](http://www.tbray.org/ongoing/When/200x/2003/07/17/BrowserDream)
    — An "anti-IE" article by a [Sun
    Microsystems](../Page/Sun_Microsystems.md "wikilink") technology
    director [Tim Bray](../Page/Tim_Bray.md "wikilink").
  - [Why You Should Dump Internet
    Explorer](http://www.lockergnome.com/news/2004/06/15/why-you-should-dump-internet-explorer/)
    — An "anti-IE" article by a [MCSE](../Page/MCSE.md "wikilink")
    Daniel Miessler.
  - [StopIE](http://www.stopie.com) — An "anti-IE" campaign by a web
    developer Stephen O'Brien
  - [Browse Happy](http://www.browsehappy.com) — An "anti-IE" campaign
    by the Web Standards Project
  - [Drip](https://web.archive.org/web/20050723082947/http://jgwebber.blogspot.com/2005/05/drip-ie-leak-detector.html)
    — A utility to detect and measure IE's memory leaks.

[en:Criticism of Internet
Explorer](../Page/en:Criticism_of_Internet_Explorer.md "wikilink")

[Category:Internet_Explorer](https://zh.wikipedia.org/wiki/Category:Internet_Explorer "wikilink")
[Category:針對微軟的批評與爭議](https://zh.wikipedia.org/wiki/Category:針對微軟的批評與爭議 "wikilink")

1.  [Internet Explorer 6
    中 27个无补丁安全漏洞](http://securityfocus.com/cgi-bin/index.cgi?l=30&c=12&vendor=Microsoft&version=6.0%20SP2&title=Internet%20Explorer)