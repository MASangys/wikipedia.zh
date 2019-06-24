**Redis**是一个使用[ANSI
C编写的](../Page/ANSI_C.md "wikilink")[开源](https://zh.wikipedia.org/wiki/开源 "wikilink")、支持[网络](https://zh.wikipedia.org/wiki/电脑网络 "wikilink")、基于[内存](https://zh.wikipedia.org/wiki/内存 "wikilink")、可选的[键值对存储数据库](https://zh.wikipedia.org/wiki/键值-值数据库 "wikilink")。从2015年6月开始，Redis的开发由赞助，而2013年5月至2015年6月期间，其开发由[Pivotal赞助](../Page/Pivotal.md "wikilink")。\[1\]在2013年5月之前，其开发由[VMware赞助](../Page/VMware.md "wikilink")。\[2\]\[3\]根据月度排行网站DB-Engines.com的数据，Redis是最流行的键值对存储数据库。\[4\]

## 支持语言

许多语言都包含Redis支持，包括：\[5\]

  - [ActionScript](../Page/ActionScript.md "wikilink")
  - [C](https://zh.wikipedia.org/wiki/C语言 "wikilink")
  - [C++](../Page/C++.md "wikilink")
  - [C\#](https://zh.wikipedia.org/wiki/C_Sharp "wikilink")
  - [Clojure](https://zh.wikipedia.org/wiki/Clojure "wikilink")

<!-- end list -->

  - [Common Lisp](../Page/Common_Lisp.md "wikilink")
  - [Dart](../Page/Dart.md "wikilink")
  - [Erlang](https://zh.wikipedia.org/wiki/Erlang语言 "wikilink")
  - [Go](https://zh.wikipedia.org/wiki/Go语言 "wikilink")
  - [Haskell](https://zh.wikipedia.org/wiki/Haskell语言 "wikilink")

<!-- end list -->

  - [Haxe](../Page/Haxe.md "wikilink")
  - [Io](https://zh.wikipedia.org/wiki/Io语言 "wikilink")
  - [Java](https://zh.wikipedia.org/wiki/Java语言 "wikilink")
  - [Fibjs](../Page/Fibjs.md "wikilink")
  - [Node.js](../Page/Node.js.md "wikilink")
  - [Lua](https://zh.wikipedia.org/wiki/Lua语言 "wikilink")

<!-- end list -->

  - [Objective-C](../Page/Objective-C.md "wikilink")
  - [Perl](../Page/Perl.md "wikilink")
  - [PHP](../Page/PHP.md "wikilink")
  - [Pure Data](../Page/Pure_Data.md "wikilink")
  - [Python](../Page/Python.md "wikilink")

<!-- end list -->

  - [R](../Page/R语言.md "wikilink")\[6\]
  - [Ruby](https://zh.wikipedia.org/wiki/Ruby语言 "wikilink")
  - [Scala](https://zh.wikipedia.org/wiki/Scala语言 "wikilink")
  - [Smalltalk](../Page/Smalltalk.md "wikilink")
  - [Tcl](../Page/Tcl.md "wikilink")

### Python简单示例

``` Python
# coding:utf-8
import redis

# lredis-server保持开启状态 如果在客户端设置了密码 添加password=密码即可
pool = redis.ConnectionPool(host='127.0.0.1', port=6379, db=0)
r = redis.StrictRedis(connection_pool=pool)
# 字符串
r.set('test', 'aaa')
print r.get('test')
# 列表
# 注意python、lrange两个range的范围
x = 0
for x in range(0, 11):
    r.lpush('list', x)
    x = x + 1
print r.lrange('list', '0', '10')

# 雜湊(哈希)
dict_hash = {'name': 'tang', 'password': 'tang_passwd'}
r.hmset('hash_test', dict_hash)
print r.hgetall('hash_test')

# 集合
r.sadd('set_test', 'aaa', 'bbb')
r.sadd('set_test', 'ccc')
r.sadd('set_test', 'ddd')
print r.smembers('set_test')

# 有序集
r.zadd('zset_test', {'aaa': 1, 'bbb': 1})
r.zadd('zset_test', {'ccc': 1})
r.zadd('zset_test', {'ddd': 1})
print r.zrange('zset_test', 0, 10)
```

## 数据模型

Redis的外围由一个键、值映射的[字典构成](../Page/关联数组.md "wikilink")。与其他[非关系型数据库主要不同在于](https://zh.wikipedia.org/wiki/非关系型数据库 "wikilink")：Redis中值的类型不仅限于[字符串](../Page/字符串.md "wikilink")，还支持如下抽象数据类型：

  - [字符串](../Page/字符串.md "wikilink")[列表](../Page/串列_\(抽象資料型別\).md "wikilink")
  - 无序不重复的[字符串](../Page/字符串.md "wikilink")[集合](https://zh.wikipedia.org/wiki/集合_\(抽象資料型別\) "wikilink")
  - 有序不重复的[字符串](../Page/字符串.md "wikilink")[集合](https://zh.wikipedia.org/wiki/集合_\(抽象資料型別\) "wikilink")
  - 键、值都为[字符串的](../Page/字符串.md "wikilink")[哈希表](../Page/哈希表.md "wikilink")

值的类型决定了值本身支持的操作。Redis支持不同无序、有序的[列表](../Page/串列_\(抽象資料型別\).md "wikilink")，无序、有序的[集合间的交集](https://zh.wikipedia.org/wiki/集合_\(抽象資料型別\) "wikilink")、并集等高级服务器端原子操作。

## 持久化

Redis通常将全部的数据存储在内存中。2.4版本后可配置为使用[虚拟内存](../Page/虚拟内存.md "wikilink")，\[7\]一部分数据集存储在硬盘上，但这个特性废弃了。

目前通过两种方式实现[持久化](https://zh.wikipedia.org/wiki/持久化 "wikilink")：

  - 使用[快照](https://zh.wikipedia.org/wiki/快照 "wikilink")，一种半持久耐用模式。不时的将数据集以异步方式从内存以RDB格式写入硬盘。
  - 1.1版本开始使用更安全的AOF格式替代，一种只能追加的日志类型。将数据集修改操作记录起来。Redis能够在后台对只可追加的记录作修改来避免無限增长的日志。

## 同步

Redis支持主从同步。数据可以从主服务器向任意数量的从服务器上同步，从服务器可以是关联其他从服务器的主服务器。这使得Redis可执行单层树复制。从盘可以有意无意的对数据进行写操作。由于完全实现了[发布/订阅机制](https://zh.wikipedia.org/wiki/发布/订阅 "wikilink")，使得从数据库在任何地方同步树时，可订阅一个频道并接收主服务器完整的消息发布记录。同步对读取操作的可扩展性和数据冗余很有帮助。\[8\]

## 性能

当数据依赖不再需要，Redis这种基于内存的性质，与在执行一个事务时将每个变化都写入硬盘的数据库系统相比就显得执行效率非常高。\[9\]写与读操作速度没有明显差别。

## 参见

  - [Cassandra](../Page/Cassandra.md "wikilink")
  - [Berkeley DB](../Page/Berkeley_DB.md "wikilink")
  - [memcached](https://zh.wikipedia.org/wiki/memcached "wikilink")
  - [MongoDB](../Page/MongoDB.md "wikilink")
  - [Solr](../Page/Solr.md "wikilink")
  - [内存数据库](https://zh.wikipedia.org/wiki/内存数据库 "wikilink")
  - [非关系型数据库](https://zh.wikipedia.org/wiki/非关系型数据库 "wikilink")

## 参考资料

  - Jeremy Zawodny, *[Redis: Lightweight key/value Store That Goes the
    Extra Mile](http://www.linux-mag.com/cache/7496/1.html)*, [Linux
    Magazine](https://zh.wikipedia.org/wiki/Linux_Magazine "wikilink"),
    August 31, 2009
  - Isabel Drost and Jan Lehnard（29 October 2009）,[Happenings: NoSQL
    Conference,
    Berlin](http://www.h-online.com/open/features/Happenings-NoSQL-Conference-Berlin-843597.html),
    [The H](https://zh.wikipedia.org/wiki/The_H "wikilink").
    [Slides](http://nosqlberlin.de/slides/NoSQLBerlin-Redis.pdf) for the
    Redis presentation.
    [Summary](http://www.paperplanes.de/2009/10/27/theres_something_about_redis.html).
  - Billy Newport（IBM）:"[Evolving the Key/Value Programming Model to a
    Higher
    Level](http://www.infoq.com/presentations/newport-evolving-key-value-programming-model)"
    Qcon Conference 2009 San Francisco.

<references/>

## 外部链接

  -
  - [对Salvatore
    Sanfillipo的播客采访](https://web.archive.org/web/20110221132131/http://thechangelog.com/post/2801342864/episode-0-4-5-redis-with-salvatore-sanfilippo)

  - [由Simon
    Willison讲解的Redis真实应用场景教程](https://web.archive.org/web/20121225104309/http://simonwillison.net/static/2010/redis-tutorial/)

  - [使用PHP进行Redis开发的实例](http://redis4you.com/code.php)

  - [使用Ruby进行Redis开发的实例](http://www.pagedegeek.com/2012/05/30/Ruby-Redis-scalabilite.html)

[Category:开源数据库管理系统](https://zh.wikipedia.org/wiki/Category:开源数据库管理系统 "wikilink")
[Category:非关系型数据库](https://zh.wikipedia.org/wiki/Category:非关系型数据库 "wikilink")
[Category:自由软件](https://zh.wikipedia.org/wiki/Category:自由软件 "wikilink")
[Category:跨平台软件](https://zh.wikipedia.org/wiki/Category:跨平台软件 "wikilink")
[Category:键-值数据库](https://zh.wikipedia.org/wiki/Category:键-值数据库 "wikilink")

1.  [Redis Sponsors – Redis](http://redis.io/topics/sponsors)
2.  [VMware: the new Redis
    home](http://antirez.com/post/vmware-the-new-redis-home.html)
3.  [VMWare: The Console: VMware hires key developer for
    Redis](http://blogs.vmware.com/console/2010/03/vmware-hires-key-developer-for-redis.html)
4.  [DB-Engines Ranking of Key-value
    Stores](http://db-engines.com/en/ranking/key-value+store)
5.  [Redis language bindings](http://redis.io/clients)
6.  [CRAN - Package
    rredis](http://cran.r-project.org/web/packages/rredis/index.html)
7.  Redis documentation ["Virtual
    Memory"](http://redis.io/topics/virtual-memory), *redis.io*,
    accessed January 18, 2011.
8.  [ReplicationHowto - redis - A persistent key-value database with
    built-in net interface written in ANSI-C for Posix systems - Google
    Project
    Hosting](http://code.google.com/p/redis/wiki/ReplicationHowto)
9.