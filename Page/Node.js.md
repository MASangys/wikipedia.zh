**Node.js**是一個能夠在[伺服器端運行](https://zh.wikipedia.org/wiki/伺服器 "wikilink")[JavaScript](../Page/JavaScript.md "wikilink")的[開放原始碼](https://zh.wikipedia.org/wiki/開放原始碼 "wikilink")、[跨平台JavaScript](https://zh.wikipedia.org/wiki/跨平台 "wikilink")[執行環境](https://zh.wikipedia.org/wiki/執行環境 "wikilink")。Node.js由Node.js基金會持有和維護\[1\]，並與[Linux基金會](../Page/Linux基金會.md "wikilink")有合作關係\[2\]。Node.js採用[Google](../Page/Google.md "wikilink")開發的[V8執行程式碼](../Page/V8_\(JavaScript引擎\).md "wikilink")，使用[事件驅動](https://zh.wikipedia.org/wiki/事件驅動 "wikilink")、[非阻塞和](https://zh.wikipedia.org/wiki/非阻塞 "wikilink")[非同步輸入輸出模型等技術來提高效能](https://zh.wikipedia.org/wiki/非同步輸入輸出 "wikilink")，可優化應用程式的傳輸量和規模。這些技術通常用於資料密集的即時應用程式。

Node.js大部分基本模組都用JavaScript語言編寫。在Node.js出現之前，JavaScript通常作為用戶端程式設計語言使用，以JavaScript寫出的程式常在用戶的瀏覽器上執行。Node.js的出現使JavaScript也能用於伺服器端編程。Node.js含有一系列內置模組，使得程式可以脫離[Apache HTTP Server或](../Page/Apache_HTTP_Server.md "wikilink")[IIS](https://zh.wikipedia.org/wiki/IIS "wikilink")，作為獨立伺服器執行。

目前，Node.js已被[IBM](../Page/IBM.md "wikilink")\[3\]、[Microsoft](https://zh.wikipedia.org/wiki/Microsoft "wikilink")\[4\]\[5\]、[Yahoo\!](https://zh.wikipedia.org/wiki/Yahoo! "wikilink")\[6\]、[Walmart](https://zh.wikipedia.org/wiki/Walmart "wikilink")\[7\]、[Groupon](../Page/Groupon.md "wikilink")\[8\]、[SAP](https://zh.wikipedia.org/wiki/SAP_SE "wikilink")\[9\]、[LinkedIn](https://zh.wikipedia.org/wiki/LinkedIn "wikilink")\[10\]\[11\]、[Rakuten](https://zh.wikipedia.org/wiki/Rakuten "wikilink")、[PayPal](../Page/PayPal.md "wikilink")\[12\]\[13\]、[Voxer](https://zh.wikipedia.org/wiki/Voxer "wikilink")\[14\]和[GoDaddy](../Page/GoDaddy.md "wikilink")\[15\]等企業採用。

## 概覽

Node.js允许通过[JavaScript](../Page/JavaScript.md "wikilink")和一系列模块来编写[服务器](../Page/服务器.md "wikilink")端应用和网络相关的应用。\[16\]\[17\]\[18\]核心模块包括[文件系统](../Page/文件系统.md "wikilink")I/O、网络（[HTTP](https://zh.wikipedia.org/wiki/HTTP "wikilink")、[TCP](../Page/传输控制协议.md "wikilink")、[UDP](../Page/用户数据报协议.md "wikilink")、[DNS](https://zh.wikipedia.org/wiki/DNS "wikilink")、[TLS/SSL等](https://zh.wikipedia.org/wiki/傳輸層安全協議 "wikilink")）、[二进制数据流](https://zh.wikipedia.org/wiki/二进制 "wikilink")、[加密算法](https://zh.wikipedia.org/wiki/加密 "wikilink")、[数据流等等](https://zh.wikipedia.org/wiki/数据流 "wikilink")。\[19\]\[20\]Node模块的API形式简单，降低了编程的复杂度。\[21\]

使用框架可以加速开发。常用的框架有[Express.js](../Page/Express.js.md "wikilink")、[Socket.IO](../Page/Socket.IO.md "wikilink")和Connect等。\[22\]Node.js的程序可以在[Microsoft Windows](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")、[Linux](../Page/Linux.md "wikilink")、[Unix](https://zh.wikipedia.org/wiki/Unix "wikilink")、[Mac OS X等服务器上运行](https://zh.wikipedia.org/wiki/Mac_OS_X "wikilink")。Node.js也可以使用[CoffeeScript](../Page/CoffeeScript.md "wikilink")（一种旨在简化JavaScript的替代语言，其代码可按照一定规则转化为合法的JavaScript代码）、[TypeScript](../Page/TypeScript.md "wikilink")（微软开发的强化了数据类型的JavaScript变体）、[Dart](../Page/Dart.md "wikilink")语言，以及其他能够编译成JavaScript的语言编程。\[23\]\[24\]

Node.js主要用于编写像Web服务器一样的网络应用，这和[PHP](../Page/PHP.md "wikilink")和[Python](../Page/Python.md "wikilink")是类似的。\[25\]但是Node.js与其他语言最大的不同之处在于，PHP等语言是阻塞的（只有前一条命令执行完毕才会执行后面的命令），而Node.js是非阻塞的（多条命令可以同时被运行，通过[回调函数](../Page/回调函数.md "wikilink")得知命令已结束运行）。\[26\]

Node.js是[事件驱动的](https://zh.wikipedia.org/wiki/事件驱动 "wikilink")。开发者可以在不使用[线程](../Page/线程.md "wikilink")的情况下开发出一个能够承载高并发的服务器。其他服务器端语言难以开发高并发应用，而且即使开发出来，性能也不尽如人意。Node.js正是在这个前提下被创造出来。Node.js把JavaScript的易学易用和Unix网络编程的强大结合到了一起。

Node.js使用[Google](../Page/Google.md "wikilink") [V8 JavaScript引擎](../Page/V8_\(JavaScript引擎\).md "wikilink")，因为：

  - V8是基于[BSD许可证](../Page/BSD许可证.md "wikilink")的开源软件
  - V8速度非常快
  - V8专注于网络功能，在HTTP、DNS、TCP等方面更加成熟

Node.js已经有数十万模块，它们可以通过一个名为[npm的管理器免费下载](https://zh.wikipedia.org/wiki/npm "wikilink")。Node.js开发社区主要有两个邮件列表、一个在[freenode的名为](https://zh.wikipedia.org/wiki/freenode "wikilink")\#node.js的[IRC](../Page/IRC.md "wikilink")频道。社区集中在[NodeConf](http://nodeconf.com/)。\[27\]

## 歷史

[Ryan_Dahl.jpg](https://zh.wikipedia.org/wiki/File:Ryan_Dahl.jpg "fig:Ryan_Dahl.jpg")

Node.js于2009年写成，其原始作者是瑞安·达尔（Ryan Dahl），\[28\]。Node.js结合了[Google](../Page/Google.md "wikilink")的[V8](../Page/V8_\(JavaScript引擎\).md "wikilink")、事件驱动模式和低级[I/O](https://zh.wikipedia.org/wiki/I/O "wikilink")[接口](../Page/应用程序接口.md "wikilink")\[29\]，其设计灵感源自[Flickr](../Page/Flickr.md "wikilink")的一款上传进度栏：在上传过程中，浏览器并不清楚有多少文件已经发送到服务器，除非向服务器进行查询，于是达尔想出了一个更简便的方法\[30\]。Node.js的开发和维护工作由达尔本人主持，而他所在的公司也提供了赞助\[31\]。2009年11月8日，Dahl在欧洲JSConf大会上展示了Node.js项目\[32\]\[33\]\[34\]，并受到了观众赞赏\[35\]。在演讲中，达尔针对[Apache HTTP Server和顺序编程方式提出了批评](../Page/Apache_HTTP_Server.md "wikilink")，认为Apache处理大量并发连接（10,000甚至更多）的可能性有限，而且顺序编程方式在多连接情况下会造成阻塞，或者消耗更多资源；而Node.js提供了基于事件驱动和非阻塞的接口，可用于编写高并发状态下的程序，而且JavaScript的匿名函数、闭包、回调函数等特性就是为事件驱动而设计的\[36\]。

2010年1月，一款名为“[npm](https://zh.wikipedia.org/wiki/npm "wikilink")”的[软件包管理系统](../Page/软件包管理系统.md "wikilink")诞生\[37\]。npm使程序员能够更方便地发布和分享Node.js类库及源代码，而且简化了类库安装、升级与卸载的过程\[38\]。Node.js最初只支持Linux和Mac OS X操作系统。2011年6月，微软和Joyent共同合作，把Node.js移植到了Windows系统上面\[39\]，并且在7月发布了第一个正式支持Windows系统的版本。

2012年1月，达尔离开了Node.js项目，开发工作由他的同事以及npm创始人艾薩克·施呂特（Isaac Schlueter）继续主持\[40\]。2014年2月，蒂莫西·费里斯（Timothy J. Fontaine）接任项目主管\[41\]。

由于长期对Joyent的管理感到不满，Node.js核心开发者Fedor Indutny在2014年12月制作了[分支版本](https://zh.wikipedia.org/wiki/复刻_\(软件工程\) "wikilink")，并起名“io.js”。与Node.js相对的是，io.js采用开放管理模式进行管理\[42\]\[43\]，并计划始终采用最新版的[V8引擎](https://zh.wikipedia.org/wiki/V8引擎 "wikilink")\[44\]\[45\]。为了在用户、厂商和开发者之间取得平衡，Node.js基金会于2015年初成立。基金会得到了IBM、Intel、微软、Joyent等公司的支持。6月，Node.js和io.js开发者社区共同决定合并到Node.js基金会之下\[46\]。同年9月，Node 4.0发布，Node.js和io.js正式合并\[47\]。4.0版引入了[ES6的语言特性和](https://zh.wikipedia.org/wiki/ES6 "wikilink")“长期支持版本”的发布周期\[48\]。到了2016年，io.js宣布不再发布新版本，并建议开发者换回Node.js\[49\]。

## 程式範例

用Node.js撰寫的[HTTP Server版](../Page/網頁伺服器.md "wikilink")[hello world範例](../Page/Hello_World.md "wikilink")：

``` javascript
const http = require('http');

http.createServer((request, response) => {
  response.writeHead(200, { 'Content-Type': 'text/plain' });
  response.end('Hello World!');
}).listen(8000);

console.log('Server running at http://127.0.0.1:8000/');
```

另一個簡單的[TCP伺服器範例](https://zh.wikipedia.org/wiki/Transmission_Control_Protocol "wikilink")，監聽（Listening）[端口7000並輸出](https://zh.wikipedia.org/wiki/TCP/UDP端口列表 "wikilink")（echo）之前輸入的訊息：

``` javascript
const net = require('net');

net.createServer(stream => {
  stream.write('hello\r\n');
  stream.on('end', () => stream.end('goodbye\r\n'));
  stream.pipe(stream);
}).listen(7000);
```

## 技術

### 執行緒

Node.js以單執行緒執行，使用非阻塞I/O呼叫，這樣既可以支援數以萬計的並行連線，又不會因多執行緒本身的特點而帶來麻煩。眾多請求只使用單執行緒的設計意味著可以用於建立高並行應用程式。Node.js應用程式的設計目標是任何需要操作I/O的函式都使用[回呼函式](../Page/回调函数.md "wikilink")。

這種設計的缺點是，如果不使用[cluster](https://nodejs.org/api/cluster.html)、[StrongLoop Process Manager](http://strong-pm.io/)或[pm2](https://github.com/Unitech/pm2)等模組，Node.js就難以處理多核或多執行緒等情況。

### V8

[V8是为](../Page/V8_\(JavaScript引擎\).md "wikilink")[Google Chrome设计的JavaScript运行引擎](../Page/Google_Chrome.md "wikilink")，Google于2008年将其开源。V8用C++写成，它将JavaScript源代码编译成本地[机器码而不是解释执行](https://zh.wikipedia.org/wiki/机器码 "wikilink")。

Node.js用[libuv来处理异步事件](https://zh.wikipedia.org/wiki/libuv "wikilink")，而V8提供了JavaScript的实时运行环境。libuv是一个网络和文件系统功能的抽象层，既可以用于Windows又可以用于符合POSIX标准的系统，例如Linux、OS X和Unix。

Node.js的核心功能被包含进一个JavaScript库，并通过C++将各部分与操作系统进行联系。

### npm

[npm是Node](https://zh.wikipedia.org/wiki/npm "wikilink").js附带的包管理器。npm是一个命令行工具，用于从NPM Registry中下载、安装Node.js程序，同时解决依赖问题。npm提高了开发的速度，因为它能够负责第三方Node.js程序的安装与管理。

### 统一API

Node.js将浏览器、数据（例如[MongoDB](../Page/MongoDB.md "wikilink")或[CouchDB](https://zh.wikipedia.org/wiki/CouchDB "wikilink")）等组合到一起，通过[JSON](../Page/JSON.md "wikilink")提供一个统一的接口。由于[前端框架和一些基本的后端开发技术](https://zh.wikipedia.org/wiki/前端 "wikilink")（如[MVC](../Page/MVC.md "wikilink")、[MVP](https://zh.wikipedia.org/wiki/Model_View_Presenter "wikilink")、[MVVM等](https://zh.wikipedia.org/wiki/Model_View_ViewModel "wikilink")）变得流行，Node.js也支持客户端和服务器端重新利用相同的模型和接口。

### 事件循环

Node.js将其注册到操作系统中，这样可以及时注意到新连接的产生。当新连接产生时，操作系统会产生一个回调。在Node.js运行时内部，每个连接都被分配一个小型的堆。与其他服务器程序不同的是，Node.js不使用进程或线程处理连接，而是采用事件循环来处理并发连接。\[50\]而且Node.js的事件循环不需要手动调用。在回调函数定义之后，服务器进入事件循环。当回调函数均被执行完毕之后，Node.js结束事件循环。

## 开发工具

  - 桌面[IDE](../Page/集成开发环境.md "wikilink")

<!-- end list -->

  - [Atom](https://zh.wikipedia.org/wiki/Atom_\(文字编辑器\) "wikilink")（免费、开源软件）
  - [Brackets](../Page/Adobe_Brackets.md "wikilink")（免费、开源软件）
  - [Sublime Text](../Page/Sublime_Text.md "wikilink")（商业软件）
  - [JetBrains](https://zh.wikipedia.org/wiki/JetBrains_MPS "wikilink") [IntelliJ IDEA](../Page/IntelliJ_IDEA.md "wikilink")（商业软件）
  - [JetBrains](https://zh.wikipedia.org/wiki/JetBrains_MPS "wikilink") [WebStorm](https://zh.wikipedia.org/wiki/WebStorm "wikilink")（商业软件）
  - [Microsoft Visual Studio](../Page/Microsoft_Visual_Studio.md "wikilink") with Node.js Tools for Visual Studio\[51\]（商业软件）
  - [Microsoft Visual Studio](../Page/Microsoft_Visual_Studio.md "wikilink") with [TypeScript](../Page/TypeScript.md "wikilink")（商业软件）
  - [Nodeclipse](https://zh.wikipedia.org/wiki/Nodeclipse "wikilink") Enide Studio（免费、开源软件、在[Eclipse](../Page/Eclipse.md "wikilink")基础上开发）
  - NoFlo –与[GNOME](../Page/GNOME.md "wikilink") API集成的流式开发环境\[52\]
  - [Visual Studio Code](../Page/Visual_Studio_Code.md "wikilink")（免费、开源软件）

<!-- end list -->

  - 在线编辑器

<!-- end list -->

  - [Koding](https://zh.wikipedia.org/wiki/Koding "wikilink")
  - [Codenvy IDE](https://zh.wikipedia.org/wiki/Codenvy "wikilink")
  - [Cloud9 IDE](../Page/Cloud9_IDE.md "wikilink")
  - [Codiad](http://codiad.com/)

<!-- end list -->

  - 运行时和调试器

<!-- end list -->

  - [Microsoft Visual Studio](../Page/Microsoft_Visual_Studio.md "wikilink")（商业）with Node.js Tools for Visual Studio（免费）
  - [Microsoft WebMatrix](../Page/Microsoft_WebMatrix.md "wikilink")（免费、闭源软件）
  - [Visual Studio Code](../Page/Visual_Studio_Code.md "wikilink")

<!-- end list -->

  - 框架

<!-- end list -->

  - 服务器端框架：[Express.js](../Page/Express.js.md "wikilink"), [Socket.IO](../Page/Socket.IO.md "wikilink"), [Koa.js](http://koajs.com/), [Hapi.js](http://hapijs.com/), Total.js\[53\]\[54\]
  - MVC框架：[Meteor](http://www.meteor.com), [Derby](http://derbyjs.com/), [Sails](http://sailsjs.org/), [Mean](http://mean.io), [MeanJS](http://meanjs.org), [Tower.js](http://towerjs.org/), [Nombo](https://web.archive.org/web/20140818161330/http://nombo.io/), [Geddy](http://geddyjs.org), [Compound](http://compoundjs.com/), [Yahoo\! Mojito](https://developer.yahoo.com/cocktails/mojito/)

## 替代品

### JXcore

JXcore是一个开放源代码的Node.js的分支，旨在支持移动设备和物联网。第一个Beta版本于2014年1月发布。它于2015年2月13日开源\[55\]并且可从[GitHub](../Page/GitHub.md "wikilink") [repository](https://github.com/jxcore/jxcore)获得。JXcore同时使用[Google V8和](../Page/V8_\(JavaScript引擎\).md "wikilink")[Mozilla SpiderMonkey两个引擎](../Page/SpiderMonkey.md "wikilink")。因此JXcore可以通过Mozilla SpiderMonkey在[iOS设备上运行Node应用程序](https://zh.wikipedia.org/wiki/iOS "wikilink")。

### 其他语言

类似的语言和开发环境有：

  - [Python](../Page/Python.md "wikilink")：[Tornado](../Page/Tornado.md "wikilink")和[Twisted](https://zh.wikipedia.org/wiki/Twisted "wikilink")
  - [Perl](../Page/Perl.md "wikilink")：[Perl Object Environment](https://zh.wikipedia.org/wiki/Perl_Object_Environment "wikilink")
  - [C语言](https://zh.wikipedia.org/wiki/C语言 "wikilink")：[libevent](https://zh.wikipedia.org/wiki/libevent "wikilink")
  - Java、JavaScript、[Groovy](https://zh.wikipedia.org/wiki/Groovy_\(programming_language\) "wikilink")、Python、Scala、Clojure、Ruby、[Ceylon等](https://zh.wikipedia.org/wiki/Ceylon_\(programming_language\) "wikilink")：[Vert.x](../Page/Vert.x.md "wikilink")
  - Java和Scala：[Akka](https://zh.wikipedia.org/wiki/Akka "wikilink")
  - Ruby：[EventMachine](https://zh.wikipedia.org/wiki/EventMachine "wikilink")
  - [D语言](https://zh.wikipedia.org/wiki/D语言 "wikilink")：[vibe.d](https://zh.wikipedia.org/wiki/vibe.d "wikilink")
  - [Lua](../Page/Lua.md "wikilink")：[Luvit](http://luvit.io/)
  - [OCaml](../Page/OCaml.md "wikilink")：[Ocsigen](https://zh.wikipedia.org/wiki/Ocsigen "wikilink")

## 参见

  - [Rhino (JavaScript引擎)](../Page/Rhino_\(JavaScript引擎\).md "wikilink")
  - [npm](https://zh.wikipedia.org/wiki/npm "wikilink")：广泛使用的Node.js安装包管理器
  - [MEAN](../Page/MEAN.md "wikilink")
  - [JSAN](https://zh.wikipedia.org/wiki/JSAN "wikilink")（JavaScript Archive Network），一个不太常用的JavaScript安装包管理器

## 参考文献

## 外部連結

  -
  - [Node.js原始碼](https://github.com/nodejs/node)

{{-}}

[Category:JavaScript函式庫](https://zh.wikipedia.org/wiki/Category:JavaScript函式庫 "wikilink") [Category:使用MIT许可证的软件](https://zh.wikipedia.org/wiki/Category:使用MIT许可证的软件 "wikilink") [Category:用JavaScript編程的自由軟體](https://zh.wikipedia.org/wiki/Category:用JavaScript編程的自由軟體 "wikilink")

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

14. [The Node Ahead: JavaScript leaps from browser into future](http://www.theregister.co.uk/2011/03/01/the_rise_and_rise_of_node_dot_js/), [The Register](https://zh.wikipedia.org/wiki/The_Register "wikilink"), March 1, 2011

15. [Why GoDaddy’s Nodejitsu deal is great for Node.js](http://venturebeat.com/2015/02/10/why-godaddys-nodejitsu-deal-is-great-for-node-js/), [VentureBeat](https://zh.wikipedia.org/wiki/VentureBeat "wikilink"), February 10, 2015

16.
17.
18. [Smashing Node.js: JavaScript Everywhere](https://books.google.com/books?id=G1y_5kpmatUC&printsec=frontcover&dq=nodejs&hl=en&sa=X#v=onepage&q=nodejs&f=false), John Wiley & Sons, 14-Aug-2012

19.
20. [Modules](https://nodejs.org/api/), Nodejs Website

21. [Node.js Essentials](https://books.google.com/books?id=zl17BAAAQBAJ&dq=nodejs&hl=en&sa=X), Packt Publishing, 09-Sep-2014

22.

23.

24.
25. [Node.js for PHP Developers](https://books.google.com/books?id=KZQQAlhTOBgC&printsec=frontcover&dq=nodejs&hl=en&sa=X#v=onepage&q=nodejs&f=false), O'Reilly Media, Inc., 2013

26.
27.

28.

29. [Professional Node.js: Building JavaScript Based Scalable Software](https://books.google.com/books?id=ZH6bpbcrlvYC&printsec=frontcover&dq=nodejs&hl=en&sa=X#v=onepage&q=nodejs&f=false), John Wiley & Sons, 01-Oct-2012

30.

31.

32. [Sams Teach Yourself Node.js in 24 Hours](https://books.google.com/books?id=KGt-FxUEj48C&pg=PT24&dq=nodejs&hl=en&sa=X#v=onepage&q=nodejs&f=false), Sams Publishing, 05-Sep-2012

33.

34.

35.

36.

37.

38.
39.

40.

41.

42.

43. [Q\&A: Why io.js decided to fork Node.js](http://www.infoworld.com/article/2855057/application-development/why-iojs-decided-to-fork-nodejs.html), [Infoworld](https://zh.wikipedia.org/wiki/Infoworld "wikilink") Tech Watch

44.

45.

46.

47.

48.

49. [Io.js, JavaScript I/O](https://iojs.org/en/), *"io.js has merged with the Node.js project again. There won't be any further io.js releases. All of the features in io.js are available in Node.js v4 and above."*

50. [About Node.js](https://nodejs.org/about/), Node.js Website

51.

52.

53. [Node.js Framework Comparison: Express vs. Koa vs. Hapi](https://www.airpair.com/node.js/posts/nodejs-framework-comparison-express-koa-hapi), AirPair

54.

55.