**Web应用程序描述语言**（**，WADL**）是一个可用计算机处理的表达基于[HTTP的](https://zh.wikipedia.org/wiki/HTTP "wikilink")[Web应用](https://zh.wikipedia.org/wiki/Web "wikilink")（如[REST](https://zh.wikipedia.org/wiki/REST "wikilink")[Web服务](../Page/Web服务.md "wikilink")）的XML词汇。
WADL描述了Web服务提供的资源及他们的联系。
WADL试图简化重用基于HTTP架构的Web服务。它是一个平台，且与语言无关，并试图推动除Web浏览器的基本使用外的应用重用。

WADL于2009年8月31日由[昇陽電腦提交至](../Page/昇陽電腦.md "wikilink")[万维网联盟](../Page/万维网联盟.md "wikilink")，但联盟目前没有标准化它的计划并且它并没有被广泛地支持。WADL依照描述基于[SOAP的RPC式服务的XML词汇](https://zh.wikipedia.org/wiki/SOAP "wikilink")[WSDL定义](../Page/WSDL.md "wikilink")，用于描述REST服务，而WSDL也可用于描述RESTWeb服务。

## 格式

服务用一系列的[资源（resource）标签描述](https://zh.wikipedia.org/wiki/Web资源 "wikilink")。每一个resource包含参数（param）元素描述输入，而方法（method）元素描述对一个resource的请求（request）和回应（response）。request标签定义了如何表达输入，它要求定义对应的类型和特定的HTTP头。response标签定义了服务的回应及所有错误信息，用于处理错误。

## 例子

下列是一个以WADL描述的雅虎新闻搜索程序。

``` xml
 <application xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xsi:schemaLocation="http://wadl.dev.java.net/2009/02 wadl.xsd"
  xmlns:tns="urn:yahoo:yn"
  xmlns:xsd="http://www.w3.org/2001/XMLSchema"
  xmlns:yn="urn:yahoo:yn"
  xmlns:ya="urn:yahoo:api"
  ns="http://wadl.dev.java.net/2009/02">
   <grammars>
     <include
       href="NewsSearchResponse.xsd"/>
     <include
       href="Error.xsd"/>
   </grammars>

   <resources base="http://api.search.yahoo.com/NewsSearchService/V1/">
     <resource path="newsSearch">
       <method name="GET" id="search">
         <request>
           <param name="appid" type="xsd:string"
             style="query" required="true"/>
           <param name="query" type="xsd:string"
             style="query" required="true"/>
           <param name="type" style="query" default="all">
             <option value="all"/>
             <option value="any"/>
             <option value="phrase"/>
           </param>
           <param name="results" style="query" type="xsd:int" default="10"/>
           <param name="start" style="query" type="xsd:int" default="1"/>
           <param name="sort" style="query" default="rank">
             <option value="rank"/>
             <option value="date"/>
           </param>
           <param name="language" style="query" type="xsd:string"/>
         </request>
         <response status="200">
           <representation mediaType="application/xml"
             element="yn:ResultSet"/>
         </response>
         <response status="400">
           <representation mediaType="application/xml"
             element="ya:Error"/>
         </response>
       </method>
     </resource>
   </resources>
```

## 参考来源

## 外部链接

  - [WADL于java.net上的主页](http://wadl.java.net)

  - [WADL的当前标准](http://java.net/projects/wadl/sources/svn/content/trunk/www/wadl20090202.pdf)

  - [《我们需要WADL么？》](http://bitworking.org/news/193/Do-we-need-WADL)乔·格雷戈里奥的博客文章

[Category:Web服务](https://zh.wikipedia.org/wiki/Category:Web服务 "wikilink")
[Category:万维网](https://zh.wikipedia.org/wiki/Category:万维网 "wikilink")