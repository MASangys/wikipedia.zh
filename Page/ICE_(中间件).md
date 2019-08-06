**Internet Communications Engine**，或**Ice**，是[ZeroC开发的一个](https://zh.wikipedia.org/wiki/ZeroC "wikilink")[面向对象的](https://zh.wikipedia.org/wiki/面向对象 "wikilink")[中间件](../Page/中间件.md "wikilink")平台。它提供了面向对象的[远程过程调用](https://zh.wikipedia.org/wiki/远程过程调用 "wikilink")、[网格计算](../Page/网格计算.md "wikilink")和[发布/订阅功能](https://zh.wikipedia.org/wiki/发布/订阅 "wikilink")，并有基于[GPL的](https://zh.wikipedia.org/wiki/GPL "wikilink")[双许可协议和一个私有许可协议](https://zh.wikipedia.org/wiki/多许可 "wikilink")。它支持[Linux](../Page/Linux.md "wikilink")、[Solaris](https://zh.wikipedia.org/wiki/Solaris_\(操作系统\) "wikilink")、[Windows和](https://zh.wikipedia.org/wiki/Windows "wikilink")[Mac OS X等最主要的操作系统](https://zh.wikipedia.org/wiki/Mac_OS_X "wikilink")，和[C++](../Page/C++.md "wikilink")、[Java](https://zh.wikipedia.org/wiki/Java平台 "wikilink")、[.NET语言](../Page/.NET框架.md "wikilink")（如[C\#或](https://zh.wikipedia.org/wiki/C_Sharp_\(编程语言\) "wikilink")[Visual Basic](../Page/Visual_Basic.md "wikilink")）、[Objective-C](../Page/Objective-C.md "wikilink")、[Python](https://zh.wikipedia.org/wiki/Python_\(编程语言\) "wikilink")、[PHP](../Page/PHP.md "wikilink")和[Ruby](../Page/Ruby.md "wikilink")等语言\[1\]。Ice运行时的一个轻量变体叫做Ice-e，\[2\]可以运行在[移动电话](../Page/移动电话.md "wikilink")中。如它的名字所表明，该中间件可以被用于应用程序，而不需要使用[HTTP协议](https://zh.wikipedia.org/wiki/HTTP "wikilink")，并且有能力穿越[防火墙](../Page/防火墙.md "wikilink")（这一点不同于当时的其它中间件）。

## 历史

ZeroC于2002年成立于[佛罗里达](https://zh.wikipedia.org/wiki/佛罗里达 "wikilink")。\[3\]Ice的设计受到了[CORBA](../Page/CORBA.md "wikilink")的影响，并且实际上也是由几位有影响力的CORBA开发者创立的，包括[Michi Henning](https://zh.wikipedia.org/wiki/Michi_Henning "wikilink")。不过，按照ZeroC的说法，它比CORBA更小更简洁，因为它是由一个富有经验的开发者小团体设计的，而不是难产于。\[4\]

2004年，有报道称，一家名为Mutable Realms的公司在一个叫做“Wish”的游戏中使用了Ice。\[5\]2008年，有报道称，[大熊湖太阳天文台从](https://zh.wikipedia.org/wiki/大熊湖太阳天文台 "wikilink")2005年起就在使用该软件。\[6\]某些版本作为开放显微镜环境的一部分被发布到了[GitHub](../Page/GitHub.md "wikilink")，直到2011年的3.4.2版本。\[7\]

## 组件

Ice的组件包括面向对象的远程对象调用、响应（replication<sup>还是复制？</sup>）、网格计算、故障转移、负载均衡、防火墙穿越和发布-订阅服务。为了访问这些服务，应用程序被连接到一个存根库或集合，该存根库或集合产生于一个语言无关的叫做*slice*的类[IDL语法](https://zh.wikipedia.org/wiki/IDL "wikilink")。

参见[ICE示意图（英文）](https://zh.wikipedia.org/wiki/:en:File:ICEgrid.png "wikilink")

### IceStorm

是一个面向对象的发布和订阅框架，它还支持联盟（federation）和服务质量（quality-of-service）。不同于其它的发布-订阅框架如[TIBCO软件公司](../Page/TIBCO软件公司.md "wikilink")的[Rendezvous或](https://zh.wikipedia.org/wiki/TIBCO_Rendezvous "wikilink")[SmartSockets](https://zh.wikipedia.org/wiki/SmartSockets "wikilink")，它的消息内容是由定义良好的类的对象组成的，而不是由结构化文本组成的。

### IceGrid

是一套框架，它提供面向对象的[负载均衡](../Page/负载均衡.md "wikilink")、[故障转移](https://zh.wikipedia.org/wiki/故障转移 "wikilink")、对象发现和注册服务。

### IcePatch

协助部署基于ICE的软件。例如，希望部署新功能和/或补丁到多台服务器的用户可以使用IcePatch。

### Glacier

是一个基于[代理的能够穿越防火墙的服务](../Page/代理服务器.md "wikilink")，因此使得ICE成为一个因特网通讯引擎。

### IceBox

是一个[面向服务架构的容器](https://zh.wikipedia.org/wiki/面向服务架构 "wikilink")，它包含可执行的由[.dll或](../Page/动态链接库.md "wikilink").so库实现的服务。这是一个更轻量的选择，可以对每个服务构建整个可执行服务。 2

### Slice

Ice规范语言（Specification Language for Ice）是一个Zeroc私有的文件格式，程序员按照它来编辑独立于计算机语言的声明和类、接口、结构和枚举的定义。Slice定义文件被用来作为存根生成过程的输入。存根依次被连接到应用程序和服务器，它们应该基于由slice声明/定义的接口和类进行互相通讯。

不同于CORBA，这里的类和接口还支持继承和抽象类。此外，slice还在宏和属性的表单中提供配置选项来管理代码生成过程。一个例子是，指令可以生成[STL模板](https://zh.wikipedia.org/wiki/STL "wikilink")`list`<double>，而不是默认地生成STL模板`vector`<double>。

## 参见

  - [ASN.1](../Page/ASN.1.md "wikilink")
  - Caucho的
  - [Cisco的](https://zh.wikipedia.org/wiki/Cisco "wikilink")
  - [Facebook](../Page/Facebook.md "wikilink")的[Thrift](../Page/Thrift.md "wikilink")
  - [Google](../Page/Google.md "wikilink")的[Protocol Buffers](../Page/Protocol_Buffers.md "wikilink")
  - [Microsoft的](https://zh.wikipedia.org/wiki/Microsoft "wikilink")“”

## 注释

<references/>

## 外部链接

  - <http://zeroc.com/ice.html>

[Category:进程间通信](https://zh.wikipedia.org/wiki/Category:进程间通信 "wikilink") [Category:网格计算产品](https://zh.wikipedia.org/wiki/Category:网格计算产品 "wikilink") [Category:应用层协议](https://zh.wikipedia.org/wiki/Category:应用层协议 "wikilink") [Category:远端程序呼叫](https://zh.wikipedia.org/wiki/Category:远端程序呼叫 "wikilink") [Category:对象请求代理](https://zh.wikipedia.org/wiki/Category:对象请求代理 "wikilink")

1.
2.
3.
4.
5.
6.
7.