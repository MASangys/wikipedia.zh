**Fibjs**是一个能在服务器端运行[JavaScript的](../Page/JavaScript.md "wikilink")[开放源代码](../Page/开放源代码.md "wikilink")、[跨平台JavaScript](https://zh.wikipedia.org/wiki/跨平台 "wikilink")[执行环境](https://zh.wikipedia.org/wiki/执行环境 "wikilink")。Fibjs
使用 [协程](../Page/协程.md "wikilink") , 同步风格 & 非阻塞IO模型来构建可伸缩的高可用的系统.
Fibjs含有一系列內置模块，使得程序可以脱离[Apache HTTP
Server或](../Page/Apache_HTTP_Server.md "wikilink")[IIS](https://zh.wikipedia.org/wiki/IIS "wikilink")，作为独立的服务器运行。Fibjs的出现降低了开发者的开发难度，并大大提升了javascript在服务端性能表现。

## 概览

Fibjs允许通过[JavaScript和一系列模块来编写](../Page/JavaScript.md "wikilink")[服务器端应用和网络相关的应用](../Page/服务器.md "wikilink")。核心模块包括[文件系统I](../Page/文件系统.md "wikilink")/O、网络（[HTTP](https://zh.wikipedia.org/wiki/HTTP "wikilink")、[TCP](../Page/传输控制协议.md "wikilink")、[UDP](../Page/用户数据报协议.md "wikilink")、[DNS](https://zh.wikipedia.org/wiki/DNS "wikilink")、[TLS/SSL等](https://zh.wikipedia.org/wiki/傳輸層安全協議 "wikilink")）、[二进制数据流](https://zh.wikipedia.org/wiki/二进制 "wikilink")、[加密算法](https://zh.wikipedia.org/wiki/加密 "wikilink")、[图像处理等等](../Page/图像处理.md "wikilink")。\[1\]Fibjs模块的API形式简单，降低了编程的复杂度。

Fibjs内置了[ØMQ提供了链式的消息处理器](../Page/ØMQ.md "wikilink"),因此可以用二十行代码\[2\]开发出拥有动态数据响应和静态文件服务功能的服务端框架。Fibjs的程序可以在[Microsoft
Windows](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")、[Linux](../Page/Linux.md "wikilink")、[Unix](https://zh.wikipedia.org/wiki/Unix "wikilink")、[Mac
OS X](https://zh.wikipedia.org/wiki/Mac_OS_X "wikilink")、[Arch
Linux等服务器上运行](../Page/Arch_Linux.md "wikilink")。Fibjs也可以使用[CoffeeScript](../Page/CoffeeScript.md "wikilink")（一种旨在简化JavaScript的替代语言，其代码可按照一定规则转化为合法的JavaScript代码）、[TypeScript](../Page/TypeScript.md "wikilink")（微软开发的强化了数据类型的JavaScript变体）、[Dart语言](../Page/Dart.md "wikilink")，以及其他能够编译成JavaScript的语言编程。

Fibjs主要用于编写像Web服务器一样的网络应用，这和[Node.js是类似的](../Page/Node.js.md "wikilink")。但是Fibjs与Node.js最大的不同在于，Node.js是非阻塞的（多条命令可以同时被运行，通过[回调函数得知命令已结束运行](../Page/回调函数.md "wikilink")），而Fibjs是阻塞的，它的风格更接近[C语言](https://zh.wikipedia.org/wiki/C语言 "wikilink")，它的机制和[Go更像](../Page/Go.md "wikilink")，Fibjs采用了非阻塞IO模型，但是提供给用户使用的API是阻塞的，它的特色是使用coroutine中文名字叫[协程这和Go所采用的Goroutine十分相像](../Page/协程.md "wikilink")，使得阻塞API不会阻塞javascript线程，从而达到更大的并发。因此Fibjs也非常地适合网络服务。

Coroutine是类似线程的概念（但Coroutine并不是线程）。线程属于系统层面，通常来说创建一个新的线程会消耗较多的资源且管理不易。而
Coroutine就像轻量级的线程，但我们称其为并发，一个Fibjs程序可以运行超过数万个
Coroutine，并且这些性能都是原生级的，随时都能够关闭、结束。一个核心里面可以有多个Coroutine。
在内置的官方包中也不时能够看见Coroutine的应用，像是net/http中用来监听网络服务的函数实际上是创建一个不断运行循环的Coroutine。

Fibjs使用[Google](../Page/Google.md "wikilink") [V8 JavaScript
引擎](../Page/V8_\(JavaScript引擎\).md "wikilink")，因为：

  - V8的线程支持Coroutine重入
  - V8是基于[BSD许可证的开源软件](../Page/BSD许可证.md "wikilink")
  - V8速度非常快
  - V8专注于网络功能，在HTTP、DNS、TCP等方面更加成熟

Fibjs内置近150个内置模块和对象,
已经有数十万个javascript模块，它们可以通过一个名为[npm的管理器免费下载](https://zh.wikipedia.org/wiki/npm "wikilink")。

## 历史

Fibjs于2012年写成，其作者是刘琥（Leo
Hoo），网名叫作响马，圈内人都尊称他大叔或马叔。刘琥同时是开源服务器应用框架Netbox\[3\]\[4\]的作者、中国著名社区网站[西祠胡同创始人](https://zh.wikipedia.org/wiki/西祠胡同 "wikilink")。

Fibjs的出现源自于一个名为“孢子社区”的一个项目，在做技术选型的时候考虑到前后端代码复用，方便招聘开发人员等原因，决定将后端转向JS平台。当时，刘琥认为Node.js的异步开发模式不是一个适合大规模部署的方式，会给开发和维护带来很大问题。刘琥更倾向于使用Go的方式来实现异步，从而能达到更高的并发，于是Fibjs就出现了。\[5\]

  - 2012年2月，Fibjs项目启动
  - 2012年9月，Fibjs开始在孢子社区\[6\]生产环境试运行
  - 2013年初，向外公开fibjs信息
  - 2014年5月，项目推送Github\[7\]，彻底开源
  - 2014年10月，南京源创会，首次开讲，引起业界轰动\[8\]
  - 2016年7月，Fibjs第4次Fiber改造，实现M:N多线程和多Fiber映射模型。\[9\]
  - 2017年3月，node.js南京地下铁沙龙，Fibjs作者刘琥作为特邀嘉宾介绍Fibjs，并和nodejs开发者进行了一场激烈的辩论\[10\]。

## 程序示例

用Fibjs撰写的[HTTP
Server版](https://zh.wikipedia.org/wiki/网络服务器 "wikilink")[hello
world示例](../Page/Hello_World.md "wikilink")：

``` javascript
const http = require('http');

let srv = new http.Server("", 8000, (request) => {
  request.response.setHeader('Content-Type','text/plain');
  request.response.write('Hello World!');
};

console.log('Server running at http://127.0.0.1:8000/');
srv.run();
```

另一个简单的[TCP服务器示例](https://zh.wikipedia.org/wiki/Transmission_Control_Protocol "wikilink")，监听（Listening）[端口7000并输出](https://zh.wikipedia.org/wiki/TCP/UDP端口列表 "wikilink")
(echo)之前输入的信息：

``` javascript
const net = require('net');
const coroutine = require('coroutine');

let s = new net.Socket(net_config.family, net.SOCK_STREAM);
s.bind(8080);
s.listen();
coroutine.start(() => {
    while(1) {
        coroutine.start((c)=>{
            console.log(c.remoteAddress, c.remotePort, "->",c.localAddress, c.localPort);
            try {
                var b;
                while (b = c.recv())
                    c.send(b);
            } finally {
                c.close();
                c.dispose();
            }
        }, s.accept());
    }
});
console.log("Tcp Server listen on port 8080);
```

上例中第二个程序，演示了如何使用Coroutine，coroutine使得while(1)不会阻塞后面的代码从而实现了并发。

## 技术

### Coroutine

Fibjs以单线程运行，使用非阻塞I/O调用，这样既可以支持数以万计的并发连接，又不会因多线程本身的特点而带来麻烦。众多请求只使用单线程的设计意味着可以用于建立高并发应用程序。Fibjs应用程序的设计目标是任何需要操作I/O的函数都使用Coroutine[协程来完成](../Page/协程.md "wikilink")。当使用Fibjs进行服务器应用开发时，每次和客户端建立连接都会创建一个Fiber(task)放在队列中等待，javascript线程依次取fiber执行，每当执行到I/O操作，Coroutine都会把上下文切换到后台线程(worker
thread)来完成相应的操作，并且把Javascript的上下文被切换到下一个fiber中继续执行。当后台线程的fiber执行完毕之后会重新把fiber丢进队列尾部等待，等待Javascript执行到该fiber。从而完成这个异步操作。

### V8

[V8是为](../Page/V8_\(JavaScript引擎\).md "wikilink")[Google
Chrome设计的JavaScript运行引擎](../Page/Google_Chrome.md "wikilink")，Google于2008年将其开源。V8用C++写成，它将JavaScript源代码编译成本地[机器码而不是随时解释](https://zh.wikipedia.org/wiki/机器码 "wikilink")。

Fibjs的核心功能被包含进一个JavaScript库，并通过C++将各部分与操作系统进行联系。

### npm

[npm是Node](https://zh.wikipedia.org/wiki/npm "wikilink").js附带的包管理器。Fibjs高度兼容了npm。npm是一个命令行工具，用于从NPM
Registry中下载、安装Fibjs程序，同时解决依赖问题。npm提高了开发的速度，因为它能够负责第三方Fibjs程序的安装与管理。

### 统一API

Fibjs将浏览器、数据（例如[MongoDB或](../Page/MongoDB.md "wikilink")[Redis](../Page/Redis.md "wikilink")）等组合到一起，通过[JSON提供一个统一的接口](../Page/JSON.md "wikilink")。由于[前端框架和一些基本的后端开发技术](https://zh.wikipedia.org/wiki/前端 "wikilink")（如[MVC](../Page/MVC.md "wikilink")、[MVP](https://zh.wikipedia.org/wiki/Model_View_Presenter "wikilink")、[MVVM等](https://zh.wikipedia.org/wiki/Model_View_ViewModel "wikilink")）变得流行，Fibjs也支持客户端和服务器端重新利用相同的模型和接口。

## 参考文献

[Category:带有代码示例的条目](https://zh.wikipedia.org/wiki/Category:带有代码示例的条目 "wikilink")
[Category:JavaScript函数库](https://zh.wikipedia.org/wiki/Category:JavaScript函数库 "wikilink")

1.  [Modules](http://fibjs.org/docs/manual/module/readme.md.html), fibjs
    Website
2.  [Fibjs Httpserver
    Examples](http://fibjs.org/docs/guide/hello.md.html)
3.  [NetBox official website](http://www.netbox.cn/)
4.  [Netbox source code](https://github.com/mirror4/netbox)
5.  [认识Fibjs](https://github.com/ngot/blog/issues/1)
6.
7.  [project github](https://github.com/fibjs/fibjs)
8.
9.  [Fibjs线程和Fiber模型](http://nodejs.club/slides/season-4/Fiber%E5%BC%95%E6%93%8E.pdf)

10. [Fibjs vs
    Node.js](http://weibo.com/1642632462/EBa3iieo2?type=repost)