{{ Infobox software | name = Mnesia | logo = | screenshot = | caption = | author = [喬·阿姆斯特朗](../Page/喬·阿姆斯特朗.md "wikilink"), 罗伯.威廉, 丹.古德门德松以及其他人 | developer = [爱立信](https://zh.wikipedia.org/wiki/爱立信 "wikilink") | released = | latest release version = 4.15 | latest release date =  | operating system = [跨平台](https://zh.wikipedia.org/wiki/跨平台 "wikilink") | platform = [跨平台](https://zh.wikipedia.org/wiki/跨平台 "wikilink") | language = | programming language = [Erlang](https://zh.wikipedia.org/wiki/Erlang_\(programming_language\) "wikilink") | genre = [关系型](../Page/关系模型.md "wikilink") [数据库管理系统](../Page/数据库管理系统.md "wikilink") | license = Erlang开源许可证 | website =  }}

[ **[LYME (software bundle)](https://zh.wikipedia.org/wiki/LYME_\(software_bundle\) "wikilink")** 基于 [Erlang](https://zh.wikipedia.org/wiki/Erlang_\(programming_language\) "wikilink") 且包含 **Mnesia**. 它们都是[自由及开放源代码软件](../Page/自由及开放源代码软件.md "wikilink")](https://zh.wikipedia.org/wiki/File:LYME_software_bundle.svg "fig: LYME (software bundle) 基于 Erlang 且包含 Mnesia. 它们都是自由及开放源代码软件")

**Mnesia**，是使用[Erlang](../Page/Erlang.md "wikilink")程式語言编写的[分布式](../Page/分布式计算.md "wikilink")、[软实时](../Page/实时计算.md "wikilink")[数据库管理系统](../Page/数据库管理系统.md "wikilink")。它也是作为[开放电信平台的一部分发布的](https://zh.wikipedia.org/wiki/开放电信平台 "wikilink")。\[1\]

## 描述

Mnesia 与 Erlang 都是[爱立信公司为与电信相关的软实时](https://zh.wikipedia.org/wiki/爱立信 "wikilink")[分布式高可用的计算工作而开发的](../Page/分布式计算.md "wikilink")。它既不是为了通用办公型数据处理设计的[数据库管理系统](../Page/数据库管理系统.md "wikilink")。也无意于替代基于 [SQL](../Page/SQL.md "wikilink") 语言的系统。它是为了帮助 Erlang 实现数据管理系统类的数据持久化而存在的。\[2\]比起带有SQL的数据库服务器，它与像 [Berkeley DB](../Page/Berkeley_DB.md "wikilink") 这样的嵌入式数据库管理系统更相似。

### 数据库模型

表中的“行”代表了包含一个键值以及一个数据域的记录。这条数据域可能是一个包含任意复杂形式的 Erlang 数据结构的[元组](https://zh.wikipedia.org/wiki/元组 "wikilink")。

### 关系型特性

数据库模型是关系型的，但它并不是用大家比较熟悉的 SQL 操作的。一个数据库中的多个表可以在互相之间构建联系。\[3\]

Mnesia 高可用的一个关键特性就在于数据库中的表可以重新配置，并且可以在节点之间互相迁移。你不仅可以在数据库运行的时候这样操作，甚至还可以在数据库正在读写的时候操作。

### 编码

Mnesia 的[查询语言不是](https://zh.wikipedia.org/wiki/查询语言 "wikilink") SQL 语言，而是 Erlang 本身。\[4\]这也意味着它可以让开发者直接使用 erlang 语言的特性来表达事务，开发者可以仅仅使用一个语言开发一个完整的应用程序。

### 事务

Erlang 是[函数式编程语言](https://zh.wikipedia.org/wiki/函数式编程语言 "wikilink")。Mnesia 正是基于这一点来做到 [ACID](../Page/ACID.md "wikilink") [事务的](https://zh.wikipedia.org/wiki/事务 "wikilink")。作为事务运行的函数块仅仅只是一个非常普通的被称为函数对象的 Erlang 构造体。\[5\]写成单条 Mnesia 语句为 `mnesia:transaction(F)`。 这样一来就可以使源代码变得要比 SQL 的 `BEGIN` / `COMMIT` 配对的语法更清晰，同时也避免了在过程中没有关闭事务的问题。

又因为 Erlang 的函数式特性，嵌套事务也非常简单。也可以在多个结点（也就是单独的服务器）里发布事务。以这种方式使用事务可以让语义保持一致，同时也让编写库代码在上下文保持一致的效果。

Mnesia 的一般编码风格是总是使用事务。考虑到性能问题，Mnesia 也支持用户使用“脏操作”来避免使用事务。这些操作虽然是对 [ACID](../Page/ACID.md "wikilink") 原子性以及隔离性的妥协，但也提供了大概10倍的吞吐量。\[6\]除此以外，它还提供了将数据存储在内存中的选项，然而这么做会丢失 [ACID](../Page/ACID.md "wikilink") 的持久性。

### 有效执行

Mnesia 是 LYME web 应用程序栈的一部分。这与 [LAMP](../Page/LAMP.md "wikilink") 类似，但它是基于 Erlang。用 Erlang实现会带来一个效率上的好处，那就是开发出来的应用程序自始至终是运行在单个虚拟机上的。LYME 充分利用了这一点，因为连 [Yaws](../Page/Yaws.md "wikilink")web 服务器都是由 Erlang 实现的。

[地址空间在数据与代码之间都是共享的](https://zh.wikipedia.org/wiki/地址空间 "wikilink")（在 Erlang 语言中，这样做是安全的。），包括 Mnesia 的表数据。\[7\]

### 起源和许可

Mnesia 和 Erlang 都是爱立信计算机科学实验室开发的。他们都是作为[开源软件](../Page/开源软件.md "wikilink")发布的。Mnesia 是基于[Mozilla公共许可证](../Page/Mozilla公共许可证.md "wikilink")的衍生版发布的。\[8\]他们都是根据开源 Erlang 公共许可证发行的。\[9\]

### ejabberd

将 Mnesia 嵌入到基于 Erlang 的 [Jabber](https://zh.wikipedia.org/wiki/Jabber "wikilink") 守护进程 [ejabberd](https://zh.wikipedia.org/wiki/ejabberd "wikilink") 也是一个选项。\[10\]

## 参见

  - [Riak](https://zh.wikipedia.org/wiki/Riak "wikilink")
  - [Apache Cassandra](https://zh.wikipedia.org/wiki/Apache_Cassandra "wikilink")
  - [Couchbase](https://zh.wikipedia.org/wiki/Couchbase "wikilink")
  - [CouchDB](https://zh.wikipedia.org/wiki/CouchDB "wikilink")
  - [LYME (software bundle)](https://zh.wikipedia.org/wiki/LYME_\(software_bundle\) "wikilink")

## 引用

[Category:Erlang](https://zh.wikipedia.org/wiki/Category:Erlang "wikilink") [Category:开源数据库管理系统](https://zh.wikipedia.org/wiki/Category:开源数据库管理系统 "wikilink") [Category:结构化存储](https://zh.wikipedia.org/wiki/Category:结构化存储 "wikilink")

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