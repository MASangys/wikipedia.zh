**RabbitMQ**是实现了[高级消息队列协议](../Page/高级消息队列协议.md "wikilink")（AMQP）的开源软件（亦称）。RabbitMQ服务器是用[Erlang](../Page/Erlang.md "wikilink")语言编写的，而群集和故障转移是构建在[開放電信平台](../Page/開放電信平台.md "wikilink")框架上的。所有主要的编程语言均有与代理接口通讯的客户端[函式庫](../Page/函式庫.md "wikilink")。

## 历史

Rabbit科技有限公司开发了RabbitMQ，并提供对其的支持。起初，Rabbit科技是LSHIFT和CohesiveFT在2007年成立的合资企业\[1\]，2010年4月被[VMware](../Page/VMware.md "wikilink")旗下的[SpringSource](../Page/SpringSource.md "wikilink")收购\[2\]。RabbitMQ在2013年5月成为[GoPivotal的一部分](https://zh.wikipedia.org/wiki/GoPivotal "wikilink")\[3\] 。

## 基本概念

RabbitMQ是一套开源（MPL）的消息队列服务软件，是由 LShift 提供的一个 Advanced Message Queuing Protocol (AMQP) 的开源实现，由以高性能、健壮以及可伸缩性出名的 Erlang 写成。

RabbitMQ服务支持下列操作系统\[4\]：

  - [Linux](../Page/Linux.md "wikilink")

  - [Windows](https://zh.wikipedia.org/wiki/Windows "wikilink"), NT 到 10

  - [Windows Server](../Page/Windows_Server.md "wikilink") 2003 到 2016

  - [macOS](https://zh.wikipedia.org/wiki/Mac_OS_X "wikilink")

  - [Solaris](../Page/Solaris.md "wikilink")

  - [FreeBSD](../Page/FreeBSD.md "wikilink")

  -
  - [VxWorks](../Page/VxWorks.md "wikilink")

RabbitMQ支持下列编程语言\[5\]：

  - [Python](../Page/Python.md "wikilink")
  - [Java](../Page/Java.md "wikilink")
  - [Ruby](../Page/Ruby.md "wikilink")
  - [PHP](../Page/PHP.md "wikilink")
  - [C\#](https://zh.wikipedia.org/wiki/C_Sharp "wikilink")
  - [JavaScript](../Page/JavaScript.md "wikilink")
  - [Go](../Page/Go.md "wikilink")
  - [Elixir](../Page/Elixir.md "wikilink")
  - [Objective-C](../Page/Objective-C.md "wikilink")
  - [Swift](../Page/Swift.md "wikilink")

## 主要特性

  - 可伸缩性：集群服务
  - 消息持久化：从内存持久化消息到硬盘，再从硬盘加载到内存

## 安装

Erlang与RabbitMQ，安装路径都应不含空格符。

Erlang使用了环境变量HOMEDRIVE与HOMEPATH来存取配置文件.erlang.cookie，应注意这两个环境变量的有效性。需要设定环境变量ERLANG_HOME，并把%ERLANG_HOME%\\bin加入到全局路径中。

RabbitMQ使用本地computer name作为服务器的地址，因此需要注意其有效性，或者直接解析为127.0.0.1

可能需要在本地网络防火墙打开相应的端口。

为能通过web管理RabbitMQ，进入它的sbin目录，执行：

`rabbitmq-plugins enable rabbitmq_management`

如果正常，则会显示：

`Enabling plugins on node rabbit@CFL1340G:`
`rabbitmq_management`
`The following plugins have been configured:`
`  rabbitmq_management`
`  rabbitmq_management_agent`
`  rabbitmq_web_dispatch`
`Applying plugin configuration to rabbit@CFL1340G...`
`The following plugins have been enabled:`
`  rabbitmq_management`
`  rabbitmq_management_agent`
`  rabbitmq_web_dispatch`
`started 3 plugins.`

即可通过http://127.0.0.1:15672/管理。

## 参见

  - [高级消息队列协议](../Page/高级消息队列协议.md "wikilink")（AMQP）
  - [ØMQ](../Page/ØMQ.md "wikilink")

## 参考文献

## 外部链接

  -
[Category:面向消息的中间件](https://zh.wikipedia.org/wiki/Category:面向消息的中间件 "wikilink") [Category:Erlang](https://zh.wikipedia.org/wiki/Category:Erlang "wikilink")

1.
2.
3.
4.
5.