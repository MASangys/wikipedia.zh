[Shay_Banon_talking_about_Elasticsearch_at_Berlin_Buzzwords_2010.jpg](https://zh.wikipedia.org/wiki/File:Shay_Banon_talking_about_Elasticsearch_at_Berlin_Buzzwords_2010.jpg "fig:Shay_Banon_talking_about_Elasticsearch_at_Berlin_Buzzwords_2010.jpg")
**Elasticsearch**是一个基于[Lucene](../Page/Lucene.md "wikilink")库的[搜索引擎](../Page/搜索引擎.md "wikilink")。它提供了一个分布式、支持多租户的[全文搜索引擎](../Page/全文檢索.md "wikilink")，具有[HTTP](https://zh.wikipedia.org/wiki/HTTP "wikilink")
Web接口和无模式[JSON](../Page/JSON.md "wikilink")文档。Elasticsearch是用[Java](../Page/Java.md "wikilink")开发的，并在[Apache许可证](../Page/Apache许可证.md "wikilink")下作为开源软件发布。官方客户端在[Java](../Page/Java.md "wikilink")、[.NET](../Page/.NET框架.md "wikilink")（[C\#](../Page/C♯.md "wikilink")）、[PHP](../Page/PHP.md "wikilink")、[Python](../Page/Python.md "wikilink")、[Apache
Groovy](../Page/Groovy.md "wikilink")、[Ruby](../Page/Ruby.md "wikilink")和许多其他语言中都是可用的。\[1\]根据DB-Engines的排名显示，Elasticsearch是最受欢迎的企业搜索引擎，其次是[Apache
Solr](https://zh.wikipedia.org/wiki/Apache_Solr "wikilink")，也是基于Lucene。\[2\]

Elasticsearch是与名为Logstash的数据收集和日志解析引擎以及名为Kibana的分析和可视化平台一起开发的。这三个产品被设计成一个集成解决方案，称为“Elastic
Stack”（以前称为“ELK stack”）。

Elasticsearch可以用于搜索各种文档。它提供可扩展的搜索，具有接近实时的搜索，并支持多租户。\[3\]”Elasticsearch是分布式的，这意味着索引可以被分成分片，每个分片可以有0个或多个副本。每个节点托管一个或多个分片，并充当协调器将操作委托给正确的分片。再平衡和路由是自动完成的。“\[4\]相关数据通常存储在同一个索引中，该索引由一个或多个主分片和零个或多个复制分片组成。一旦创建了索引，就不能更改主分片的数量。\[5\]

Elasticsearch使用Lucene，并试图通过JSON和Jav

1.

2.

3.
4.
5.