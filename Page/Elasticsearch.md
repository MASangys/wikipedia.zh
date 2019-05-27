[Shay_Banon_talking_about_Elasticsearch_at_Berlin_Buzzwords_2010.jpg](https://zh.wikipedia.org/wiki/File:Shay_Banon_talking_about_Elasticsearch_at_Berlin_Buzzwords_2010.jpg "fig:Shay_Banon_talking_about_Elasticsearch_at_Berlin_Buzzwords_2010.jpg")
**Elasticsearch**是一个基于[Lucene库的](../Page/Lucene.md "wikilink")[搜索引擎](../Page/搜索引擎.md "wikilink")。它提供了一个分布式、支持多租户的[全文搜索引擎](../Page/全文檢索.md "wikilink")，具有[HTTP](https://zh.wikipedia.org/wiki/HTTP "wikilink")
Web接口和无模式[JSON文档](../Page/JSON.md "wikilink")。Elasticsearch是用[Java开发的](../Page/Java.md "wikilink")，并在[Apache许可证下作为开源软件发布](../Page/Apache许可证.md "wikilink")。官方客户端在[Java](../Page/Java.md "wikilink")、[.NET](../Page/.NET框架.md "wikilink")（[C\#](../Page/C♯.md "wikilink")）、[PHP](../Page/PHP.md "wikilink")、[Python](../Page/Python.md "wikilink")、[Apache
Groovy](../Page/Groovy.md "wikilink")、[Ruby和许多其他语言中都是可用的](../Page/Ruby.md "wikilink")。\[1\]根据DB-Engines的排名显示，Elasticsearch是最受欢迎的企业搜索引擎，其次是[Apache
Solr](https://zh.wikipedia.org/wiki/Apache_Solr "wikilink")，也是基于Lucene。\[2\]

Elasticsearch是与名为Logstash的数据收集和日志解析引擎以及名为Kibana的分析和可视化平台一起开发的。这三个产品被设计成一个集成解决方案，称为“Elastic
Stack”（以前称为“ELK stack”）。

Elasticsearch可以用于搜索各种文档。它提供可扩展的搜索，具有接近实时的搜索，并支持多租户。\[3\]”Elasticsearch是分布式的，这意味着索引可以被分成分片，每个分片可以有0个或多个副本。每个节点托管一个或多个分片，并充当协调器将操作委托给正确的分片。再平衡和路由是自动完成的。“\[4\]相关数据通常存储在同一个索引中，该索引由一个或多个主分片和零个或多个复制分片组成。一旦创建了索引，就不能更改主分片的数量。\[5\]

Elasticsearch使用Lucene，并试图通过JSON和Java
API提供其所有特性。它支持facetting和percolating\[6\]，如果新文档与注册查询匹配，这对于通知非常有用。

另一个特性称为“网关”，处理索引的长期持久性；例如，在服务器崩溃的情况下，可以从网关恢复索引。\[7\]Elasticsearch支持实时GET请求，适合作为[NoSQL数据存储](../Page/NoSQL.md "wikilink")\[8\]，但缺少分布式事务。\[9\]

## 历史

Shay
Banon在2004年创造了Elasticsearch的前身，称为Compass。\[10\]在考虑Compass的第三个版本时，他意识到有必要重写Compass的大部分内容，以“创建一个可扩展的搜索解决方案”。\[11\]因此，他创建了“一个从头构建的分布式解决方案”，并使用了一个公共接口，即HTTP上的JSON，它也适用于Java以外的编程语言。\[12\]Shay
Banon在2010年2月发布了Elasticsearch的第一个版本。\[13\]

Elasticsearch
BV成立于2012年，主要围绕Elasticsearch及相关软件提供商业服务和产品。\[14\]2014年6月，在成立公司18个月后，该公司宣布通过C轮融资筹集7000万美元。这轮融资由新企业协会(NEA)牵头。其他投资者包括Benchmark
Capital和Index Ventures。这一轮融资总计1.04亿美元。\[15\]

2015年3月，*Elasticsearch*公司更名为*Elastic*。\[16\]

在2018年6月，Elastic提交了[首次公开募股申请](https://zh.wikipedia.org/wiki/首次公开募股 "wikilink")，估值在15亿到30亿美元之间。\[17\]公司于2018年10月5日在[纽约证券交易所挂牌上市](../Page/纽约证券交易所.md "wikilink")。\[18\]

## 托管服务

一些组织将Elasticsearch作为托管服务提供。\[19\]这些托管服务提供托管、部署、备份和其他支持。\[20\]大多数托管服务还包括对Kibana的支持。

## 另请参阅

  - 信息检索库列表
  - [信息提取](../Page/信息抽取.md "wikilink")

## 参考文献

<references group="" responsive="">

</references>

## 外部链接

  - [官方网站](https://www.elastic.co/products/elasticsearch)

[Category:2018年IPO](https://zh.wikipedia.org/wiki/Category:2018年IPO "wikilink")
[Category:纽约证券交易所上市公司](https://zh.wikipedia.org/wiki/Category:纽约证券交易所上市公司 "wikilink")
[Category:網路搜尋引擎](https://zh.wikipedia.org/wiki/Category:網路搜尋引擎 "wikilink")
[Category:用Java編程的自由軟體](https://zh.wikipedia.org/wiki/Category:用Java編程的自由軟體 "wikilink")

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