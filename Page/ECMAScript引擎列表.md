**ECMAScript引擎**是执行用某个版本的[ECMAScript](../Page/ECMAScript.md "wikilink")语言标准比如[JavaScript](../Page/JavaScript.md "wikilink")写的源代码的程序。

## JIT编译器引擎

下列是用于网页浏览器的新一代ECMAScript引擎，它们都实现了[即时编译](https://zh.wikipedia.org/wiki/即时编译 "wikilink")（JIT）或这个想法的变体。即时编译的性能利益使其更加适合于用[JavaScript](../Page/JavaScript.md "wikilink")写的网页应用：

  - [V8](../Page/V8_\(JavaScript引擎\).md "wikilink")：用在[Google
    Chrome](../Page/Google_Chrome.md "wikilink")、[Node.js](../Page/Node.js.md "wikilink")和的JavaScript引擎。
  - [SpiderMonkey](https://zh.wikipedia.org/wiki/SpiderMonkey_\(JavaScript引擎\) "wikilink")：在[Mozilla](../Page/Mozilla.md "wikilink")的[Gecko](../Page/Gecko.md "wikilink")应用包括[Firefox中使用的JavaScript引擎](https://zh.wikipedia.org/wiki/Mozilla_Firefox "wikilink")。这个引擎目前包括IonMonkey编译器和OdinMonkey优化模块，以前曾包括TraceMonkey编译器（第一个javascript
    JIT）和JägerMonkey。
  - [JavaScriptCore](https://zh.wikipedia.org/wiki/WebKit#JavaScriptCore "wikilink")：最初从[KJS](../Page/KJS.md "wikilink")派生出的JavaScript解释器和JIT。它用在[WebKit](../Page/WebKit.md "wikilink")计划和应用如[Safari](../Page/Safari.md "wikilink")中。也叫作Nitro、SquirrelFish和SquirrelFish
    Extreme\[1\]。
  - [Chakra](../Page/Chakra_\(JScript引擎\).md "wikilink")：用在[Internet
    Explorer
    11中的](../Page/Internet_Explorer_11.md "wikilink")[JScript](../Page/JScript.md "wikilink")引擎，它首次出现在Internet
    Explorer 9(32-bit)中\[2\]。
  - [ChakraCore](../Page/Chakra_\(JavaScript引擎\).md "wikilink")：在[Microsoft
    Edge中曾用过也叫做Chakra的](../Page/Microsoft_Edge.md "wikilink")[JavaScript](../Page/JavaScript.md "wikilink")引擎，2015年12月，微软将其核心构件开放源代码并重命名为ChakraCore\[3\]\[4\]。
  - [Carakan](../Page/Presto.md "wikilink")：[Opera Software
    ASA开发的JavaScript引擎](https://zh.wikipedia.org/wiki/Opera_Software_ASA "wikilink")\[5\]，包含在[Opera网页浏览器](https://zh.wikipedia.org/wiki/Opera "wikilink")10.50发行中\[6\]，直到Opera
    15（2013年发行）切换到[V8](../Page/V8_\(JavaScript引擎\).md "wikilink")\[7\]\[8\]。
  - [Tamarin](https://zh.wikipedia.org/wiki/Tamarin_\(JavaScript引擎\) "wikilink")：用在[Adobe
    Flash中的](../Page/Adobe_Flash.md "wikilink")[ActionScript](../Page/ActionScript.md "wikilink")和ECMAScript引擎。
  - [Nashorn](https://zh.wikipedia.org/wiki/Nashorn_\(JavaScript引擎\) "wikilink")：用在[Oracle](https://zh.wikipedia.org/wiki/Oracle "wikilink")
    [Java开发工具包](../Page/JDK.md "wikilink")（JDK）自从版本8的JavaScript引擎\[9\]。
  - iv：用[C++](../Page/C++.md "wikilink")写的ECMAScript词法分析器/语法解析器/解释器/VM/方法JIT\[10\]。
  - CL-JavaScript：在能编译成机器语言的[Common
    Lisp实现上可以编译JavaScript至机器语言](../Page/Common_Lisp.md "wikilink")\[11\]。

## 解释器引擎

下列引擎使用[运行时解释器](https://zh.wikipedia.org/wiki/运行时 "wikilink")，它们不编译成本地机器代码故

1.  <http://trac.webkit.org/wiki/JavaScriptCore>
2.
3.
4.  [Microsoft open sources Edge web browser's JavaScript engine, plans
    port to
    Linux](http://www.zdnet.com/article/microsoft-open-sources-its-edge-web-browser-javascript-engine-and-plans-to-port-it-to-linux/)
    on [zdnet.com](https://zh.wikipedia.org/wiki/zdnet.com "wikilink")
    by Steven J. Vaughan-Nichols (on January 13, 2016)
5.
6.  <https://web.archive.org/web/20060303160759/http://my.opera.com/desktopteam/blog/>
7.  <http://my.opera.com/ODIN/blog/300-million-users-and-move-to-webkit>
8.  <http://my.opera.com/ODIN/blog/opera-14-for-android-is-out>
9.  <http://www.oracle.com/technetwork/articles/java/jf14-nashorn-2126515.html>
10.
11.