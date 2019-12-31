> 本文内容由[ECMAScript引擎列表](https://zh.wikipedia.org/wiki/ECMAScript引擎列表)转换而来。


**ECMAScript引擎**是执行用某个版本的[ECMAScript](../Page/ECMAScript.md "wikilink")语言标准比如[JavaScript](../Page/JavaScript.md "wikilink")写的源代码的程序。

## JIT编译器引擎

下列是用于网页浏览器的新一代ECMAScript引擎，它们都实现了[即时编译](https://zh.wikipedia.org/wiki/即时编译 "wikilink")（JIT）或这个想法的变体。即时编译的性能利益使其更加适合于用[JavaScript](../Page/JavaScript.md "wikilink")写的网页应用：

  - [V8](../Page/V8_\(JavaScript引擎\).md "wikilink")：用在[Google Chrome](../Page/Google_Chrome.md "wikilink")、[Node.js](../Page/Node.js.md "wikilink")和的JavaScript引擎。
  - [SpiderMonkey](https://zh.wikipedia.org/wiki/SpiderMonkey_\(JavaScript引擎\) "wikilink")：在[Mozilla](../Page/Mozilla.md "wikilink")的[Gecko](../Page/Gecko.md "wikilink")应用包括[Firefox中使用的JavaScript引擎](https://zh.wikipedia.org/wiki/Mozilla_Firefox "wikilink")。这个引擎目前包括IonMonkey编译器和OdinMonkey优化模块，以前曾包括TraceMonkey编译器（第一个javascript JIT）和JägerMonkey。
  - [JavaScriptCore](https://zh.wikipedia.org/wiki/WebKit#JavaScriptCore "wikilink")：最初从[KJS](../Page/KJS.md "wikilink")派生出的JavaScript解释器和JIT。它用在[WebKit](../Page/WebKit.md "wikilink")计划和应用如[Safari](../Page/Safari.md "wikilink")中。也叫作Nitro、SquirrelFish和SquirrelFish Extreme\[1\]。
  - [Chakra](../Page/Chakra_\(JScript引擎\).md "wikilink")：用在[Internet Explorer 11中的](../Page/Internet_Explorer_11.md "wikilink")[JScript](../Page/JScript.md "wikilink")引擎，它首次出现在Internet Explorer 9(32-bit)中\[2\]。
  - [ChakraCore](../Page/Chakra_\(JavaScript引擎\).md "wikilink")：在[Microsoft Edge中曾用过也叫做Chakra的](../Page/Microsoft_Edge.md "wikilink")[JavaScript](../Page/JavaScript.md "wikilink")引擎，2015年12月，微软将其核心构件开放源代码并重命名为ChakraCore\[3\]\[4\]。
  - [Carakan](../Page/Presto.md "wikilink")：[Opera Software ASA开发的JavaScript引擎](https://zh.wikipedia.org/wiki/Opera_Software_ASA "wikilink")\[5\]，包含在[Opera网页浏览器](https://zh.wikipedia.org/wiki/Opera "wikilink")10.50发行中\[6\]，直到Opera 15（2013年发行）切换到[V8](../Page/V8_\(JavaScript引擎\).md "wikilink")\[7\]\[8\]。
  - [Tamarin](https://zh.wikipedia.org/wiki/Tamarin_\(JavaScript引擎\) "wikilink")：用在[Adobe Flash中的](../Page/Adobe_Flash.md "wikilink")[ActionScript](../Page/ActionScript.md "wikilink")和ECMAScript引擎。
  - [Nashorn](https://zh.wikipedia.org/wiki/Nashorn_\(JavaScript引擎\) "wikilink")：用在[Oracle](https://zh.wikipedia.org/wiki/Oracle "wikilink") [Java开发工具包](../Page/JDK.md "wikilink")（JDK）自从版本8的JavaScript引擎\[9\]。
  - iv：用[C++](../Page/C++.md "wikilink")写的ECMAScript词法分析器/语法解析器/解释器/VM/方法JIT\[10\]。
  - CL-JavaScript：在能编译成机器语言的[Common Lisp实现上可以编译JavaScript至机器语言](../Page/Common_Lisp.md "wikilink")\[11\]。

## 解释器引擎

下列引擎使用[运行时解释器](https://zh.wikipedia.org/wiki/运行时 "wikilink")，它们不编译成本地机器代码故而一般而言运行得更慢：

  - [Rhino](../Page/Rhino_\(JavaScript引擎\).md "wikilink")：来自[Mozilla](../Page/Mozilla.md "wikilink")的JavaScript引擎之一，使用[Java平台](https://zh.wikipedia.org/wiki/Java平台 "wikilink")。
  - [Jsish](https://zh.wikipedia.org/wiki/Jsish "wikilink")\[12\]：一个JavaScript解释器，内建了[SQLite](../Page/SQLite.md "wikilink")、[JSON](../Page/JSON.md "wikilink")、[WebSocket](../Page/WebSocket.md "wikilink")和[ZIP虚拟文件系统支持](../Page/ZIP格式.md "wikilink")。
  - [Duktape](http://duktape.org/)：一个小体量易于嵌入的Ecmascript E5/E5.1引擎。
  - [MuJS](http://mujs.com/)：一个轻量级的ECMAScript解释器库，设计用于嵌入其他软件中来为其扩展上脚本功能。最初为[MuPDF](../Page/MuPDF.md "wikilink")开发\[13\]。
  - [njs](http://nginx.org/en/docs/njs/)：为网页服务器脚本和最快的VM上下文创建而优化的轻量级的JavaScript解释器\[14\]，用于[nginx](https://zh.wikipedia.org/wiki/nginx "wikilink")。
  - [Moddable SDK](https://github.com/Moddable-OpenSource/moddable)：是为[微控制器建造应用的开发工具和运行时软件的组合](https://zh.wikipedia.org/wiki/微控制器 "wikilink")，[Kinoma平台的后继者](https://zh.wikipedia.org/wiki/Kinoma "wikilink")，目前是活跃计划并致力于支持更新近版本的ECMAScript。
  - [Espruino](https://zh.wikipedia.org/wiki/Espruino "wikilink")\[15\]：特别用于[微控制器的一个非常小体量的解释器](https://zh.wikipedia.org/wiki/微控制器 "wikilink")，通过执行源代码（而非[字节码](https://zh.wikipedia.org/wiki/字节码 "wikilink")），可以运行在小于8kB的RAM之下。
  - [mjs](https://github.com/cesanta/mjs)：设计用于资源有限的[微控制器的JavaScript引擎](https://zh.wikipedia.org/wiki/微控制器 "wikilink")，它实现了ECMAScript 6的一个严格子集。
  - [JerryScript](http://jerryscript.net/)：[三星为小于](https://zh.wikipedia.org/wiki/三星集团 "wikilink")64KB RAM的[微控制器提供的一个轻量级的JavaScript引擎](https://zh.wikipedia.org/wiki/微控制器 "wikilink")。
  - [V7](https://github.com/cesanta/v7/)：嵌入式JavaScript引擎，实现了ECMAScript 5.1，声称是用C写的最小的JavaScript引擎，现已经让位给[mjs](https://github.com/cesanta/mjs)。
  - [Tiny-JS](https://github.com/snoozbuster/tiny-js)：用C++写成的极小化的JavaScript解释器。
  - [JS-Interpreter](https://github.com/NeilFraser/JS-Interpreter)，用JavaScript实现的轻量级的JavaScript解释器，带有step-by-step执行。
  - [GNU Guile](../Page/GNU_Guile.md "wikilink")：[GNU](../Page/GNU.md "wikilink") [Scheme](../Page/Scheme.md "wikilink")实现，自版本1.9起提供ECMAScript 3.1解释器\[16\]。

### 不活跃项目

  - [KJS](../Page/KJS.md "wikilink")：用于[Konqueror](../Page/Konqueror.md "wikilink")的引擎，是[KHTML](../Page/KHTML.md "wikilink")的一个构件，是JavaScriptCore的前身。
  - [QtScript](../Page/QtScript.md "wikilink")：由Trolltech最初开发，现在属于[Qt公司](../Page/Qt公司.md "wikilink")，它提供QObject与JavaScriptCore的集成。
  - [JScript](../Page/JScript.md "wikilink")：用在[Internet Explorer版本直到IE](../Page/Internet_Explorer.md "wikilink")9(64-bit)的引擎，是[Trident](../Page/Trident_\(排版引擎\).md "wikilink")[排版引擎](../Page/排版引擎.md "wikilink")的一个构件。
  - [Futhark](../Page/Presto.md "wikilink")： [Opera网页浏览器版本](https://zh.wikipedia.org/wiki/Opera "wikilink")9.50到10.10的ECMAScript引擎。
  - [Linear B](../Page/Presto.md "wikilink")：专门用在[Opera网页浏览器版本](https://zh.wikipedia.org/wiki/Opera "wikilink")7.0到9.50的ECMAScript引擎。
  - [InScript](https://zh.wikipedia.org/wiki/InScript_\(JavaScript引擎\) "wikilink")：用在[iCab](https://zh.wikipedia.org/wiki/iCab "wikilink")2和3的一个废弃了的[专有库](../Page/专有软件.md "wikilink")。
  - [Kinomajs](https://zh.wikipedia.org/wiki/Kinoma "wikilink")\[17\]：一个ECMAScript 6运行时环境和框架\[18\]。这是正确实现几乎所有ECMAScript 6标准的首批运行时之一，目前无维护。
  - YAJI\[19\]：基于Jean-Marc Lugin开始于1999年的FESI实现的一个ECMAScript引擎\[20\]，使用[Java平台](https://zh.wikipedia.org/wiki/Java平台 "wikilink")，开发至支持ECMAScript 5.1\[21\]。
  - Continuum\[22\]：支持ECMAScript 6规定的旧草案的[自解释器](https://zh.wikipedia.org/wiki/自解释器 "wikilink")\[23\]。很特别的，这个引擎是用ECMAScript 3实现的，这使得有可能在像IE6这样老的浏览器中运行ES6。
  - [Narcissus](https://zh.wikipedia.org/wiki/Narcissus_\(JavaScript引擎\) "wikilink")\[24\]：用JavaScript实现的JavaScript（[自循环解释器](https://zh.wikipedia.org/wiki/自循环解释器 "wikilink")），意图在另一个JavaScript引擎中运行，唯有理论和教育意义。

## 参见

  - [JavaScript引擎比较](../Page/JavaScript引擎比较.md "wikilink")
  - [JavaScript引擎](../Page/JavaScript引擎.md "wikilink")
  - [应用虚拟化软件比较](https://zh.wikipedia.org/wiki/应用虚拟化软件比较 "wikilink")

## 引用

[Category:软件列表](https://zh.wikipedia.org/wiki/Category:软件列表 "wikilink") [Category:JavaScript引擎](https://zh.wikipedia.org/wiki/Category:JavaScript引擎 "wikilink")

1.  <http://trac.webkit.org/wiki/JavaScriptCore>
2.
3.
4.  [Microsoft open sources Edge web browser's JavaScript engine, plans port to Linux](http://www.zdnet.com/article/microsoft-open-sources-its-edge-web-browser-javascript-engine-and-plans-to-port-it-to-linux/) on [zdnet.com](https://zh.wikipedia.org/wiki/zdnet.com "wikilink") by Steven J. Vaughan-Nichols (on January 13, 2016)
5.
6.  <https://web.archive.org/web/20060303160759/http://my.opera.com/desktopteam/blog/>
7.  <http://my.opera.com/ODIN/blog/300-million-users-and-move-to-webkit>
8.  <http://my.opera.com/ODIN/blog/opera-14-for-android-is-out>
9.  <http://www.oracle.com/technetwork/articles/java/jf14-nashorn-2126515.html>
10.
11.
12. [JavaScript Interpreter SHell](https://jsish.org/).
13.
14.
15. [Espruino](http://www.espruino.com/).
16. [The goal was to support ECMAScript version 3.1](https://www.gnu.org/software/guile/manual/html_node/ECMAScript.html#ECMAScript).
17. [Kinomajs](https://github.com/Kinoma/kinomajs).
18. <http://www.ecma-international.org/ecma-262/6.0/>
19.
20.
21.
22.
23. <http://www.ecma-international.org/ecma-262/6.0/>
24. [The Narcissus source code repository](https://github.com/mozilla/narcissus/).