**SpiderMonkey**是世界上第一款[JavaScript引擎](../Page/JavaScript引擎.md "wikilink")，由前[网景公司的](https://zh.wikipedia.org/wiki/网景公司 "wikilink")[布兰登·艾克設計](https://zh.wikipedia.org/wiki/布兰登·艾克 "wikilink")，後期由[Mozilla基金会維護](https://zh.wikipedia.org/wiki/Mozilla基金会 "wikilink")，以[開放原始碼發佈](https://zh.wikipedia.org/wiki/開放原始碼 "wikilink")。目前為[Mozilla
Firefox](https://zh.wikipedia.org/wiki/Mozilla_Firefox "wikilink")[網頁瀏覽器所使用的](https://zh.wikipedia.org/wiki/網頁瀏覽器 "wikilink")[JavaScript引擎](../Page/JavaScript.md "wikilink")，並也被嵌入到其他許多環境，例如[GNOME
3桌面](../Page/GNOME.md "wikilink")。

## 歷史

1995年，艾克被招聘到Netscape，目的是让他在瀏覽器中實作[Scheme程式語言](../Page/Scheme.md "wikilink")\[1\]，於是他於10天內開發出JavaScript
\[2\]（當工程管理決定這個程式語言必須長得像[Java時](../Page/Java.md "wikilink")，使用Scheme的想法被放棄\[3\]）。之後艾克必須為這個重大的[技術負債付出代價](https://zh.wikipedia.org/wiki/技術負債 "wikilink")，在1996年秋天，艾克留在家裡兩個禮拜，並且重寫了Mocha程式庫，也是後來大家所知道的SpiderMonkey\[4\]。SpiderMonkey這個名字源自於電影[癟四與大頭蛋横贯美国](../Page/癟四與大頭蛋.md "wikilink")，電影裡的角色Tom
Anderson提到，主要演員就像一對[蜘蛛猴](https://zh.wikipedia.org/wiki/蜘蛛猴 "wikilink")（Spider
Monkey）夫妻在[自慰](../Page/自慰.md "wikilink")\[5\]。2011年，艾克將SpiderMonkey程式碼的管理交給戴夫·曼達林（Dave
Mandelin）\[6\]。

### TraceMonkey

TraceMonkey是第一个为JavaScript语言編寫的JIT編譯器，於2008年8月23日发布并最先作為[Firefox
3.5的SpiderMonkey中的編譯引擎](https://zh.wikipedia.org/wiki/Firefox_3.5 "wikilink")。相比[Firefox
3.0的編譯器](https://zh.wikipedia.org/wiki/Firefox_3.0 "wikilink")，它提供了*高達20到40倍的效能改善*\[7\]。

比起編譯全部函式，TraceMonkey採用追蹤[即時編譯](../Page/即時編譯.md "wikilink")（trace
Just-in-time Compilation）將JavaScript編譯成二進位碼（Binary
code）以提高執行效能，它的運作方式是在執行期間藉由追蹤和記錄[控制流程及](../Page/控制流程.md "wikilink")[資料類型](../Page/資料類型.md "wikilink")，將其用於建構[追蹤樹（Trace
Trees）](http://www.ics.uci.edu/~franz/Site/pubs-pdf/ICS-TR-07-12.pdf)，以生成高度最佳化路徑的[原生碼](../Page/机器语言.md "wikilink")，追蹤樹技術由[爾灣加州大學研究團隊貢獻](https://zh.wikipedia.org/wiki/爾灣加州大學 "wikilink")，[安德里亞斯·加爾是該團隊的负责人](../Page/安德里亞斯·加爾.md "wikilink")\[8\]。

JägerMonkey的增進，使得TraceMonkey被遺棄，特別是在SpiderMonkey中[类型推论引擎的開發](../Page/类型推论.md "wikilink")，TraceMonkey自Firefox
11開始已經被停止使用\[9\]。

### JägerMonkey

JägerMonkey由Mozilla自2010年年初开发，在內部被稱為MethodJIT，它被用來改善效能，特別是当某些情況下TraceMonkey無法生成穩定的[原生碼](../Page/机器语言.md "wikilink")\[10\]\[11\]。JägerMonkey於[Mozilla
Firefox 4開始被使用](../Page/Mozilla_Firefox_4.md "wikilink")，採用組合編譯（Method
JIT）和組譯器（Assembler），它的組譯器移植自[WebKit的Nitro引擎](../Page/WebKit.md "wikilink")（SFX，SquirrelFish
Extreme）\[12\]。後期Method JIT与TraceMonkey的Tracing
JIT整合，使SpiderMonkey的速度更快。

JägerMonkey的運作很不同于其他編譯器，傳統的編譯器是藉由建立並將其最佳化，JägerMonkey則是透過重覆線性前進循環SpiderMonkey[字节码](https://zh.wikipedia.org/wiki/字节码 "wikilink")，也就是內部函式表示法。雖然這種方式阻碍重新排序指令的最佳化，但這對JavaScript這個经常改變變數類型而需要重新編譯的語言来说，JägerMonkey有快速編譯的優勢。

Mozilla在JägerMonkey中實做了一個臨界值的最佳化，重要的還有多形態內嵌快取（ Polymorphic inline
caching）及[类型推论](../Page/类型推论.md "wikilink")\[13\]，Kraken和[V8测试分数显示](../Page/V8_\(JavaScript引擎\).md "wikilink")，[类型推论可以分别带来](../Page/类型推论.md "wikilink")44%与30%的分数提升。\[14\]

TraceMonkey及JägerMonkey的JIT技術的異同在[一篇hacks.mozilla.org的文章](http://hacks.mozilla.org/2010/03/improving-javascript-performance-with-jagermonkey/)中有做解釋，深入的技術細節可在一篇由SpiderMonkey的開發者Chris
Leary的[文章](https://archive.is/20121209102341/http://blog.cdleary.com/2010/09/picing-on-javascript-for-fun-and-profit/)中取得，更多技術資訊还可在其他開發者的部落格中找到：[dvander](http://www.bailopan.net/blog/)、[dmandelin](https://web.archive.org/web/20101211124954/http://blog.mozilla.com/dmandelin/)。

## 標準

SpiderMonkey實作了ECMA-262第5.1版（[ECMAScript](../Page/ECMAScript.md "wikilink")）和其他許多特色，而ECMA-357（[ECMAScript
for XML](../Page/E4X.md "wikilink") (E4X)）已在2013年取消支援\[15\]。

即便SpiderMonkey在Firefox中被使用，它并不提供一些主要環境，像是[文档对象模型](../Page/文档对象模型.md "wikilink")（DOM）。

## 內部

SpiderMonkey是以[C和](https://zh.wikipedia.org/wiki/C语言 "wikilink")[C++语言編寫](../Page/C++.md "wikilink")，並包含[直譯器](../Page/直譯器.md "wikilink")、IonMonkey[即時編譯和](../Page/即時編譯.md "wikilink")[垃圾回收器](https://zh.wikipedia.org/wiki/垃圾回收器 "wikilink")。

### IonMonkey

IonMonkey是Mozilla的第三個JIT編譯器，它啟用了許多新的最佳化技術，但是這些特色無法在之前的JägerMonkey架構運行\[16\]。

IonMonkey更像傳統的編譯器，它使用中間表示層（IR，Intermediate
representation）的[静态单赋值形式將SpiderMonkey的](../Page/静态单赋值形式.md "wikilink")[字节码轉換為控制流圖](https://zh.wikipedia.org/wiki/字节码 "wikilink")（Control
Flow Graph），這個結構令其他語言使用的最佳化技術可被使用在JavaScript，其中包含形態的特殊化（type
specialization）、行內函式（Inline
function）、線性掃描的[暫存器配置](../Page/暫存器配置.md "wikilink")（linear
scan register allocator）、[死碼刪除](../Page/死碼刪除.md "wikilink")（Dead code
elimination）以及盡可能將程序移出迴圈外（Loop-Invariant Code Motion）\[17\]。

该編譯器可以在[ARM](https://zh.wikipedia.org/wiki/ARM架構 "wikilink")、[X86及](../Page/X86.md "wikilink")[X86-64上快速的將JavaScript函式轉換成](../Page/X86-64.md "wikilink")[原生碼](../Page/机器语言.md "wikilink")。

2013年初發行的Firefox
18中開始採用IonMonkey並将其作為預設引擎\[18\]，这改進了TraceMonkey與JaegerMonkey不會對程式碼進行解析、自動運行最佳化的缺點。\[19\]。

### OdinMonkey

OdinMonkey被用於最佳化JavaScript的子集[asm.js](https://zh.wikipedia.org/wiki/asm.js "wikilink")，OdinMonkey並非一個JIT編譯器，它依然採用IonMonkey作為編譯器，这於2013年6月25日正式釋出的Firefox
22起採用\[20\]。

## 實作

SpiderMonkey可被嵌入於應用程式中，並为應用程式提供執行JavaScript的能力。不完整名單如下：

  - Mozilla
    [Firefox](../Page/Firefox.md "wikilink")、[Thunderbird](../Page/Mozilla_Thunderbird.md "wikilink")、[SeaMonkey](../Page/SeaMonkey.md "wikilink")

  - [Adobe Acrobat](../Page/Adobe_Acrobat.md "wikilink")、[Adobe
    Reader](https://zh.wikipedia.org/wiki/Adobe_Reader "wikilink")、Adobe
    Flash Professional、[Adobe
    Dreamweaver](../Page/Adobe_Dreamweaver.md "wikilink")

  - [GNOME桌面環境](../Page/GNOME.md "wikilink")，第3版和​​更高版本

  - [Yahoo\!
    Widgets](https://zh.wikipedia.org/wiki/Yahoo!_Widgets "wikilink")

  - UOX 3，*[網路創世紀](https://zh.wikipedia.org/wiki/網路創世紀 "wikilink")*私人伺服器

  - [FreeSWITCH](../Page/FreeSWITCH.md "wikilink")，開放原始碼通信軟體

  - [0_A.D.](../Page/0_A.D..md "wikilink")，即時戰略遊戲

  - ，純文字網頁瀏覽器\[21\]

  - ，BBS、電子郵件和伺服器軟體

SpiderMonkey亦提供了JavaScript
Shell，它是一個互動式開發環境，可讓開發者使用[命令列來執行](https://zh.wikipedia.org/wiki/命令列 "wikilink")[JavaScript程式](../Page/JavaScript.md "wikilink")\[22\]。
許多大型組織使用SpiderMonkey來管理他們前端應用程式的JavaScript。

## 參考資料

## 外部連結

  -
  - [Are We Fast Yet?](http://arewefastyet.com)——官方基準和比較

[Category:Mozilla](https://zh.wikipedia.org/wiki/Category:Mozilla "wikilink")
[Category:JavaScript](https://zh.wikipedia.org/wiki/Category:JavaScript "wikilink")
[Category:跨平台軟體](https://zh.wikipedia.org/wiki/Category:跨平台軟體 "wikilink")
[Category:JavaScript引擎](https://zh.wikipedia.org/wiki/Category:JavaScript引擎 "wikilink")

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