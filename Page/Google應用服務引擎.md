**Google App
Engine**是一个开发、托管[网络应用程序](../Page/网络应用程序.md "wikilink")的平台，使用[Google](../Page/Google.md "wikilink")管理的数据中心。它在2008年4月发布了第一个[beta版本](https://zh.wikipedia.org/wiki/軟件版本週期#Beta "wikilink")。

Google App
Engine使用了[云计算技术](https://zh.wikipedia.org/wiki/云计算 "wikilink")。它跨越多个服务器和数据中心来虚拟化应用程序。\[1\]
其他基于云的平台还有[Amazon Web
Services和](https://zh.wikipedia.org/wiki/Amazon_Web_Services "wikilink")[微软](../Page/微软.md "wikilink")的[Azure服务平台等](https://zh.wikipedia.org/wiki/Azure服务平台 "wikilink")。

Google App
Engine在用户使用一定的资源时是免费的。支付额外的费用可以获得应用程序所需的更多的存储空间、带宽或是CPU负载。\[2\]

## 支持的编程语言和框架

当前，Google App
Engine支持的[编程语言](../Page/编程语言.md "wikilink")是[Python](../Page/Python.md "wikilink")、[Java](../Page/Java.md "wikilink")、[PHP](../Page/PHP.md "wikilink")和[Go](../Page/Go.md "wikilink")（通过扩展，可以支持其他[JVM语言](https://zh.wikipedia.org/wiki/JVM语言 "wikilink")，诸如[Groovy](../Page/Groovy.md "wikilink")、[JRuby](../Page/JRuby.md "wikilink")、[Scala](../Page/Scala.md "wikilink")和[Clojure](../Page/Clojure.md "wikilink")）。支持[Django](../Page/Django.md "wikilink")、[WebOb](https://zh.wikipedia.org/wiki/WebOb "wikilink")、[PyYAML的有限版本](https://zh.wikipedia.org/wiki/PyYAML "wikilink")。Google说它准备在未来支持更多的语言，Google
App
Engine也将会独立于某种语言。任何支持[WSGI的使用CGI的Python框架可以使用](https://zh.wikipedia.org/wiki/WSGI "wikilink")。框架可以与开发出的应用程序一同上传，也可以上传使用Python编写的第三方库。\[3\]\[4\]

## 与其他应用程序托管的区别

与其他可扩展的托管服务（例如[Amazon EC2](../Page/Amazon_EC2.md "wikilink")）比较，App
Engine提供了更多基础服務来方便编写可扩展的应用程序，但仅限於App Engine设计框架以內的应用程序。

App
Engine的基础服務省卻了许多系统管理的操作，以便将规模扩大到数以百万计的访问。Google负责处理一组代码，可以监测、容错，在必要的时候还会开发一些应用实例。

有些应用程序托管服务让用户安装、配置几乎所有[\*NIX兼容的软件](https://zh.wikipedia.org/wiki/*NIX "wikilink")，而App
Engine則要求开发者使用[Python](../Page/Python.md "wikilink")或[Java](../Page/Java.md "wikilink")语言來编程，而且只能使用一套限定的[API](https://zh.wikipedia.org/wiki/API "wikilink")。当前的API允许程序於一个[BigTable非关系数据库上存储和检索数据](https://zh.wikipedia.org/wiki/BigTable "wikilink")、提出HTTP请求、发送E-mail、处理图像、还有[缓存](../Page/缓存.md "wikilink")。大多数现存的Web应用程序，若未经修改，均不能直接在App
Engine上运行，因为它们需要使用[关系数据库](../Page/关系数据库.md "wikilink")。

带宽和CPU的使用、送达请求的数量、并发请求的数量、以及调用各种API的次数，皆設有每天和每分钟的限额。个别的请求，如果需時超过30秒或返回超过10MB的数据，都会被终止。

## SQL与GQL的区别

Google App
Engine的Datastore使用一个与SQL类似的语言，叫做“GQL”。在GQL中，[SELECT语句仅可以用于一个表](https://zh.wikipedia.org/wiki/SELECT "wikilink")。因为要跨越不只一台机器，
GQL不支持效率很低的[JOIN语句](https://zh.wikipedia.org/wiki/JOIN "wikilink")\[5\]。欲建立一对多和多对多的关系，可使用ReferenceProperty()\[6\]。採用这种无共享的方式，即使磁盘坏了，系统也不致瘫痪\[7\]。

在GQL中，[SELECT语句中的](https://zh.wikipedia.org/wiki/SELECT "wikilink")[WHERE从句只容許对仅仅一列进行](https://zh.wikipedia.org/wiki/WHERE "wikilink")\>、\>=、\<或\<=比較。所以，仅仅可以构造简单的WHERE从句。在数据建模时，要从[关系数据库](../Page/关系数据库.md "wikilink")转换到Datastore，开发者需要转变观念。

App
Engine限制每次Datastore请求最多返回1000行数据。大多数Web应用程序，都不會受此影响，因为它們通常并不会在一张页面上列出超過1000条记录（可以用分页和缓存机制），只要按顺序返回结果就可以了。若有应用程序需要在一次操作中返回更多的记录，則需自行使用客户端软件或者[Ajax页面](https://zh.wikipedia.org/wiki/Ajax "wikilink")，按查询顺序提取更多條記錄。

這個Datastore的API是不关联的，有別於一般关系数据库——比如[IBM
DB2](../Page/IBM_DB2.md "wikilink")、[Microsoft SQL
Server](https://zh.wikipedia.org/wiki/Microsoft_SQL_Server "wikilink")、[MySQL](../Page/MySQL.md "wikilink")、[Oracle数据库](../Page/Oracle数据库.md "wikilink")、或者[PostgreSQL](../Page/PostgreSQL.md "wikilink")。

## 限制

  - 在App Engine的檔案系统中，开发者只有读取的权限。
  - App Engine仅可在回應HTTP请求时执行代码（计划的后台任务、任务队列和XMPP服务則不在此限）。
  - 用户可以上传任意的Python模块，但必须是纯Python模块，不得包含[C扩展程序或其他需要编译的代码](https://zh.wikipedia.org/wiki/C语言 "wikilink")。
  - App Engine限制每次Datastore请求最多返回1000行数据。
  - Java应用程序只能使用JRE基本版本类库中的一个子集（[JRE类白名单](http://code.google.com/appengine/docs/java/jrewhitelist.html)）\[8\]。
  - Java应用程序不能创建新的线程。

## 可移植性

开发者担心App Engine应用程序不能移植到其他平台上，因而被困在單一种技术之內。\[9\]

## 从App Engine下载数据

App
Engine自SDK1.2.2版开始，已容許以批量的方式下载数据\[10\]。此外，用户也可使用开源项目gaebar\[11\]、approcket\[12\]
和gawsh\[13\] 來下载、备份在App Engine上的数据。

## 限额

免费帐户使用App Engine時，受配額限制。应用程序作者可以視乎需要，付钱購買更多配额。\[14\]

### 硬性限制

| 項目            | 限制                      |
| ------------- | ----------------------- |
| 每次请求的时间       | 普通请求60秒，任务请求10分钟，后台请求无限 |
| 每个应用程序的文件     | 1000个                   |
| HTTP响应的大小     | 32 MB                   |
| Datastore单项大小 | 1 MB                    |
| 应用程序代码大小      | 150 MB                  |

### 免费的配额

供免费使用的配额曾於2009年5月25日\[15\] 、2009年6月22日以及2011年5月三度下調\[16\]。

| 項目                  | 配額        |
| ------------------- | --------- |
| 每天的Email数量          | 100封      |
| 每天的输入數據             | 无限        |
| 每天的输出數據             | 1 GB      |
| 每天可使用CPU            | 28小时      |
| 每天调用Datastore API次数 | 50000次\*  |
| 数据存储                | 1 GB      |
| 每天调用URLFetch API次数  | 657000次\* |

## 竞争对手

Google App Engine与[Amazon Web
Services](https://zh.wikipedia.org/wiki/Amazon_Web_Services "wikilink")（一个应用程序服务系统，支持在Amazon的服务器上托管文件、执行代码）直接竞争。不少科技分析师早在多年前已预计過，Google會加入這場競賽。其中，Techdirt的出版人[Mike
Masnick写到](https://zh.wikipedia.org/wiki/Mike_Masnick "wikilink")，“Google终于了解到它需要覇佔网络平台這個地位。我們可以期待，开发及落實易於扩展的网络应用程式會變得越來越容易，而应用程式也會越來越具创意。”\[17\]

此外，[红帽公司的](https://zh.wikipedia.org/wiki/红帽公司 "wikilink")
[openshift](https://zh.wikipedia.org/wiki/openshift "wikilink")、[微软](../Page/微软.md "wikilink")的[Azure服务平台以及](https://zh.wikipedia.org/wiki/Windows_Azure "wikilink")
[Koding](https://zh.wikipedia.org/wiki/Koding "wikilink") 也是Google App
Engine的競爭對手。

## 中華人民共和国封锁

由于Google App
Engine允许用户托管网络应用程序，且服务器不在[中華人民共和国境内](https://zh.wikipedia.org/wiki/中華人民共和国 "wikilink")，故有部分用户利用其搭建代理（如[GoAgent](../Page/GoAgent.md "wikilink")）用于突破[防火长城](../Page/防火长城.md "wikilink")的[审查](https://zh.wikipedia.org/wiki/破网 "wikilink")\[18\]，故Google
App Engine的域名 \*.appspot.com
的[SSL加密连接长期遭到防火长城的封锁](https://zh.wikipedia.org/wiki/SSL "wikilink")。

  - 2010年12月20日，Google App Engine的域名 appspot.com
    遭到防火长城的关键词过滤封锁。由于先前Google App
    Engine的[SSL连接已经被封](https://zh.wikipedia.org/wiki/SSL "wikilink")，故中華人民共和国境内的用户无法正常连接与使用。此次Google
    App
    Engine被封锁适逢[2010年诺贝尔和平奖](../Page/2010年诺贝尔和平奖.md "wikilink")颁奖典礼。appspot.com非加密连接於2010年12月23日解封。

<!-- end list -->

  - 2011年3月[两会](../Page/两会.md "wikilink")召开前夕，appspot.com
    再次遭到防火长城的关键词过滤封锁及[域名污染](https://zh.wikipedia.org/wiki/域名污染 "wikilink")，同时部分服务器的IP地址亦遭到彻底屏蔽，甚至两会结束后至今亦没有解封。

<!-- end list -->

  - 至今appspot.com仍遭到[DNS投毒污染](https://zh.wikipedia.org/wiki/DNS投毒污染 "wikilink")、[URL](https://zh.wikipedia.org/wiki/URL "wikilink")[域名](../Page/域名.md "wikilink")[关键词过滤和服务器IP地址屏蔽三重封锁](https://zh.wikipedia.org/wiki/关键词过滤 "wikilink")，无法从中華人民共和国正常访问，但也仍有一些软件或用户通过修改本机[Hosts等方法绕过封锁以使用GAE](https://zh.wikipedia.org/wiki/Hosts "wikilink")。

## 参考文献

## 外部链接

  - [Google應用服務引擎](https://web.archive.org/web/20100208170435/http://code.google.com/intl/zh-TW/appengine/)
  - [Google App Engine - Google
    Code](https://web.archive.org/web/20100119044219/http://code.google.com/intl/en/appengine/)
      - [Google App
        Engine](https://web.archive.org/web/20100208100604/http://code.google.com/intl/zh-CN/appengine/)
  - [Google App Engine - Run your web applications on Google's
    infrastructure](http://www.stanford.edu/class/ee380/Abstracts/081105.html)
    - a technical talk by Google engineer Guido van Rossum at Stanford
    University. ([online video
    archive](https://web.archive.org/web/20090326060917/http://stanford-online.stanford.edu/courses/ee380/081105-ee380-300.asx))
  - [Frameworks and libraries supported by Google App Engine Java -
    Google
    Documents](https://spreadsheets.google.com/pub?key=pRJ_0hajVrhacLjp3HqD5ew)
  - [Google App Engine for Java: CRUD Operations with JDO and Spring
    MVC](https://web.archive.org/web/20090707134213/http://www.digitalsanctum.com/2009/07/02/google-app-engine-for-java-crud-with-jdo-spring-mvc/)
  - [Run your PHP scripts on the Google App
    Engine](http://www.webdigi.co.uk/blog/2009/run-php-on-the-google-app-engine/)

## 参见

  - [Google产品列表](../Page/Google产品列表.md "wikilink")

{{-}}

[Category:Google服務](https://zh.wikipedia.org/wiki/Category:Google服務 "wikilink")
[Category:雲端運算](https://zh.wikipedia.org/wiki/Category:雲端運算 "wikilink")
[Category:被防火长城封锁的网站](https://zh.wikipedia.org/wiki/Category:被防火长城封锁的网站 "wikilink")
[Category:2008年面世](https://zh.wikipedia.org/wiki/Category:2008年面世 "wikilink")

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
15. Google, Inc., [Upcoming Changes to the Free
    Quotas](http://code.google.com/appengine/docs/quotas.html#Free_Changes)——於2009年2月26日覆閱過
16. Google, Inc.,
    [1](http://code.google.com/appengine/docs/quotas.html#Free_Changes)
    於2009年6月17日覆閱過
17.
18.