**HTML5**是[HTML最新的修訂版本](../Page/HTML.md "wikilink")，由[万维网联盟](../Page/万维网联盟.md "wikilink")（W3C）于2014年10月完成標準制定\[1\]\[2\]。目標是取代1999年所制定的[HTML](../Page/HTML.md "wikilink")
4.01和[XHTML](../Page/XHTML.md "wikilink")
1.0標準，以期能在網際網路應用迅速發展的時候，使網路標準達到符合當代的網路需求。廣義論及HTML5時，實際指的是包括HTML、[CSS和](https://zh.wikipedia.org/wiki/CSS "wikilink")[JavaScript在內的一套技術組合](../Page/JavaScript.md "wikilink")。它希望能夠減少[網頁瀏覽器對於需要](https://zh.wikipedia.org/wiki/網頁瀏覽器 "wikilink")[外掛程式的](https://zh.wikipedia.org/wiki/外掛程式 "wikilink")[豐富性網路應用服務](https://zh.wikipedia.org/wiki/豐富性網路應用服務 "wikilink")（Plug-in-Based
Rich Internet Application，RIA），例如：[Adobe
Flash](../Page/Adobe_Flash_Player.md "wikilink")、[Microsoft](https://zh.wikipedia.org/wiki/Microsoft "wikilink")
[Silverlight與](https://zh.wikipedia.org/wiki/Silverlight "wikilink")[Oracle](https://zh.wikipedia.org/wiki/Oracle "wikilink")
[JavaFX的需求](../Page/JavaFX.md "wikilink")，並且提供更多能有效加強網路應用的標準集。

HTML5添加了许多新的语法特征，其中包括`<video>`、`<audio>`和`<canvas>`元素，同时整合了[SVG内容](https://zh.wikipedia.org/wiki/SVG "wikilink")。这些元素是为了更容易的在网页中添加和处理多媒体和图片内容而添加的。其它新的元素如`<section>`、`<article>`、`<header>`和`<nav>`则是为了丰富文档的数据内容。新的属性的添加也是为了同样的目的。同时也有一些属性和元素被移除掉了。一些元素，像`<a>`、`<cite>`和`<menu>`被修改，重新定义或标准化了。同时APIs和[DOM已经成为HTML](../Page/文档对象模型.md "wikilink")5中的基础部分了\[3\]。HTML5还定义了处理非法文档的具体细节，使得所有浏览器和客户端程序能够一致地处理语法错误\[4\]。

## 发展历史

[網頁超文本技術工作小組](https://zh.wikipedia.org/wiki/網頁超文本技術工作小組 "wikilink")（WHATWG）於2004年開始制定新標準。當時，HTML
4.01自2000年以來就沒有更新過\[5\]，以及全球資訊網協會（W3C）正在將未來的發展重點放在XHTML
2.0。2009年，W3C允許XHTML
2.0工作組章程結束過期並且決定不再續訂\[6\]。W3C與WHATWG合作共同為發展HTML5而努力\[7\]。

2004年6月，[Mozilla基金會和](../Page/Mozilla基金會.md "wikilink")[Opera軟體公司在全球資訊網協會](https://zh.wikipedia.org/wiki/Opera軟體公司 "wikilink")（W3C）所主辦的研討會上提出了一份立場文件\[8\]，其重點是開發與現有瀏覽器向後相容的技術\[9\]，包括Web
Forms
2.0最初草案規範。研討會最後以——8票贊成，14票反對——否決繼續對HTML的開發工作\[10\]。這引起一些人的不滿，在研討會之後，立即成立了[網頁超文本技術工作小組](https://zh.wikipedia.org/wiki/網頁超文本技術工作小組 "wikilink")（WHATWG），以根據該目標開始工作，並宣佈第二個草案Web
Applications
1.0\[11\]。後來這兩種規範合併形成HTML5\[12\]。2007年，获得W3C接納，并成立了新的HTML工作团队。2008年1月22日，第一份公開工作草案發布\[13\]。

尽管HTML5已经在网络开发人员中非常出名了，但是它成为主流媒體的一个话题是在2010年的4月\[14\]\[15\]\[16\]\[17\]，当时[苹果公司的CEO](https://zh.wikipedia.org/wiki/苹果公司 "wikilink")-{zh-hant:[賈伯斯](https://zh.wikipedia.org/wiki/賈伯斯 "wikilink");zh-hans:[乔布斯](https://zh.wikipedia.org/wiki/乔布斯 "wikilink")}-发表一篇题为“对Flash的思考”的文章，指出随着HTML5的发展，观看影片或其它内容时，[Adobe
Flash将不再是必须的](../Page/Adobe_Flash.md "wikilink")\[18\]。这引发了开发人员间的争论，包括HTML5虽然提供了加強的功能，但开发人员必须考虑到不同浏览器对标准不同部分的支持程度的不同，以及HTML5和Flash间的功能差异\[19\]。

2014年10月28日，W3C正式发布HTML 5.0推荐标准\[20\]。

### 时间表

HTML5.0，HTML5.1和HTML5.2的合并时间表：

|                | 2012年  | 2013年 | 2014年 | 2015年  | 2016年 | 2017年 | 2018年 |
| -------------- | ------ | ----- | ----- | ------ | ----- | ----- | ----- |
| HTML 5.0       | 候选版    | 征求评价  | 推荐标准  |        |       |       |       |
| HTML 5.1       | 第一工作草案 |       | 最后召集  | 候选版    | 推荐标准  |       |       |
| HTML 5.2\[21\] |        |       |       | 第一工作草案 |       | 候选版   | 推荐标准  |
| HTML 5.3\[22\] |        |       |       |        |       | 編者草案  |       |

## 特點

### 標記

HTML5提供了一些新的[元素和屬性](../Page/HTML元素.md "wikilink")，反映典型的現代用法[網站](../Page/網站.md "wikilink")。其中有些是技術上類似`<div>`和`<span>`標籤，但有一定含義，例如`<nav>`（網站導航塊）和`<footer>`。這種標籤將有利於[搜索引擎的索引整理](../Page/搜索引擎.md "wikilink")、小螢幕裝置和視障人士使用。同時為其他瀏覽要素提供了新的功能，通過一個標準接口，如`<audio>`和`<video>`標記\[23\]\[24\]\[25\]。一些過時的[HTML
4.01標記將取消](../Page/HTML.md "wikilink")，其中包括純粹用作顯示效果的標記，如`<font>`和`<center>`，因為它們已經被[CSS取代](https://zh.wikipedia.org/wiki/CSS "wikilink")<ref>

</ref>`。還有一些透過`[`DOM的網絡行為`](https://zh.wikipedia.org/wiki/DOM "wikilink")`。`

尽管和[SGML在标记上的相似性](../Page/SGML.md "wikilink")，HTML5的句法并不再基于它了\[26\]\[27\]，而是被设计成向后兼容对老版本的HTML的解析。它有一个新的开始列看起来就像SGML的文档类型声明，`<!DOCTYPE
HTML>`，这会触发和标准兼容的[渲染模式](https://zh.wikipedia.org/wiki/怪異模式 "wikilink")\[28\]。在2009年1月5日，HTML5添加了Web
Form 2.0的内容，HTML5开始发展起来\[29\]\[30\]。

### 新的API

[HTML5_APIs_and_related_technologies_taxonomy_and_status.svg](https://zh.wikipedia.org/wiki/File:HTML5_APIs_and_related_technologies_taxonomy_and_status.svg "fig:HTML5_APIs_and_related_technologies_taxonomy_and_status.svg")
除了原先的[DOM接口](https://zh.wikipedia.org/wiki/DOM "wikilink")，HTML5增加了更多樣化的[應用程序接口](https://zh.wikipedia.org/wiki/應用程序接口 "wikilink")（API）\[31\]：

  - [Canvas](../Page/Canvas_\(HTML元素\).md "wikilink")\[32\]
  - 定時媒體播放\[33\]
  - 离线\[34\]
  - 可編輯內容\[35\]
  - [拖放](https://zh.wikipedia.org/wiki/拖放 "wikilink")\[36\]
  - 歷史\[37\]
  - [MIME和協議處理程序時表頭登記](https://zh.wikipedia.org/wiki/MIME "wikilink")\[38\]\[39\]
  - 微数据\[40\]
  - 網路訊息\[41\]
  - [網路存儲](https://zh.wikipedia.org/wiki/網頁存儲 "wikilink")\[42\]

以上技术尽管是WHATWG HTML说明文档的内容，但并没有全部包括在W3C
HTML5的说明文档裡\[43\]。一些相关的技术，像下面所列的，并没有包括在这2份文档中的任何一份中。W3C给这些技术单独出版了说明文档。

  - 地理位置
  - 網頁SQL數據庫 ─ 本地SQL數據庫（不再維護）\[44\]
  - IndexedDB\[45\]
  - 文件\[46\] ─ 处理文件上传和操纵文件\[47\]
  - 目录和文件系统 ─ 这个API是为了满足客户端在没有好的数据库支持情况下存储要求\[48\]
  - 文件写入 ─ 从网络应用程序向文件裡写内容\[49\]
  - 網路音頻\[50\]
  - ClassList\[51\]
  - 網路加密\[52\]
  - [WebRTC](../Page/WebRTC.md "wikilink")\[53\]

一个普遍的误解是HTML5能够在网页中提供动画效果，这是不对的，动画效果是需要配合[JavaScript和](../Page/JavaScript.md "wikilink")[CSS](https://zh.wikipedia.org/wiki/CSS "wikilink")。然而靜態HTML5配合[CSS可以表示出覆雜的排版結構而且原生支援與影片的混合與控制](https://zh.wikipedia.org/wiki/CSS "wikilink")（控制一般由[JavaScript執行](../Page/JavaScript.md "wikilink")），因此簡單可以把HTML5單位時間的狀態理解為動畫的[關鍵影格](../Page/關鍵格.md "wikilink")。

### XHTML5（XML-serialized HTML5）

XHTML5是对HTML5的[XML序列化](../Page/XML.md "wikilink")。XML文档必须被设置为XML互联网文件类型，像`application/xhtml+xml`或者`application/xml`。XHTML5要求像XML一样严格的格式化的语法。在XHTML5中，HTML5的`<!DOCTYPE
HTML>`可有可无的。

XHTML5並非[XHTML的第](../Page/XHTML.md "wikilink")5版，沒有自己獨立的標準規範，而是HTML5的一種序列化方式。XHTML1.x和2.0使用的名字是Extensible
HyperText Markup Language，不同於XHTML5。

### 异常处理

HTML5在设计时保证旧的浏览器能够安全地忽略掉新的HTML5代码\[54\]。与HTML4.01相比，HTML5给出了解析的完整规则，让不同的浏览器即使在发生语法错误时也能返回完全相同的结果\[55\]。

### 普及率

根據2011年9月30日發布的一份報告，全球排名前100的網站中有34個網站使用HTML5──主要是[搜尋引擎與](https://zh.wikipedia.org/wiki/網路搜尋引擎 "wikilink")[社群網站](https://zh.wikipedia.org/wiki/社會網路 "wikilink")\[56\]。2013年8月發布的另一份報告顯示，[財富美國500強企業中已有多達](https://zh.wikipedia.org/wiki/財富美國500強 "wikilink")153家採用HTML5\[57\]。

### HTML 4.01和XHTML 1.x的差異

以下為大略的不同之處，與例子：

  - 文件類型聲明（`<!DOCTYPE>`）僅有一型：`<!DOCTYPE HTML>`。
  - 新的解析順序：不再基於[SGML](../Page/SGML.md "wikilink")。
  - 新的元素：`section`, `video`, `progress`, `nav`, `meter`, `time`,
    `aside`, `canvas`, `command`, `datalist`, `details`, `embed`,
    `figcaption`, `figure`, `footer`, `header`, `hgroup`, `keygen`,
    `mark`, `output`, `rp`, `rt`, `ruby`, `source`, `summary`, `wbr`。
  - `input`元素的新類型：`date`, `email`, `url`等等。
  - 新的屬性：`ping`（用于`a`与`area`）, `charset`（用于`meta`）, `async`（用于`script`）。
  - 全域屬性：`id`, `tabindex`, `repeat`。
  - 新的全域屬性：`contenteditable`, `contextmenu`, `draggable`, `dropzone`,
    `hidden`, `spellcheck`。
  - 移-{}-除元素：`acronym`, `applet`, `basefont`, `big`, `center`, `dir`,
    `font`, `frame`, `frameset`, `isindex`, `noframes`, `strike`, `tt`。

## 各瀏覽器的支援

HTML5
Test網站，是用以測試對瀏覽器對熱門新功能的支援。測試的滿分是555分，而當中的額外分數表示瀏覽器對一些沒有列入W3C的標準亦有支援，例如<code>

<video>

</code>元素並沒有指明編碼標準，HTML5支援MPEG-4、H.264、Ogg Theora及WebM 影音編碼。HTML5
Test並未測試所有新加入的功能，分數高只代表瀏覽器現時對所挑選的新網頁編碼整體上有較佳的支援，並不代表日後其表現的趨勢，因此分數只能作為參考。

截至2018年7月15日，五大瀏覽器最新版本所取得的分數分別是：\[58\]

| 瀏覽器                                                                         | 正式版本 | 分數  | 其他版本 | 分數 \<\!-- | 瀏覽器 | 正式版本 | 分數 | 其他版本 | 分數 --\> |
| --------------------------------------------------------------------------- | ---- | --- | ---- | --------- | --- | ---- | -- | ---- | ------- |
| [Google Chrome](../Page/Google_Chrome.md "wikilink")                        | 67   | 528 | 68   | 528       |     |      |    |      |         |
| [Opera](https://zh.wikipedia.org/wiki/Opera電腦瀏覽器 "wikilink")                | 54   | 528 | 55   | 528       |     |      |    |      |         |
| [Microsoft Edge](../Page/Microsoft_Edge.md "wikilink")                      | 17   | 492 | 18   | 496       |     |      |    |      |         |
| [Mozilla Firefox](https://zh.wikipedia.org/wiki/Mozilla_Firefox "wikilink") | 61   | 497 | 62   | 497       |     |      |    |      |         |
| [Apple Safari](https://zh.wikipedia.org/wiki/Apple_Safari "wikilink")       | 11.1 | 471 | 11.2 | 477       |     |      |    |      |         |
|                                                                             |      |     |      |           |     |      |    |      |         |

## 注釋

## 参考文献

## 外部連結

  - [HTML Working Group](http://www.w3.org/html/wg/)，HTML5的出版物，規範和注意事項
  - [HTML5
    Rocks](http://www.html5rocks.com/)，一個由[Google開發的HTML](../Page/Google.md "wikilink")5全面的資源
  - [Mozilla Demo
    Studio](https://developer.mozilla.org/en-US/demos/)，HTML5實作展示
  - [HTML5 Frontend
    Comparison](http://www.capwell.nl/software-ontwikkeling/ria-html5-specialisten/artikelen/html5-frontend-comparison-58)，工作表顯示HTML5vs其他主要前端技術
  - [HTML5test](https://html5test.com/)，HTML5評分網站
  - [HTML.next](https://www.w3.org/Bugs/Public/buglist.cgi?product=HTML.next)，HTML未來版本的功能要求

[Category:HTML](https://zh.wikipedia.org/wiki/Category:HTML "wikilink")
[Category:HTML5](https://zh.wikipedia.org/wiki/Category:HTML5 "wikilink")
[Category:網頁技術](https://zh.wikipedia.org/wiki/Category:網頁技術 "wikilink")
[Category:標記語言](https://zh.wikipedia.org/wiki/Category:標記語言 "wikilink")
[Category:W3C標準](https://zh.wikipedia.org/wiki/Category:W3C標準 "wikilink")
[Category:基於XML的標準](https://zh.wikipedia.org/wiki/Category:基於XML的標準 "wikilink")

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

17.

18.

19.

20.

21.

22.

23. Introduction to HTML5
    [video](http://dev.opera.com/articles/view/introduction-html5-video/)

24. IBM Developer Works [New elements in HTML5: Structure and
    semantics](http://www.ibm.com/developerworks/library/x-html5/?ca=dgr-lnxw01NewHTML)

25. ICAMD.org [Finalcut Silverlight Films that Videographers share
    Quicktime in a Flash : Video on the Web using HTML5 and other
    Codecs](http://www.amazon.com/dp/B003H05Q18)

26. [HTML5 DTD](http://www.cs.tut.fi/~jkorpela/html5-dtd.html): "HTML5
    is not SGML-based, and there will be no official DTD for it."

27. [HTML 5 Reference](http://dev.w3.org/html5/html-author/): "Although
    it is inspired by its SGML origins, in practice, it really only
    shares minor syntactic similarities." "As HTML5 is no longer
    formally based upon SGML, the DOCTYPE no longer serves this purpose,
    and thus no longer needs to refer to a DTD."

28.

29.  obsolescence notice

30.

31. ["HTML5 Differences from HTML4 –
    APIs"](http://dev.w3.org/html5/html4-differences/#syntax). [World
    Wide Web
    Consortium](https://zh.wikipedia.org/wiki/World_Wide_Web_Consortium "wikilink").

32. ["Get Started with HTML5
    Canvas"](http://www.syntaxxx.com/get-started-with-html5-canvas/).
    Syntaxxx.

33.

34. ["Offline Web Applications"](http://www.w3.org/TR/offline-webapps/).
    [World Wide Web
    Consortium](https://zh.wikipedia.org/wiki/World_Wide_Web_Consortium "wikilink").

35.

36.

37.

38.

39.

40.

41. ["HTML5 Web Messaging"](http://dev.w3.org/html5/postmsg/). World
    Wide Web Consortium.

42. ["Web Storage Specification"](http://dev.w3.org/html5/webstorage/).
    World Wide Web Consortium.

43.

44. ["Web SQL Database"](http://dev.w3.org/html5/webdatabase/). World
    Wide Web Consortium.

45. ["Indexed Database"](http://www.w3.org/TR/IndexedDB/). World Wide
    Web Consortium.

46.

47. ["File API"](http://www.w3.org/TR/FileAPI/). World Wide Web
    Consortium.

48. ["Filesystem API"](http://www.w3.org/TR/file-system-api/). World
    Wide Web Consortium.

49. ["File API: Writer"](http://www.w3.org/TR/file-writer-api/). World
    Wide Web Consortium.

50.

51.

52. Web Cryptography Candidate Recommendation:
    <https://www.w3.org/TR/WebCryptoAPI/>

53. WebRTC Working Draft: <https://www.w3.org/TR/webrtc/>

54.
55.

56.

57. "[HTML5 Popularity Among Fortune 500
    Companies](http://www.incore.com/Fortune500HTML5/#infographic)".
    INCORE. Retrieved 5 March 2013.

58. [HTML5 Test官方測試數據](https://html5test.com/results/desktop.html)